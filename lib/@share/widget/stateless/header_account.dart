import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'account_info.dart';

class HeaderAccount extends StatelessWidget {
  const HeaderAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 67),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const AccountInfo(), _buildIcons()],
      ),
    );
  }

  Widget _buildIcons() =>
      IconButton(onPressed: () => {}, icon: const Icon(Icons.notifications));
}
