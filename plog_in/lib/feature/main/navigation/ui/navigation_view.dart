import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/campaign/ui/campaign_view.dart';
import 'package:plog_in/feature/main/community/ui/community_view.dart';
import 'package:plog_in/feature/main/home/ui/home_view.dart';
import 'package:plog_in/feature/main/map/ui/map_view.dart';
import 'package:plog_in/feature/main/navigation/model/plog_in_tab_item.dart';
import 'package:plog_in/feature/main/navigation/ui/plog_in_tabview.dart';
import 'package:plog_in/feature/main/ranking/component/ranking_cell.dart';
import 'package:plog_in/feature/main/ranking/ui/ranking_view.dart';
import 'package:plog_in/shared/theme/plog_in_icons.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  var _index = 0;

  final List<Widget> _pages = [
    HomeView(),
    CampaignView(),
    MapView(),
    CommunityView(),
    RankingView(),
  ];

  final List<PloginTabViewItem> _items = [
    PloginTabViewItem(icon: PloginIcons.home),
    PloginTabViewItem(icon: PloginIcons.flag),
    PloginTabViewItem(icon: PloginIcons.map),
    PloginTabViewItem(icon: PloginIcons.community),
    PloginTabViewItem(icon: PloginIcons.ranking),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_index],
        extendBody: true,
        bottomSheet: BottomAppBar(
          elevation: 0,
          height: 70 + MediaQuery.of(context).padding.bottom,
          color: Colors.transparent,
          padding: EdgeInsets.zero,
          child: PloginTabView(
            items: _items,
            onClick: (value) {
              setState(() {
                _index = value;
              });
            },
          ),
        ));
  }
}

