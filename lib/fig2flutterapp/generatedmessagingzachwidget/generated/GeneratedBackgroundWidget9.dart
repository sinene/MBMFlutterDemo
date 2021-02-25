import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/svg/svg.dart';

/* Vector Background
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBackgroundWidget9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 30.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(76, 0, 0, 0),
            offset: Offset(0.0, 0.33329999446868896),
            blurRadius: 0.0,
          )
        ],
      ),
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath('M0 0L50 0L50 30L0 30L0 0Z')
          ..color = Color.fromARGB(239, 249, 249, 249)
          ..setBlur(27.182817459106445),
      ]),
    );
  }
}
