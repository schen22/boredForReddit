///
//  Generated code. Do not modify.
//  source: post.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Post extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Post')
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'url')
    ..aOS(4, 'body')
    ..a<int>(5, 'score', $pb.PbFieldType.O3)
    ..a<double>(6, 'upvoteRatio', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Post() : super();
  Post.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Post.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Post clone() => new Post()..mergeFromMessage(this);
  Post copyWith(void Function(Post) updates) => super.copyWith((message) => updates(message as Post));
  $pb.BuilderInfo get info_ => _i;
  static Post create() => new Post();
  Post createEmptyInstance() => create();
  static $pb.PbList<Post> createRepeated() => new $pb.PbList<Post>();
  static Post getDefault() => _defaultInstance ??= create()..freeze();
  static Post _defaultInstance;
  static void $checkItem(Post v) {
    if (v is! Post) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get title => $_getS(1, '');
  set title(String v) { $_setString(1, v); }
  bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  String get url => $_getS(2, '');
  set url(String v) { $_setString(2, v); }
  bool hasUrl() => $_has(2);
  void clearUrl() => clearField(3);

  String get body => $_getS(3, '');
  set body(String v) { $_setString(3, v); }
  bool hasBody() => $_has(3);
  void clearBody() => clearField(4);

  int get score => $_get(4, 0);
  set score(int v) { $_setSignedInt32(4, v); }
  bool hasScore() => $_has(4);
  void clearScore() => clearField(5);

  double get upvoteRatio => $_getN(5);
  set upvoteRatio(double v) { $_setFloat(5, v); }
  bool hasUpvoteRatio() => $_has(5);
  void clearUpvoteRatio() => clearField(6);
}

class SubReddit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SubReddit')
    ..pp<Post>(1, 'posts', $pb.PbFieldType.PM, Post.$checkItem, Post.create)
    ..hasRequiredFields = false
  ;

  SubReddit() : super();
  SubReddit.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SubReddit.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SubReddit clone() => new SubReddit()..mergeFromMessage(this);
  SubReddit copyWith(void Function(SubReddit) updates) => super.copyWith((message) => updates(message as SubReddit));
  $pb.BuilderInfo get info_ => _i;
  static SubReddit create() => new SubReddit();
  SubReddit createEmptyInstance() => create();
  static $pb.PbList<SubReddit> createRepeated() => new $pb.PbList<SubReddit>();
  static SubReddit getDefault() => _defaultInstance ??= create()..freeze();
  static SubReddit _defaultInstance;
  static void $checkItem(SubReddit v) {
    if (v is! SubReddit) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Post> get posts => $_getList(0);
}

class SubRedditRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SubRedditRequest')
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  SubRedditRequest() : super();
  SubRedditRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SubRedditRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SubRedditRequest clone() => new SubRedditRequest()..mergeFromMessage(this);
  SubRedditRequest copyWith(void Function(SubRedditRequest) updates) => super.copyWith((message) => updates(message as SubRedditRequest));
  $pb.BuilderInfo get info_ => _i;
  static SubRedditRequest create() => new SubRedditRequest();
  SubRedditRequest createEmptyInstance() => create();
  static $pb.PbList<SubRedditRequest> createRepeated() => new $pb.PbList<SubRedditRequest>();
  static SubRedditRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SubRedditRequest _defaultInstance;
  static void $checkItem(SubRedditRequest v) {
    if (v is! SubRedditRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class RedditApi {
  $pb.RpcClient _client;
  RedditApi(this._client);

  $async.Future<SubReddit> getSubReddit($pb.ClientContext ctx, SubRedditRequest request) {
    var emptyResponse = new SubReddit();
    return _client.invoke<SubReddit>(ctx, 'Reddit', 'GetSubReddit', request, emptyResponse);
  }
}

