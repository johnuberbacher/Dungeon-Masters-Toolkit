import 'package:flutter/material.dart';
import 'appDrawer.dart';
import 'editNPC.dart';
import 'generateNPC.dart';
import 'generateEncounter.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Color color;

  @override
  void initState() {
    super.initState();

    color = Colors.transparent;
  }

  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0,
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new Container(
                height: 120,
                color: Colors.white12,
                child: DrawerHeader(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: new EdgeInsets.only(right: 15.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            Icons.check,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'John Uberbacher',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '@johnuberbacher',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Column(children: [
                  Material(
                    color: Colors.black,
                    child: InkWell(
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            color = Colors.lightBlueAccent;
                          });
                          Navigator.popAndPushNamed(context, '/');
                        },
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.black,
                    child: InkWell(
                      child: ListTile(
                        leading: Icon(
                          Icons.group,
                          color: Colors.white,
                        ),
                        title: Text(
                          'NPC Generator',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            color = Colors.lightBlueAccent;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GenerateNPC()),
                          );
                        },
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.black,
                    child: InkWell(
                      child: ListTile(
                        leading: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Encounter Generator',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            color = Colors.lightBlueAccent;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GenerateEncounter()),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
