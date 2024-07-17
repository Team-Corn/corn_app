import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/navigation/model/plog_in_tab_item.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_icons.dart';

class PloginTabView extends StatefulWidget {
  final List<PloginTabViewItem> items;
  final ValueChanged<int>? onClick;

  const PloginTabView({super.key, required this.items, this.onClick});

  @override
  State<PloginTabView> createState() => _PloginTabViewState();
}

class _PloginTabViewState extends State<PloginTabView> {
  void clickItem(int index) {
    setState(() {
      if (!widget.items[index].toggle == true) {
        widget.items.forEach((element) {
          element.toggle = false;
        });
        widget.items[index].toggle = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xffF1F1F1), width: 1.0),
            right: BorderSide(color: Color(0xffF1F1F1), width: 1.0),
            left: BorderSide(
              color: Color(0xffF1F1F1),
              width: 1.0,
            ),
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < widget.items.length; i++)
              CupertinoButton(
                  child: Image(
                    image: widget.items[i].icon
                        .toDark(widget.items[i].toggle)
                        .image,
                    width: 24,
                    height: 24,
                    // fit: BoxFit.fill,
                  ),
                  onPressed: () {
                    clickItem(i);
                    widget.onClick?.call(i);
                  })
          ],
        ),
      ),
    );
  }
}
