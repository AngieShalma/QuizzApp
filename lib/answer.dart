import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



import 'resultScreen.dart';
class Answer extends StatefulWidget {

  final VoidCallback score;
  int index;
  final restart;

  Answer ( { required this.score,required this.index,required this.restart});

  @override
  State<Answer> createState() => _AnswerState();

}
List a=[
  [{'answer':'Alahly','score':10},
    {'answer':'Zamalek','score':0},
    {'answer':'Pyramids','score':0},
    {'answer':'Tanta','score':0}],
  [{'answer':'Alahly','score':10},
    {'answer':'Zamalek','score':0},
    {'answer':'Eltagy Eltonsy','score':0}],
  [{'answer':'Alahly','score':10},
    {'answer':'Zamalek','score':10},
    {'answer':'realmadrid','score':10}],
  [{'answer':'zizo','score':0},
    {'answer':'ramadan sobhy','score':10},
    {'answer':'shika','score':0},
    {'answer':'emam ashour','score':0}],
  [{'answer':'zizo','score':0},
    {'answer':'salah','score':10},
    {'answer':'shika','score':0},
    {'answer':'mane','score':0}],
  [{'answer':'salah','score':10},
    {'answer':'benzema','score':0},
    {'answer':'cr7','score':0},
    {'answer':'messi','score':0}]
];
class _AnswerState extends State<Answer> {
  int scoree=0;
  restart(){
    scoree=0;
    widget.restart();

  }
  @override
  Widget build(BuildContext context) {
    return
      widget.index<a.length?
      Column(
        children: [

          ...a[widget.index].map((item) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              ),
              child: MaterialButton(

                onPressed:(){widget.score();
                scoree+=item['score']as int;
                } ,
                child:Text(item['answer'],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),) ,),


            ),
          ),)
        ],
      ) : resultScreenquizz(
        scoree: scoree,
        restart:restart,
      );
  }
}
