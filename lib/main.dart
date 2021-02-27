import 'package:flutter/material.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'amplifyconfiguration.dart';

import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:flutterapp/fig2flutterapp/generatedloadingpagewidget/GeneratedLoadingPageWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget/GeneratedSignUpSignInpageWidget.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget1/GeneratedSignUpSignInpageWidget1.dart';
import 'package:flutterapp/fig2flutterapp/generatedsignupsigninpagewidget1v1/GeneratedSignUpSignInpageWidget1v1.dart';
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

//---------------------------------------------------------------
/*
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // gives our app awareness about whether we are succesfully connected to the cloud
  bool _amplifyConfigured = false;

  // Instantiate Amplify
  Amplify amplifyInstance = Amplify();

  // controllers for text input
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isSignUpComplete = false;
  bool isSignedIn = false;

  @override
  void initState() {
    super.initState();

    // amplify is configured on startup
    _configureAmplify();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  void _configureAmplify() async {
    if (!mounted) return;

    // add all of the plugins we are currently using
    // in our case... just one - Auth
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    amplifyInstance.addPlugin(authPlugins: [authPlugin]);

    await amplifyInstance.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }
 */


//---------------------------------------------------------------
class _Fig2FlutterApp extends StatefulWidget {
  @override
  Fig2FlutterApp createState() {
    return Fig2FlutterApp();
  }
}


class Fig2FlutterApp extends State<_Fig2FlutterApp> {

  // Instantiate Amplify
  //Switched it from 'Amplify' to 'AmplifyCore'
  AmplifyCore amplifyInstance = AmplifyCore();

  // controllers for text input
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
    final userController = TextEditingController();
// gives our app awareness about whether we are succesfully connected to the cloud

  bool _amplifyConfigured = false;

  bool isSignUpComplete = false;
  bool isSignedIn = false;

  Future<String> registerUser(LoginData data) async {
  try {
    //Addtional attribute that aren't used to manage idenities
    //EXP: phone number, zip code, etc
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
    };

    SignUpResult res = await Amplify.Auth.signUp(
        username: data.name,
        password: data.password,
        options: CognitoSignUpOptions(userAttributes: userAttributes));
    setState(() {
      isSignUpComplete = res.isSignUpComplete;
      print("Sign up: " + (isSignUpComplete ? "Complete" : "Not Complete"));
    });
  } on AuthError catch (e) {
    print(e);
    return "Register Error: " + e.toString();
  }
}

Future<String> signIn(LoginData data) async {
  try {
    SignInResult res = await Amplify.Auth.signIn(
      username: data.name,
      password: data.password,
    );
    setState(() {
      isSignedIn = res.isSignedIn;
    });

    if (isSignedIn)
      Alert(context: context, type: AlertType.success, title: "You've succesfully logged in")
          .show();
  } on AuthError catch (e) {
    print(e);
    Alert(context: context, type: AlertType.error, title: "Your email/password is invalid. Please try again.")
        .show();
    return 'Log In Error: ' + e.toString();
  }
}

  @override
  void initState() {
    super.initState();
    //amplify is configured on startup
    _configureAmplify();
  }

/*
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  } */

  /*
  void _configureAmplify() async {
    if (!mounted) return;

    // add all of the plugins we are currently using
    // in our case... just one - Auth
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    amplifyInstance.addPlugin(authPlugins: [authPlugin]);

    await amplifyInstance.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }
*/
   void _configureAmplify() async {

    try {
      Amplify.addPlugin(AmplifyAuthCognito());
      Amplify.addPlugin(AmplifyAnalyticsPinpoint());

      await Amplify.configure(amplifyconfig);

      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MBM Demo',
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
        '/GeneratedSignUpSignInpageWidget1v1': (context) =>
            GeneratedSignUpSignInpageWidget1v1(),
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