import 'package:flutter/material.dart';
import '/data/questions.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [];
  int questionsIndex = 0;
  int point = 0;

  @override
  Widget build(BuildContext context) {
    // ------------------------ Functions Buttons True and False

    void addTrueAnswerIcon() {
      setState(() {
        scorekeeper.add(
          const Icon(
            Icons.check,
            size: 15,
            color: Colors.green,
          ),
        );
        point++;
        questionsIndex++;
      });
    }

    void addFalseAnswerIcon() {
      setState(() {
        scorekeeper.add(
          const Icon(
            Icons.close,
            size: 15,
            color: Colors.red,
          ),
        );
        questionsIndex++;
      });
    }

    void button({required String truefalse}) {
      if (truefalse == questions[questionsIndex]['answer']) {
        addTrueAnswerIcon();
      } else {
        addFalseAnswerIcon();
      }
    }

    //---------------- end function buttons true and false
    bool isDone = questions.length > questionsIndex;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                isDone
                    ? questions[questionsIndex]['question']
                    : 'point benar anda adalah $point',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextButton(
              onPressed: () {
                isDone ? button(truefalse: '1') : null;
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.green.shade300),
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              child: Text(
                'true',
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextButton(
              onPressed: () {
                isDone ? button(truefalse: '0') : null;
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red.shade300),
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              child: Text(
                'false',
                style: TextStyle(
                  color: Colors.red.shade900,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
