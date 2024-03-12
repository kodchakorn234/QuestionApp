import 'package:flutter/material.dart';

class QuestionIdentifer extends StatelessWidget {
  const QuestionIdentifer({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionnumber = questionIndex + 1;
    return Container(
      //สร้างcontainer ตกแต่งหน้าคำถามกะคำตอบที่เลือก
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Color.fromARGB(255, 48, 247, 108)
            : Color.fromARGB(255, 224, 91, 91),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionnumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
