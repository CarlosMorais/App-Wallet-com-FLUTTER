import 'package:flutter/material.dart';
import 'card_screen.dart';
import 'home_screen.dart';

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  final List<Map<String, Object>> screens = [
    {'title': 'Início', 'screen': HomeScreen()},
    {'title': 'Cartão', 'screen': CardScreen()},
  ]; //screens for each tab

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Color(0xFFf0f0f0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedTab,
          backgroundColor: Color(0xFFf9f9f9),
          elevation: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text(screens[0]['title'])),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                title: Text(screens[1]['title'])),
          ],
          onTap: (index) {
            setState(() {
              selectedTab = index;
            });
          },
          showUnselectedLabels: true,
          iconSize: 30,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab]['screen'],
    );
  }
}
