import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Image.asset('assets/image/featured/fe4.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 35,
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xffFF974D),
                          Color(0xffFF6B03),
                        ]),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.play_circle_filled,
                            color: Colors.white,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "The Forgotten Hours",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sarah Perez",
                    style: TextStyle(fontSize: 16),
                  ),
                  VerticalDivider(
                    width: 1,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Text(
                    "12‘45“",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  color: Colors.white,
                  width: double.infinity,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Introduction",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Recommendation",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Has your life been living in the expectations of others?",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Audio introduction",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others?In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others?In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Book information",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others?",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            child: Material(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              elevation: 5.0,
                              child: Container(
                                height: 45,
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.chat_bubble_outline),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "1.9k",
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Material(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              elevation: 5.0,
                              child: Container(
                                height: 45,
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.favorite,color: Color(0xffFF6B03),),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "1.9k",
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Material(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              elevation: 5.0,
                              child: Container(
                                height: 45,
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.show_chart),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "1.9k",
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
