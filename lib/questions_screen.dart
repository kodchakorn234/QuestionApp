import 'dart:math';

import 'package:flutter/material.dart';
import 'package:secondproject/answer_button.dart';
import 'package:secondproject/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  //สร้างสถานะ
  State<QuestionsScreen> createState() {
    return _QuestionsScreenstate(); //ส่งคืนค่าquestionscreenstate
  }
}

class _QuestionsScreenstate extends State<QuestionsScreen> {
  var currentQuestionIndex = 0; //ดัชชีคำถามปัจจุบัน (เลขข้อ)
  var totalNumberOfQuestions = 20; //กำหนดจำนวนคำถาม

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex =
          Random().nextInt(totalNumberOfQuestions); //สุ่มคำถาม
      //currentQuestionIndex += 1; //ไปคำถามถัดไป
      //ฟังก์ชั่น setstate บอกว่าควรสร้าง method
    });
  }

  @override
  Widget build(context) {
    final currentQuestion =
        questions[currentQuestionIndex]; //รับค่าคำถามปัจจุบัน

    return SizedBox(
      width: double.infinity, //ค่าพิเศษ ใช้ความกว้างมากที่สุดเท่าที่จะกว้างได้
      child: Container(
        margin: const EdgeInsets.all(20), //เพิ่มระยะขอบในทุกทิศทาง
        child: Column(
          //ใส่คอลัมให้คำถามและคำตอบเรียงลงมาด้านล่าง
          mainAxisAlignment:
              MainAxisAlignment.center, //จัดตำแหน่งให้อยู่กึ่งกลาง
          crossAxisAlignment: CrossAxisAlignment
              .stretch, //รายการคอลัมจะยืดออกกว้างที่สุด เพื่อเติมเต็มความกว้างของคอลัม
          children: [
            //ต้องการวิตเจ็ตเป็นค่าในรายการนี้
            Text(
              //กำหนดคำถาม
              currentQuestion
                  .text, //เข้าถึงข้อมูลด้วยที่จัดเก็บไว้ในobject โดยใช้เครื่องหมาย .
              style: GoogleFonts.lato(
                //ใส่ฟร้อนที่เพิ่มเข้ามา อย่าลืม import
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // จัดข้อความเป็นกึ่งกลางในแนวนอน
            ),
            const SizedBox(
              height: 30, //mapจะไม่เปลี่ยนแปลงรายการเดิม แต่จะส่งคืนรายการใหม่
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //เรียกใช้ฟังก์ชั่นสับเปลี่ยนค่า
              //กระจายค่ารายการนี้
              return AnswreButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(
                        answer); //เมื่อแตะปุ่ม คำถามและคำตอบจะถูกเรียก คำตอบของปุ่มจะถูกส่งผ่านเป็นค่าเมื่อตอบคำถาม
                  });
            }), //ทำปุ่มแบบไดนามิก แปลงstring เป็น widget
          ],
        ),
      ),
    );
  }
}
