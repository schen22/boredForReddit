import 'dart:async';
import 'package:draw/draw.dart';

import 'generated/post.pb.dart' as RedditData;

import 'credentials.dart';

class RedditService {
  Future<Submission> getWholesomeMeme() async {
    Credentials c = new Credentials();
    // Create the `Reddit` instance and authenticated
    Reddit reddit = await Reddit.createScriptInstance(
      clientId: c.clientId,
      clientSecret: c.clientSecret,
      userAgent: c.userAgent,
      username: c.username,
      password: c.password,
    );
    
    var wholesomeMemes = reddit.subreddit('wholesomememes');
    try {
      SubmissionRef postRef = await wholesomeMemes.random();
      return await postRef.populate();
    } catch (e) {
      var error = e.toString();
      print ('Unable to get wholesome meme. qb sad with error: $e');
    }
  }
}
