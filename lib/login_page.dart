import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Spacer(),
                Text('Welcome to BlaBla',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(52))
                      ),
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(52))
                      ),
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        print("clicked");
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.deepOrangeAccent
                      ),
                      child: Text('Forgot Password')
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        print("login clicked");
                      },
                      child: Text("Login")),
                ),
                Spacer(),
                Text('Or sign in with'),
                SizedBox(
                    height :10
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      print('login with google is clicked');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/images/google.png',
                            width: 22,
                            height: 22
                        ),
                        Text('Google')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      print('login with facebook is clicked');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/images/facebook.png',
                            width: 22,
                            height: 22
                        ),
                        Text('Facebook')
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: (){},
                        child: Text('Sign up',
                            style: TextStyle(
                                decoration: TextDecoration.underline
                            )
                        )
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}