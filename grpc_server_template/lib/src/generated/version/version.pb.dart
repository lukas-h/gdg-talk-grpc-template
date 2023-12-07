///
//  Generated code. Do not modify.
//  source: version/version.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VersionRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'template.version'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  VersionRequest._() : super();
  factory VersionRequest() => create();
  factory VersionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionRequest clone() => VersionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionRequest copyWith(void Function(VersionRequest) updates) =>
      super.copyWith((message) => updates(message as VersionRequest))
          as VersionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionRequest create() => VersionRequest._();
  VersionRequest createEmptyInstance() => create();
  static $pb.PbList<VersionRequest> createRepeated() =>
      $pb.PbList<VersionRequest>();
  @$core.pragma('dart2js:noInline')
  static VersionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VersionRequest>(create);
  static VersionRequest? _defaultInstance;
}

class VersionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VersionResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'template.version'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'label')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'major',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minor',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'patch',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  VersionResponse._() : super();
  factory VersionResponse({
    $core.String? label,
    $core.int? major,
    $core.int? minor,
    $core.int? patch,
  }) {
    final _result = create();
    if (label != null) {
      _result.label = label;
    }
    if (major != null) {
      _result.major = major;
    }
    if (minor != null) {
      _result.minor = minor;
    }
    if (patch != null) {
      _result.patch = patch;
    }
    return _result;
  }
  factory VersionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionResponse clone() => VersionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionResponse copyWith(void Function(VersionResponse) updates) =>
      super.copyWith((message) => updates(message as VersionResponse))
          as VersionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionResponse create() => VersionResponse._();
  VersionResponse createEmptyInstance() => create();
  static $pb.PbList<VersionResponse> createRepeated() =>
      $pb.PbList<VersionResponse>();
  @$core.pragma('dart2js:noInline')
  static VersionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VersionResponse>(create);
  static VersionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get major => $_getIZ(1);
  @$pb.TagNumber(2)
  set major($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMajor() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajor() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minor => $_getIZ(2);
  @$pb.TagNumber(3)
  set minor($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMinor() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinor() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get patch => $_getIZ(3);
  @$pb.TagNumber(4)
  set patch($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPatch() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatch() => clearField(4);
}
