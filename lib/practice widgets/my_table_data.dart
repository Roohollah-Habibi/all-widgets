import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyTableData extends StatelessWidget {
  const MyTableData({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      color: Colors.indigo.shade100,
      child: DataTable(
        columnSpacing: 50,
        dataRowMaxHeight: 60,
        dataRowMinHeight: 40,
        dividerThickness: 30,
        dataTextStyle: const TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold,),
        headingTextStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.blue,),
        border: tableBorderProperties(),
        // border: TableBorder.all(color: Colors.red,width: 5,borderRadius: BorderRadius.circular(20)),
        columns: const [
          DataColumn(
            label: Text('Name'),
          ),
          DataColumn(
            label: Text('age'),
          ),
          DataColumn(
            label: Text('status'),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(
                Text('Roohollah'),
              ),
              DataCell(
                Text('28'),
              ),
              DataCell(
                Text('Married'),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text('Nader'),
              ),
              DataCell(
                Text('25'),
              ),
              DataCell(
                Text('Single'),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text('Sara'),
              ),
              DataCell(
                Text('2'),
              ),
              DataCell(
                Text('Married'),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text('Sara'),
              ),
              DataCell(
                Text('2'),
              ),
              DataCell(
                Text('Married'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TableBorder tableBorderProperties() {
    return TableBorder(
      borderRadius: BorderRadius.circular(20),
      horizontalInside: const BorderSide(
        color: Colors.black,
        width: 3,
      ),
      verticalInside: const BorderSide(
        color: Colors.green,
        width: 5,
      ),
      bottom: const BorderSide(
        width: 5,
        color: Colors.blue,
      ),
      top: const BorderSide(
        width: 5,
        color: Colors.indigo,
      ),
      right: const BorderSide(
        width: 10,
        color: Colors.orange,
      ),
      left: const BorderSide(
        width: 8,
        color: Colors.purple,
      ),
    );
  }
}
