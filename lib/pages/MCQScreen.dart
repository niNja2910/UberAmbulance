import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MCQScreen(),
    );
  }
}

class MCQScreen extends StatefulWidget {
  @override
  _MCQScreenState createState() => _MCQScreenState();
}

class _MCQScreenState extends State<MCQScreen> {
  int selectedOptionIndex=0;
  bool isCorrect = false;

  void checkAnswer(int selectedIndex) {
    setState(() {
      selectedOptionIndex = selectedIndex;
      // Assuming option 2 is the correct answer
      isCorrect = (selectedIndex == 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ Question'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'What is the capital of France?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            MCQOption(
              index: 0,
              text: 'Berlin',
              isSelected: selectedOptionIndex == 0,
              isCorrect: false,
              onTap: () => checkAnswer(0),
            ),
            MCQOption(
              index: 1,
              text: 'Paris',
              isSelected: selectedOptionIndex == 1,
              isCorrect: isCorrect,
              onTap: () => checkAnswer(1),
            ),
            MCQOption(
              index: 2,
              text: 'London',
              isSelected: selectedOptionIndex == 2,
              isCorrect: false,
              onTap: () => checkAnswer(2),
            ),
            MCQOption(
              index: 3,
              text: 'Rome',
              isSelected: selectedOptionIndex == 3,
              isCorrect: false,
              onTap: () => checkAnswer(3),
            ),
            SizedBox(height: 20),
            isCorrect != null
                ? Text(
                    isCorrect
                        ? 'Correct! Paris is the capital of France.'
                        : 'Incorrect. Please try again.',
                    style: TextStyle(
                      fontSize: 16,
                      color: isCorrect ? Colors.green : Colors.red,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class MCQOption extends StatelessWidget {
  final int index;
  final String text;
  final bool isSelected;
  final bool isCorrect;
  final Function onTap;

  MCQOption({
    required this.index,
    required this.text,
    required this.isSelected,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.blue : Colors.grey.shade300,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${String.fromCharCode(65 + index)}. $text',
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            isSelected
                ? Icon(
                    isCorrect ? Icons.check_circle : Icons.cancel,
                    color: isCorrect ? Colors.green : Colors.red,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
