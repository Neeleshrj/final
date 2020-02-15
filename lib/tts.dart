import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Textsp()
      ),
    );
  }
}

class Textsp extends StatelessWidget{
  final FlutterTts flutterTts= FlutterTts();
  @override
  Widget build(BuildContext context){
    TextEditingController textEditingController=TextEditingController();
    Future speak(String text) async{
      await flutterTts.setLanguage("en-IN");
      await flutterTts.setPitch(1);
      print(await flutterTts.getVoices);
      await flutterTts.speak(text);
    }
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          TextFormField(
            controller: textEditingController,
          ),
          RaisedButton(
            child: Text("Push to Hear"),
            onPressed: () =>speak(textEditingController.text),
          ),
        ],
      ),
    );
  }
}