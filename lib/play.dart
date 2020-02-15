import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();

    _audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text("Emergency Alert",
        style: TextStyle(
          fontSize: 20.0,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
        ),
        ),
          centerTitle: true ,
          backgroundColor: Colors.black,
        ),
        body:
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0
                      ),
                      child: RaisedButton(
                            onPressed: () => _audioCache.play("alarm.mp3")
                        ,
                        child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: Colors.red,
                                borderRadius: new BorderRadius.circular(12.0)),
                            child: new Text("To Call For Help,Click Here",
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                      ),
                    ),
                  )
                ],
              ),


  ]
          )


          );

//////IF AUDIO DOSENT STOP,ITS NOT A BUG,ITS A FEATURE!!!
  }
}