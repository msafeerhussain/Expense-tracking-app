import 'package:finance/helper/colors.dart';
import 'package:flutter/material.dart';

class Bottomitems extends StatefulWidget {
  final IconData icon;
  final bool active;
  const Bottomitems({super.key, required this.icon, required this.active,});

  @override
  State<Bottomitems> createState() => _BottomitemsState();
}

class _BottomitemsState extends State<Bottomitems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.active ? kprimarycolor.withOpacity(0.1) : Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Icon(
        widget.icon,
        color: widget.active ? kprimarycolor : Colors.grey,
        size: 30,
      ),
    );
  }
}
