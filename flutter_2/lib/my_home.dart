import 'package:flutter/material.dart';
class MyHome extends StatelessWidget {
  MyHome({super.key});
  String imageUrL = "https://hoangphucphoto.com/wp-content/uploads/2024/01/anh-nui-thumb-1-1536x1005.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ứng dụng đầu tiên của tôi"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        leading: Icon(Icons.home),
        actions: [
          // Icon(Icons.search)
          IconButton(
            onPressed: (){
              print("Bạn đã bấm vào tôi");
            },
            icon: Icon(Icons.place),

          ),
          Icon(Icons.send_sharp),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Hello",
              style: TextStyle(
                fontSize: 50,
                color: Colors.red,
              //   route:{
              //     "/" (context) => MyHome(),
              // "/place": (context) => MyPlace()
              //   },


              ),
            ),

          ),
          Text(
            "Xin chào",
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.play_arrow,size: 50,),
              Icon(Icons.stop, size: 50,),
              Icon(Icons.skip_next,size: 50,)

            ],
          ),
          Image.network(imageUrL),
          SizedBox(height: 10,),
          Image.network(imageUrL),
        ],
      ),
    );
  }
}
