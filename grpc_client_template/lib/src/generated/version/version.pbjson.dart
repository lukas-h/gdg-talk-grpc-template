//
//  Generated code. Do not modify.
//  source: version/version.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use versionRequestDescriptor instead')
const VersionRequest$json = {
  '1': 'VersionRequest',
};

/// Descriptor for `VersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionRequestDescriptor =
    $convert.base64Decode('Cg5WZXJzaW9uUmVxdWVzdA==');

@$core.Deprecated('Use versionResponseDescriptor instead')
const VersionResponse$json = {
  '1': 'VersionResponse',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'major', '3': 2, '4': 1, '5': 5, '10': 'major'},
    {'1': 'minor', '3': 3, '4': 1, '5': 5, '10': 'minor'},
    {'1': 'patch', '3': 4, '4': 1, '5': 5, '10': 'patch'},
  ],
};

/// Descriptor for `VersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionResponseDescriptor = $convert.base64Decode(
    'Cg9WZXJzaW9uUmVzcG9uc2USFAoFbGFiZWwYASABKAlSBWxhYmVsEhQKBW1ham9yGAIgASgFUg'
    'VtYWpvchIUCgVtaW5vchgDIAEoBVIFbWlub3ISFAoFcGF0Y2gYBCABKAVSBXBhdGNo');
