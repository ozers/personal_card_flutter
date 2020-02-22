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
        primary: true,
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('./images/ozer.png'),
                ),
                Text(
                  'Ozer SUBASI',
                  style: TextStyle(
                    fontFamily: 'LobsterTwo',
                    fontSize: 50.0,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  'Software Developer',
                  style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 30.0,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  child: Divider(
                    color: Colors.deepPurple[800],
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
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
                        horizontal: 10.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.perm_phone_msg,
                          size: 30.0,
                          color: Colors.deepPurple[600],
                        ),
                        title: Text(
                          'Call Me',
                          style: TextStyle(
                            fontFamily: 'Tomorrow',
                            fontSize: 25.0,
                            color: Colors.deepPurple[400],
                          ),
                        ),
                        subtitle: Text(
                          'Click to make call',
                          style: TextStyle(
                            fontFamily: 'Satisfy',
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
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
                        horizontal: 10.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.contact_mail,
                          size: 30.0,
                          color: Colors.deepPurple[600],
                        ),
                        title: Text(
                          'Send Mail',
                          style: TextStyle(
                            fontFamily: 'Tomorrow',
                            fontSize: 25.0,
                            color: Colors.deepPurple[400],
                          ),
                        ),
                        subtitle: Text(
                          'Click to send mail',
                          style: TextStyle(
                            fontFamily: 'Satisfy',
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
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
                        horizontal: 10.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.developer_mode,
                          size: 30.0,
                          color: Colors.deepPurple[600],
                        ),
                        title: Text('Github Repository',
                            style: TextStyle(
                              fontFamily: 'Tomorrow',
                              fontSize: 25.0,
                              color: Colors.deepPurple[400],
                            )),
                        subtitle: Text(
                          'Click to look into my GitHub Repository',
                          style: TextStyle(
                              fontFamily: 'Satisfy',
                              color: Colors.blueGrey),
                        ),
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
