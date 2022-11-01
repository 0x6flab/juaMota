import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 500,
                    height: 400,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/electric-motors-components.jpg')
                ),
              ),
            ),
             SizedBox(height: 20),

             Text('Welcome to JuaMota',
             style: TextStyle(
               fontSize: 28,
               fontWeight: FontWeight.bold
             ),),

            SizedBox(height: 20),

             Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.purple[500], borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/get_started');
                },
                child: Text(
                  'Get Started',
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