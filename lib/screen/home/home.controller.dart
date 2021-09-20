import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/@core/data/repo/model/checkbox.model.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  RxList<CheckBoxModel> listCheckBox = <CheckBoxModel>[
    CheckBoxModel(
        userId: 1,
        title: "Học Toán",
        isCheck: true),
    CheckBoxModel(
        userId: 2,
        title: "Làm bài tập Toán",
        isCheck: false),
    CheckBoxModel(
        userId: 3,
        title: "Làm bài tập Hoá",
        isCheck: false),
    CheckBoxModel(
        userId: 4,
        title: "Làm bài tập Anh Văn",
        isCheck: false),
    CheckBoxModel(
        userId: 5,
        title: " Làm bài tập GDCN",
        isCheck: false),
  ].obs;


  late TabController tabController;

  var indexTab = 0.obs;

  updateIndexTab(val) {
    indexTab.value = val;
  }

  updateStatusCheckbox(index, value) {
   var item = listCheckBox.indexWhere((element) => element.userId == index);
   listCheckBox[item].isCheck = value;
   update();
  }

  getListOverdue() => listCheckBox.where((element) => element.isCheck == false).toList();

  getListCompleted() => listCheckBox.where((element) => element.isCheck == true).toList();

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

}
