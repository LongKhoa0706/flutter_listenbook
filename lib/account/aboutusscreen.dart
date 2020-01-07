import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/image/ab1.png'),
                Text(
                  "Listen Books",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("V12.1.0"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others?In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others?In your feelings, work, or family, do you have the experience of do not want to do it, but still do it? Has anyone been living in the expectations of others?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _buidIconSocial(FontAwesomeIcons.facebookF),
                        _buidIconSocial(FontAwesomeIcons.github),
                        _buidIconSocial(FontAwesomeIcons.instagram),
                        _buidIconSocial(FontAwesomeIcons.google),
                        _buidIconSocial(FontAwesomeIcons.twitter),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buidIconSocial(IconData iconData) {
  return Center(
    child: Icon(
      iconData,
      size: 30,
      color: Colors.grey,
    ),
  );
}
