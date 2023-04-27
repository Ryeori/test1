import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_page.dart';
import 'package:flutter_application_3/home_page1.dart';

const List<NavItem> navBarItems = [
  NavItem(
      iconData: Icons.abc, routeTo: MyHomePage(title: 'asd'), title: 'title'),
  NavItem(
      iconData: Icons.dangerous_outlined,
      routeTo: MyHomePage1(title: 'asd'),
      title: 'title11')
];

class NavItem {
  const NavItem({
    required this.iconData,
    required this.title,
    required this.routeTo,
  });

  final IconData iconData;
  final String title;
  final Widget routeTo;
}

const double appPadding = 9;
const double appBorderRadius = 12;
