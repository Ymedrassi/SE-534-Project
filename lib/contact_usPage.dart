import 'package:flutter/material.dart';
import 'package:se_534_project/home_page.dart';
import 'package:se_534_project/tabs_screen.dart';
import './custom_animated_bottom_bar.dart';
import './home_page.dart';

class contactUs extends StatefulWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome"),
    centerTitle: true,
    titleTextStyle:
    TextStyle(
    fontSize: 20,
    fontFamily: 'Foant1',
    color: Colors.white,
    fontWeight: FontWeight.bold),
    backgroundColor: Colors.grey[800],




    ),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.topLeft,
          child: const Text(
            "You Can Reach Us By: \n\nPhone:0555550690 \n\nE-mail: Ready2Go@gmail.com",
            style: TextStyle(fontSize: 25,  color: Colors.black, fontFamily: 'Font3'),
          ),
        ),
      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Ready 2 Go",
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                letterSpacing: 1,

                ),
              ),
            ),
            ListTile(
              title:Text("Home",
                style: TextStyle(
                  fontSize:20,
                  letterSpacing: 1,

                ),),

              onTap: (){
                final route=MaterialPageRoute(builder: (context)=>MyHomePage());
                Navigator.push(context, route);
              },
            ),


          ],
        ),
      ),
    );
  }
}
