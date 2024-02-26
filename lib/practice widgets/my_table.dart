import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Table(
            border: TableBorder.all(
                color: Colors.white,
                width: 3,
                borderRadius: BorderRadius.circular(20)),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text('Name')),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text('Age')),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text('salary')),
                  ),
                ],
              ),
              ...List.generate(
                20,
                (index) => TableRow(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)),
                  children:  [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('Name $index')),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('Age $index')),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text('salary $index')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
