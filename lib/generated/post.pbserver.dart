///
//  Generated code. Do not modify.
//  source: post.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'post.pb.dart';
import 'post.pbjson.dart';

export 'post.pb.dart';

abstract class RedditServiceBase extends GeneratedService {
  $async.Future<SubReddit> getSubReddit(ServerContext ctx, SubRedditRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'GetSubReddit': return new SubRedditRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'GetSubReddit': return this.getSubReddit(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => RedditServiceBase$json;
  Map<String, Map<String, dynamic>> get $messageJson => RedditServiceBase$messageJson;
}

