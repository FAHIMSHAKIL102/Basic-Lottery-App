import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random =Random();

  int x= 0;
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lottery App'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 4'),),
            SizedBox(height: 20),

            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(color:x ==4?Colors.tealAccent: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              ),
              
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: 
                x ==4?Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green, size: 35,),
                    SizedBox(height: 15,),
                    Text('Congratulation you have won', textAlign: TextAlign.center,)
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 35,),
                    SizedBox(height: 15,),
                    Text('Better luck next time your number is  $x\n Try again', textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          x = random.nextInt(10);
          print(x);
          setState(() {
            
          });
          
        },
        child: Icon(Icons.refresh),),

      ),
    );
  }
}