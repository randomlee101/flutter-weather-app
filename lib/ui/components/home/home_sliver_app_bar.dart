import 'package:flutter/material.dart';
import 'package:weather_app/ui/components/home/home_sliver_app_bar_clipper.dart';

import 'weather_overview.dart';
import 'weather_overview_header.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  CustomSliverAppBar({this.expandedHeight});

  final double? expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return ClipPath(
      clipper: HomeSliverAppBarClipper(),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.shade300, spreadRadius: 15)
            ],
            gradient: LinearGradient(
                colors: [Colors.blue.shade600, Colors.blue.shade800])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Stack(
              children: [
                Column(
                  children: [WeatherOverviewHeader(), Visibility(visible: shrinkOffset < (expandedHeight! - (expandedHeight! - (kToolbarHeight * 1.5))),child: WeatherOverview())],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(
                    Icons.arrow_drop_up,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight ?? 200;

  @override
  // TODO: implement minExtent
  double get minExtent => (kToolbarHeight * 2);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
