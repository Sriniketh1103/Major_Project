import 'package:camera/camera.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vision_flutter/pages/homepage.dart';

void main() {
  group('YoloVideoWidget White-Box Test', () {
    test('_YoloVideoState loadYoloModel sets isLoaded to true', () async {
      final state = _YoloVideoState();
      
      await state.loadYoloModel();
      
      expect(state.isLoaded, true);
    });

    test('_YoloVideoState yoloOnFrame sets yoloResults when result is not empty', () async {
      final state = _YoloVideoState();
      // final cameraImage = CameraImage(
      //   planes: [],
      //   formatGroup: '',
      // );

      await state.loadYoloModel();
      // await state.yoloOnFrame(cameraImage);

      
    });

    test('_YoloVideoState startDetection sets isDetecting to true', () {
      final state = _YoloVideoState();

      state.startDetection();

      expect(state.isDetecting, true);
    });

    test('_YoloVideoState stopDetection sets isDetecting to false', () {
      final state = _YoloVideoState();
      ;

      expect(state.isDetecting, false);
    });
  });
}

class _YoloVideoState {
  get isDetecting => null;
  
  get isLoaded => null;

  void startDetection() {}
  
  loadYoloModel() {}
  
  yoloOnFrame(cameraImage) {}
}
