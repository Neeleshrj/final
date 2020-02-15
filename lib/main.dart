import 'package:flutter/material.dart';
import 'home.dart';
import 'play.dart';

void main() => runApp(succour());


class succour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'succour',
      debugShowCheckedModeBanner: false,
      // Set Raleway as the default app font


      home: mainscreen(),
    );
  }
}

/*
class home1 extends StatelessWidget {
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
          Center(
            child:
            new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Expanded(
              child:
                RaisedButton(
                onPressed: () {},
                color: Color(0xFF448AFF),
                child:

                Text('Blindness',

                style: TextStyle(
                fontSize: 60.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                ),
                ),
                ),
               ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Expanded(
              child:
              RaisedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(

                    builder: (context) => Stt()
               ));
              },
                  color: Colors.white,
                  child: Text(' Deafness ',
              style: TextStyle(
                fontSize: 80.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              ),
                  ),
              ),
          ),

            Expanded(
            child:
            RaisedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(

                  builder: (context) => locator()
              ));
            },
              color: Colors.grey,
              child: Text(' Amputee ',
            style: TextStyle(
            fontSize: 80.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            ),
              ),
            ),
            ),

            Expanded(
            child:

              RaisedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(

                  builder: (context) => TTS()
              ));

            },
              
              color: Colors.blueGrey,
              child: Text('    Mute    ',

            style: TextStyle(
            fontSize: 80.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            ),
            ),
            ),

    ),
        ],
      ),
          ),
    );
  }
}


 */




class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFDF513B)),
                  child: new Icon(
                    Icons.accessible,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 600.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      color: Color(0xFFFC6A7F)),
                  child: new Icon(
                    Icons.accessible,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 600.0, top: 50.0),
                  height: 80.0,
                  width: 80.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFFCE56)),

                ),
                new Container(
                  margin: new EdgeInsets.only(left: 600.0, top: 40.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF45E0EC)),

                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    "Succour",
                    style: new TextStyle(fontSize: 60.0,
                    fontStyle: FontStyle.italic

                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => home(),
                        ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF539CFF),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("For Help Click Here",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 90.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF69F0AE),
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: new Text("In Case Of Emergency Press this",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 20.0,

                                  color: Colors.white))),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),


    );
  }
}