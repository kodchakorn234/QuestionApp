import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  //สร้างclass ขึ้นมาเพื่อเก็บการไล่สี
  const StartScreen(this.startQuiz,
      {super.key}); //ยอมรับอาร์กิวเมนต์ นับว่าstartQuiz จะเป็นฟังก์ชั่น
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      //อย่าลืมใส่ center ให้ไล่ระดับสีทั้งหน้าจอ
      child: Column(
        mainAxisSize: MainAxisSize
            .min, //ตั้งค่าแกนกลาง ให้วิตเจ็ตใช้พื้นที่แนวตั้งให้น้อยสุดแทน
        children: [
          Image.asset(
            'assets/images/quiz-logo.png' //ใส่รูป
            ,
            width: 300, //ขนาด 300px
            color: const Color.fromARGB(147, 255, 255,
                254), //ใส่สีให้รูปก่อนแล้วกำหนดความโปร่งแสงของรูป
          ),
          const SizedBox(
              height: 80), //สามารถกำหนดขนาดกล่องเปล่าที่แน่นอนของวิตเจ็ตได้
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              //ตั้งค่าสีและขนาดตัวอักษร
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            //เพิ่มการใส่ iconลงในปุ่ม
            onPressed: startQuiz,
            //โค้ดจะถูกรันเมื่อกดปุ่มเท่านั้น

            style: OutlinedButton.styleFrom(
                //สร้างสไตล์ของปุ่มจากข้อความ
                foregroundColor:
                    Colors.white), //กำหนดสีพื้นหน้า ซึ่งจะเป็นสีตัวอักษร
            icon: const Icon(Icons.arrow_right_alt), //เพิ่มไอค่อน
            label: const Text(
                'Start Quiz'), //เพิ่มข้อความลงในปุ่ม ไม่ใช่ child อีกแล้ว ให้เปลี่ยนเป็นเนื้อหา
          )
        ],
      ),
    );
  }
}
