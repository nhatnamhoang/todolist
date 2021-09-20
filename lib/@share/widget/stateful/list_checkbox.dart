import 'package:flutter/material.dart';
import 'package:todoapp/@core/data/repo/model/checkbox.model.dart';

import 'checkbox_item.dart';

class ListCheckBoxCustom extends StatefulWidget {
  final List<CheckBoxModel>? listCheckBox;
  final Function(int, bool)? onChangeStatus;

  const ListCheckBoxCustom({Key? key, this.listCheckBox, this.onChangeStatus})
      : super(key: key);

  @override
  _ListCheckBoxCustomState createState() => _ListCheckBoxCustomState();
}

class _ListCheckBoxCustomState extends State<ListCheckBoxCustom> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.listCheckBox!.length,
      padding: const EdgeInsets.only(top: 10),
      itemBuilder: (context, index) => CheckboxItem(
        checkBoxModel: widget.listCheckBox![index],
        onTap: widget.onChangeStatus,
      ),
    );
  }
}
