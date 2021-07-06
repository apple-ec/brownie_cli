import 'package:mason/mason.dart';

final newFeatureSkeletonBundle = MasonBundle.fromJson({
  "files": [
    {
      "path":
          "{{feature_name}}/data/repository/{{#snakeCase}}{{feature_name}}{{/snakeCase}}_repo_impl.dart",
      "data":
          "aW1wb3J0ICcuLi8uLi9kb21haW4vcmVwb3NpdG9yeS97eyNzbmFrZUNhc2V9fXt7ZmVhdHVyZV9uYW1lfX17ey9zbmFrZUNhc2V9fV9yZXBvLmRhcnQnOwppbXBvcnQgJ3BhY2thZ2U6aW5qZWN0YWJsZS9pbmplY3RhYmxlLmRhcnQnOwoKQExhenlTaW5nbGV0b24oYXM6IHt7I3Bhc2NhbENhc2V9fXt7ZmVhdHVyZV9uYW1lfX17ey9wYXNjYWxDYXNlfX1SZXBvKQpjbGFzcyB7eyNwYXNjYWxDYXNlfX17e2ZlYXR1cmVfbmFtZX19e3svcGFzY2FsQ2FzZX19UmVwb0ltcGwgaW1wbGVtZW50cyB7eyNwYXNjYWxDYXNlfX17e2ZlYXR1cmVfbmFtZX19e3svcGFzY2FsQ2FzZX19UmVwbyB7CiAgICAvLyBUT0RPIGFkZCByZXBvIG1ldGhvZHMgaGVyZQp9Cg==",
      "type": "text"
    },
    {
      "path":
          "{{feature_name}}/data/model/{{#snakeCase}}{{entity_name}}{{/snakeCase}}_dto.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmZyZWV6ZWRfYW5ub3RhdGlvbi9mcmVlemVkX2Fubm90YXRpb24uZGFydCc7CmltcG9ydCAnLi4vLi4vZG9tYWluL2VudGl0eS97eyNzbmFrZUNhc2V9fXt7ZW50aXR5X25hbWV9fXt7L3NuYWtlQ2FzZX19LmRhcnQnOwoKcGFydCAne3sjc25ha2VDYXNlfX17e2VudGl0eV9uYW1lfX17ey9zbmFrZUNhc2V9fV9kdG8uZnJlZXplZC5kYXJ0JzsKcGFydCAne3sjc25ha2VDYXNlfX17e2VudGl0eV9uYW1lfX17ey9zbmFrZUNhc2V9fV9kdG8uZy5kYXJ0JzsKCkBmcmVlemVkCmFic3RyYWN0IGNsYXNzIHt7I3Bhc2NhbENhc2V9fXt7ZW50aXR5X25hbWV9fXt7L3Bhc2NhbENhc2V9fUR0byBpbXBsZW1lbnRzIF8kJHt7I3Bhc2NhbENhc2V9fXt7ZW50aXR5X25hbWV9fXt7L3Bhc2NhbENhc2V9fUR0byB7CiAgY29uc3Qge3sjcGFzY2FsQ2FzZX19e3tlbnRpdHlfbmFtZX19e3svcGFzY2FsQ2FzZX19RHRvLl8oKTsKCiAgQEpzb25TZXJpYWxpemFibGUoZXhwbGljaXRUb0pzb246IHRydWUpCiAgY29uc3QgZmFjdG9yeSB7eyNwYXNjYWxDYXNlfX17e2VudGl0eV9uYW1lfX17ey9wYXNjYWxDYXNlfX1EdG8oewoKICB9KSA9IF97eyNwYXNjYWxDYXNlfX17e2VudGl0eV9uYW1lfX17ey9wYXNjYWxDYXNlfX1EdG87CgogIGZhY3Rvcnkge3sjcGFzY2FsQ2FzZX19e3tlbnRpdHlfbmFtZX19e3svcGFzY2FsQ2FzZX19RHRvLmZyb21Eb21haW4oe3sjcGFzY2FsQ2FzZX19e3tlbnRpdHlfbmFtZX19e3svcGFzY2FsQ2FzZX19IGRldGFpbHMpIHsKICAgIHJldHVybiB7eyNwYXNjYWxDYXNlfX17e2VudGl0eV9uYW1lfX17ey9wYXNjYWxDYXNlfX1EdG8oCiAgICApOwogIH0KCiAge3sjcGFzY2FsQ2FzZX19e3tlbnRpdHlfbmFtZX19e3svcGFzY2FsQ2FzZX19IHRvRG9tYWluKCkgewogICAgcmV0dXJuIHt7I3Bhc2NhbENhc2V9fXt7ZW50aXR5X25hbWV9fXt7L3Bhc2NhbENhc2V9fSgKICAgICk7CiAgfQoKICBmYWN0b3J5IHt7I3Bhc2NhbENhc2V9fXt7ZW50aXR5X25hbWV9fXt7L3Bhc2NhbENhc2V9fUR0by5mcm9tSnNvbihNYXA8U3RyaW5nLCBkeW5hbWljPiBqc29uKSA9PiBfJCR7eyNwYXNjYWxDYXNlfX17e2VudGl0eV9uYW1lfX17ey9wYXNjYWxDYXNlfX1EdG9Gcm9tSnNvbihqc29uKTsKfQo=",
      "type": "text"
    },
    {
      "path":
          "{{feature_name}}/domain/repository/{{#snakeCase}}{{feature_name}}{{/snakeCase}}_repo.dart",
      "data":
          "YWJzdHJhY3QgY2xhc3Mge3sjcGFzY2FsQ2FzZX19e3tmZWF0dXJlX25hbWV9fXt7L3Bhc2NhbENhc2V9fVJlcG8gewogICAgLy8gVE9ETyBhZGQgcmVwbyBtZXRob2RzIGhlcmUKfQo=",
      "type": "text"
    },
    {
      "path":
          "{{feature_name}}/domain/entity/{{#snakeCase}}{{entity_name}}{{/snakeCase}}.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmZyZWV6ZWRfYW5ub3RhdGlvbi9mcmVlemVkX2Fubm90YXRpb24uZGFydCc7CgpwYXJ0ICd7eyNzbmFrZUNhc2V9fXt7ZW50aXR5X25hbWV9fXt7L3NuYWtlQ2FzZX19LmZyZWV6ZWQuZGFydCc7CgpAZnJlZXplZAphYnN0cmFjdCBjbGFzcyB7eyNwYXNjYWxDYXNlfX17e2VudGl0eV9uYW1lfX17ey9wYXNjYWxDYXNlfX0gd2l0aCBfJCR7eyNwYXNjYWxDYXNlfX17e2VudGl0eV9uYW1lfX17ey9wYXNjYWxDYXNlfX0gewogIGNvbnN0IGZhY3Rvcnkge3sjcGFzY2FsQ2FzZX19e3tlbnRpdHlfbmFtZX19e3svcGFzY2FsQ2FzZX19KCkgPSBfe3sjcGFzY2FsQ2FzZX19e3tlbnRpdHlfbmFtZX19e3svcGFzY2FsQ2FzZX19Owp9Cg==",
      "type": "text"
    },
    {
      "path": "{{feature_name}}/presentation/blocs/blocs.dart",
      "data": "",
      "type": "text"
    },
    {
      "path":
          "{{feature_name}}/presentation/screens/{{#snakeCase}}{{feature_name}}{{/snakeCase}}_screen.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmZsdXR0ZXIvbWF0ZXJpYWwuZGFydCc7CgpjbGFzcyB7eyNwYXNjYWxDYXNlfX17e2ZlYXR1cmVfbmFtZX19e3svcGFzY2FsQ2FzZX19U2NyZWVuIGV4dGVuZHMgU3RhdGVsZXNzV2lkZ2V0IHsKICBjb25zdCB7eyNwYXNjYWxDYXNlfX17e2ZlYXR1cmVfbmFtZX19e3svcGFzY2FsQ2FzZX19U2NyZWVuKHtLZXk/IGtleX0pIDogc3VwZXIoa2V5OiBrZXkpOwoKICBAb3ZlcnJpZGUKICBXaWRnZXQgYnVpbGQoQnVpbGRDb250ZXh0IGNvbnRleHQpIHsKICAgIC8vIFRPRE86IGltcGxlbWVudCBidWlsZAogICAgcmV0dXJuIGNvbnN0IFNpemVkQm94KCk7CiAgfQp9Cg==",
      "type": "text"
    },
    {
      "path": "{{feature_name}}/presentation/widgets/.gitkeep",
      "data": "",
      "type": "text"
    }
  ],
  "name": "new_feature",
  "description": "Generate directory hierarchy for a new feature",
  "vars": ["feature_name", "entity_name"]
});
