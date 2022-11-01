import 'package:flutter/material.dart';

// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Login(),
//     );
//   }
// }

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[80],
      appBar: AppBar(
        title: Text("JuaMota"),
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(top: 60.0),
            //   child: Center(
            //     child: Container(
            //         width: 200,
            //         height: 150,
            //         /*decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(50.0)),*/
            //         child: Image.asset('assets/images/profile_login.png')),
            //   ),
            // ),
            SizedBox(height: 130                          ),
            Padding(
          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 15),
             child: TextField(
                 decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter valid email id as abc@gmail.com'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          //padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(

            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter secure password'),
          ),
        ),
        SizedBox(height: 20),
        MaterialButton(
          onPressed: (){
            //TODO FORGOT PASSWORD SCREEN GOES HERE
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(color: Colors.purple, fontSize: 15),
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),

          ],
        ),
      ),
    );
  }
}