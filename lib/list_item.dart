import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_3/utils.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    required this.author,
    required this.icon,
    required this.mins,
    required this.tags,
  });

  final String title;
  final String author;
  final IconData icon;
  final List<String> tags;
  final double mins;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(appBorderRadius),
        color: Colors.grey,
      ),
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: appPadding,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: '$title\n'),
                TextSpan(text: author)
              ])),
            ],
          ),
          Row(
            children: [
              ...tags.map(
                (e) => Container(
                  padding: const EdgeInsets.all(appPadding / 2),
                  margin: const EdgeInsets.only(right: appPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(1000000000),
                  ),
                  child: Text(e),
                ),
              ),
              Text('$mins минут'),
            ],
          ),
        ],
      ),
    );
  }
}
