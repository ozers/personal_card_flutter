import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('./images/ozer.png'),
            ),
            Text(
              'Ozer SUBASI',
              style: TextStyle(
                fontFamily: 'ZhiMangXing',
                fontSize: 50.0,
                color: Colors.white70,
                letterSpacing: 2,
              ),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                fontFamily: 'PatrickHandSC',
                fontSize: 30.0,
                color: Colors.white70,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: InkWell(
                onTap: () async {
                  if (await canLaunch("tel://+905392260314")) {
                    await launch("tel://+905392260314");
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.perm_phone_msg,
                        size: 30.0,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('+90 (539) *** ** **',
                          style: TextStyle(
                            fontFamily: 'PatrickHandSC',
                            fontSize: 25.0,
                            color: Colors.blueGrey,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: InkWell(
                onTap: () async {
                  if (await canLaunch("mailto:ozer.subasi@gmail.com")) {
                    await launch("mailto:ozer.subasi@gmail.com");
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.contact_mail,
                        size: 30.0,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Send Mail',
                          style: TextStyle(
                            fontFamily: 'PatrickHandSC',
                            fontSize: 25.0,
                            color: Colors.blueGrey,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: InkWell(
                onTap: () async {
                  if (await canLaunch("https://www.github.com/ozers")) {
                    await launch("https://www.github.com/ozers");
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.developer_mode,
                        size: 30.0,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Github Repository',
                          style: TextStyle(
                            fontFamily: 'PatrickHandSC',
                            fontSize: 25.0,
                            color: Colors.blueGrey,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
