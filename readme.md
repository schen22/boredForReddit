Current working version demo:

![alt text]("https://github.com/schen22/boredForReddit/blob/master/assets/demo-0.mov")

## generate [gRPC code](https://grpc.io/docs/quickstart/dart/)

`$ protoc --dart_out=grpc:lib/generated -Iprotos protos/post.proto`

## generate [proto](https://developers.google.com/protocol-buffers/docs/darttutorial)

`$ protoc -I=protos --dart_out=lib/generated protos/post.proto`

## pubspec

`pub get`

`flutter pub get`

## reddit api

register [here](https://docs.google.com/forms/d/e/1FAIpQLSezNdDNK1-P8mspSbmtC2r86Ee9ZRbC66u929cG2GX0T9UMyw/viewform)

or follow this [tutorial](http://www.storybench.org/how-to-scrape-reddit-with-python/) with handy pictures

Create credentials file upon complete the above:

See [gist](https://gist.github.com/schen22/0f73071eb51df7898ee75db1ae01f066) on what the expected file and class type used in RedditService looks like.

## Run app

`flutter run` 
`flutter doctor` - to help troubleshoot any missing deps
