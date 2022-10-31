import 'package:flutter/material.dart';
import 'package:onmyway/screens/tabs/chatPage.dart';
import 'package:onmyway/screens/tabs/EnterInfoOnMap.dart';
import 'package:onmyway/screens/tabs/more.dart';
import 'package:onmyway/screens/tabs/mytrips.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  with SingleTickerProviderStateMixin{

  TabController? tabController;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  onTabChange(int index) {
    currentTabIndex = index;
    tabController!.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          EnterInfoOnMap(),
          MyTripsTabScreen(),
          ChatPage(),
          MoreTabScreen(),
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_upward) , label: "MyTrips"),
          BottomNavigationBarItem(icon: Icon(Icons.chat) , label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz) , label: "More"),
        ],
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: onTabChange,
        currentIndex: currentTabIndex,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold , fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal , fontSize: 12),


      ),
    );
  }
}