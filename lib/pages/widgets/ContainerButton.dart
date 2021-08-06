import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const ContainerButton(
      {Key? key, required this.color, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: this.color,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          minimumSize: Size(120, 50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(this.icon, color: Colors.white),
          SizedBox(
            width: 8,
          ),
          Text(
            this.label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
