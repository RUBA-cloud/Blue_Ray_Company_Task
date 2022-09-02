import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  
  final double height;

  const AppBarWidget({required this.height});

  @override
  // ignore: library_private_types_in_public_api
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize

  get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.h_mobiledata),
              Expanded(
                child: Text(
                  "HomePage",
                  style: TextStyle(color: Colors.black)),
              ),
               
               Icon(Icons.baby_changing_station)
               
              
              
            ],
          ),
        ],
      ),
    );
  }
}
