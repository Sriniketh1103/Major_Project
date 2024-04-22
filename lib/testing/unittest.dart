import 'package:flutter_test/flutter_test.dart';
import 'package:vision_flutter/pages/homepage.dart';

void main() {
  group('YoloVideoWidget', () {
    test('startDetection sets isDetecting to true', () {
      // Arrange
      final yoloVideoState = _YoloVideoState();
      
      // Act
      yoloVideoState.startDetection();
      
      // Assert
      expect(yoloVideoState.isDetecting, true);
    });

    test('stopDetection sets isDetecting to false', () {
      // Arrange
      final yoloVideoState = _YoloVideoState();
      yoloVideoState.isDetecting = true; // Simulate detection in progress
      
      // Act
      yoloVideoState.stopDetection();
      
      // Assert
      expect(yoloVideoState.isDetecting, false);
    });
  });
}

_YoloVideoState() {
}
