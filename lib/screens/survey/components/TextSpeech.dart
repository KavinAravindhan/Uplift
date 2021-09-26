import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextSpeech extends StatelessWidget {
  FlutterTts flutterTts = FlutterTts();

  final String textSpeak;
  final bool isActiveBool;

  TextSpeech({required this.textSpeak, required this.isActiveBool});

  @override
  Widget build(BuildContext context) {
    Future speak() async {
      print(await flutterTts.getVoices);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.setVoice({"name": "en-AU-language", "locale": "en-AU"});
      //await flutterTts.setVoice({"name": "en-in-x-end-network", "locale": "en-In"}) ;
      //await flutterTts.setVoice({"name": "en-in-x-end-network", "locale": "en-In"}) ;
      await flutterTts.speak(textSpeak);
    }

    return Container(
      child: ElevatedButton(
        child: Text("Tap Here"),
        onPressed: () {
          if (isActiveBool == true) {
            speak();
          }
        },
      ),
    );
  }
}
