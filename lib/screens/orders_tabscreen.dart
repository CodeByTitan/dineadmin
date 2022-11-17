import 'package:dineadmin/screens/order_detailscreen.dart';
import 'package:dineadmin/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dineadmin/widgets/card_order.dart';

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
            return CardOrder();
          }),
      //  ),
    );
  }
}


