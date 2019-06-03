///
//  Generated code. Do not modify.
//  source: post.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'post.pb.dart';
export 'post.pb.dart';

class RedditClient extends Client {
  static final _$getSubReddit = new ClientMethod<SubRedditRequest, SubReddit>(
      '/Reddit/GetSubReddit',
      (SubRedditRequest value) => value.writeToBuffer(),
      (List<int> value) => new SubReddit.fromBuffer(value));

  RedditClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<SubReddit> getSubReddit(SubRedditRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$getSubReddit, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class RedditServiceBase extends Service {
  String get $name => 'Reddit';

  RedditServiceBase() {
    $addMethod(new ServiceMethod<SubRedditRequest, SubReddit>(
        'GetSubReddit',
        getSubReddit_Pre,
        false,
        false,
        (List<int> value) => new SubRedditRequest.fromBuffer(value),
        (SubReddit value) => value.writeToBuffer()));
  }

  $async.Future<SubReddit> getSubReddit_Pre(
      ServiceCall call, $async.Future request) async {
    return getSubReddit(call, await request);
  }

  $async.Future<SubReddit> getSubReddit(
      ServiceCall call, SubRedditRequest request);
}
