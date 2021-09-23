import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller/tab_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final MyTabController _tab = Get.put(MyTabController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      bottom: true,
      top: true,
      minimum: EdgeInsets.all(5.0),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            '기부해요',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.exit_to_app_outlined),
            )
          ],
        ),
        body: Obx(
          () => IndexedStack(
            index: _tab.tabIndex.value,
            children: [
              _buildMainPageFront(),
              Text('등록하기'),
              Text('My Page'),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: _tab.changeTabIndex,
          currentIndex: _tab.tabIndex.value,
          items: _buildNavigationBar,
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> get _buildNavigationBar {
    return [
      BottomNavigationBarItem(
        label: '신청하기',
        icon: Container(
            margin: EdgeInsets.only(bottom: 7),
            child: Icon(
              Icons.call_made,
            )),
      ),
      BottomNavigationBarItem(
        label: '등록하기',
        icon: Container(
          margin: EdgeInsets.only(bottom: 7),
          child: Icon(
            Icons.add_box_outlined,
          ),
        ),
      ),
      BottomNavigationBarItem(
        label: 'My Page',
        icon: Container(
          margin: EdgeInsets.only(bottom: 7),
          child: Icon(
            Icons.favorite_border,
          ),
        ),
      ),
    ];
  }

  Widget _buildMainPageFront() {
    final rootPath = "assets/images/";
    final imgList = [1, 2];
    MyTabController controller = Get.put(MyTabController());
    int _current = 0;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            aspectRatio: 5 / 3,
            autoPlay: true,
            onPageChanged: controller.changeImageIndex,
          ),
          items: imgList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.green),
                  child: Image.asset(
                    rootPath + "dona_$i" + ".jpeg",
                    fit: BoxFit.fill,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ],
    );
  }
}
