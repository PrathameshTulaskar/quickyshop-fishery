import 'package:flutter/material.dart';

class BusinessName extends StatelessWidget {
  const BusinessName({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Name'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              height: 200.0,
              decoration: BoxDecoration(color: Colors.green[200]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('This Video Uploaded on !2th Dec 2020 11.00 AM')],
            ),
             FishType(),
            FishType(),
            FishType(),
            FishType(),
            FishType(),
            FishType(),
          ],
        ),
      ),
    );
  }
}

class FishType extends StatefulWidget {
  const FishType({Key key}) : super(key: key);

  @override
  _FishTypeState createState() => _FishTypeState();
}

class _FishTypeState extends State<FishType> {
  bool visibleCart = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12.0,horizontal:8.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(18.0),
              bottomRight: Radius.circular(18.0)),
        ),
        child: Row(
          children: <Widget>[
            Container(
                width: 90.0,
                height: 100.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('assets/macreal.png')))),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Macreal Fish (Bangade)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('4 Pieces'),
                          Text('Rs.200/kg'),
                        ],
                      ),
                       
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(left:80.0),
                          child: Visibility(
                            child: FlatButton(
                              color: Colors.red[200],
                              child: Text("Add to cart",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black)),
                              onPressed: () {
                                setState(() {
                                               visibleCart = false;                 
                                                              });
                              },
                            ),
                            visible: visibleCart,
                            replacement: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  IconButton(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.all(0),
                                      icon: Icon(Icons.remove),
                                      color: Colors.black,
                                      onPressed: () {}),
                                  Text('1'),
                                  IconButton(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.all(0),
                                      icon: Icon(Icons.add),
                                      color: Colors.black,
                                      onPressed: () {}),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
