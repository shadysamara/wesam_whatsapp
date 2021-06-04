import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';
import 'package:whatsapp_clone/ui/auth/otp_verify.dart';
import 'package:whatsapp_clone/ui/auth/phone_verify.dart';
import 'package:whatsapp_clone/ui/welcome/welcome_screen.dart';
import 'package:whatsapp_clone/whatsapp_home.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          primaryColor: Color(0xFF075E54), accentColor: Color(0xFF25D366)),

      home: StatusScreen(),
      routes: <String, WidgetBuilder>{
        '/phone': (BuildContext context) => VerifyPhoneScreen(),
        '/otp': (BuildContext context) => OTPVerifyScreen(),
        '/home': (BuildContext context) => WhatsAppHome(cameras) //7
      },
      //WhatsAppHome(cameras),
    );
  }
}
