import 'package:flutter/material.dart';
import 'package:portfolio_page/widgets/theme_widgets.dart';
import 'package:portfolio_page/pages/home.dart';
import 'package:portfolio_page/configs/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abhrajyoti Pal',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}

