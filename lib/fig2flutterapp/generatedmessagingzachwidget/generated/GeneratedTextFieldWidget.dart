import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Rectangle Text Field
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.translate(
        x: -1.00,
        y: -1.00,
        z: 0,
        child: Container(
          width: 236.0,
          height: 35.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.5),
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 199, 199, 204),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.5),
            child: Container(
              color: Color.fromARGB(127, 255, 255, 255),
            ),
          ),
        ));
  }
}
