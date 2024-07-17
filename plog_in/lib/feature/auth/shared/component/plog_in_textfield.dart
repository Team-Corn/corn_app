import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';

class PlogInTextfield extends StatefulWidget {
  TextEditingController textEditingController;
  final String placeHolderText;

  PlogInTextfield(
      {super.key,
      required this.textEditingController,
      required this.placeHolderText});

  @override
  State<PlogInTextfield> createState() => _PlogInTextfieldState();
}

class _PlogInTextfieldState extends State<PlogInTextfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.textEditingController,
        onChanged: (value) {},
        cursorColor: Color(0xff0E2764),
        style: TextStyle(fontFamily: "Pretendard", fontSize: 16),
        decoration: InputDecoration(
          hintText: "${widget.placeHolderText}",
          hintStyle: TextStyle(
            height: 1.3,
            fontFamily: "Pretendard",
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PlogInColors.gray),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PlogInColors.lightGreen),
          ),
        ),
        maxLines: 1,
      ),
    );
  }
}
