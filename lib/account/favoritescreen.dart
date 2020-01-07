import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  List<Map> listImageFavorite = [
    {"image": 'assets/image/favorite/fa1.png'},
    {"image": 'assets/image/favorite/fa2.png'},
    {"image": 'assets/image/favorite/fa3.png'},
    {"image": 'assets/image/favorite/fa4.png'},
    {"image": 'assets/image/favorite/fa5.png'},
    {"image": 'assets/image/favorite/fa6.png'},
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
            width: double.infinity,
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
                      "Favorites",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Icon(Icons.favorite_border),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,itemCount: listImageFavorite.length,itemBuilder: (_,index){
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 144,
                        height: 220,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(listImageFavorite[index]['image']),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xffD700FD),
                                    Color(0xffFF7338)
                                  ],
                                ),
                              ),
                              child: Text("Video".toUpperCase(),style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text("Read",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Text("put forward (someone or something) with approval as being suitable for a particular purpose or role."),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("12:20"),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xffFF6B03),
                                    ),
                                  ),
                                  child: Text("Free",style: TextStyle(color: Color(0xffFF6B03),fontWeight: FontWeight.bold,),),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
