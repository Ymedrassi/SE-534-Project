import 'package:flutter/material.dart';

class BookCarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: Text('Book a Car'),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Pick-up Location',
              suffixIcon: Icon(Icons.pin_drop_rounded),
              floatingLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Drop-off Location',
              suffixIcon: Icon(Icons.pin_drop_rounded),
              floatingLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            keyboardType: TextInputType.datetime,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Pick Up Date',
              suffixIcon: Icon(Icons.date_range),
              floatingLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            keyboardType: TextInputType.datetime,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Drop Off Date',
              suffixIcon: Icon(Icons.date_range),
              floatingLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 10),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.075,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Book',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'DelaGothic'),
              ),
              style: ElevatedButton.styleFrom(
                  enableFeedback: false,
                  elevation: 30,
                  backgroundColor: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
        ],
      ),
    );
  }
}
