import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:todoapp/resources/styles/colors.dart';

class NetworkCircleAvatar extends StatelessWidget {
  final String? avatarUrl;
  final double? width;
  final BoxShadow? boxShadow;
  const NetworkCircleAvatar(
      {@required this.avatarUrl, @required this.width, this.boxShadow});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(width! / 2),
        ),
        boxShadow: boxShadow != null
            ? [boxShadow!]
            : [
              const  BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
              ],
      ),
      child: _buildCircleImage(width! / 2),
    );
  }

  Widget _buildCircleImage(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: this.avatarUrl!,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.error_outline,
            color: AppColors.red,
            size: radius,
          ),
        ),
      ),
    );
  }
}
