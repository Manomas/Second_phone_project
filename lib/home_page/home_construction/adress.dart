import 'package:flutter/material.dart';
import 'package:untitled/home_page/reusable_card.dart';

class Adress extends StatelessWidget {
  const Adress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 80,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFf2f2f2)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Адрес',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on,size: 30, color: Colors.grey,),
                SizedBox(width: 10,),
                Text(
                  'ул. Серова 21',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
