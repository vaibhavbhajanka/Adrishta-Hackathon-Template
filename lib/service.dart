import 'package:myvote/models/vote.dart';
import 'package:uuid/uuid.dart';

List<Vote> getVoteList(){

  List<Vote> voteList = List<Vote>();

  voteList.add(
    Vote(
    voteId: Uuid().v4(),
    post: 'President',
    candidates: [
      {'Bhavya Pratap':10},
      {'Prakhar Goyal':14},
      {'Rani Sehjwal':20},
    ],)
  );

  voteList.add(
    Vote(
    voteId: Uuid().v4(),
    post: 'VP',
    candidates: [
      {'Arun Sinha':7},
      {'Pranav Das':34},
      {'Ruchi K':25},
    ],)
  );

  voteList.add(
    Vote(
    voteId: Uuid().v4(),
    post: 'Secretary',
    candidates: [
      {'Saloni Singh':30},
      {'Aryan Krishan':22},
      {'Rani Sehjwal':10},
    ],)
  );

  voteList.add(
    Vote(
    voteId: Uuid().v4(),
    post: 'Treasurer',
    candidates: [
      {'Ajay Kumar':10},
      {'Nikib Rehmaan':4},
      {'Aditya Thakur':20},
    ],)
  );

  return voteList;
}