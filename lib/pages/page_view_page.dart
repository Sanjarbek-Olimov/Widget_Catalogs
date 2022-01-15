import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  static const String id = "page_view_page";

  const PageViewPage({Key? key}) : super(key: key);

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text("Page View"),
      ),
      body: PageView(
        // physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
              color: Colors.purpleAccent,
              child: Center(
                child: Text("Page 1"),
              )),
          Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text("Page 2"),
              )),
          Container(
              color: Colors.amberAccent,
              child: Center(
                child: Text("Page 3"),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
          _pageController.animateToPage(_selectedIndex, duration: Duration(milliseconds: 250), curve: Curves.easeIn);
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Profile"),
        ],
      ),
    ));
  }

  Widget page() {
    return Container();
  }
}
