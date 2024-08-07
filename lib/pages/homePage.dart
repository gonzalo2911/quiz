import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
           height: 45,
            ),
            Container(
              child: Text('¿Como se llama el superheroe?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 305,
              margin: EdgeInsets.only(right: 10,left: 10

              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('assets/image/ant man.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}