import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/common/custom_icons.dart';
import 'package:test_ui/ui/profile/profile_screen.dart';

class MainTabScreen extends StatefulWidget {
  static const String routeName = "main";

  const MainTabScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  Color selectorColor = const Color(0xFF29293A);
  Color unSelectorColor = const Color(0xFF9D9EAD);

  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: PageStorage(
              child: _tabBuilder(currentTab),
              bucket: PageStorageBucket(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom > 0 ? MediaQuery.of(context).padding.bottom : 16),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: InkWell(
                    onTap: () async {
                      _tabSwitcher(0);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CustomIcons.home,
                            size: 24,
                            color: currentTab == 0 ? selectorColor : unSelectorColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      _tabSwitcher(1);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Icon(
                        CustomIcons.counters,
                        size: 24,
                        color: currentTab == 1 ? selectorColor : unSelectorColor,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      _tabSwitcher(2);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/image/payment.png",
                        color: currentTab == 2 ? selectorColor : unSelectorColor,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      _tabSwitcher(3);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/image/applications.png",
                        color: currentTab == 3 ? selectorColor : unSelectorColor,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      _tabSwitcher(4);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Icon(
                        CustomIcons.profile,
                        size: 24,
                        color: currentTab == 4 ? selectorColor : unSelectorColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabBuilder(int currentTab) {
    if (currentTab == 0) {
      return const ProfileScreen();
    } else if (currentTab == 1) {
      return const ProfileScreen();
    } else if (currentTab == 2) {
      return const ProfileScreen();
    } else if (currentTab == 3) {
      return const ProfileScreen();
    } else if (currentTab == 4) {
      return const ProfileScreen();
    }

    return const SizedBox.expand();
  }

  void _tabSwitcher(int position) {
    if (currentTab != position) {
      setState(() {
        currentTab = position;
      });
    }
  }
}
