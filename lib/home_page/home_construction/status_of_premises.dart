import 'package:flutter/material.dart';
import 'package:untitled/home_page/reusable_card.dart';
class StatusOfPremises extends StatelessWidget {
  const StatusOfPremises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return  Container(
      height: 100,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFf2f2f2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "16",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 70,
              child: Wrap(
                children:[
                  Text(
                    "Занятие помещ.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]
              ),
            ),
            Container(
              width: 3,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "5",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 82,
              child: Wrap(
                  children:[
                    Text(
                      "Свободные помещ.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Icon(Icons.arrow_forward,size: 28,),
            SizedBox(
              width: 3,
            ),
          ],
        ),
      ),
    );

  }
}
