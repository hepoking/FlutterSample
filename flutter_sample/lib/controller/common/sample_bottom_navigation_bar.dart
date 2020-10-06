import 'package:flutter/material.dart';
import 'package:flutter_sample/controller/profile.dart';
import 'setting.dart';
import '../../service/router_service.dart';

BuildContext sampleContexts;
final routerService = RouterService();

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
      routerService.pushNavigator("/profile", sampleContexts, Profile());
      break;
    case 1:
      routerService.pushNavigator("/setting", sampleContexts, Setting());
      break;
    default:
      break;
  }
}


