import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

const url="https://www.google.com/search?sxsrf=ACYBGNQF6PBZmXlWnuM2pdakgIYiPyQRHA%3A1581687046895&ei=BqFGXsyhNoaG4-EPyI-hsAw&q=wheelchair+for+rent+near+me&oq=wheelchair+rentals&gs_l=psy-ab.1.0.0i71l8.0.0..4077...0.2..0.0.0.......0......gws-wiz.AyL_jV1InMI";
void main()=> runApp(locator());

class locator extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'NEAREST WHEELCHAIR RENTAL NEAR YOU:',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget{
  @override
  HomeState createState()=>HomeState();

}
class HomeState extends State<Home>{
  Future launchURL(String url)async{
    if(await canLaunch(url)) {
      await launch( url,forceSafariVC: true, forceWebView: true);
    }else{
      print("cant launch ${url}");
    }

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Assistance"),
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(.0),
              child: Text('TO FIND THE NEAREST WHEEL CHAIR HIRE CENTERS '
                  'PRESS THE BUTTON GIVEN BELOW',
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 300.0),
                    child: GestureDetector(
                      onTap: () {
                        launchURL(url);
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 100.0,
                        width: 100.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: new BorderRadius.circular(50.0)),
                        child: new Icon(
                          Icons.touch_app,
                          color: Colors.white,
                        ),
                      ),

                    ),
                  ),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }

}