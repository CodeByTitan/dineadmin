import 'package:dineadmin/screens/order_detailscreen.dart';
import 'package:dineadmin/utils/app_constant.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:dineadmin/widgets/card_request.dart';

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
            return CardRequest();
          }),
    );
  }
}


