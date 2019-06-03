import 'dart:async';
import 'package:draw/draw.dart';

import 'generated/post.pb.dart' as RedditData;

import 'credentials.dart';

Future<void> main() async {
  Credentials c = new Credentials();
  // Create the `Reddit` instance and authenticated
  Reddit reddit = await Reddit.createScriptInstance(
    clientId: c.clientId,
    clientSecret: c.clientSecret,
    userAgent: c.userAgent,
    username: c.username,
    password: c.password,
  );

  // Retrieve information for the currently authenticated user
  Redditor currentUser = await reddit.user.me();
  // Outputs: My name is DRAWApiOfficial
  print("My name is ${currentUser.displayName}");

  RedditService service = RedditService();
  Submission post = await service.getWholesomeMeme();
  String title = post.title;
  print ('title = $title');
  String url = service.getMemeSource(post);
  print ('url = $url'); 
}

class RedditService {

Future<Submission> getWholesomeMeme() async {
    Reddit reddit = await Reddit.createScriptInstance(
    clientId: 'xPa9bqSAzCHW_Q',
    clientSecret: 'ImE9uvmF1czWGhhCOHFUKW03Vtc',
    userAgent: 'boredforreddit',
    username: "fredfishz",
    password: "comets", // Fake
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

String getMemeSource(Submission post) {
  return post.url.toString();
}

}
