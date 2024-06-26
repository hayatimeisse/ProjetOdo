import 'package:flutter/material.dart';
import 'package:startup/config.dart';

class custAppbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? chevronLeftCallback;
  final VoidCallback? searchCallback;
  final String? title;

  const custAppbar({
    this.chevronLeftCallback,
    this.searchCallback,
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade100,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              if (context != null) {
                Navigator.of(context!).pop();
              }
            },
          ),
          SizedBox(width: width10px(context) * 0.8),
          title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : SizedBox(),
          Spacer(),
          IconButton(
            onPressed: searchCallback,
            icon: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
