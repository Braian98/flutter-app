import 'package:flutter/material.dart';

import 'Item.dart';

class ContainerItems extends StatelessWidget {
  final String label;

  const ContainerItems({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              this.label,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'View all',
              style: TextStyle(
                color: Color(0xff76c2a8),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Item(),
            Item(),
            Item(),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
