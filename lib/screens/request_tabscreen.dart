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
            return Card(
              child: Container(
                color: Colors.limeAccent,
                height: 120,
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("User name", style: TextStyle(fontSize: 12)),
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
                          Text("Oder pickup  time"),
                          Spacer(),
                         
                         
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment :MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (() => {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OrderDetailsScreen(),
                                ),
                              ),
                            }
                        ), 
                        icon: Icon(Icons.check_circle_outline)),
                        IconButton(onPressed: (() => {}), 
                        icon: Icon(Icons.close_sharp))


                    ],),)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
