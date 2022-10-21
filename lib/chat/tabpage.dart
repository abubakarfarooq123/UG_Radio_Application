import 'package:flutter/material.dart';
import 'package:ug_radio_app/chat/catch_up.dart';
import 'package:ug_radio_app/chat/engage.dart';
class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override

  void initState(){
    controller =TabController(length: 2, vsync: this);
    super.initState();
  }
  @override

  void dispose(){
controller.dispose();
    super.dispose();

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: Colors.amber,
            controller: controller,
            tabs: [
              Tab(
                text: "Engage",
              ),
              Tab(
                text: "Catch Up",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Engage(),
            Catch_Up(),
          ],
        ),
    );
  }
}
