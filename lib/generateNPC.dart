import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appDrawer.dart';
import 'editNPC.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

class GenerateNPC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => editNPCScreen()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: Center(
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
                            child: Text('Destrian Fenwick',
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

                              child: Tooltip(
                                  message: 'My Account',
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.lightGreen,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                      title: Text('Lawful Neutral'),
                                      content: Text('A lawful neutral character typically believes strongly in lawful concepts such as honor, order, rules, and tradition, but often follows a personal code in addition to, or even in preference to, one set down by a benevolent authority. Examples of lawful neutral characters include a soldier who always follows orders, a judge or enforcer who adheres mercilessly to the letter of the law, and a disciplined monk.'),

                                    )
                                  );
                                },
                                child: const Text('Lawful Neutral',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                      child: Text('Destrian Fenwick is a 29 year old male human paladin. He has extremely long, straight, gray hair and red eyes. He has rough chocolate skin. He stands 162cm (5\'3\") tall and has a skinny build. He has a square, mediocre face with a very short mutton chops beard. He gestures profusely during a conversation.'),
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
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                                columns: [
                                  DataColumn(label: Text('STR')),
                                  DataColumn(label: Text('DEX')),
                                  DataColumn(label: Text('CON')),
                                  DataColumn(label: Text('INT')),
                                  DataColumn(label: Text('WIS')),
                                  DataColumn(label: Text('CHA')),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Text('15 [+3]')),
                                    DataCell(Text('15 [+3]')),
                                    DataCell(Text('15 [+3]')),
                                    DataCell(Text('15 [+3]')),
                                    DataCell(Text('15 [+3]')),
                                    DataCell(Text('15 [+3]')),
                                  ]),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.only(top: 10.0, bottom: 15.0, left: 15.0, right: 15.0),
              alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text('Plot Hook',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
                      child: Text('He is secretly a vampire.'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}