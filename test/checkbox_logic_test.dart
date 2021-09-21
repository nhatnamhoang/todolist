import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:todoapp/application/app.dart';
import 'package:todoapp/screen/home/home.controller.dart';

void main() {
  testWidgets('Checkbox logic function test ', (WidgetTester tester) async {
    final homeController =  Get.put(HomeController());
    var listCheckBoxAll = homeController.listCheckBox;

    //Test complete task function
    homeController.updateStatusCheckbox(2, true);

    var listCheckBoxCompleted = listCheckBoxAll.where((element) => element.isCheck == true).length;

    expect(listCheckBoxCompleted, 2);

    // Test Overdue task function
    homeController.updateStatusCheckbox(2, false);

    var listCheckBoxOverdue = listCheckBoxAll.where((element) => element.isCheck == false).length;

    expect(listCheckBoxOverdue, 4);

    // Test status checkbox task
    homeController.updateStatusCheckbox(2, true);

    var item = listCheckBoxAll.indexWhere((element) => element.userId == 2);
    bool isChecked = listCheckBoxAll[item].isCheck = true;

    expect(isChecked, true);
  });
}
