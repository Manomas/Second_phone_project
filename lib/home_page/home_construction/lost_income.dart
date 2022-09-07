import 'package:flutter/material.dart';
import 'package:untitled/home_page/reusable_card.dart';

class MonthlyIncome extends StatelessWidget {
  const MonthlyIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 150,
      width: screenWidth - 10,
      child: ReusableCard(
        color: (Color(0xFFf2f2f2)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: Wrap(
                      children: [
                        Text(
                          'Упущеный додох за месец',
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '540 390 ₽',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Color(0xFFad6f14),
                    ),
                  ),
                ],
              ),
              Container(
                width: screenWidth - 10,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF41b9f9f),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Подробная статистика ',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.incomplete_circle,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
