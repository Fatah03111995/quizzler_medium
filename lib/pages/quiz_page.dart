import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [
    const Icon(
      Icons.check,
      size: 15,
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ------------------------ SCOREKEEPER

    void addTrueIcon() {
      setState(() {
        scorekeeper.add(
          const Icon(
            Icons.check,
            size: 15,
            color: Colors.green,
          ),
        );
      });
    }

    void addFalseIcon() {
      setState(() {
        scorekeeper.add(
          const Icon(
            Icons.close,
            size: 15,
            color: Colors.red,
          ),
        );
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'This is where the text will go',
                textAlign: TextAlign.center,
                style: TextStyle(
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
              onPressed: addTrueIcon,
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade300),
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  )),
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
              onPressed: addFalseIcon,
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.red.shade300),
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  )),
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
