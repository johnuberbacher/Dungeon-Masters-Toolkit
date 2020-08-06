import 'package:flutter/material.dart';
import 'appDrawer.dart';
import 'editNPC.dart';
import 'generateNPC.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Create Custom NPC'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/editNPCScreen');
            },
          ),
          ListTile(
            title: Text('Generate NPC'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GenerateNPC()),
              );
            },
          ),
        ],
      ),
    );
  }
}