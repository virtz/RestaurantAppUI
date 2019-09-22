import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  const DetailsPage({Key key, this.heroTag, this.foodName, this.foodPrice})
      : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(height: 300),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/green1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0))),
              ),
              Positioned(
                top: 50.0,
                left: (MediaQuery.of(context).size.width / 2) - 125,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(widget.heroTag),),
                        //       borderRadius: BorderRadius.only(
                        // bottomLeft: Radius.circular(100.0),
                        // bottomRight: Radius.circular(100.0))),
                       // borderRadius: BorderRadius.circular(100.0)
                    )
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )),
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(widget.foodName,
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('4.9',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey,
                              fontSize: 12.0)),
                      Icon(Icons.star, color: Colors.green, size: 14.0),
                      Icon(Icons.star, color: Colors.green, size: 14.0),
                      Icon(Icons.star, color: Colors.green, size: 14.0),
                      Icon(Icons.star, color: Colors.green, size: 14.0),
                      Icon(Icons.star, color: Colors.green, size: 14.0),
                    ],
                  ),
                ]),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget.foodPrice,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17.0)),
                Container(
                  width: 125.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFFEDFEE5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Color(0xFF5CB238),
                        ),
                        onPressed: () {},
                      ),
                      Text('3',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Color(0xFF5CB238))),
                      IconButton(
                        icon: Icon(
                          Icons.add_circle,
                          color: Color(0xFF5CB238),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text('About the food',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Text(
              'Lorem ipsum dolor sit amet,viet novum laboramous vim ea,excerci vouluptate efficiantur cu vis.Nw qui feugist consetur, mel mo ni agam dictas,has et brute nominati sadipscing.Id nec lorem invenire imperduct',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.grey),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Container(
              height: 55.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xFF5AC035)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Total',style:TextStyle(fontFamily: 'MontSerrat',
                    fontSize:17.0,
                    color:Colors.white)),
                    SizedBox(width:10.0),
                    Text('\$84.00',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0,
                      color:Colors.white
                    ),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
