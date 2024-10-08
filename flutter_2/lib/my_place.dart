import 'package:flutter/material.dart';

import 'my_home.dart';
class MyPlace extends StatelessWidget {
  MyPlace({super.key});
  String imageUrL = "https://images.pexels.com/photos/691668/pexels-photo-691668.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network(imageUrL, fit: BoxFit.cover, // Đặt hình ảnh để bao phủ toàn bộ chiều rộng
              width: double.infinity), // Đặt chiều srộng của hình ảnh bằng chiều rộng của màn hình),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Oeschinensee Lake Campground',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 20, color: Colors.yellow),
                    SizedBox(width: 5), // Khoảng cách giữa biểu tượng và số
                    Text(
                      '41',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),



              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Kandersteg, Switzerland',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),

            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHome()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.call, size: 25, color: Colors.blue),
                        SizedBox(height: 10,),
                        Text(
                          'CALL',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.near_me, size: 25, color: Colors.blue),
                  SizedBox(height: 10,),
                  Text(
                    'ROUTE',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.blue),
                  ),
                ],
              ),
              Column(
                children: [

                  Icon(Icons.share, size: 25, color: Colors.blue),
                  SizedBox(height: 10,),
                  Text(
                    'SHARE',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
                  'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                  'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                  'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                  'Activities enjoyed here include rowing, and riding the summer toboggan run.',
            ),
          ),

        ],
      ),
    );
  }
}
