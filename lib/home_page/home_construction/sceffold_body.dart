import 'package:flutter/material.dart';
import 'package:untitled/home_page/home_construction/status_of_premises.dart';
import 'package:untitled/home_page/home_construction/area_and_diagramm.dart';
import 'package:untitled/home_page/home_construction/lost_income.dart';
import 'package:untitled/home_page/home_construction/adress.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return  DraggableScrollableSheet(
        initialChildSize: 1,
        maxChildSize: 1,
        minChildSize: 0.2,
        builder: (context, scrollController) {
          return SingleChildScrollView(
              physics: const RangeMaintainingScrollPhysics(),
              controller: scrollController,
              child: Container(
                width: screenWidth - 10,
                child: Column(
                  children: [
                    AreaAndDiagramm(),
                    StatusOfPremises(),
                    MonthlyIncome(),
                    Adress(),
                  ],

                ),
              ));
        });
  }
}
