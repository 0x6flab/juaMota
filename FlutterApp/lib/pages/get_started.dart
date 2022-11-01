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

class get_started extends StatefulWidget {
  @override
  _get_startedState createState() => _get_startedState();
}

class _get_startedState extends State<get_started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text("JuaMota"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 400,
                    height: 300,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/getstarted_image.png')),
              ),
            ),


          Text('Stay on top of motor analytics with us',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
           ),
            SizedBox(height: 20,),
            Text('We are your new electric motor advisors \n        to recommend the best for you',style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
            ),

            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.purple, borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/create_account');
                },
                child: Text(
                  'Create account',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            child: Text('login',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}