import 'package:flutter/material.dart';
import 'dart:ui';


void main() {
  runApp(Heroes());
}

class Heroes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizState(),
          ),
        ),
      ),
    );
  }
}

class QuizState extends StatefulWidget {


  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<QuizState> {


    List<String> images = [
      'assets/image/ant man.jpg',
      'assets/image/deadpool.jpg',
      'assets/image/dr strange.jpg',
      'assets/image/iron man.jpg',
      'assets/image/thor.jpg',
    ];
    List<String> answer1 = [
      'Ant man',
      'Thor',
      'Venon',
      'Hulk',
      'Odin',
    ];
    List<String> answer2 = [
      'Star lord',
      'Spiderman',
      'Flash',
      'Cap America',
      'Loki',
    ];
    List<String> answer3 = [
      'Nebula',
      'Deadpool',
      'Superman',
      'Shuri',
      'Thor',
    ];
    List<String> answer4 = [
      'Venom',
      'Hulk',
      'Strange',
      'Iron man',
      'Wong',
    ];

    List<bool> res1 =[
      true,
      false,
      false,
      false,
      false,
    ];
    List<bool> res2 =[
      false,
      false,
      false,
      false,
      false,
    ];
    List<bool> res3 =[
      false,
      true,
      false,
      false,
      true,
    ];
    List<bool> res4 =[
      false,
      false,
       true,
      true,
      false,
    ];


    List<Widget> scoreKeeper = [

    ];

  int imagesnumber = 0;
  int answercas1 = 0;
  int answercas2 = 0;
  int answercas3 = 0;
  int answercas4 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(images[imagesnumber],
          fit: BoxFit.cover,),
           ),
        Wrap(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 250,
              width: 190,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepOrange,

                    padding: EdgeInsets.symmetric(horizontal: 52.0, vertical: 110.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 40,
                  ),
                      onPressed: () {
                    bool respuestaCorrecta = res1[imagesnumber];
                    if (respuestaCorrecta==true){
                     scoreKeeper.add(Icon(Icons.check,color: Colors.green,),);
                    }else{scoreKeeper.add(Icon(Icons.close,color: Colors.red,),);}

                      setState(() {


                      });
                     },
                  child: Text(answer1[answercas1],
                    style: TextStyle(
                        color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 250,
              width: 190,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 52.0, vertical: 110.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 40,
                  ),
                  onPressed: () {
                    bool respuestaCorrecta = res2[imagesnumber];
                    if (respuestaCorrecta==true){
                      scoreKeeper.add(Icon(Icons.check,color: Colors.green,),);
                    }else{scoreKeeper.add(Icon(Icons.close,color: Colors.red,),);}

                    setState(() {


                    });
                  },
                  child: Text(answer2[answercas2],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 250,
              width: 190,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    padding: EdgeInsets.symmetric(horizontal: 52.0, vertical: 110.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 40,
                  ),
                  onPressed: () {
                    bool respuestaCorrecta = res3[imagesnumber];
                    if (respuestaCorrecta==true){
                      scoreKeeper.add(Icon(Icons.check,color: Colors.green,),);
                    }else{scoreKeeper.add(Icon(Icons.close,color: Colors.red,),);}

                    setState(() {



                    });
                  },
                  child: Text(answer3[answercas3],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 250,
              width: 190,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    padding: EdgeInsets.symmetric(horizontal: 52.0, vertical: 110.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 40,
                  ),
                  onPressed: () {
                    bool respuestaCorrecta = res4[imagesnumber];
                    if (respuestaCorrecta==true){
                      scoreKeeper.add(Icon(Icons.check,color: Colors.green,),);
                    }else{scoreKeeper.add(Icon(Icons.close,color: Colors.red,),);}

                    setState(() {



                    });
                  },
                  child: Text(answer4[answercas4],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
              ),
            ),


          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: scoreKeeper,


        ),
        Container(

          margin: EdgeInsets.all(5),
          height: 40,
          width: 120,
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
                elevation: 40,
              ),
              onPressed: () {
                setState(() {
                  imagesnumber = imagesnumber+1;
                  answercas1 = answercas1+1;
                  answercas2 = answercas2+1;
                  answercas3 = answercas3+1;
                  answercas4 = answercas4+1;
                });
              },
              child: Text('Next',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
          ),
        ),
      ],
    );
  }
}
