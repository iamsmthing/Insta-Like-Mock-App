import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals/screens/custom_drawer.dart';
import 'package:meals/screens/news_feed_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
  runApp(MaterialApp(
    title: 'Khabai Tech',
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: Home(), loadingText: Text('Version:1.0.0.1'),
        image: Image.asset('assets/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100 ,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.purple);
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.light,

        // canvasColor: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),title: 'Khabai Tech',
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int _index = 0;
  @override
  Widget build(BuildContext context) {
    // final _bottomNavBar = <BottomNavigationBarItem>[
    //   BottomNavigationBarItem(
    //     title: Text(
    //       'Members',
    //       style: TextStyle(
    //         color: Colors.pink,
    //       ),
    //     ),
    //     icon: Icon(Icons.people, color: Colors.blue),
    //   ),
    //   BottomNavigationBarItem(
    //     title: Text(
    //       'Our Founders',
    //       style: TextStyle(
    //         color: Colors.pink,
    //       ),
    //     ),
    //     icon: Icon(
    //       Icons.account_circle,
    //       color: Colors.blue,
    //     ),
    //   ),
    //   BottomNavigationBarItem(
    //     title: Text(
    //       'Completed Projects',
    //       style: TextStyle(
    //         color: Colors.pink,
    //       ),
    //     ),
    //     icon: Icon(
    //       Icons.work,
    //       color: Colors.blue,
    //     ),
    //   )
    // ];

    // final _bottomNav = BottomNavigationBar(
    //   fixedColor: Colors.amber,
    //   backgroundColor: Colors.teal,
    //   items: _bottomNavBar,
    //   currentIndex: _index,
    //   selectedFontSize: 15.0,
    //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
    //   unselectedItemColor: Colors.blue,
    //   type: BottomNavigationBarType.shifting,
    //   onTap: (int ind) {
    //     setState(() {
    //       _index = ind;
    //     });
    //   },
    // );
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          'News Feed',
          style:
              TextStyle(color: Theme.of(context).primaryColor, fontSize: 20.0),
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.pink,
        //     size: 30.0,
        //   ),
        //   splashColor: Colors.amber,
        //   onPressed: () {},
        // ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.account_circle,
        //       color: Theme.of(context).primaryColor,
        //       size: 30.0,
        //     ),
        //     onPressed: () {},
        //   )
        // ],
      ),
      backgroundColor: Colors.white,
      // bottomNavigationBar: _bottomNav,
      drawer: CustomDrawer(),
      body: Container(
        // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.teal,Colors.purple],begin: Alignment.topLeft,end: Alignment.bottomRight)),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: MemberScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
