import 'package:flutter/material.dart';
import 'package:myvote/widgets/votelist.dart';
import 'package:provider/provider.dart';
import 'package:myvote/models/vote.dart';
import 'package:myvote/state/vote.dart';


class VoterMain extends StatefulWidget {
  @override
  _VoterMainState createState() => _VoterMainState();
}

class _VoterMainState extends State<VoterMain> {

  int _currentstep = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      Provider.of<VoteState>(context, listen: false).clearState();
      Provider.of<VoteState>(context, listen: false).loadVoteList(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "MY VOTE",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          Icon(
            Icons.logout,
            size: 40,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: StepperType.horizontal,
                currentStep: _currentstep,
                steps: [
                  getStep(
                    title: 'Choose',
                    child: VoteListWidget(),
                    isActive: true,
                  ),
                  getStep(
                    title: 'Vote',
                    child: Text('Vote please',),
                    isActive: _currentstep>=1?true:false,
                  ),
                ],
                onStepContinue: (){
                  setState(() {
                    _currentstep=_currentstep+1>1?1:_currentstep+1;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentstep=_currentstep-1>0?0:_currentstep-1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Step getStep({String title, Widget child,bool isActive = false})
{
  return Step(
    title: Text(title),
    content: child,
    isActive: isActive,
  );
}