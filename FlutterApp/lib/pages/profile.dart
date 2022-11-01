import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.blue[50],
      ),
      child: Drawer(
        child: Column(
          children: <Widget>[
            Padding(
               padding: const EdgeInsets.only(top: 60.0),
              child:Center(
                 child: CircleAvatar(
                   backgroundImage: AssetImage('assets/images/profile_login.png'),
                 radius: 80.0,
            ),
          ),
        ),
          SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name'),
                  SizedBox(height: 5),
                  Center(
                    child: Container(
                      height: 50,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Rodney'),
                      ),
                    ),
                  ),

                  Text('email'),
                  SizedBox(height: 5),
                  Center(
                    child: Container(
                      height: 50,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Rodney@gmail.com'),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('phone number'),
                  Center(
                    child: Container(
                      height: 50,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(''),
                      ),
                    ),
                  ),
                    SizedBox(height: 5),
                    Text('Location'),
                    Center(
                      child: Container(
                        height: 50,
                        width: 600,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('juja')
                        ),
                      ),
                  ),
                  SizedBox(height: 5),
                  Text('motor type'),
                  Center(
                    child: Container(
                      height: 50,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                              child: Text(''),
                 ),
                ),
                  ),
              ],
            ),
          ),
         ],
        ),
    ),

  );
 }
}