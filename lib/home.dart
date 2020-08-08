import 'generateNPC.dart';
import 'package:flutter/material.dart';
import 'editNPC.dart';
import 'appDrawer.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainPage extends StatefulWidget {
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<MainPage> {
  String data;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<String> readContent() async {
    try {
      final file = await _localFile;
      // Read the file
      String contents = await file.readAsString();
      // Returning the contents of the file
      return contents;
    } catch (e) {
      // If encountering an error, return
      return 'Error!';
    }
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('Hello Tester');
  }

  void initState() {
    super.initState();
    writeContent();
    readContent().then((String value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 260.0,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/backdrops/backdrop_1.jpg',
                        height: 245,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        margin: new EdgeInsets.all(20.0),
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 15.0, top: 30.0),
                              child: Text(
                                "NPC Generator",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Text(
                              "Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Vulputate sapien nec sagittis aliquam malesuada bibendum. Sed elementum tempus egestas sed sed risus pretium. ",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            new Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 10.0),
                              child: Divider(
                                color: Colors.white,
                                height: 10,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                              ),
                            ),
                            Text('Data read from a file: \n $data',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
