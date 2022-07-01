import 'package:flutter/material.dart';

class SmartContainer extends StatefulWidget {
  const SmartContainer(
      {Key? key,
      this.height = 120.0,
      this.width,
      this.color1,
      this.color2,
      this.title = "Title",
      this.textColor,
      this.subtitle = "Subtitle",
      this.subtitleColor,
      this.padding})
      : super(key: key);

  final double? width;
  final double height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final String subtitle;
  final Color? subtitleColor;
  final EdgeInsetsGeometry? padding;

  @override
  State<SmartContainer> createState() => _SmartContainerState();
}

class _SmartContainerState extends State<SmartContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
              colors: [widget.color1 ?? Color(0x3c36a2), Color(0x00d4ff)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: [
            const BoxShadow(
                color: Colors.grey, blurRadius: 12, offset: Offset(0, 6))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [],
      ),
    );
  }
}
