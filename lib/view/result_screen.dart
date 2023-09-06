
import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/quiz_screen.dart';
import 'package:lottie/lottie.dart';


class ResultScreen extends StatelessWidget {
  int? points;
   ResultScreen({
    this.points,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Result',
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   points! >= 15
                        ? Lottie.asset("assets/animation/winner.json",height: 280,width: 280,
                            alignment: Alignment.center)
                        : Lottie.asset("assets/animation/fail.json",height: 200,width: 200,
                            alignment: Alignment.center),
                  
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Points:$points',
                    style: TextStyle(fontSize: 30),
                  ),SizedBox(
                    height: 30,),
                  points! >= 15
                      ? Text("Well done!", style: TextStyle(fontSize: 24))
                      : Text("Keep trying", style: TextStyle(fontSize: 24)),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizScreen()));
                        },
                        child: const Text(
                          "Restart",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ))
       
        );
  }
}
