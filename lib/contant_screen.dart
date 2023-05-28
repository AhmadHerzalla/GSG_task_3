import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contant_screen extends StatefulWidget {
  const contant_screen({super.key});

  @override
  State<contant_screen> createState() => _contant_screenState();
}

// ignore: camel_case_types
class _contant_screenState extends State<contant_screen> {
  // ignore: non_constant_identifier_names
  late int right_hand;
  // ignore: non_constant_identifier_names
  late int left_hand;
  // ignore: non_constant_identifier_names
  int scor_i=0;
  // ignore: non_constant_identifier_names
  int scor_j=0;
  @override
  void initState() {
    right_hand=Random().nextInt(3)+1;
    left_hand=Random().nextInt(3)+1;
    
  }

  void change(){
    setState(() {
      right_hand=Random().nextInt(3)+1;
    left_hand=Random().nextInt(3)+1;
    
    });

   
  }
  
  
  @override
  Widget build(BuildContext context) {
     String winer(){
      if(right_hand==left_hand) {
        
        return " There is no winner";
        
        
      } else if (right_hand==1&&left_hand==2) {
        scor_j++;
        return "computer the winner" ;
        
      } else if (right_hand==1&&left_hand==3) {
        scor_i++;
        return "you the winner" ;
      } else if (right_hand==2&&left_hand==1) {
        scor_i++;
        return "you the winner" ;
      } else if (right_hand==2&&left_hand==3) {
        scor_j++;
        return "computer the winner" ;
      } else if (right_hand==3&&left_hand==1) {
        scor_j++;
        return "computer the winner" ;
      } else {
        scor_i++;
        return"you the winner";
      }
    }
    return 
      Stack(
        children: [
          GestureDetector(
            onTap:  change,
            child:Container(
              color: Color.fromARGB(255, 248, 245, 245),
            ),
            ),

            Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
              Row(children: [
                /// first image ----------------
                 Expanded(
              child: 
              Container(
                width: 200,
                child: TextButton(
                  onPressed: 
                    change
                  ,
                  child: 
              // CircleAvatar(backgroundImage: AssetImage("images/image_$right_hand.png"),radius: 70,)
                  Image(image: AssetImage("images/image_$left_hand.png"),
                  ),
                ),
              ),
                 ) ,
                 const Text("vs",style: TextStyle(
          fontSize: 18,
         // color: Colors.white
        ),),
                 /////---------- sec image----
                  Expanded(
              child: 
              TextButton(
                onPressed: change,
                  
                child:
                //CircleAvatar(backgroundImage: AssetImage("images/image_$right_hand.png"),radius: 70,)
                 Image(image: AssetImage("images/image_$right_hand.png"),
                ),
              ),
                 ) ,
              ],),
              ///---------- player
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                Text("you",style: TextStyle(
          fontSize: 18,
          //color: Colors.white
        ),),
                Text("computer",style: TextStyle(
          fontSize: 18,
         // color: Colors.white
        ),
        )
              ],),
              //--------------------
              SizedBox(height: 16,),
              //--------------
              Text(winer(),style: TextStyle(
          fontSize: 18,
          //color: Colors.white
        ),
        ),
        SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("your score : $scor_i",style: TextStyle(
          fontSize: 18,
         // color: Colors.white
        ),),
          Text(" copmuter score : $scor_j",style: TextStyle(
          fontSize: 18,
        //  color: Colors.white
        ),),
        ],)
            ],),
            ],
      );
  }
}