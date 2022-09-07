import 'package:flutter/material.dart';

class CircleDiagrammDiscription extends StatelessWidget {
  const CircleDiagrammDiscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Занятая пл.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '1 760 ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFe9c56b),
                      ),
                    ),
                    SquareMeter(
                      fontSize: 20,
                      myColor: Color(0xFFe9c56b),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Свободная пл.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '450 ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF509d4f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SquareMeter(
                      fontSize: 20,
                      myColor: Color(0xFF509d4f),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Тех пл.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '240 ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SquareMeter(
                      fontSize: 20,
                      myColor: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SquareMeter extends StatelessWidget {
  final Color myColor;
  final double fontSize;

  const SquareMeter({Key? key, required this.myColor, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'м',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: myColor,
            fontSize: fontSize,
          ),
        ),
        Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              '2',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: myColor,
                fontSize: fontSize / 2,
              ),
            )),
      ],
    );
  }
}
