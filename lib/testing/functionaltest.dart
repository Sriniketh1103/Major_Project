import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vision_flutter/pages/homepage.dart';

void main() {
  group('YoloVideoWidget System Test', () {
    testWidgets('Starts and stops object detection', (WidgetTester tester) async {
      // Build the widget tree with the YoloVideo widget
      await tester.pumpWidget(MaterialApp(
        home: Homepage(),
      ));

      // Verify that the object detection is not started initially
      expect(find.byType(CameraPreview), findsOneWidget);
      expect(find.byType(IconButton), findsOneWidget);
      expect(find.byIcon(Icons.stop), findsNothing);

      // Tap on the play button to start object detection
      await tester.tap(find.byIcon(Icons.play_arrow));
      await tester.pump();

      // Verify that object detection is started
      expect(find.byIcon(Icons.stop), findsOneWidget);

      // Tap on the stop button to stop object detection
      await tester.tap(find.byIcon(Icons.stop));
      await tester.pump();

      // Verify that object detection is stopped
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    });
  });
}
