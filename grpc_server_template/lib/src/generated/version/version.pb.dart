//
//  Generated code. Do not modify.
//  source: version/version.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VersionRequest extends $pb.GeneratedMessage {
  factory VersionRequest() => create();
  VersionRequest._() : super();
  factory VersionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VersionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'template.version'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionRequest clone() => VersionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionRequest copyWith(void Function(VersionRequest) updates) =>
      super.copyWith((message) => updates(message as VersionRequest))
          as VersionRequest;

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
  factory VersionResponse({
    $core.String? label,
    $core.int? major,
    $core.int? minor,
    $core.int? patch,
  }) {
    final $result = create();
    if (label != null) {
      $result.label = label;
    }
    if (major != null) {
      $result.major = major;
    }
    if (minor != null) {
      $result.minor = minor;
    }
    if (patch != null) {
      $result.patch = patch;
    }
    return $result;
  }
  VersionResponse._() : super();
  factory VersionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VersionResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'template.version'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'label')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'major', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'minor', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'patch', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionResponse clone() => VersionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionResponse copyWith(void Function(VersionResponse) updates) =>
      super.copyWith((message) => updates(message as VersionResponse))
          as VersionResponse;

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
  void clearLabel() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get major => $_getIZ(1);
  @$pb.TagNumber(2)
  set major($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMajor() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get minor => $_getIZ(2);
  @$pb.TagNumber(3)
  set minor($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMinor() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get patch => $_getIZ(3);
  @$pb.TagNumber(4)
  set patch($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPatch() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatch() => $_clearField(4);
}

class HelloWorldRequest extends $pb.GeneratedMessage {
  factory HelloWorldRequest() => create();
  HelloWorldRequest._() : super();
  factory HelloWorldRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HelloWorldRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloWorldRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'template.version'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloWorldRequest clone() => HelloWorldRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloWorldRequest copyWith(void Function(HelloWorldRequest) updates) =>
      super.copyWith((message) => updates(message as HelloWorldRequest))
          as HelloWorldRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloWorldRequest create() => HelloWorldRequest._();
  HelloWorldRequest createEmptyInstance() => create();
  static $pb.PbList<HelloWorldRequest> createRepeated() =>
      $pb.PbList<HelloWorldRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloWorldRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelloWorldRequest>(create);
  static HelloWorldRequest? _defaultInstance;
}

class HelloWorldResponse extends $pb.GeneratedMessage {
  factory HelloWorldResponse({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  HelloWorldResponse._() : super();
  factory HelloWorldResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HelloWorldResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloWorldResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'template.version'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloWorldResponse clone() => HelloWorldResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloWorldResponse copyWith(void Function(HelloWorldResponse) updates) =>
      super.copyWith((message) => updates(message as HelloWorldResponse))
          as HelloWorldResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloWorldResponse create() => HelloWorldResponse._();
  HelloWorldResponse createEmptyInstance() => create();
  static $pb.PbList<HelloWorldResponse> createRepeated() =>
      $pb.PbList<HelloWorldResponse>();
  @$core.pragma('dart2js:noInline')
  static HelloWorldResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelloWorldResponse>(create);
  static HelloWorldResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
