import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/common/custom_icons.dart';
import 'package:test_ui/ui/widget/fields_container.dart';
import 'package:test_ui/ui/widget/switch_container.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = "profile/notification";

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Container(
            color: const Color(0xFFFAFAFA),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          behavior: HitTestBehavior.opaque,
                          child: Container(
                            margin: const EdgeInsets.only(top: 24),
                            width: 48,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xB3FFFFFF),
                            ),
                            child: Image.asset(
                              "assets/image/back.png",
                              color: Colors.black,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 26, bottom: 28),
                          child: Text(
                            "Уведомления",
                            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                  color: const Color(0xFF29293A),
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.only(top: 44),
                    child: FieldsContainer(
                      bgColor: const Color(0xFFFAFAFA),
                      borderColor: const Color(0xFFD3D6Db),
                      borderIndent: 25,
                      borderEndIndent: 25,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    CustomIcons.counters,
                                    color: Color(0xFF29293A),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: Text(
                                      "Показания счетчиков",
                                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                        color: const Color(0xFF29293A),
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  CustomSwitch(
                                    activeColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF1A73E9),
                                        Color(0xFF6C92F4),
                                      ],
                                    ),
                                    inactiveColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFBDBDBD),
                                        Color(0xFFBDBDBD),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    CustomIcons.receipt,
                                    color: Color(0xFF29293A),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: Text(
                                      "Квитанция",
                                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                        color: const Color(0xFF29293A),
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  CustomSwitch(
                                    activeColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF1A73E9),
                                        Color(0xFF6C92F4),
                                      ],
                                    ),
                                    inactiveColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFBDBDBD),
                                        Color(0xFFBDBDBD),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/image/payment.png",
                                    color: const Color(0xFF29293A),
                                    width: 24,
                                    height: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: Text(
                                      "Оплата",
                                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                            color: const Color(0xFF29293A),
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  CustomSwitch(
                                    activeColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF1A73E9),
                                        Color(0xFF6C92F4),
                                      ],
                                    ),
                                    inactiveColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFBDBDBD),
                                        Color(0xFFBDBDBD),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/image/applications.png",
                                    color: const Color(0xFF29293A),
                                    width: 24,
                                    height: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: Text(
                                      "Заявки",
                                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                            color: const Color(0xFF29293A),
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  CustomSwitch(
                                    activeColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF1A73E9),
                                        Color(0xFF6C92F4),
                                      ],
                                    ),
                                    inactiveColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFBDBDBD),
                                        Color(0xFFBDBDBD),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    CustomIcons.news,
                                    color: Color(0xFF29293A),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: Text(
                                      "Новости",
                                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                            color: const Color(0xFF29293A),
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  CustomSwitch(
                                    activeColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF1A73E9),
                                        Color(0xFF6C92F4),
                                      ],
                                    ),
                                    inactiveColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFBDBDBD),
                                        Color(0xFFBDBDBD),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    CustomIcons.chat,
                                    color: Color(0xFF29293A),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28),
                                    child: Text(
                                      "Чат",
                                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                            color: const Color(0xFF29293A),
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  CustomSwitch(
                                    activeColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF1A73E9),
                                        Color(0xFF6C92F4),
                                      ],
                                    ),
                                    inactiveColor: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFBDBDBD),
                                        Color(0xFFBDBDBD),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
