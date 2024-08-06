import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
              child: Image.asset('assets/image/ant man.jpg'),
              height: 600,
              width: 700,
              padding: EdgeInsets.all(10),

            ),
          ],
        ),
      ),
    );
  }
}