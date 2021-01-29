import 'package:flutter/material.dart';

class Reviews2 extends StatelessWidget {
  const Reviews2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Reviews'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Text('Business Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black)),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    ReviewTile(),
                    ReviewTile(),
                  ],
                ),
              )
            ]
          ),
        ));
  }
}

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child:ListTile(
            leading: Image(),
            title:Text('Ajay Naik',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
            subtitle: Text('Fresh fish.Thank You!',
                style:
                    TextStyle(fontSize: 14, color: Colors.black)),
            trailing:
            Container(
              width:100,
              child: Row(mainAxisAlignment:MainAxisAlignment.end,children: [
                Icon(Icons.star,color: Colors.yellow),
                Icon(Icons.star,color: Colors.yellow),Icon(Icons.star,color: Colors.yellow),
              ],),
            )
    ));
  }
}

class Image extends StatelessWidget {
  const Image({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green[400],
                    backgroundImage: AssetImage('assets/drink.png'),
                  ),
                ),
              ],
            );
  }
}
