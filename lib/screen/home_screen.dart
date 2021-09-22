import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/tab_controller.dart';
import 'package:shopping/presentation/custom_navigation_icon_icons.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final MyTabController _tab = Get.put(MyTabController(), permanent: false);
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
      
      body: Obx(() => IndexedStack(
        index : _tab.tabIndex.value,
        children: [
          Text('신청하기'),
          Text('등록하기'),
          Text('My Page'),
        ],
      ),),

      bottomNavigationBar : BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _tab.changeTabIndex,
        currentIndex: _tab.tabIndex.value,
        items: [
          BottomNavigationBarItem(
            label : '신청하기',
            icon : Container(
              margin : EdgeInsets.only(bottom : 7),
              child : Icon(Icons.call_made,)
            ), 
          ),
          BottomNavigationBarItem(
            label : '등록하기',
            icon : Container(
              margin : EdgeInsets.only(bottom : 7),
              child : Icon(Icons.add_box_outlined,),
            ), 
          ),
          BottomNavigationBarItem(
            label : 'My Page',
            icon : Container(
              margin : EdgeInsets.only(bottom : 7),
              child : Icon(Icons.favorite_border,),
            ), 
          ),
        ],
      ),);
  }
}
