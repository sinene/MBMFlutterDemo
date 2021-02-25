import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fig2flutterapp/generatedcometitionswidget/generated/GeneratedGroup3Widget.dart';
import 'package:flutterapp/fig2flutterapp/generatedcometitionswidget/generated/GeneratedIntersectWidget27.dart';
import 'package:flutterapp/fig2flutterapp/generatedcometitionswidget/generated/GeneratedAvatarWidget1.dart';
import 'package:flutterapp/fig2flutterapp/generatedcometitionswidget/generated/GeneratedAvatarWidget.dart';

/* Group Group 1501
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup1501Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293.0,
      height: 151.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 293.0,
              height: 151.0,
              child: GeneratedIntersectWidget27(),
            ),
            Positioned(
              left: 43.407405853271484,
              top: 0.0,
              right: null,
              bottom: null,
              width: 249.59259033203125,
              height: 151.0,
              child: GeneratedGroup3Widget(),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.10238907849829351;

                final double height =
                    constraints.maxHeight * 0.1986754966887417;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.17747440273037543,
                      y: constraints.maxHeight * 0.7748344370860927,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedAvatarWidget(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.10238907849829351;

                final double height =
                    constraints.maxHeight * 0.1986754966887417;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.027303754266211604,
                      y: constraints.maxHeight * 0.7748344370860927,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedAvatarWidget1(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
