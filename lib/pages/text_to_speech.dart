import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void tts(List detresults) async {

  FlutterTts ftts = FlutterTts();

  print(detresults[0]);
  print((detresults).length);

  List tags = detresults.map((item) => item["tag"]).toList();
  print(tags);

  

  
  await ftts.setLanguage("en-US");
  await ftts.setSpeechRate(0.5);
  await ftts.setVolume(1.0);
  await ftts.setPitch(1);

  for (int i=0;i<tags.length;i++){
    await ftts.speak("the objects present are"+tags[i]);
  }

        
          

          
          

}