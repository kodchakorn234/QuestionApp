import 'dart:math';

import 'package:secondproject/data/questions.dart';

class QuizQuestion {
  //พิมพ์เขียวของคำถามและคำตอบ
  QuizQuestion(
      this.text, this.answers); //เมื่อวัตถุสร้างขึ้น มันจะไม่เปลี่ยนแปลงค่า
  //ไม่ต้องขยายอะไรเลย เพราะไม่ใช่widget
  final String text; //คำถาม
  final List<String> answers; //ลิสคำตอบ

  List<String> getShuffledAnswers() {
    //สับเปลี่ยนสมาชิกในลิส
    final shuffledList = List.of(
        answers); //สร้างสำเนาและเก็บไว้ในตัวแปร ก่อนทำการอัปเดตค่าที่สับเปลี่ยน
    final questionlist = List.of(questions);
    shuffledList //แก้ไขค่าในหน่วยความจำด้วยการสุ่ม
        .shuffle(); //ใช้เมธอดจาดผลลัพท์ของการเรียกใช้ฟังก์ชั่นหรือเมธอดอื่น
    questionlist.shuffle(); // shuffle เป็นการสุ่มค่าใน list
    return shuffledList;
  }
}

class RandomQuiz {
  List<QuizQuestion> questions;

  RandomQuiz(this.questions);

  QuizQuestion getRandomQuestion() {
    final random = Random();
    final randomIndex = random.nextInt(questions.length);
    return questions[randomIndex];
  }
}
