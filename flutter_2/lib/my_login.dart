import 'package:flutter/material.dart';
class MyLogin extends StatelessWidget {
  const MyLogin({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Center(
                child: Text(
                    "Login to access",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),

              Center(
                child: Text(
                    "Sign in with your email and password or continue with social media",
                    style: TextStyle(
                      fontSize: 15,

                    )
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email your email',
                      prefixIcon: Icon(Icons.email),
                    )
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your password",
                      prefixIcon: Icon(Icons.lock),
                    )
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (bool?value) {}),
                      Text("Remember Password")
                    ],
                  ),
                  TextButton(onPressed: () {}, child: Text('Forgot Password'),
                  ),

                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 25),
                    backgroundColor: Colors.pink
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.g_translate)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.apple)),

                ],
              ),
              SizedBox(height: 20),
              TextButton(onPressed: () {}, child: Text('Dont have an account ? Sign Up'))



            ],
          )


      ),
    );
  }
}
