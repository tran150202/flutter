import 'package:flutter/material.dart';
import 'package:flutter_2/main.dart';

class Class extends StatelessWidget {
  const Class({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Classroom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    );
  }
}

class ClassroomScreen extends StatelessWidget {
  final List<Map<String, String>> classrooms = [
    {
      'title': 'CSDL Phân tán nhóm1-2024',
      'instructor': 'Hàn Nguyễn Mậu',
      'image': 'https://via.placeholder.com/150/FF0000/FFFFFF?Text=Class1'
    },
    {
      'title': 'XML Nhóm 1',
      'instructor': 'Dũng Nguyễn',
      'image': 'https://via.placeholder.com/150/00FF00/FFFFFF?Text=Class2'
    },
    {
      'title': '[2023-2024] Lập trình phân tán',
      'instructor': 'Hà Nguyễn Hoàng',
      'image': 'https://via.placeholder.com/150/0000FF/FFFFFF?Text=Class3'
    },
    {
      'title': 'Lập trình ứng dụng di động',
      'instructor': 'Nguyễn Dũng',
      'image': 'https://via.placeholder.com/150/FFFF00/FFFFFF?Text=Class4'
    },
    {
      'title': 'Thi QTDAPM - Đề số 1',
      'instructor': 'Hàn Nguyễn Mậu',
      'image': 'https://via.placeholder.com/150/FF00FF/FFFFFF?Text=Class5'
    },
    {
      'title': '[2023-2024] Java nâng cao',
      'instructor': 'Nhóm ...',
      'image': 'https://via.placeholder.com/150/00FFFF/FFFFFF?Text=Class6'
    },
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
                      image: NetworkImage(classrooms[index]['image']!),
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
