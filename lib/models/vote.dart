class Vote {
  String voteId;
  String post;
  List<Map<String, int>> candidates;

  Vote({this.voteId, this.post, this.candidates});
}

class Voter {
  String uid;
  String voteId;
  int markedVoteOption;
}