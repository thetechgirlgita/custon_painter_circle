import 'package:flutter/material.dart';

void main(){
  runApp(const CustomPainter_Circle());
}
// ignore: camel_case_types
class CustomPainter_Circle extends StatelessWidget {
  const CustomPainter_Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Demo(),
    );
  }
}
class Demo extends StatelessWidget {
  const Demo({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: const Text("Let's Draw a Circle",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: CustomPaint(
        painter: Circle(),
        child: Container(),
      ),
    );
  }
}




class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size){
  //TODO: implement paint
  var paint = Paint()
  ..strokeWidth = 5
  ..color = Colors.pinkAccent
  ..strokeCap = StrokeCap.round;

  Offset center = Offset(size.width /2.0 , size.height /2);
  canvas.drawCircle(center, 100, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
  //Todo : implement shouldRepaint
  return false;
  }
}