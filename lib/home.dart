import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lottery_app/SplashScreen.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  Random random= Random();
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Center(child: Text('Lottery App', style: TextStyle(
              fontSize: 25
          ),)),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [
            Center(child: Text('Lottery Winning Number is 5' ,style: TextStyle(fontSize: 20),)),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(

                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                x == 5 ? Column(
                  children:  [
                    SizedBox(height: 50,),
                    Icon(Icons.done_all,color: Colors.green,size: 50,),
                    SizedBox(height: 20,),
                    Text('Congratulations! You won the Lottery! The Number is $x',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))
                  ],
                ) :
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Icon(Icons.error,color: Colors.red,size: 50,),
                    SizedBox(height: 20,),
                    Text('Better Luck Next Time, Your Number is \n$x, Try Again',
                      textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(6);
            print(x);
            setState(() {

            });

          },
          child: const Icon(Icons.refresh),
        ),
      );


  }
}
