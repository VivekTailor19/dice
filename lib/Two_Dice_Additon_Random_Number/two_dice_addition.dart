
import 'dart:math';

import 'package:flutter/material.dart';

class Two_Dice_Addition extends StatefulWidget {
  const Two_Dice_Addition({Key? key}) : super(key: key);

  @override
  State<Two_Dice_Addition> createState() => _Two_Dice_AdditionState();
}
List photo = [
  "assets/Images/dice(1).png",
  "assets/Images/dice(2).png",
  "assets/Images/dice(3).png",
  "assets/Images/dice(4).png",
  "assets/Images/dice(5).png",
  "assets/Images/dice(6).png",
];

int i = 0;
int j = 0;
int add = 0;

class _Two_Dice_AdditionState extends State<Two_Dice_Addition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.teal.shade800,
          title: Text(
            "Addition of Two Dice",
            style: TextStyle(fontSize: 30),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 300,
                width: 600,
                color: Colors.pinkAccent,
                alignment: Alignment.center,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:
                  [
                     Expanded(
                       child: Container(height: 100,width: 100,
                         child: Image.asset(
                        "${photo[i]}",
                         height: 100, width: 100,
                    ),),
                     ),

                    Expanded(
                      child: Container(height: 100,width: 100,
                        child: Image.asset(
                          "${photo[j]}",
                          height: 100, width: 100,
                        ),),
                    ),
                  ],
                ),), //  Container for two Dice
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

                Random rnd = Random();
                int z = rnd.nextInt(6);
                int y = rnd.nextInt(6);
                setState(() {
                  i = z;
                  j = y;
                  add = z + y + 2;

                });
              }, child: Text("Press",style: TextStyle(fontSize: 20),)),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 420,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.limeAccent,borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text("Additon of Both Matrix Number is  ${add}",style: TextStyle(fontSize: 20)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
