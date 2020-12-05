import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp());
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  void answerQuestion() {
    setState(() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
    });
  }

  var questionIndex = 0;
  @override
  // widget is a stand alone unit
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What's your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ), //question[0]
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () {
                answerQuestion();
                // onPressed: answerQuestion,
              },
            ),
            RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
            // onPressed: () => print("Answer 2 chosen")
            RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
