import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vision_flutter/pages/homepage.dart';

void main() {
  group('YoloVideoWidget Black-Box Test', () {
    testWidgets('Displays camera preview and controls', (WidgetTester tester) async {
      // Build the widget tree with the YoloVideo widget
      await tester.pumpWidget(MaterialApp(
        home: Homepage(),
      ));

      // Verify that the CameraPreview widget is present
      expect(find.byType(CameraPreview), findsOneWidget);

      // Verify that the play button is present
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);

      // Verify that the stop button is initially not present
      expect(find.byIcon(Icons.stop), findsNothing);

      // Tap on the play button to start object detection
      await tester.tap(find.byIcon(Icons.play_arrow));
      await tester.pump();

      // Verify that the stop button appears after starting detection
      expect(find.byIcon(Icons.stop), findsOneWidget);

      // Tap on the stop button to stop object detection
      await tester.tap(find.byIcon(Icons.stop));
      await tester.pump();

      // Verify that the play button reappears after stopping detection
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    });
  });
}
