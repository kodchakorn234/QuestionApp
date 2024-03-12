import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secondproject/data/questions.dart';
import 'package:secondproject/question_summary.dart';
import 'package:secondproject/question_summary/question_summary.dart';
import 'package:secondproject/question_summary/summary_item.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.chosenAnswers,
      required this.onRestart}); //เพิ่มฟังก์ชั่นคอนสตรัคเตอร์ ยอมรับ และส่งต่ออาร์กิวเมนต์คีย์ที่มีชื่อ ใส่required เพราะต้องมั่นใจว่าจะระบุค่าสำหรับอาร์กิวเมนต์เมื่อสร้างโปรเจคนี้

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    //ข้อมูลสรุป Map ใช้จับคู่ค่า key กับ value
    final List<Map<String, Object>> summary = [];

    for (var i = 0;
        i <
            chosenAnswers
                .length; //กำหนดให้loopนี้ทำงานไปเรื่อยๆจนกว่าจะมีค่าน้อยกว่าchosenAnswers
        i++) {
      summary.add(
        //ข้อมูลสรุป
        {
          //map คือการแปลง list ออกไปเป็น widget
          'question_index': i, //แสดงค่าดัชนีคำถาม : คือการ map
          'question': questions[i].text, //รับข้อความคำถามและเก็บข้อความไว้
          'correct_answer': questions[i].answers[0], //คำตอบที่ถูกคือคำตอบแรก
          'user_answer': chosenAnswers[i] //คำตอบที่เลือกทั้งหมด
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions =
        questions.length; //สร้างตัวแปรให้เป็น จำนวนของคำถาม
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity, //ค่าพิเศษ ใช้ความกว้างมากที่สุดเท่าที่จะกว้างได้
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'คุณตอบถูก $numCorrectQuestions จาก 10 คำถาม\nเยี่ยมมาก!',
            style: GoogleFonts.lato(
                color: Color.fromARGB(255, 219, 140, 237),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ), //เพิ่มระยะห่าง
          QuestionsSummary(
              summaryData), //รับข้อมูลสรุปและดำเนินการเป็นฟังก์ชั่น
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.refresh),
            label: const Text(' '),
          )
        ]),
      ),
    );
  }
}
