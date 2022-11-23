import 'package:dineadmin/screens/order_detailscreen.dart';
import 'package:dineadmin/utils/app_constant.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class RequesttabScreen extends StatefulWidget {
  const RequesttabScreen({super.key});

  @override
  State<RequesttabScreen> createState() => _RequesttabScreenState();
}

class _RequesttabScreenState extends State<RequesttabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.backgroundColor,
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                color: AppConstant.backgroundColor,
                child: Container(
                  decoration: const ShapeDecoration(
                      color: Color(0xFFF0F4C3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User name", style: TextStyle(fontSize: 15)),
                            Text(
                              "Item name",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("Oder pickup  time"),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: (() => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const OrderDetailsScreen(),
                                      ),
                                    ),
                                  }),
                              icon: const Icon(
                                Icons.check_circle_outline,
                                color: Colors.green,
                              )),
                          IconButton(
                              onPressed: (() => {}),
                              icon: const Icon(
                                Icons.close_sharp,
                                color: Colors.red,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
