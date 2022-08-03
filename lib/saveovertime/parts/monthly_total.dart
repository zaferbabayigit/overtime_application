import 'package:flutter/material.dart';

class MonthlyTotal extends StatefulWidget {
  const MonthlyTotal({Key? key}) : super(key: key);

  @override
  State<MonthlyTotal> createState() => _MonthlyTotalState();
}

class _MonthlyTotalState extends State<MonthlyTotal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: const Color(0xffF9A825),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(
              2.0,
              2.0,
            ),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("Monthly Total",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xff0D47A1),
                  fontSize: 19,
                  fontStyle: FontStyle.italic,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Coefficient Overtime:",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xff0D47A1),
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("0.00 Hours",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xff0D47A1),
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
