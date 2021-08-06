import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 150,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 5),
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage('assets/images/image.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            "Play Station",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
