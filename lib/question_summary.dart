import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData,
      {super.key}); //สร้างฟังก์ชั่นสรุปคำถามเพื่อยอมรับอากิวเมนต์
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        //ทำให้เลื่อนได้
        child: Column(
          children: summaryData.map(
            (data) {
              //map คือการจับคู่ค่ากับค่าใหม่
              return Row(children: [
                Text(((data['question_index'] as int) + 1)
                    .toString()), //แปลงint ให้เป็น string
                Expanded(
                  //ใช้ขยายพื้นที่หน้าจอ โดยใช้ความกว้างไม่เกินแถวนั้น
                  child: Column(
                    //เพิ่มคอลัมเพื่อให้ภายในแสดงคำถามและคำตอบที่เลือกและคำตอบที่ถูก
                    children: [
                      Text(
                        data['question'] as String,
                      ), //as เป็นการกำหนดประเภทให้กับตัวแปรที่จะรับ
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          data['user_answer'] as String), //บังคับให้เป็น string
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                )
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
