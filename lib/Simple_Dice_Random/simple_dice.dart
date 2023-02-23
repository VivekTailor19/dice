import 'dart:math';

import 'package:flutter/material.dart';

class Dice_Work extends StatefulWidget {
  const Dice_Work({Key? key}) : super(key: key);

  @override
  State<Dice_Work> createState() => _Dice_WorkState();
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

class _Dice_WorkState extends State<Dice_Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Dice", style: TextStyle(fontSize: 30)),
              Image.asset(
                "${photo[i]}",
                height: 180,
                width: 180,
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(

                  onPressed: () {
                    Random rnd = Random();
                    int z = rnd.nextInt(6);
                    setState(() {
                      i = z;
                    });
                  },
                  child: Text(
                    "Press",
                    style: TextStyle(fontSize: 20),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
