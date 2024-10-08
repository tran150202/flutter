import 'package:flutter/material.dart';



class Class extends StatelessWidget {
  const Class({super.key});


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Classroom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClassroomScreen(),
    );
  }
}
class ClassroomScreen extends StatelessWidget {
  final List<Map<String, String>> classrooms = [
    {'title': 'CSDL Phân tán nhóm1-2024', 'instructor': 'Hàn Nguyễn Mậu', 'image': '1.jpg'},
    {'title': 'XML Nhóm 1', 'instructor': 'Dũng Nguyễn', 'image': '2.jpg'},
    {'title': '[2023-2024] Lập trình phân tán', 'instructor': 'Hà Nguyễn Hoàng', 'image': '3.jpg'},
    {'title': 'Lập trình ứng dụng di động', 'instructor': 'Nguyễn Dũng', 'image': '2.jpg'},
    {'title': 'Thi QTDAPM - Đề số 1', 'instructor': 'Hàn Nguyễn Mậu', 'image': '1.jpg'},
    {'title': '[2023-2024] Java nâng cao', 'instructor': 'Nhóm ...', 'image': '4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Classroom'),
      ),
      body: ListView.builder(
        itemCount: classrooms.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(classrooms[index]['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.black.withOpacity(0.5),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  child: Text(
                    classrooms[index]['title']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Text(
                    classrooms[index]['instructor']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}