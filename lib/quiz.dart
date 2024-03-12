import 'package:flutter/material.dart';
import 'package:secondproject/data/questions.dart';
import 'package:secondproject/questions_screen.dart';
import 'package:secondproject/start_screen.dart';
import 'package:secondproject/result_screen.dart';

class Quiz extends StatefulWidget {
  //Stateful สร้าง 2 คลาส
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    //เพิ่มวิธีการสร้างสถานะซึ่งต้องส่งคืนค่าสถานะ
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //เชื่อมต่อคลาสที่ 2 กับคลาสแรก
  List<String> selectedAnswers =
      []; //รายการคำตอบที่ผู้ใช้เลือก คำตอบแรกควรมาจากคำถามแรก

  var activeScreen = 'start-screen';
  //เก็บwidget ไว้ในตัวแปร /ส่งตัวชี้ที่หน้าจอสวัสซ์ไปยังหน้าจอเริ่มต้น

  void switchScreen() {
    //ไม่ส่งคืนค่า
    //ขยายสถานะผ่านฟังก์ชั่นเปล่า
    setState(() {
      //เมื่อหมดคำตอบแล้ว ควรรีเซ็ตกลับเป็นค่าว่าง
      activeScreen = 'questions-screen';
      //ในฟังก์ชั่นนี้ควรเปลี่ยนแปลง Ui ให้กับผู้ใช้ เขียนทับค่าที่เก็บไว้ใน activeScreen
      // ด้วย widgetหน้าจอเมื่อดำเนินการสลับหน้าจอ
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers
        .add(answer); //ในทุกคำถามที่ตอบ เราจะเพิ่มคำตอบใหม่ให้กับรายการที่เลือก

    if (selectedAnswers.length == 10) {
      //ถ้าจำนวนคำถามปัจจุบัน = 10 เท่ากับคำถามหมดแล้ว
      setState(() {
        activeScreen =
            'results-screen'; //ถ้าตอบคำถามทั้งหมดแล้ว ให้กลับมาหน้าจอเพิ่มต้น
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      //หน้าจอเริ่มต้นจะกำหนดเป็น SS แต่ถ้าเงื่อนไขถูกแทนที่
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      ); //ตั้งค่าwidgetหน้าจอเป็นQtsแบบมีเงื่อนไข
    } //โค้ดด้านในจะถูกดำเนินการก็ต่อเมื่อเงื่อนไขตรงเท่านั้น

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      ); //วิดเจตหน้าจอ=resultscreen
    }

    return MaterialApp(
        //คือการส่งออกหน้าจอเริ่มต้น
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //ใช้ไล่ระดับสี
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 142, 59, 232),
              Color.fromARGB(255, 76, 22, 194)
            ],
            begin: Alignment.topLeft, //กำหนดจุดเริ่มต้นและสิ้นสุดในการไล่สี
            end: Alignment.bottomRight,
          ),
        ),
        child: screenWidget,
      ),
    ));
  }
}
