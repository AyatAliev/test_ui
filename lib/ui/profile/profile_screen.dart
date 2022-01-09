import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/ui/notification/notification_screen.dart';
import 'package:test_ui/ui/widget/fields_container.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = "profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFAFA),
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: const Color(0xFFFAFAFA),
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverToBoxAdapter(
                child: GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 24, top: 24),
                        width: 48,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xB3FFFFFF),
                        ),
                        child: Image.asset(
                          "assets/image/edit.png",
                          color: Colors.black,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                  onTap: () async {},
                ),
              ),
              SliverAppBar(
                elevation: 1.0,
                backgroundColor: const Color(0xFFFAFAFA),
                pinned: true,
                expandedHeight: 210,
                collapsedHeight: 60,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    color: const Color(0xFFFAFAFA),
                    child: Builder(
                      builder: (context) {
                        return SafeArea(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                ),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/image/avatar.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Наталья А.",
                                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                        color: const Color(0xFF29293A),
                                        fontSize: 20,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Text("pochta@pochta.ru",
                                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                        color: const Color(0xFF29293A),
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w400,
                                      )),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                toolbarHeight: 60,
              ),
              SliverToBoxAdapter(
                child: FieldsContainer(
                  bgColor: const Color(0xFFFAFAFA),
                  borderColor: const Color(0xFFD3D6Db),
                  borderIndent: 25,
                  borderEndIndent: 25,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/address.png",
                            color: const Color(0xFF29293A),
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              "Привязанные адреса",
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
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
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
                              "Способы оплаты",
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
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/password.png",
                            color: const Color(0xFF29293A),
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              "Безопасность",
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
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushNamed(context, NotificationScreen.routeName);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/image/notification.png",
                              color: const Color(0xFF29293A),
                              width: 24,
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28),
                              child: Text(
                                "Уведомления",
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
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/announcement.png",
                            color: const Color(0xFF29293A),
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              "Мои объявления",
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
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/send_problem.png",
                            color: const Color(0xFF29293A),
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              "Техподдержка",
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
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/info.png",
                                color: const Color(0xFF29293A),
                                width: 24,
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28),
                                child: Text(
                                  "О приложении",
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
                            children: [
                              Text(
                                "Версия 2.0.3",
                                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                      color: const Color(0xFF58596A),
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/exit.png",
                            color: const Color(0xFF4854ED),
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              "Выйти",
                              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                    color: const Color(0xFF4854ED),
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
