import 'package:flutter/material.dart';

class PloginIcons {
  static Image home = Image.asset("assets/icons/home.png");
  static Image homeDark = Image.asset("assets/icons/home_dark.png");
  static Image community = Image.asset("assets/icons/community.png");
  static Image communityDark = Image.asset("assets/icons/community_dark.png");
  static Image map = Image.asset("assets/icons/map.png");
  static Image mapDark = Image.asset("assets/icons/map_dark.png");
  static Image flag = Image.asset("assets/icons/flag.png");
  static Image flagDark = Image.asset("assets/icons/flag_dark.png");
  static Image ranking = Image.asset("assets/icons/ranking.png");
  static Image rankingDark = Image.asset("assets/icons/ranking_dark.png");
}

extension PloginIconsFill on Image {
  Image toDark(bool fill) {
    if (fill == true) {
      var str = this.toString();
      var substr = str.substring(str.lastIndexOf("(") + 1, str.indexOf(")"));
      var path = substr
          .substring(substr.lastIndexOf(" ") + 1, substr.lastIndexOf("."))
          .replaceAll("\"", "");

      var image;

      try {
        image = Image.asset("${path}_dark.png");
      } catch (e) {
        image = Image(image: this.image, color: Color(0xff0E2764));
      }

      return image;
    } else {
      return this;
    }
  }
}
