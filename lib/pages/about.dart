import 'package:flutter/material.dart';
import 'package:portfolio_page/configs/constants.dart';
import 'package:portfolio_page/configs/assets.dart';
import 'dart:html' as html;

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 15.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.amberAccent, //change to image later
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Abhrajyoti Pal',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Whatever the fuck I like', //replace fuck with sensible shit
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(Assets.github), //Image of Github
                    ),
                    label: Text('Github'),
                    onPressed: () => html.window.open(Constants.GITHUB, 'Abhrajyoti Pal'), //add github link
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(Assets.linkedin) //Image linkedin
                    ),
                    label: Text('LinkedIn'),
                    onPressed: () => html.window.open(Constants.LINKEDIN, 'Abhrajyoti Pal'), //add LinkedIn link 
                  )
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}