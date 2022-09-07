import 'package:flutter/material.dart';
import 'package:untitled/home_page/reusable_card.dart';
import 'package:untitled/home_page/home_construction/diagram_component/circle_diagram_description.dart';
import 'package:untitled/home_page/home_construction/diagram_component/circle_diagramm.dart';
class AreaAndDiagramm extends StatelessWidget {
  const AreaAndDiagramm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ReusableCard(
      color: Colors.white,
        child: Container(
          width: screenWidth - 10,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    alignment: Alignment.center,
                    child: Wrap(
                      children:[
                        Text('Бизнес-центр Гулливер',
                      style: TextStyle(
                        fontSize: 22,
                      ),),
                      ]
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      children: [
                        Text('2 450 ',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),),

                          SquareMeter(myColor: Colors.black,fontSize: 25,),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleDiagrammDiscription(),
                  CircleDiagramm(),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
