import 'package:flutter/material.dart';

class AnswreButton extends StatelessWidget {
  const AnswreButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            //กำหนดช่องว่างในปุ่มให้มีแนวตั้งแนวนอนแตกต่างกัน
            vertical: 10,
            horizontal: 40), //ค่าแนวตั้ง 10 แนวนอน 40
        backgroundColor: Colors.purple, //กำหนดสีปุ่ม
        foregroundColor: Colors.white, //กำหนดสีตัวอักษร
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), //กำหนดรัศมีขอบให้ปุ่ม
        ),
      ),

      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ), //ข้อตวามภายในปุ่มให้อยู่ตรงกลาง
    );
  }
}
