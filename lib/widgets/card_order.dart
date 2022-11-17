import 'package:flutter/material.dart';

import '../screens/order_detailscreen.dart';

class CardOrder extends StatelessWidget {
  const CardOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          decoration: BoxDecoration(

          ),
          child: Stack(
            alignment: Alignment.centerRight,
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 20,
                  bottom: 27,
                  right: 90,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const  LinearGradient(
                      begin:Alignment(-0.2, -1),
                      end: Alignment(0.7, 1),
                      colors: [
                        Color(0xFFECE425),
                        Color(0xffFCFBF2),
                      ]
                  ),
                ),
                child: Column(

                  children: [
                    IntrinsicHeight(

                      child: Row(

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Ubuntu'
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Item Name',
                                style: TextStyle(
                                  fontSize: 20,
                                    fontFamily: 'Ubuntu',
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image(image: AssetImage('images/Line 2.png')),

                          Spacer(),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Order Time',
                                style: TextStyle(
                                  fontSize: 12,
                                    fontFamily: 'Ubuntu',
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '1:00 pm',
                                style: TextStyle(
                                  fontSize: 20,
                                    fontFamily: 'Ubuntu'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: -20,
                child: Container(
                  alignment: Alignment.topRight,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(
                          0, 5,
                        )
                      )
                    ]
                  ),
                  child:
                  Center(child: Icon(Icons.add)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
