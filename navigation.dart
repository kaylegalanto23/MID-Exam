import 'package:flutter/material.dart';
import 'page/home_page.dart';
import 'page/about_page.dart';
import 'page/projects_page.dart';
import 'page/gallery_page.dart';
import 'page/contact_page.dart';

class MainNavigationPage extends StatefulWidget {
  @override
  _MainNavigationPageState createState() => _MainNavigationPageState();
}
class _MainNavigationPageState extends State {
  int _selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext conxtext) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          AboutPage(),
          ProjectPage(),
          HomePage(),
          GalleryPage(),
          ContactPage(),
        ],
        onPageChanged: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        elevation: 8.0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About Me'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_library), label: 'Gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
        ],
      ),
    );
  }
  void _onTabTapped(int index) {
    setState(() {
      int _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}