import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appDrawer.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

final _formKey = GlobalKey<FormState>();

class EditNPCScreen extends StatelessWidget {
  String dropdownValue = 'Lawful Good';
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
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white12,
                ),
                margin: new EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 20, right: 20),
                child: TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.white38,
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white12,
                ),
                margin: new EdgeInsets.only(
                    top: 00.0, bottom: 20.0, left: 20, right: 20),
                child: TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),
                    hintText: 'NPC Description',
                    hintStyle: TextStyle(
                      color: Colors.white38,
                    ),
                    labelText: 'NPC Description',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter a Description';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white12,
                ),
                margin: new EdgeInsets.only(
                    top: 00.0, bottom: 20.0, left: 20, right: 20),
                child: TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),
                    labelText: 'Description',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter a Description';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white12,
                ),
                margin: new EdgeInsets.only(
                    top: 00.0, bottom: 20.0, left: 20, right: 20),
                child: TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),
                    labelText: 'Description',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter a Description';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: new EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white12,
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 0, top: 0, right: 15),
                            hintText: '0',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                            ),
                            labelText: 'STR',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter a Description';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    new Flexible(
                      child: new Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white12,
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 0, top: 0, right: 15),
                            hintText: '0',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                            ),
                            labelText: 'DEX',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter a Description';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    new Flexible(
                      child: new Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white12,
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 0, top: 0, right: 15),
                            hintText: '0',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                            ),
                            labelText: 'CON',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter a Description';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    new Flexible(
                      child: new Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white12,
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 0, top: 0, right: 15),
                            hintText: '0',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                            ),
                            labelText: 'INT',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter a Description';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    new Flexible(
                      child: new Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white12,
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 0, top: 0, right: 15),
                            hintText: '0',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                            ),
                            labelText: 'WIS',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter a Description';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white12,
                ),
                margin: new EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 20, right: 20),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 5.5, 0, 0),
                    labelText: 'Alignment',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.white),
                  onChanged: (String newValue) {},
                  items: <String>[
                    'Lawful Good',
                    'Neutral Good',
                    'Chaotic Good',
                    'Four'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: new EdgeInsets.only(bottom: 15.0, left: 18, right: 18),
                width: MediaQuery.of(context).size.width * 1,
                child: RaisedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, otherwise false.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.

                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      }
                    },
                    child: Text('Save NPC')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
