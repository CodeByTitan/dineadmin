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
       body: GestureDetector(
        onTap: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderDetailsScreen(),
                      ),
                    );},
         child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                   leading: const Text("User Name"),
                    trailing:Icon(Icons.arrow_forward),
                    title: Text("Item name",
                    style: TextStyle(
                      fontSize: 20
                    ),)),
              );
            }),
       ),
    );
    
  }
}