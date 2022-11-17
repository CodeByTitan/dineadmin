import 'package:dineadmin/screens/orders_tabscreen.dart';
import 'package:dineadmin/screens/request_tabscreen.dart';
import 'package:dineadmin/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppConstant.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppConstant.backgroundColor,
          title: Text("Hello user",
              style: TextStyle(
                fontFamily: 'Ubuntu',
              ),
              // 'Good ${greeting()} user!',
              ),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: AppConstant.primaryColor,
                  child: CircleAvatar(
                    radius: 17.5,
                    backgroundColor: AppConstant.backgroundColor,
                    // backgroundImage: widget.userData['photoURL'].isNotEmpty
                    //     ? NetworkImage(widget.userData['photoURL'].toString())
                    //     : null,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.person_rounded,
                        color: AppConstant.titlecolor,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                // icon: Icon(Icons.home_filled),
                text: "Orders",

              ),
              Tab(
                //  icon: Icon(Icons.account_box_outlined),
                text: "Request",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [OrdersTabScreen(), RequesttabScreen()],
        ),
      ),
    );
  }
}
