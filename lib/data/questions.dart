import 'package:secondproject/models/quiz_question.dart';

final questions = [
  QuizQuestion(
    'องค์ประกอบหลัก UI ของ flutter คืออะไร',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('flutter สร้างUi ขึ้นมาได้อย่างไร', [
    'โดยการรวมวิดเจ็ตไว้ในโค้ด',
    'ด้วยการรวมวิดเจ็ตในโปรแกรมแก้ไขภาพ',
    'โดยการกำหนดวิดเจ็ตในไฟล์ปรับแต่ง',
    'โดยใช้ XCode สำหรับ iOS และ Android Studio สำหรับ Android',
  ]),
  QuizQuestion(
    'StatefulWidget มีจุดประสงค์อะไร?',
    [
      'อัปเดต UI เมื่อข้อมูลเปลี่ยนแปลง',
      'อัปเดตข้อมูล เมื่อ UI เปลี่ยนแปลง',
      'ละเว้นการเปลี่ยนแปลงข้อมูล',
      'เรนเดอร์ UI ที่ไม่ขึ้นอยู่กับข้อมูล',
    ],
  ),
  QuizQuestion(
    'คุณควรลองใช้ widget ไหนให้บ่อยขึ้น',
    [
      'StatelessWidget',
      'StatefulWidget',
      'ทั้งสองอย่างก็ดีพอๆ กัน',
      'ไม่มีข้อใดถูก',
    ],
  ),
  QuizQuestion(
    'จะเกิดอะไรขึ้นหากคุณเปลี่ยนข้อมูลใน StatelessWidget',
    [
      'UI ไม่อัปเดต',
      'UI อัปเดต',
      'มีการอัปเดต StatefulWidget ที่ใกล้ที่สุด',
      'StatefulWidgets ที่ซ้อนกันจะได้รับการอัปเดต',
    ],
  ),
  QuizQuestion(
    'คุณควรอัปเดตข้อมูลภายใน StatefulWidgets อย่างไร',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Stateless Widget และ Stateful Widget ต่างกันอย่างไร?',
    [
      'stateless ไม่สามารถเปลี่ยน UI และอัปเดตสถานะได้ แต่ stateful สามารถทำได้ ',
      'stateless สามารถเปลี่ยน UI และอัปเดตสถานะได้ แต่ stateful ไม่สามารถทำได้ ',
      'ทั้งสองสถานะไม่มีความแตกต่างกัน',
      'ผิดทุกข้อ',
    ],
  ),
  QuizQuestion(
    ' Flutter คืออะไร?',
    [
      'Flutter เป็น Framework สำหรับการพัฒนาแอปพลิเคชันที่สามารถทำงานได้ทั้งบน iOS และ Android โดยใช้ภาษา Dart ',
      'Framework สำหรับใช้พัฒนาแอปพลิเคชันบน ios ',
      'flutter ใช้ภาษา python ในการเขียน',
      'flutter ไม่ใช้พื้นฐาน OOP',
    ],
  ),
  QuizQuestion(
    ' Hot Reload ใน Flutter คืออะไร?',
    [
      'เป็นคุณสมบัติที่ช่วย ทำให้สามารถดูผลลัพธ์ของการเปลี่ยนแปลงโปรแกรมทันทีโดยไม่ต้องรีสตาร์ทแอป ',
      'เป็นการดูการเปลี่ยนแปลงของแอปพลิเคชั่น โดยรีสตาร์ทแอป ',
      'เป็นคุณสมบัติที่ช่วยในการรีโหลด Ui',
      'เป็นคุณสมบัติในการอัปเดตstateของUi',
    ],
  ),
  QuizQuestion(
    ' การใช้งาน StatelessWidget มีขั้นตอนอย่างไร?',
    [
      'สร้าง class ที่ extends StatelessWidget และให้มีเมธอด build ที่คืนค่า Widget ที่ต้องการสร้าง ',
      'สร้าง class ที่ StatelessWidget และให้มีเมธอด build ที่คืนค่า Widget ที่ต้องการสร้าง ',
      'ไม่จำเป็นต้องสร้าง class ',
      'สร้าง class ที่ extends StatefulWidget และให้มีเมธอด build ที่คืนค่า Widget ที่ต้องการสร้าง',
    ],
  ),
  QuizQuestion(
    ' การใช้งาน Stateful Widget ต้องมีขั้นตอนอะไรบ้าง?',
    [
      'สร้าง class ที่ extends StatefulWidget และ class ที่ extends State สำหรับการเก็บสถานะ ',
      'สร้าง class แต่ไม่จำเป็นต้อง extends ',
      'ไม่จำเป็นต้องสร้าง class ',
      'สร้าง class ที่ extends StatelessWidget และให้มีเมธอด build ที่คืนค่า Widget ที่ต้องการสร้าง',
    ],
  ),
  QuizQuestion(
    ' MaterialApp ใน Flutter มีบทบาทอะไร?',
    [
      'ใช้แกะโครงสร้างพื้นฐานของแอปพลิเคชัน Flutter รวมถึงการกำหนดธีมและการจัดการกับการนำทาง',
      'ใช้สร้าง class เริ่มต้นสำหรับการเรียกใช้แอป ',
      'ใช้เพื่อการ runapp ในแต่ละproject',
      'ไม่รู้อะ แต่ไม่ใส่แล้วรันไม่ได้',
    ],
  ),
  QuizQuestion(
    ' การใช้งาน ListView ใน Flutter คืออะไร?',
    [
      'เป็น Widget ที่ใช้ในการแสดงรายการข้อมูลต่อเนื่อง ',
      'ใช้สำหรับเลื่อนดูข้อมูลในแนวตั้ง ',
      'ใช้สำหรับเลื่อนดูข้อมูลในแนวนอน',
      'เป็น widget ที่ใช้แสดง list ',
    ],
  ),
  QuizQuestion(
    ' Flutter Widget ที่ใช้ในการแสดงรูปภาพคือ?',
    [
      'Image หรือ NetworkImage',
      'Image ',
      'NetworkImage',
      'ไม่ใช่ทั้งสองตัวเลือก ',
    ],
  ),
  QuizQuestion(
    ' การใช้งาน Flutter Packages คืออะไร?',
    [
      'เป็นบริการที่ช่วยในการเพิ่มฟังก์ชันหรือความสามารถเพิ่มเติม',
      'เป็นบริการที่ช่วยเพิ่มความเสถียรให้กับ flutter ',
      'เป็นฟังก์ชั่นเพิ่มข้อมูลรูปภาพ',
      'เป็นการนำเอาpacketเสริมจากภายนอกเข้ามาใช้ภายในแอป ทำให้แอปทำงานได้ดีขึ้น',
    ],
  ),
  QuizQuestion(
    ' คำสั่ง pubspec.yaml ใน Flutter มีหน้าที่อะไร?',
    [
      'เป็นไฟล์ที่ใช้กำหนดค่าต่าง ๆ ที่เกี่ยวข้องกับโปรเจค',
      'เป็นไฟล์ไว้เก็บรูปภาพ',
      'เป็นไฟล์ไว้เก็บเวอร์ชั่นของ flutter',
      'เป็นไฟล์สำหรับการ test widget',
    ],
  ),
  QuizQuestion(
    ' การใช้งาน StatefulWidget และ State ทำงานอย่างไร?',
    [
      'StatefulWidget เก็บสถานะของ Widget และ State ใช้สำหรับการเปลี่ยนแปลงสถานะและรีเรนเดอร์ UI',
      'StatefulWidget เก็บสถานะของ state ใช้สำหรับการเปลี่ยนแปลงสถานะและรีเรนเดอร์ UI',
      'StatefulWidget เก็บสถานะของ Widget ใช้สำหรับการเปลี่ยนแปลงสถานะและรีเรนเดอร์ UI',
      'ไม่ถูกทั้งสองข้อ',
    ],
  ),
  QuizQuestion(
    'คำสั่งในการติดตั้ง Flutter และ Dart คืออะไร?',
    [
      'flutter doctor',
      'flutter run',
      'flutter pub',
      'flutter version',
    ],
  ),
  QuizQuestion(
    'การใช้งาน Navigation ใน Flutter ทำอย่างไร?',
    [
      'ใช้เพื่อทำการเปลี่ยนหน้าและการนำทางในแอป',
      'ใช้เพื่อทำการอัปเดต UI',
      'ใช้สำหรับตรวจสอบหน้าที่จะไป',
      'ใช้เพื่อเปลี่ยนใจเธอให้มารักผม',
    ],
  ),
  QuizQuestion(
    'ภาษา Dart ถุกพัฒนาขึ้นโดยใคร?',
    [
      'Google',
      'OpenAi',
      'James Gosling และทีมพัฒนา',
      'Guido van Rossum ',
    ],
  ),
];
