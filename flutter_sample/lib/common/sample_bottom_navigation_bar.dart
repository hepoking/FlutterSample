import 'package:flutter/material.dart';
import '../profile.dart';
import '../setting.dart';

BuildContext sampleContexts;

class SampleBottomNavigationBar extends StatefulWidget {
  const SampleBottomNavigationBar();

  @override
  _SampleBottomNavigationBar createState() => _SampleBottomNavigationBar();
}

class _SampleBottomNavigationBar extends State {
  @override
  Widget build(BuildContext context) {
    debugPrint('_SampleBottomNavigationBar build');
    sampleContexts = context;
    return new BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.account_circle),
          title: new Text("プロフィール"),
        ),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.settings), title: new Text("設定")),
      ],
      onTap: _onTapBottomNavigation
    );
  }
}


void _onTapBottomNavigation(int page) {
  switch (page) {
    case 0:
      Navigator.push(
        sampleContexts,
        MaterialPageRoute(
            settings: RouteSettings(name: "/profile"),
            builder: (BuildContext context) => Profile()),
      );
      break;
    case 1:
      Navigator.push(
        sampleContexts,
        MaterialPageRoute(
            settings: RouteSettings(name: "/setting"),
            builder: (BuildContext context) => Setting()),
      );
      break;
    default:
      break;
  }
}


