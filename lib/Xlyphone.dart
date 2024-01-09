import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import to use audioplayer
import 'package:audioplayers/audioplayers.dart';
import 'package:xlyphone/GetData.dart';


class Xlyphone extends StatelessWidget{

  Widget drawBtn(Color color , int note,
  //BuildContext context
  ){
   return  Expanded(child:
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextButton(onPressed: () {
        final player = AudioPlayer();
         player.play(AssetSource('note${note}.wav'));
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) =>  GetData(title: "Good Morning")),

      },
        child: Text("fav music"),
        style: TextButton.styleFrom(


            backgroundColor: color
        ),
      ),
    ),
    );

  }
  @override
  Widget build(BuildContext context) {
   return Column(

     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
       //لو شلت context هيرحع يطلع صوت
       drawBtn(Colors.purple.shade50, 1,
           //context
       ),
       drawBtn(Colors.purple.shade100,2,
           //context
       ),
       drawBtn(Colors.purple.shade200, 3,
          // context
       ),
       drawBtn(Colors.purple.shade300, 4,
           //context
       ),
       drawBtn(Colors.purple.shade400, 5,
           //context
       ),
       drawBtn(Colors.purple.shade500, 6,
          // context
       ),
       drawBtn(Colors.purple.shade600, 7,
           //context
       ),
       //لو زودت عن عدد node هو مش هيطلع صون
      // drawBtn(Colors.purple.shade700, 8),

     ],
   );
  }

}