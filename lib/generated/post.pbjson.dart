///
//  Generated code. Do not modify.
//  source: post.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'body', '3': 4, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'score', '3': 5, '4': 1, '5': 5, '10': 'score'},
    const {'1': 'upvote_ratio', '3': 6, '4': 1, '5': 2, '10': 'upvoteRatio'},
  ],
};

const SubReddit$json = const {
  '1': 'SubReddit',
  '2': const [
    const {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.Post', '10': 'posts'},
  ],
};

const SubRedditRequest$json = const {
  '1': 'SubRedditRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const RedditServiceBase$json = const {
  '1': 'Reddit',
  '2': const [
    const {'1': 'GetSubReddit', '2': '.SubRedditRequest', '3': '.SubReddit', '4': const {}},
  ],
};

const RedditServiceBase$messageJson = const {
  '.SubRedditRequest': SubRedditRequest$json,
  '.SubReddit': SubReddit$json,
  '.Post': Post$json,
};

