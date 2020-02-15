import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tts.dart';
import 'deaf.dart';
import 'locator.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Select your Disability',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            )

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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => null,
                    ));
                  }, 
                  child: new Container(
                    alignment: Alignment.center,
                    height: 170.0,
                    decoration: new BoxDecoration(
                      color: Colors.cyan[50],
                          borderRadius: new BorderRadius.circular(9.0)),
                    child: new Text("Blindness",
                      style: TextStyle(
                        fontSize: 40.0,

                      ),
                    ),
                ),
            ),
            ),
          ],
        ),

                new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Expanded(
                child: GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => Stt(),
                ));
                },
                child: new Container(
                alignment: Alignment.center,
                height: 170.0,
                decoration: new BoxDecoration(
                color: Colors.grey,
                borderRadius: new BorderRadius.circular(9.0)),
                child: new Text("Deaf",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                ),
                ),
                ),
                ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => TTS(),
                          ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 170.0,
                          decoration: new BoxDecoration(
                              color: Colors.teal,
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Mute",
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => locator(),
                          ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 170.0,
                          decoration: new BoxDecoration(
                              color: Colors.blueGrey[100],
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Amputee/Parapalegic",
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
    ]
    ),

    );
  }
}
