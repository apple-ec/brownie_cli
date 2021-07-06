import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:brownie_cli/src/commands/commands.dart';
import 'package:io/io.dart';
import 'package:mason/mason.dart';

import 'version.dart';

class BrownieCommandRunner extends CommandRunner<int> {
  BrownieCommandRunner({Logger? logger})
      : _logger = logger ?? Logger(),
        super('brownie', 'A tasty command line interface') {
    argParser.addFlag('version',
        abbr: 'v', negatable: false, help: 'Brownie version');
    addCommand(FeatureCommand(logger: _logger));
  }

  final Logger _logger;

  @override
  Future<int> run(Iterable<String> args) async {
    try {
      final results = parse(args);
      return await runCommand(results) ?? ExitCode.success.code;
    } on UsageException catch (e) {
      _logger
        ..err(e.message)
        ..info('')
        ..info(usage);
      return ExitCode.usage.code;
    }
  }

  @override
  Future<int?> runCommand(ArgResults topLevelResults) async {
    if (topLevelResults['version'] == true) {
      _logger.info('brownie: $packageVersion');
      return ExitCode.success.code;
    }
    return super.runCommand(topLevelResults);
  }
}
