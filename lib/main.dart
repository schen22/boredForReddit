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
  bool _isLoading;

  @override
  void initState() {
    super.initState();
    _service = RedditService();
    _meme = null;
    _isLoading = true;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical:20.0),
            child: Text(
              (_isLoading || _meme?.title == null) ? 'loading...' : _meme.title,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom:20.0),
            child:_isLoading || (_meme?.url == null) ? 
              new CircularProgressIndicator() : 
              Image.network(_meme.url.toString(), fit:BoxFit.scaleDown),
          ),
          Container(
            child:RaisedButton(
              onPressed: fetchMeme,
              child: const Text(
                'Next WholesomeMeme',
                style: TextStyle(fontSize: 20)
              ),
            ),
          )
        ]
      ) 
    );
  }

  fetchMeme() async {
    setState(() {
      _isLoading = true;
    });
    if (_service != null) {
      Submission meme = await _service.getWholesomeMeme();
      setState(() {
        _isLoading = false;
        _meme = meme;
      });
    }
  }  
}
