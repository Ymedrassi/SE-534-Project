import 'package:flutter/material.dart';
import './home_page.dart';
import './message_page.dart';
import './custom_animated_bottom_bar.dart';
import './new_entry.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    final List<NewEntry> ent;
    return Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         title: Text("Welcome"),
         backgroundColor: Colors.grey,
       ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Ready 2 Go"),
            ),
            ListTile(
              title: Text("About Us"),
              onTap: (){},
            ),
          ],
        ),
      ),
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );

  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.apps),
          title: const Text('Home'),
          activeColor: Colors.amber,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.favorite_rounded),
          title: const Text('Favorite'),
          activeColor: Colors.amber,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.message),
          title: const Text('Messages '),
          activeColor: Colors.amber,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
          activeColor: Colors.amber,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.info),
          title: const Text('About Us'),
          activeColor: Colors.amber,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      Container(
        alignment: Alignment.center,
        child: const Text(
          "favorite",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      const MessagePage(),
      Container(
        alignment: Alignment.center,
        child: const Text(
          "Settings",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text(
          "The Ready 2 Go App is helpful for People who want to rental their Car and also for those who want to rent, this App provides an easy & fastest way to book cars.",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
