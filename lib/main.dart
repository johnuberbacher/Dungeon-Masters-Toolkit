import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile.dart';
import 'downloads.dart';
import 'home.dart';
import 'generateNPC.dart';
import 'editNPC.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/editNPCScreen': (context) => editNPCScreen(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // Application Root
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: _colorFromHex("000000"),
      statusBarColor: _colorFromHex("000000"),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}


class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => editNPCScreen()),
            );
          },
        ),
      ),
    );
  }
}













class _MyHomePageState extends State<MyHomePage> {

  int bottomSelectedIndex = 0;
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home')
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.group),
        title: new Text('NPC Generator'),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.remove_red_eye),
        title: new Text('Encounter Generator'),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle ),
          title: Text('editNPCScreen')
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomeScreen(),
        GenerateNPC(),
        Downloads(),
        FirstRoute(),
      ],
    );
  }
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colorFromHex("f3f3f3"),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          // action button
          IconButton(
            icon:
            Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _colorFromHex("000000"),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
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
    );
  }
}
