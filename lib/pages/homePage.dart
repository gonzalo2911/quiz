import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
            Wrap(
              children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                margin: EdgeInsets.only(right: 3,left: 3),
                child: MaterialButton(
                  height: 260,
                  minWidth: 200,
                  color: Colors.green,
                  
                  onPressed: (){},
                  child: Text('Capitan America',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    
                  ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),
              ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                  margin: EdgeInsets.only(right: 3,left: 3),
                  child: MaterialButton(
                    height: 260,
                    minWidth: 200,
                    color: Colors.green,

                    onPressed: (){},
                    child: Text('Capitan America',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,

                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),Container(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                  margin: EdgeInsets.only(right: 3,left: 3),
                  child: MaterialButton(
                    height: 260,
                    minWidth: 200,
                    color: Colors.green,

                    onPressed: (){},
                    child: Text('Capitan America',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,

                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),Container(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                  margin: EdgeInsets.only(right: 3,left: 3),
                  child: MaterialButton(
                    height: 260,
                    minWidth: 200,
                    color: Colors.green,

                    onPressed: (){},
                    child: Text('Capitan America',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,

                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}