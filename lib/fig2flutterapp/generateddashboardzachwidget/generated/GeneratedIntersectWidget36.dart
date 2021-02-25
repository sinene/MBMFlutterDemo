import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/mask/mask.dart';

/* BooleanOperation Intersect
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIntersectWidget36 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.0,
      height: 540.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(2.0, 2.0),
            blurRadius: 8.0,
          ),
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(-2.0, -2.0),
            blurRadius: 8.0,
          )
        ],
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: Mask.fromSVGPath(
                'M32 0C14.3269 0 0 14.3269 0 32L0 508C0 525.673 14.3269 540 32 540L304 540C321.673 540 336 525.673 336 508L336 32C336 14.3269 321.673 0 304 0L32 0Z',
                child: Image.asset(
                  "assets/images/c8f0c3fd24d920dfb62fc74379d24ff4147ad911.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 336.0,
                  height: 540.0,
                  colorBlendMode: BlendMode.dstATop,
                ),
                offset: Offset(0.0, 0.0),
              ),
            )
          ]),
    );
  }
}
