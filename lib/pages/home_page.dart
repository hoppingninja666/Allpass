import 'package:flutter/material.dart';

import 'package:allpass/pages/password/password_page.dart';
import 'package:allpass/pages/card/card_page.dart';
import 'package:allpass/pages/setting/setting_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  final List<Widget> _pagesList = List()
    ..add(PasswordPage())
    ..add(CardPage())
    ..add(SettingPage());
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pagesList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              color: _currentIndex==0?null:Colors.grey,
            ),
            title: Text("密码", style: TextStyle(fontSize: 12),),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
                color: _currentIndex==1?null:Colors.grey,
              ),
              title: Text("卡片", style: TextStyle(fontSize: 12))
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: _currentIndex==2?null:Colors.grey,
              ),
              title: Text("设置", style: TextStyle(fontSize: 12))
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}