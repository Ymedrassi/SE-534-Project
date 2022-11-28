import 'package:flutter/material.dart';
import './new_entry.dart';

class MyCard extends StatefulWidget {
  var modelname, price, type, mobilenumber, seat, vehiclenumber, location;
  MyCard(
      {Key? key,
      this.modelname,
      this.price,
      this.type,
      this.mobilenumber,
      this.seat,
      this.vehiclenumber,
      this.location});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  List<NewEntry> ent = [
    NewEntry(
        id: DateTime.now().toString(),
        model: 'Jeep',
        price: '4000',
        type: 'Wrangler',
        seat: '5',
        mobilenumber: '9865762048',
        vehiclenumber: '7894sad',
        locate: 'Jeddah'),
    NewEntry(
        id: DateTime.now().toString(),
        seat: '4',
        model: 'BMW',
        price: '10000',
        type: 'M3',
        mobilenumber: '9865762049',
        vehiclenumber: '7894aad6',
        locate: 'Jeddah'),
    NewEntry(
        id: DateTime.now().toString(),
        seat: '8',
        model: 'GMC',
        price: '2000',
        type: 'Suv',
        mobilenumber: '9865762049',
        vehiclenumber: 'Ba-1-Pa-2582',
        locate: 'Jeddah'),
  ];

  int fav_count = 0;
  bool fav = false;
  List img = [
    Image.network('https://cfx-wp-images.imgix.net/2022/04/2022-BMW-M3-Competition-Front-Exterior-Carter-MacLeod-Edit-scaled.jpg?auto=compress%2Cformat&ixlib=php-3.3.0&s=4fb1fd2208e9b5f753c0d833418d4016'),

    Image.network('https://www.motortrend.com/uploads/2022/08/2023-Jeep-Wrangler-Sahara-front-three-quarter-view-1.jpg?fit=around%7C875:492.1875'),

    Image.network('https://www.fahrzeugbilder.de/1200/gmc-yukon-modern-gesehen-prag-132010.jpg'),
  ];

  int ind = 0;
  @override
  Widget build(BuildContext context) {
    if (widget.price != null) {
      final newe = NewEntry(
          id: DateTime.now().toString(),
          seat: widget.seat,
          model: widget.modelname,
          price: widget.price,
          type: widget.type,
          mobilenumber: widget.mobilenumber,
          vehiclenumber: widget.vehiclenumber,
          locate: widget.location);
      setState(() {
        ent.add(newe);
      });
    } else {
      print('false');
    }

    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      margin: EdgeInsets.only(top: 120),
      child: ListView.builder(
        itemCount: ent.length,
        itemBuilder: ((context, index) {
          if (ent[index].type == 'Wrangler') {
            ind = 1;
          } else if (ent[index].type == 'M3') {
            ind = 0;
          } else if (ent[index].type == 'Suv') {
            ind = 2;
          }
          return Container(

            width: double.infinity,
            height: 260,
            margin: EdgeInsets.all(10),
            child: Card(
              shadowColor: Colors.black,
              elevation: 0,
              color: Colors.grey.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                enableFeedback: false,
                splashColor: Colors.black,
                onTap: () =>
                    Navigator.pushNamed(context, '/carpage', arguments: {
                  'id': ent[index].id,
                  'seat': ent[index].seat,
                  'type': ent[index].type,
                  'model': ent[index].model,
                  'price': ent[index].price,
                  'mobileno': ent[index].mobilenumber,
                  'vehicleno': ent[index].vehiclenumber,
                  'locate': ent[index].locate,
                }),
                child: Stack(
                  children: <Widget>[
                    Container(

                      margin: EdgeInsets.only(right: 20, top: 10),
                      height: 155,
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: (img[ind]),
                    ),
                    Container(

                      width: double.infinity,
                      margin: EdgeInsets.only(top: 150, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            ent[index].model,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Font1',
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Divider(
                            color: Colors.white,
                            endIndent: 50,
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Type: ' + ent[index].type,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Seats: ' + ent[index].seat,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Price: Rs.' + ent[index].price,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topRight,
                      child: IconButton(
                        color: fav ? Colors.red : Colors.white.withOpacity(0.5),
                        highlightColor:
                            fav ? Colors.white.withOpacity(0.5) : Colors.red,
                        splashColor:
                            fav ? Colors.red : Colors.white.withOpacity(0.5),
                        icon: Icon(Icons.favorite_outlined),
                        enableFeedback: false,
                        onPressed: () {
                          if (fav_count == 0) {
                            setState(() {
                              fav = true;
                              fav_count++;

                              print('true');
                              print(index);
                            });
                          } else if (fav_count == 1) {
                            setState(() {
                              print('false');
                              fav = false;
                              fav_count--;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
