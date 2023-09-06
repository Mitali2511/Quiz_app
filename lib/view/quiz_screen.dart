import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  get currentQuestion => null;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int selectedValue = -1;
  int currentQuestion = 0;

  List quiz = [
    {
      'question': 'Which language does flutter uses?',
      'answer': 'Dart',
      'options': ['C++', 'Dart', 'C', 'Java']
    },
    {
      'question': 'Who invented flutter?',
      'answer': 'Google',
      'options': ['Google', 'Amazon', 'Oracle ', 'Microsoft']
    },
    {
      'question': 'A sequence of asynchronous Flutter events is known as a:',
      'answer': 'Stream',
      'options': ['Flow', 'Current', 'Stream', 'Series']
    },
    {
      'question':
          'When building for iOS, Flutter is restricted to an __ compilation strategy',
      'answer': 'AOT',
      'options': ['AOT', 'JIT', 'Transcompilation', 'Recompilation']
    },
    {
      'question':
          'What type of test can examine your code as a complete system?',
      'answer': 'Integration Tests',
      'options': [
        'Unit tests',
        'Widget tests',
        'Integration Tests',
        'All of the above'
      ]
    }
  ];
  int points = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text('Quiz'),
        actions: [
          
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Center(
              
                child: Text('Points :$points',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 20))),
          )
        ],
      ),
      body: 
      Padding(
        
        padding: EdgeInsets.all(20),
        child: Column(
          
          
          children: 
          [
           
            Text(
              quiz[currentQuestion]['question'],
              style: TextStyle(fontSize: 24),
            ),
            for (int i = 0;
                i < quiz[currentQuestion]['options'].length;
                i++) ...{
              CheckboxListTile(
                  title: Text(quiz[currentQuestion]['options'][i],
                      style: TextStyle(fontSize: 20)),
                  value: selectedValue == i,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    selectedValue = value! ? i : -1;
        
                    setState(() {});
                    print(quiz[currentQuestion]['options'][selectedValue]);
                  }),
            },
            SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                     if (quiz[currentQuestion]['options'][selectedValue] == quiz[currentQuestion]['answer']){
                          points+=5;
                        }
                    
                      if (currentQuestion <quiz.length - 1){
                      
                        currentQuestion++;
                      selectedValue=-1;
                      }
                       
                    else{
                         Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  ResultScreen(
                                      points: points,
                                    )));
                      }
                      setState(() {
                        
                      });
                        
                      
                    },
                    //{
                    //   if (quiz[currentQuestion]['options'][selectedValue] == quiz[currentQuestion]['answer']) {
                    //       points+=5;
                    //       print(currentQuestion);
                         
                    //     } if (currentQuestion <= quiz.length - 1) {
                    //     selectedValue = -1; 
                    //       currentQuestion++;
                    //       print(currentQuestion);
                           
                    //       if(currentQuestion==5){
                    //         print('navigate');
                    //           Navigator.pushReplacement(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => Result_Screen(
                    //                   points: points,
                    //                 )));
                    //       }
                    // setState(() {});}
                   
                     
                      
                    // },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }
}
