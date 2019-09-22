import 'package:flutter/material.dart';
import 'package:shopui/detailPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopHere',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'ShopHere'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var width;
  var height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                ),
                Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        image: DecorationImage(
                            image: AssetImage('images/half-avocado.jpg'),
                            fit: BoxFit.contain)))
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Good',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5B8842),
                        fontSize: 50.0)),
                Text('Morning',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5B8842),
                        fontSize: 50.0)),
                SizedBox(height: 20.0),
                Text('Popular Food',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem(
                    'images/plate3.jpg', 'African Yam Stock', '\$28'),
                _buildListItem('images/plate4.jpg', 'Jollof Rice', '\$30'),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Best Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0))),
          SizedBox(
            height: 10.0,
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 20, right: 20),
          //   child: Container(
          //     height: 250.0,
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Colors.white, Color(0xFFACBEA3)],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //         ),
          //         borderRadius: BorderRadius.circular(15.0),
          //         image:
          //             DecorationImage(image: AssetImage('images/plate2.jpg'),
          //             fit: BoxFit.cover
          //             )),
          //   ),
          // )
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              buildList2('images/chicken.jpg', 'Grilled Meat', '\$30'),
              buildList2('images/chicken1.jpg', 'Fried Chicken', '\$30'),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0)),
            color: Color(0xFF5AC035)),
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.bookmark_border,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String imgPath, String foodName, String price) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailsPage(
                heroTag: imgPath, foodName: foodName, foodPrice: price);
          }));
        },
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10.0),
          child: Container(
            height: 200,
            width: (MediaQuery.of(context).size.width) / 2 + 15,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6.0,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5.0)
                ]),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 175.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white, Color(0xFFACBEA3)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                ),
                Hero(
                  tag: imgPath,
                  child: Container(
                    height: 175.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.fill),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                  ),
                ),
                Positioned(
                    top: 160.0,
                    right: 20.0,
                    child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                            height: 30.0,
                            width: 30.0,
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 17.0,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white)))),
                Positioned(
                  top: 190.0,
                  left: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(foodName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14.0)),
                      SizedBox(height: 3.0),
                      Container(
                        width: 175.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('4.9',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.grey,
                                        fontSize: 12.0)),
                                SizedBox(
                                    width: (MediaQuery.of(context).size.width) /
                                        50),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(price,
                                style: TextStyle(fontWeight: FontWeight.w400))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget buildList2(String imgPath, String foodName, String price) {
    return Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 24.0,top:10.0),
        child: InkWell(
            child: Container(
          //color: Colors.grey,
          height: 70.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        width: width / 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic)),
                            Text('Bryce Walker',
                                style: TextStyle(fontSize: 13.0))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.favorite, color: Colors.red),
                          Text('4.5'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 248.0),
                child: Container(
                  height: 90.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                         image: AssetImage(imgPath), fit: BoxFit.fill),
                    
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(50, 40)
                      )
                      ),
                ),
              ),
            ],
          ),
          
        )));
  }
}
