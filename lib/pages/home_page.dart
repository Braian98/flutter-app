import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/ContainerButton.dart';
import 'widgets/ContainerItems.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Color(0xfffafafa)),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Categories(),
                SizedBox(
                  height: 20,
                ),
                ContainerItems(
                  label: "Popular Trendings",
                ),
                SizedBox(
                  height: 20,
                ),
                ContainerItems(
                  label: "Featured Ads",
                ),
                SizedBox(
                  height: 20,
                ),
                ContainerItems(
                  label: "Top Deals",
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green.withOpacity(0.6),
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.compass),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.newspaper),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 72,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  FaIcon(FontAwesomeIcons.commentDots),
                  Positioned(
                    top: 1.0,
                    left: 22.0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bars),
            label: "",
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffff7282),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 35),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.card_travel_outlined, color: Colors.white),
              SizedBox(
                height: 4,
              ),
              Text(
                "Motors",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ContainerButton(
              color: Color(0xff1ad191),
              icon: Icons.card_travel_outlined,
              label: "Classified",
            ),
            SizedBox(
              height: 10,
            ),
            ContainerButton(
              color: Color(0xffff7a45),
              icon: Icons.card_travel_outlined,
              label: "Services",
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ContainerButton(
              color: Color(0xff4dcfdd),
              icon: Icons.card_travel_outlined,
              label: "Properties",
            ),
            SizedBox(
              height: 10,
            ),
            ContainerButton(
              color: Color(0xfff6b163),
              icon: Icons.card_travel_outlined,
              label: "Jobs",
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
