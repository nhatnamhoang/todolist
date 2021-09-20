import 'package:flutter/material.dart';
import 'package:todoapp/resources/styles/colors.dart';
import 'package:todoapp/resources/styles/styles.dart';

class TabBarCustom extends StatelessWidget {
  final TabController? tabController;
  final int? index;
  final Function(int)? onTap;
  const TabBarCustom({Key? key, this.tabController, this.index, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23.5),
      child: TabBar(
        onTap: (index) => onTap!(index),
        controller: tabController!,
        labelColor: AppColors.mainColor,
        unselectedLabelColor: AppColors.textPrimaryColor,
        indicatorColor: Colors.white,
        labelStyle:
            AppStyles().typeRegular(12).copyWith(fontWeight: FontWeight.w500),
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.mainColor,
              width: 2.0,
            ),
          ),
        ),
        tabs: const [
          Tab(text: "Active"),
          Tab(text: "Overdue"),
          Tab(text: "Completed"),
        ],
      ),
    );
  }
}
