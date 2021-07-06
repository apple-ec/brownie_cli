import 'dart:async';
import 'package:args/args.dart';
import 'package:io/io.dart';
import 'package:universal_io/io.dart';
import 'package:args/command_runner.dart';
import 'package:brownie_cli/src/templates/feature_skeleton_bundle.dart';
import 'package:mason/mason.dart';

/// A method which returns a [Future<MasonGenerator>] given a [MasonBundle].
typedef GeneratorBuilder = Future<MasonGenerator> Function(MasonBundle);

class FeatureCommand extends Command<int> {
  FeatureCommand({Logger? logger, GeneratorBuilder? generator})
      : _logger = logger ?? Logger() {
    addSubcommand(_FeatureSkeletonCommand(_logger, generator));
  }

  final Logger? _logger;

  @override
  String get description => 'Generate folder structure and more';

  @override
  String get name => 'feature';

  @override
  String get invocation => "brownie feature <arguments>";
}

class _FeatureSkeletonCommand extends Command<int> {
  _FeatureSkeletonCommand(Logger? logger, GeneratorBuilder? generator)
      : _logger = logger ?? Logger(),
        _generator = generator ?? MasonGenerator.fromBundle {
    argParser.addOption(
      'name',
      abbr: 'n',
      help: 'Name of the feature',
      mandatory: true,
    );
  }

  final Logger _logger;
  final Future<MasonGenerator> Function(MasonBundle) _generator;

  @override
  String get description => 'Generates folder structure for a new feature';

  @override
  String get name => 'skeleton';

  @override
  String get invocation =>
      "brownie feature skeleton <feature_name> <output_dir_path>";

  /// [ArgResults] which can be overridden for testing.
  ArgResults? argResultOverrides;

  ArgResults get _argResults => argResultOverrides ?? argResults!;

  @override
  Future<int> run() async {
    final outputDirectory = _outputDirectory;
    final featureName = _argResults['name'];
    final generateDone = _logger.progress('Preparing Skeleton...');

    await Future.delayed(const Duration(seconds: 2));

    final generator = await _generator(newFeatureSkeletonBundle);
    final fileCount = await generator.generate(
      DirectoryGeneratorTarget(outputDirectory, _logger),
      vars: {'feature_name': featureName, 'entity_name': featureName},
    );
    generateDone('Generated $fileCount file(s)');

    _logSummary(featureName);

    return ExitCode.success.code;
  }

  void _logSummary(name) {
    _logger
      ..info('\n')
      ..alert('Prepared a delicious $name! Enjoy your brownie!');
  }

  Directory get _outputDirectory {
    final rest = _argResults.rest;
    _validateOutputDirectoryArg(rest);
    return Directory(rest.first);
  }

  void _validateOutputDirectoryArg(List<String> args) {
    if (args.isEmpty) {
      throw UsageException(
        'No option specified for the output directory.',
        usage,
      );
    }

    if (args.length > 1) {
      throw UsageException('Multiple output directories specified.', usage);
    }
  }
}
