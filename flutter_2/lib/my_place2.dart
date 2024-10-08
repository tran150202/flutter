import 'package:flutter/material.dart';
class Place extends StatelessWidget {
  Place({super.key});
  List<String> listImage = [
    '1.jpg','2.jpg','3.jpg','4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Icon(Icons.search)
          IconButton(
            onPressed: (){
              print("Bạn đã bấm vào tôi");
            },
            icon: Icon(Icons.notifications),

          ),
          Icon(Icons.send_sharp),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            scrollDirection:Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome, ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                    "Charlie",
                    style: TextStyle(
                      fontSize: 30,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Saved Places',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                  height: 300,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: List.generate(listImage.length, (index) =>
                        Image.asset(listImage[index])
                    ),


                  )
              )
            ],
          )

      ),

    );
  }
}
