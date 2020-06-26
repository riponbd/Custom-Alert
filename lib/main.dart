import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Custom Dialog",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Custom Alert",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Container(
                              height: 250,
                              padding: EdgeInsets.all(35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                  ),
                                  new Text(
                                    "Alert Title",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  new Text(
                                    "This is the message. This is the message. This is the message.",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: FloatingActionButton(
                                        mini: true,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(Icons.close),
                                      )),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -70,
                              child: CircleAvatar(
                                radius: 60,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(70)),
                                  child: Image.network(
                                      'https://avatars3.githubusercontent.com/u/13637252?s=460&u=d61b96417c238282c7f4aa045940d1b512bdcf2f&v=4'),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 26),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
