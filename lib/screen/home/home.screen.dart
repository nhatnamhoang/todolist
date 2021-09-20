import 'package:todoapp/@share/utils/util.dart';
import 'package:todoapp/@share/widget/scaffold.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/@share/widget/stateless/header_account.dart';
import 'package:todoapp/@share/widget/stateless/tabbar.dart';
import 'package:todoapp/@share/widget/stateless/tabbar_content.dart';

import 'home.controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  final homeController = Get.put(HomeController());

  onClickTab(int index) {
    homeController.updateIndexTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderAccount(),
          heightSpace(15),
          Obx(() => TabBarCustom(
                tabController: homeController.tabController,
                index: homeController.indexTab.value,
                onTap: onClickTab,
              )),
          GetBuilder<HomeController>(
            builder: (_) => TabBarContent(
              tabController: homeController.tabController,
              listCheckBoxAll: homeController.listCheckBox.value,
              listCheckBoxOverdue: homeController.getListOverdue(),
              listCheckBoxCompleted: homeController.getListCompleted(),
              onChangeStatus: homeController.updateStatusCheckbox,
            ),
          ),
        ],
      ),
    );
  }
}
