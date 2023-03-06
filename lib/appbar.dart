import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          children: [

            Positioned(
              child: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: kToolbarHeight, left: 15),
                      child: Text('Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
            ),
          const  Positioned(
              top: 110,
                left: 15,
                child: Text('Account No: 1002445300',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    ),
                    ),
            Positioned(
              top: 125,
              left: 15,
              child:  Row(
                children: const[
                  Text('Balance: 1000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                 SizedBox(width: 200,),
                  Icon(Icons.account_circle_rounded, size: 40, color: Colors.white,),
                ],
              ),
            ),

          const  Positioned(
              bottom: 15,
              left: 15,
              child: Text('CAMERRON PAY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Positioned(
                right: -10,
                bottom: -15,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                )),

          ],
      ),
    );
  }
}
