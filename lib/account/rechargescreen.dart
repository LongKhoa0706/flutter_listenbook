import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RechargeScreen extends StatefulWidget {
  @override
  _RechargeScreenState createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Recharge",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 12,
                ),
                _buidItemCardPrice("Month Card", "\$6", "5%", 0),
                _buidItemCardPrice("Month Card", "\$6", "5%", 1),
                _buidItemCardPrice("Month Card", "\$6", "5%", 2),
                SizedBox(
                  height: 15,
                ),
                Text("Interests",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10,bottom: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/image/item1.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Every day as low as 1 yuan, all the books are good",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("During the membership period, all regular listening products are listened to. Updated daily, one book a day, 365 books a year.")
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(color: Colors.black,height: 50,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/image/item2.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Experts master for hundreds of hours to read for you",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("During the membership period, all regular listening products are listened to. Updated daily, one book a day, 365 books a year.")
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Month Card. \$6.0",style: TextStyle(color: Color(0xffFF6B03),fontSize: 18,fontWeight: FontWeight.w500),),
                          RaisedButton(
                            onPressed: (){

                            },
                            color: Color(0xffFF974D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text("Pay",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                          ),

                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buidItemCardPrice(
      String title, String price, String sale, int intdex) {
    int _selectCard = 0;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectCard = intdex;
        });


      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Material(
          color: _selectCard == intdex ? Color(0xffFFF0E6) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          elevation: 2.0,
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: GestureDetector(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                width: double.infinity,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Off"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(sale),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      price,
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
