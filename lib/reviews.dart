import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Business Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.star),
                  color: Colors.yellow,
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text("3.4/5"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:EdgeInsets.all(2.0),
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/drink.png'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListView(children:<Widget>[
                  Card(child:ListTile(
                          
                          title:Text('Ajay Naik',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black)),
                          subtitle: Text('Fresh fish.Thank You!',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        
                  ))
                ]
                
                
                
                ),
                        ],
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(Icons.star),
                                  color: Colors.yellow,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(Icons.star),
                                  color: Colors.yellow,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(Icons.star),
                                  color: Colors.yellow,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
