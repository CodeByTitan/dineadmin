import 'package:flutter/material.dart';
import '../screens/order_detailscreen.dart';


class CardRequest extends StatelessWidget {
  const CardRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:23, vertical: 2),
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment(-0.2, -1),
                end: Alignment(0.7, 1),
                colors: [
                  Color(0xFFECE425),
                  Color(0xffFCFBF2),
                ]),
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 40,
            right: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('User name',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Ubuntu',
                    ),),
                  SizedBox(width: 138,),
                  Text('Order Time',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Ubuntu',
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Item name',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Ubuntu',
                      ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderDetailsScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2)
                          ),
                          child: Icon(Icons.done,
                            size: 30,),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Image(image: AssetImage('images/Line 2.png')),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1:00 pm',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 2)
                          ),
                          child: Icon(Icons.not_interested,
                          size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}