import 'package:avocado_app/pages/OrderList.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:custom_navigator/custom_navigator.dart';

class cusNav extends StatefulWidget {
  const cusNav({Key? key}) : super(key: key);

  @override
  State<cusNav> createState() => _cusNavState();
}

class _cusNavState extends State<cusNav> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: CustomScaffold(
        scaffold: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,

            // selectedItemColor: Colors.red,
            unselectedLabelStyle: TextStyle(color: Colors.blue),

            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.house_rounded,
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.file_upload_outlined,
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.book_sharp,
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.person_off_outlined,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        // Children are the pages that will be shown by every click
        // They should placed in order such as
        // `page 0` will be presented when `item 0` in the [BottomNavigationBar] clicked.
        children: <Widget>[
          OrderList(),
          OrderList(),
          OrderList(),
          OrderList(),
        ],

        // Called when one of the [items] is tapped.
        onItemTap: (index) {},
      ),
    );
  }
}
