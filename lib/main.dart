import 'package:flutter/material.dart';
import 'package:flutter_application_3/list_item.dart';
import 'package:flutter_application_3/nav_bar.dart';
import 'package:flutter_application_3/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedTabIndex = 1;

  void onTap(int navigateToIndex) {
    if (selectedTabIndex != navigateToIndex) {
      setState(() {
        selectedTabIndex = navigateToIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(height: appPadding);
            },
            itemBuilder: (context, index) {
              return ListItem(
                  title: 'title',
                  author: 'asdasdasd',
                  icon: Icons.dangerous,
                  mins: 5,
                  tags: ['asdd']);
            },
          ),
        )

        //  Column(
        //   children: [
        //     Expanded(child: navBarItems[selectedTabIndex].routeTo),
        //     NavBar(
        //       onTabTap: (navigateToIndex) {
        //         onTap(navigateToIndex);
        //       },
        //       selectedTab: selectedTabIndex,
        //     )
        //   ],
        // ),
        );
  }
}
