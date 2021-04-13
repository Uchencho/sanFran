import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sanfran/screens/const.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "HOME",
            style: kAppBarTextStyle,
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(FontAwesomeIcons.home),
              Icon(FontAwesomeIcons.locationArrow),
              Icon(FontAwesomeIcons.wineBottle),
              Icon(FontAwesomeIcons.bookmark),
              Icon(FontAwesomeIcons.user)
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: kHomeMarginSpacing,
              height: 30.0,
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.search),
                  SizedBox(width: 10.0),
                  Text("Search..."),
                ],
              ),
            ),
            Container(
              margin: kHomeMarginSpacing,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("All"),
                  Text("Recipes"),
                  Text("Guides"),
                  Text("News")
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10.0, top: 30.0, bottom: 10.0),
                child: Column(
                  children: [
                    Text(kHomeDescription, style: kHomeDescriptionTextStyle),
                    Text(kLongDescription, style: kLongDescriptionTextStyle)
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2, child: Image(image: AssetImage("images/bar.jpeg"))),
            Expanded(
              child: Container(
                margin: kHomeMarginSpacing,
                child: Column(
                  children: [
                    Text(kbottomShortDescription,
                        style: kHomeDescriptionTextStyle),
                    SizedBox(height: 20.0),
                    Text(kbottomLongDescription,
                        style: kLongDescriptionTextStyle)
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
