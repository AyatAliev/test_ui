import 'package:flutter/material.dart';

class FieldsContainer extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double borderIndent;
  final double borderEndIndent;
  final Color bgColor;
  final Color borderColor;
  final Clip clip;

  const FieldsContainer({
    Key? key,
    required this.children,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderIndent = 0,
    this.borderEndIndent = 0,
    this.bgColor = Colors.white,
    this.borderColor = const Color(0xffEFF0F5),
    this.clip = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clip,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: bgColor,
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: children.length,
        itemBuilder: (context, index) {
          return children[index];
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: borderColor,
            height: 0,
            thickness: 1,
            indent: borderIndent,
            endIndent: borderEndIndent,
          );
        },
      ),
    );
  }
}
