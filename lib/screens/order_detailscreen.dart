import 'package:dineadmin/utils/app_constant.dart';
import 'package:dineadmin/widgets/cheboxvalue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConstant.backgroundColor,
        appBar: AppBar(
          title: Text("Order Details"),
        ),
        body:
            // ListView.builder(
            //       itemCount: 15,
            //       itemBuilder: (BuildContext context, int index) {
            Card(
          child: Container(
            color: Colors.lightBlue,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("User name", style: TextStyle(fontSize: 12)),
                ),
                Container(
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Item name",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text("Oder time"),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Center(
                  child: GestureDetector(
                      onTap: (() {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.lightBlueAccent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 200,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Add ons'),
                                    CheckValue()
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                      child: Container(
                        child: Text("Click for checking Add ons"),
                      )),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(
                      child: Text('Complete Order'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        //  }),
        );
  }
}
