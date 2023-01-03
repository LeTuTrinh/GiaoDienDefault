import 'package:flutter/material.dart';

class showbutton extends StatefulWidget {
  const showbutton({super.key});

  @override
  State<showbutton> createState() => _showbuttonState();
}

class _showbuttonState extends State<showbutton> {
  GlobalKey menuKey = GlobalKey();

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: [
        PopupMenuItem(
          child: Text("Create a website"),
        ),
        PopupMenuItem(
          child: Text("Top Ms commericial management"),
        ),
        PopupMenuItem(
          child: Text("Mobile inventory application"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: menuKey,
      color: Colors.lightBlueAccent,
      // constraints: BoxConstraints(
      //   minWidth: 50,
      //   minHeight: 50,
      // ),
      child: MouseRegion(
        onHover: (event) => showMenus(context),
        child: Text(
          '...',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromARGB(255, 86, 47, 184)),
        ),
      ),
    );
  }
}
