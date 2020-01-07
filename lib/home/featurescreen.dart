import 'package:flutter/material.dart';
import 'package:listenbook/model.dart';

// ignore: must_be_immutable
class FutureScreen extends StatelessWidget {
  bool boolTrue;
  FutureScreen({this.boolTrue = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: boolTrue==false ? AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ) : null,

      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                boolTrue == false? Text(
                  "Featured",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ) : Text(""),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),itemCount: 3,itemBuilder: (_,index){
                  Book book = List1().listBook[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Container(
                      height: 295,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/image/featured/fe4.png',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 38,bottom: 10),
                              child: Material(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                                elevation: 5.0,
                                child: Container(
                                  height: 250,
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          book.title,
                                          style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Flexible(child: Text(book.author,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.star,color: Colors.deepOrange,),
                                                  Icon(Icons.star,color: Colors.deepOrange,),
                                                  Icon(Icons.star,color: Colors.deepOrange,),
                                                  Icon(Icons.star,color: Colors.deepOrange,),
                                                  Icon(Icons.star,color: Colors.grey,),

                                                ],
                                              ),
                                            ),
                                          ),
                                          Text(book.rate.toString(),style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(book.price,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                },)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
