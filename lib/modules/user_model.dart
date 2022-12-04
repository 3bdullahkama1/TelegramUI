// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UserModel extends StatelessWidget {
  String name;
  String message;
  String time;
  TextStyle timeStyle;
  Icon iconSeen;
  Widget? profileImage;

  UserModel({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    this.iconSeen = const Icon(
      Icons.check,
    ),
    this.timeStyle = const TextStyle(),
    this.profileImage,
  });
  Widget defaultProfileImage() {
    return Container(
      height: 55,
      width: 55,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.account_box,
        color: Colors.black87,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
      ),
      subtitle: Text(
        message,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconSeen,
          const SizedBox(
            width: 5,
          ),
          Text(
            time,
            style: timeStyle,
          )
        ],
      ),
      leading: (profileImage ?? defaultProfileImage()),
    );
  }
}
