import 'package:dineadmin/screens/order_detailscreen.dart';
import 'package:dineadmin/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrdersTabScreen extends StatefulWidget {
  const OrdersTabScreen({super.key});

  @override
  State<OrdersTabScreen> createState() => _OrdersTabScreenState();
}

class _OrdersTabScreenState extends State<OrdersTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.backgroundColor,
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                color: AppConstant.backgroundColor,
                child: Container(
                  decoration: const ShapeDecoration(
                      color: Color(0xFFF0F4C3),//Colors.limeAccent,//Color(0xFFFFFDE7),//Colors.yellowAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 8),
                        child: Text("User name",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ),
                      Container(
                        width: 500,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Item name",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Spacer(),
                            Text("Oder time"),
                            Spacer(),
                            SizedBox(
                              height: 60,
                              child: VerticalDivider(color: Colors.red),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OrderDetailsScreen(),
                                  ),
                                ),
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  child: Center(
                                    child:
                                        Icon(Icons.arrow_circle_right_outlined),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      //  ),
    );
  }
}
