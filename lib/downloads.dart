import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                          padding: const EdgeInsets.only(bottom: 15.0, top: 30.0),
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
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                          child: Divider(
                            color: Colors.white,
                            height: 10,
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                          ),
                        ),
                        new Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.red,
                            onPressed: () {},
                            child: const Text('Generate Random Encounters'),
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
              Container(
                margin: new EdgeInsets.only(top: 0.0, left: 15.0, right: 15.0),
                alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Enemy Encounter!',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              height: 25.0,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.red,
                                  onPressed: () {},
                                  child: const Text('Combat',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                        child: Text('Scare off an invading swarm of pests and also break into or out of a prison.'),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                        child: Text('OR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                        child: Text('Expose a corrupt leader involved in murder and also infiltrate a fortress in lockdown.'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Random Encounter!',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                            ),
                            Container(
                              height: 25.0,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.lightGreen,
                                    onPressed: () {},
                                    child: const Text('Non Combat',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                ),
                              ),
                            ),
                           ],
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                        child: Text('Scare off an invading swarm of pests and also break into or out of a prison.'),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                        child: Text('OR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                        child: Text('Expose a corrupt leader involved in murder and also infiltrate a fortress in lockdown. '),
                      ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}