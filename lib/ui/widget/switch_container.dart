library custom_switch;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final LinearGradient activeColor;
  final LinearGradient inactiveColor;

  const CustomSwitch({Key? key, required this.activeColor, required this.inactiveColor}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> with SingleTickerProviderStateMixin {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 19,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: value == true ? widget.activeColor : widget.inactiveColor),
      child: CupertinoSwitch(
        activeColor: Colors.transparent,
        trackColor: Colors.transparent,
        value: value,
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        },
      ),
    );
  }
}
