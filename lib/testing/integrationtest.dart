import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:flutter_vision/flutter_vision.dart';
import 'package:vision_flutter/pages/homepage.dart';

void main() {
  late FlutterVision vision;
  group('YoloVideoWidget Integration Test', () {
    testWidgets('Displays camera preview', (WidgetTester tester) async {
      // Create a fake camera controller
      // ignore: prefer_const_constructors
      final List<CameraDescription> cameras = [CameraDescription(name: '0', lensDirection: CameraLensDirection.back, sensorOrientation: 2)];
      final controller = CameraController(cameras[0], ResolutionPreset.medium);

      // Pump the widget tree with the YoloVideo widget
      await tester.pumpWidget(MaterialApp(
        home: Homepage(),
      ));

      // Verify that the CameraPreview widget is present
      expect(find.byType(CameraPreview), findsOneWidget);
    });
  });
}
