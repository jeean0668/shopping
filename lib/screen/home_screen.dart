import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/tab_controller.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final MyTabController _tab = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          '기부해요',
          style : TextStyle(
            fontSize : 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.exit_to_app_outlined),
          )],
      ),
      body: Center(
        child: Text('자기계발에 도움이 되는 어플 제작예정 -> 기부 어플'),
      ),
      bottomNavigationBar : TabBar(
        controller: _tab.controller,
        tabs: _tab.myTabs,),
    );
  }
}
