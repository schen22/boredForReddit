import 'dart:async';

import 'package:draw/src/models/submission_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/src/client/connection.dart';

import 'generated/post.pbgrpc.dart' as grpc;

import 'reddit_service.dart';

void main() {
  runApp(MaterialApp(
    title:"BoredForReddit",
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: AppBar(
        title: Text('BoredForReddit'),
      ),
      body:WholesomeMemesApp(),
    )
  ));
}

class WholesomeMemesApp extends StatefulWidget {
  @override
  WholesomeMemes createState() => WholesomeMemes();
}

class WholesomeMemes extends State<WholesomeMemesApp> {

  RedditService _service;
  Submission _meme;

  @override
  void initState() {
    super.initState();
    _service = RedditService();
    _meme = null;
  }

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: fetchMeme(),//loadMemeSource(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          _meme = snapshot.data;
          return new Center(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: [
                Container(
                  padding:EdgeInsets.symmetric(vertical:20.0),
                  child: Text(
                    _meme.title,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Container(
                  // alignment: Alignment.center,
                  child:Image.network(_meme.url.toString(), fit:BoxFit.scaleDown),
                ),
              ]
            )
          );
        } else if (snapshot.hasError) {
          return Text('qb sad error: ${snapshot.error}');
        } else {
          return new Center(child: new CircularProgressIndicator());
        }
      }
    );
  }

  Future<Submission> fetchMeme() async {
    return _service.getWholesomeMeme();
  }

  Future<String> loadMemeSource() async {
    Submission wholesomeMeme = await _service.getWholesomeMeme();
    return wholesomeMeme.url.toString();
  }

}
