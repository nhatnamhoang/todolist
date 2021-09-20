import 'package:flutter/material.dart';
import 'package:todoapp/@core/data/repo/model/checkbox.model.dart';
import 'package:todoapp/@share/widget/stateful/list_checkbox.dart';
import 'package:todoapp/@share/widget/stateful/list_checkbox.dart';
import 'package:todoapp/resources/styles/colors.dart';

class TabBarContent extends StatelessWidget {
  final TabController? tabController;
  final List<CheckBoxModel>? listCheckBoxAll;
  final List<CheckBoxModel>? listCheckBoxOverdue;
  final List<CheckBoxModel>? listCheckBoxCompleted;
  final Function(int, bool)? onChangeStatus;

  const TabBarContent(
      {Key? key,
      this.tabController,
      this.listCheckBoxAll,
      this.onChangeStatus,
      this.listCheckBoxOverdue,
      this.listCheckBoxCompleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: TabBarView(
          controller: tabController,
          children: [
            ListCheckBoxCustom(
              listCheckBox: listCheckBoxAll,
              onChangeStatus: onChangeStatus,
            ),
            ListCheckBoxCustom(
              listCheckBox: listCheckBoxOverdue,
              onChangeStatus: onChangeStatus,
            ),
            ListCheckBoxCustom(
              listCheckBox: listCheckBoxCompleted,
              onChangeStatus: onChangeStatus,
            ),
          ],
        ),
      ),
    );
  }
}
