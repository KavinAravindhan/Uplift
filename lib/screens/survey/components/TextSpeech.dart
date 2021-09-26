import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


// class TextSpeech extends StatefulWidget {
//
//   final String textSpeak;
//   final bool isActiveBool;
//
//   TextSpeech({required this.textSpeak, required this.isActiveBool});
//
//   @override
//   _TextSpeechState createState() => _TextSpeechState();
// }
//
// class _TextSpeechState extends State<TextSpeech> {
//
//   FlutterTts flutterTts = FlutterTts();
//   Future speak() async {
//       print(await flutterTts.getVoices);
//       await flutterTts.setLanguage("en-US");
//       await flutterTts.setPitch(1);
//       await flutterTts.setVoice({"name": "en-AU-language", "locale": "en-AU"});
//       //await flutterTts.setVoice({"name": "en-in-x-end-network", "locale": "en-In"}) ;
//       //await flutterTts.setVoice({"name": "en-in-x-end-network", "locale": "en-In"}) ;
//       await flutterTts.speak(widget.textSpeak);
//   }
//   @override
//   void initState() {
//     super.initState();
//     if(widget.isActiveBool == true){
//       print("speaking");
//       speak();
//     }
//     else{
//       print("not") ;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class TextSpeech extends StatelessWidget {

  final String textSpeak;
  final bool isActiveBool;

  TextSpeech({required this.textSpeak, required this.isActiveBool});
  FlutterTts flutterTts = FlutterTts();
  Future speak(String text) async {
    print(await flutterTts.getVoices);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setVoice({"name": "en-AU-language", "locale": "en-AU"});
      //await flutterTts.setVoice({"name": "en-in-x-end-network", "locale": "en-In"}) ;
      //await flutterTts.setVoice({"name": "en-in-x-end-network", "locale": "en-In"}) ;


    if(isActiveBool == true){
      print("speaking");
      await flutterTts.speak(text);
    }
    else{
      print("not") ;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
