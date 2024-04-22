import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vision_flutter/pages/homepage.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  runApp(const 
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

