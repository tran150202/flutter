import 'package:flutter/material.dart';
import 'package:flutter_2/login.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      home: ChatScreen(),

    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<Map<String, String>> favoriteContacts = [
    {'name': 'Nguyễn Lan', 'image': '1.jpg'},
    {'name': 'Trần Minh', 'image': '2.jpg'},
    {'name': 'Lê Mai', 'image': '3.jpg'},
    {'name': 'Phạm Hoàng', 'image': '4.jpg'},
    {'name': 'Vũ Hương', 'image': '6.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[10],
        title: Text('Chats'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('10.jpg'), // Use AssetImage for local assets
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Recent Chats and Requests
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Text('Recent Chats', style: TextStyle(fontSize: 16)),
                ),
                SizedBox(width: 10),

                Stack(
                  clipBehavior: Clip.none, // This allows the badge to be positioned outside the container
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[10],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: Text('Requests', style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Positioned(
                      right: 0,
                      top: -5, // Adjust as needed
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '9+',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Container with rounded top corners
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Favourite Contacts
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Favourite Contacts',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: favoriteContacts.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,

                                  backgroundImage: AssetImage(favoriteContacts[index]['image']!),
                                ),
                                SizedBox(height: 5),
                                Text(favoriteContacts[index]['name']!),

                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    // Placeholder for chat messages
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('1.jpg'),
                            ),
                            title: Text('Nguyễn Văn An'),
                            subtitle: Text('Chào bạn!'),
                            trailing: Text('15 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('2.jpg'),
                            ),
                            title: Text('Trần Thị Bình'),
                            subtitle: Text('Mình ổn, cảm ơn!'),
                            trailing: Text('20 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('3.jpg'),
                            ),
                            title: Text('Lê Văn Cường'),
                            subtitle: Text('Có tin mới đây'),
                            trailing: Text('25 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('4.jpg'),
                            ),
                            title: Text('Phạm Thị Dung'),
                            subtitle: Text('Xin chào bạn!'),
                            trailing: Text('30 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('6.jpg'),
                            ),
                            title: Text('Vũ Văn Hải'),
                            subtitle: Text('Đã nhận được'),
                            trailing: Text('35 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('7.jpg'),
                            ),
                            title: Text('Đặng Thị Hương'),
                            subtitle: Text('Hẹn gặp lại sau'),
                            trailing: Text('40 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('8.jpg'),
                            ),
                            title: Text('Ngô Văn Khoa'),
                            subtitle: Text('Cảm ơn bạn!'),
                            trailing: Text('45 phút trước'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('9.jpg'),
                            ),
                            title: Text('Bùi Thị Lan'),
                            subtitle: Text('Tôi sẽ đến sớm'),
                            trailing: Text('50 phút trước'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // Thêm FloatingActionButton nhỏ ở góc dưới bên phải
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Hành động khi nút được nhấn
        },
        child: Icon(Icons.people_alt_outlined), // Biểu tượng trên nút
        mini: true, // Kích thước nhỏ hơn
        backgroundColor: Colors.pink[200], // Màu nền của nút
        tooltip: 'New Message', // Thông báo khi giữ nút
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'People',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Calls',
              ),
            ],
            currentIndex: 0, // Set this dynamically based on the selected tab
            onTap: (index) {
              // Handle tab selection
            },
          ),
        ),
      ),
    );
  }
}
