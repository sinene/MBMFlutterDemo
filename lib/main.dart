import 'package:flutter/material.dart';
import 'package:flutterapp/fig2flutterapp/generatedloadingpagewidget/GeneratedLoadingPageWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget/GeneratedSignUpSignInpageWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget1/GeneratedSignUpSignInpageWidget1.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget2/GeneratedSignUpSignInpageWidget2.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget3/GeneratedSignUpSignInpageWidget3.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget4/GeneratedSignUpSignInpageWidget4.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget5/GeneratedSignUpSignInpageWidget5.dart';
import 'package:flutterapp/fig2flutterapp/generatedcometitionswidget/GeneratedCometitionsWidget.dart';
import 'package:flutterapp/fig2flutterapp/generateddashboardzachwidget/GeneratedDashboardZachWidget.dart';
import 'package:flutterapp/fig2flutterapp/generateddashboardzachwidget1/GeneratedDashboardZachWidget1.dart';
import 'package:flutterapp/fig2flutterapp/generateddashboardzachwidget2/GeneratedDashboardZachWidget2.dart';
import 'package:flutterapp/fig2flutterapp/generatedarrowshort_upwidget/GeneratedArrowshort_upWidget.dart';
import 'package:flutterapp/fig2flutterapp/generateddashboardzachwidget3/GeneratedDashboardZachWidget3.dart';
import 'package:flutterapp/fig2flutterapp/generatedmessagingwidget/GeneratedMessagingWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedmessagingzachwidget/GeneratedMessagingZachWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedprofilemycontentwidget/GeneratedProfileMycontentWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedprofilemycontentwidget1/GeneratedProfileMycontentWidget1.dart';
import 'package:flutterapp/fig2flutterapp/generatedprofilemycontentwidget2/GeneratedProfileMycontentWidget2.dart';
import 'package:flutterapp/fig2flutterapp/generatedprofileotherusercontentwidget/GeneratedProfileOtherusercontentWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedprofilelikedwidget/GeneratedProfileLikedWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedprofileeditandsettingswidget/GeneratedProfileEditandSettingsWidget.dart';
import 'package:flutterapp/fig2flutterapp/generateddashboardzachwidget4/GeneratedDashboardZachWidget4.dart';
import 'package:flutterapp/fig2flutterapp/generateddashboardzachwidget5/GeneratedDashboardZachWidget5.dart';

void main() {
  runApp(Fig2FlutterApp());
}

class Fig2FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedLoadingPageWidget',
      routes: {
        '/GeneratedLoadingPageWidget': (context) =>
            GeneratedLoadingPageWidget(),
        '/GeneratedSignUpSignInpageWidget': (context) =>
            GeneratedSignUpSignInpageWidget(),
        '/GeneratedSignUpSignInpageWidget1': (context) =>
            GeneratedSignUpSignInpageWidget1(),
        '/GeneratedSignUpSignInpageWidget2': (context) =>
            GeneratedSignUpSignInpageWidget2(),
        '/GeneratedSignUpSignInpageWidget3': (context) =>
            GeneratedSignUpSignInpageWidget3(),
        '/GeneratedSignUpSignInpageWidget4': (context) =>
            GeneratedSignUpSignInpageWidget4(),
        '/GeneratedSignUpSignInpageWidget5': (context) =>
            GeneratedSignUpSignInpageWidget5(),
        '/GeneratedCometitionsWidget': (context) =>
            GeneratedCometitionsWidget(),
        '/GeneratedDashboardZachWidget': (context) =>
            GeneratedDashboardZachWidget(),
        '/GeneratedDashboardZachWidget1': (context) =>
            GeneratedDashboardZachWidget1(),
        '/GeneratedDashboardZachWidget2': (context) =>
            GeneratedDashboardZachWidget2(),
        '/GeneratedArrowshort_upWidget': (context) =>
            GeneratedArrowshort_upWidget(),
        '/GeneratedDashboardZachWidget3': (context) =>
            GeneratedDashboardZachWidget3(),
        '/GeneratedMessagingWidget': (context) => GeneratedMessagingWidget(),
        '/GeneratedMessagingZachWidget': (context) =>
            GeneratedMessagingZachWidget(),
        '/GeneratedProfileMycontentWidget': (context) =>
            GeneratedProfileMycontentWidget(),
        '/GeneratedProfileMycontentWidget1': (context) =>
            GeneratedProfileMycontentWidget1(),
        '/GeneratedProfileMycontentWidget2': (context) =>
            GeneratedProfileMycontentWidget2(),
        '/GeneratedProfileOtherusercontentWidget': (context) =>
            GeneratedProfileOtherusercontentWidget(),
        '/GeneratedProfileLikedWidget': (context) =>
            GeneratedProfileLikedWidget(),
        '/GeneratedProfileEditandSettingsWidget': (context) =>
            GeneratedProfileEditandSettingsWidget(),
        '/GeneratedDashboardZachWidget4': (context) =>
            GeneratedDashboardZachWidget4(),
        '/GeneratedDashboardZachWidget5': (context) =>
            GeneratedDashboardZachWidget5(),
      },
    );
  }
}