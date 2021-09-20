import 'package:flutter/material.dart';
import 'package:todoapp/@core/data/repo/model/checkbox.model.dart';
import 'package:todoapp/resources/styles/colors.dart';
import 'package:todoapp/resources/styles/styles.dart';

class CheckboxItem extends StatefulWidget {
  final CheckBoxModel? checkBoxModel;
  final Function(int, bool)? onTap;
  const CheckboxItem({Key? key, this.checkBoxModel, this.onTap})
      : super(key: key);

  @override
  _CheckboxItemState createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: AppColors.mainColor,
      dense: true,
      title: Text(
        widget.checkBoxModel!.title!,
        style: AppStyles().typeRegular(16),
      ),
      value: widget.checkBoxModel!.isCheck,
      onChanged: (bool? val) =>
          widget.onTap!(widget.checkBoxModel!.userId!, val!),
    );
  }
}
