import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_with_mitchkoko/constraint.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
        // open drawer
          myDrawer,

        // rest of body
          Expanded(
            flex: 2,
              child: Column(
                children: [
                  // 4 box on the top
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                        itemBuilder: (context, index){
                          return const MyBox();
                        },
                      ),
                    ),
                  ),

                  // tiles below it
                  Expanded(
                    child:
                    ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index){
                          return MyTile();
                        }
                    ),
                  ),
                ],
              ),
          ),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.pink,
                      ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
