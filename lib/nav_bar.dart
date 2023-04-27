import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    required this.onTabTap,
    required this.selectedTab,
  });

  @override
  State<NavBar> createState() => _NavBarState();

  final void Function(int navigateToIndex) onTabTap;
  final int selectedTab;
}

class _NavBarState extends State<NavBar> {
  final _navBarItems = List.generate(
    navBarItems.length,
    (index) => BottomNavigationBarItem(
      icon: Icon(navBarItems[index].iconData),
      label: navBarItems[index].title,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        onTap: widget.onTabTap,
        currentIndex: widget.selectedTab,
        items: _navBarItems,
      ),
    );
  }
}
