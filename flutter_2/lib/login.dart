import 'package:flutter/material.dart';
import 'package:flutter_2/my_layout.dart';

// Hàm main khởi chạy ứng dụng
void main() {
  runApp(LoginApp());
}

// Widget chính của ứng dụng
class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink, // Đặt màu chủ đạo cho ứng dụng
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(), // Đặt màn hình đăng nhập làm màn hình chính
    );
  }
}

// Màn hình đăng nhập
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ChatScreen()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          // Container chứa nội dung chính của màn hình đăng nhập
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)), // Góc trên tròn
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Bóng mờ
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Dòng chữ "Sign Up"
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            textAlign: TextAlign.left, // Căn trái
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Màu chữ
                              fontSize: 30, // Kích thước chữ
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      // Logo hoặc hình ảnh
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('10.jpg'), // Thay thế bằng logo của bạn
                        ),
                      ),
                      // Trường nhập tên người dùng
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Góc bo tròn
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2), // Bóng mờ
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15), // Đệm nội dung
                            prefixIcon: Icon(Icons.person), // Icon phía trước
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Trường nhập mật khẩu
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextField(
                          obscureText: true, // Ẩn văn bản nhập vào
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                      ),
                      // Nút "Forgot Password"
                      TextButton(
                        onPressed: () {
                          // Điều hướng đến màn hình quên mật khẩu hoặc hiển thị hộp thoại
                        },
                        child: Text('Forgot Password?'),
                      ),
                      SizedBox(height: 20),
                      // Nút đăng nhập
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => ChatScreen()),
                          );
                        },
                        child: Text('Sign In', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20), // Đệm nút
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Bo góc nút
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Dòng chữ và nút điều hướng đến trang đăng ký
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account? '),
                          TextButton(
                            onPressed: () {
                              // Điều hướng đến màn hình đăng ký
                            },
                            child: Text('Sign Up'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      SizedBox(height: 20),
                      // Divider và các tùy chọn đăng nhập bằng mạng xã hội
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'OR',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('facebook.png'), // Logo Facebook
                                  ),
                                  SizedBox(height: 5),
                                  Text('Facebook'),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('twitter.png'), // Logo Twitter
                                  ),
                                  SizedBox(height: 5),
                                  Text('Twitter'),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('google.png'), // Logo Google
                                  ),
                                  SizedBox(height: 5),
                                  Text('Google'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
