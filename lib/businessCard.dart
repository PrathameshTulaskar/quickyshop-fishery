import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class BusinessCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Taje Nuste'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 1.0,
                margin: EdgeInsets.only(
                    left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
                color: Colors.white,
                child: FlipCard(
                  key: cardKey,
                  flipOnTouch: false,
                  direction: FlipDirection.HORIZONTAL,
                  speed: 1000,
                  onFlipDone: (status) {
                    print(status);
                  },
                  front: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.star),
                                color: Colors.yellow,
                                onPressed: () {}
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text("3.4/5"),
                              ),
                            ],
                          ),
                          onTap: () => Navigator.pushNamed(context, '/reviews2'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Business Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.black))),
                           
                           onPressed:  () => Navigator.pushNamed(context, '/businessname'), ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.location_pin),
                                  color: Colors.red,
                                  onPressed: () {},
                                ),
                                Text("Anjuna")
                              ],
                            ),
                            IconButton(
                              icon: Icon(Icons.info),
                              color: Colors.red,
                              onPressed: () =>
                                  cardKey.currentState.toggleCard(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  back: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(children: [
                          Text('Landmark :', style: TextStyle(fontSize: 16)),
                          Text('Anjuna Tito',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ]),
                        Row(children: [
                          Text('Owner :', style: TextStyle(fontSize: 16)),
                          Text('Rajan Naik',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                              
                                
                                  IconButton(

                                      icon: Icon(Icons.backspace),
                                      color: Colors.red,
                                      onPressed: () =>  cardKey.currentState.toggleCard(),
                                    ),
                                    ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
