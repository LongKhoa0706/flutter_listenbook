import 'package:flutter/material.dart';

class PurchaseScreen extends StatelessWidget {
  List<Map> listImagePurchase = [
    {"image": 'assets/image/purchase/pu1.png'},
    {"image": 'assets/image/purchase/pu2.png'},
    {"image": 'assets/image/purchase/pu3.png'},
    {"image": 'assets/image/purchase/pu4.png'},
    {"image": 'assets/image/purchase/pu5.png'},
    {"image": 'assets/image/purchase/pu6.png'},
  ];

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
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Purchase",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Icon(Icons.add_shopping_cart)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listImagePurchase.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(listImagePurchase[index]['image']),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Planner Weekly And Monthly",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    "put forward (someone or something) with approval as being suitable for a particular purpose or role."),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("12:44:22"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xffFF6B03),
                                        ),
                                      ),
                                      child: Text(
                                        "Reload",
                                        style:
                                            TextStyle(color: Color(0xffFF6B03)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
