import 'package:flutter/material.dart';
import 'package:untitled/home_page/home_construction/navigation_bar.dart';
import 'package:untitled/home_page/home_construction/sceffold_body.dart';

class ScefdoldAndAppBarrPage extends StatelessWidget {
  const ScefdoldAndAppBarrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Color(0xFF156a80),

            title: Container(
              height: 50,
              width: screenWidth-15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),


              child: OutlinedButton(
                onPressed: () => null,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.only(left: 20),
                  backgroundColor: const Color.fromARGB(25, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  side: const BorderSide(
                    width: 0,
                    color: Color.fromARGB(0, 255, 255, 255),
                  ),
                ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text(
                        'Бизнес-центр Гулливер',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 35,),
                  ]),
            ),
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            centerTitle: true,
            titleSpacing: 0.0,
          ),
        ),
        body: Body(),
        bottomNavigationBar: Navigation(),
      ),
    );
  }
}

