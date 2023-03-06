import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'appbar.dart';

void main(){
  runApp(
    MaterialApp(
      home: machineTest(
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}
class machineTest extends StatefulWidget {
  const machineTest({Key? key}) : super(key: key);

  @override
  State<machineTest> createState() => _machineTestState();
}

class _machineTestState extends State<machineTest> {

  int selectPage = 1;
  final screens=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedFontSize: 10,
        selectedFontSize: 15,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.logout),label: 'Logout'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.indigo,
        onPressed: () {  },
        child: Icon(Icons.mic,),
      ),
      body: Stack(
        children: [
          CustomScrollView(
          slivers: [

          SliverToBoxAdapter(
            child: Bar(),
          ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 25, top: 10),
                child: Text('Banking',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(Icons.account_circle),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Account'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(FontAwesomeIcons.book),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Passbook'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(Icons.manage_search),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Search'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Text('Transfer',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(Icons.add),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Add user'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(Icons.loop),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Own Account'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: FaIcon(FontAwesomeIcons.paperPlane),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Third Party'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Text('Utility Payments',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: FaIcon(FontAwesomeIcons.phone),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Add user'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(Icons.loop),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Own Account'),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(1,0),
                              ),
                            ],
                          ),
                          child: IconButton( onPressed: () {  }, icon: Icon(Icons.add),),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Text('Add user'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
    ],
      ),
    );
  }
}
