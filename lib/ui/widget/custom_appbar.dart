import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class TMAppBar extends StatefulWidget implements PreferredSizeWidget {
  TMAppBar({super.key,this.iconButton,});
  Widget? iconButton;


  @override
  State<TMAppBar> createState() => _TMAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _TMAppBarState extends State<TMAppBar> {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 80,
      // automaticallyImplyLeading:  false,
      // titleSpacing: 25,
      backgroundColor: AppColors.themColor,
      title: Row(
        children: [
          CircleAvatar(maxRadius: 20, backgroundColor: Colors.white60),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Md Mozahedu ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Moobin',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            child: widget.iconButton,
          ),

        ],
      ),
    );
  }

 
}