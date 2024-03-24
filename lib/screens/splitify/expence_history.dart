import 'package:flutter/material.dart';
import 'package:task1/extension.dart';

class ExpenceHistory extends StatefulWidget {
  const ExpenceHistory({super.key});

  @override
  State<ExpenceHistory> createState() => _ExpenceHistoryState();
}

class _ExpenceHistoryState extends State<ExpenceHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: context.width,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  "Expense History",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                itemBuilder: (context, index) {
                  return Container(
                    height: 110,
                    width: 100,
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            width: context.width,
                            child: Text(
                              textAlign: TextAlign.end,
                              "29-04-2023 08:43",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            )),
                        Row(
                          children: [
                            Text(
                              "Item:",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            6.wBox,
                            Text("Onions", style: TextStyle(fontSize: 17)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Price:",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            6.wBox,
                            Text("45", style: TextStyle(fontSize: 17)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Paid by:",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            6.wBox,
                            Text("You", style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 40,
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
