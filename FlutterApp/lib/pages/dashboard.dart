import 'package:flutter/material.dart';
import 'profile.dart';
//

class dashboard extends StatefulWidget {
  // const dashboard({ey?K key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          drawer: profile(),
           appBar: PreferredSize(
              child: Container(
                color: Colors.white,
                padding:
                EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Builder(
                      builder: (context) => GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Icon(Icons.menu)),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(40)),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Text('Hello Rodney 👋',
                 style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 ),
                ),
                SizedBox(height: 100,),
                Container(
                  height: 200,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                            child: Column(
                              children: [Text('Motor Health',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              ),
                                Text('95%',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )
                                ),
                              ],
                            ),
                          ),
              ],
            ),
           ),
          ),
                SizedBox(height: 10.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'History',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {
                      Navigator.pushNamed(context, '/');
                    }),
                  ],
                ),


                Divider(
                  height: 20.0,
                  color: Colors.grey[500],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Running 40%',
                      style: TextStyle(
                        color: Colors.red,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      'Mon 22 Sep 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Not running',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    letterSpacing: 2.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[800],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Running 97%',
                      style: TextStyle(
                        color: Colors.green,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      'Mon 22 Tue 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Not running',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    letterSpacing: 2.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[800],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Running 60%',
                      style: TextStyle(
                        color: Colors.yellow,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      'Tue 22 Sep 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Not running',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    letterSpacing: 2.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[800],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[

                  Text(
                      'Running 90%',
                      style: TextStyle(
                        color: Colors.green,
                        letterSpacing: 2.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Tue 22 Sep 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Not running',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    letterSpacing: 2.0,
                  ),
                ),

                Divider(
                  height: 20.0,
                  color: Colors.grey[800],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Running 30%',
                      style: TextStyle(
                        color: Colors.red,
                        letterSpacing: 2.0,
                      ),
                    ),

                    Text(
                      'Mon 21 Sep 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Not running',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    letterSpacing: 2.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[800],
                ),
         ],



      ),



          bottomNavigationBar: BottomAppBar(
          color: Colors.purple,
           child: Row(
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {
                // Navigator.pushNamed(context, '/');
              }),
              Spacer(),
              IconButton(icon: Icon(Icons.compare_arrows), onPressed: () {
                Navigator.pushNamed(context, '/');
                }),
              Spacer(),
              IconButton(icon: Icon(Icons.person), onPressed: () {
                Navigator.pushNamed(context, '/profile');
              }),
        ],
      ),
    ),
        ),
    );

  }
}


