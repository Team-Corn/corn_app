import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PloginTabViewItem {
  PloginTabViewItem({required this.icon, this.toggle = false});

  Image icon;
  bool toggle;
}
