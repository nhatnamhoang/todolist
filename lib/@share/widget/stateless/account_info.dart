import 'package:flutter/material.dart';
import 'package:todoapp/@share/utils/util.dart';
import 'package:todoapp/resources/styles/styles.dart';
import '../network_circle_avatar.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const NetworkCircleAvatar(
          avatarUrl:
              "https://i.ibb.co/VS7X2H1/austin-wade-X6-Uj51n5-CE8-unsplash.png",
          width: 36,
        ),
        widthSpace(17),
        heightSpace(6),
        Text(
          "To-Dos".toUpperCase(),
          style:
              AppStyles().typeRegular(20).copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
