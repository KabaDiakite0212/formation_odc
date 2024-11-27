import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';
import 'package:formation_odc/widgets/custom_text.dart';

class DateTimePickerScreen extends StatefulWidget {
  const DateTimePickerScreen({super.key});

  @override
  State<DateTimePickerScreen> createState() => _DateTimePickerScreenState();
}

class _DateTimePickerScreenState extends State<DateTimePickerScreen> {
  final TextEditingController _timeEditingController = TextEditingController();
  final TextEditingController _dateEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText(title: "Date Time Picker"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextFormFieldRow(
              controller: _timeEditingController,
              placeholder: "Selectionnez l'heure",
              cursorColor: CupertinoColors.white,
              prefix: Icon(CupertinoIcons.time),
              showCursor: false,
              // padding: EdgeInsets.only(),
              style: TextStyle(color: Colors.white),
              decoration: BoxDecoration(
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              placeholderStyle: TextStyle(
                color: CupertinoColors.white,
              ),
              validator: (value) {
                if (value == null) {
                  return "La description est obligatoire.";
                }
                return '';
              },
              // onChanged: (value) => print(value),
              onTap: () async {
                var heure = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                var formattedTime = heure?.format(context);
                setState(() {
                  _timeEditingController.text = formattedTime.toString();
                });
              },
            ),
            BasicWidgets.heightSize(20),
            CupertinoTextFormFieldRow(
              controller: _dateEditingController,
              placeholder: "Selectionnez la date",
              cursorColor: CupertinoColors.white,
              prefix: Icon(Icons.date_range_outlined),
              showCursor: false,
              // padding: EdgeInsets.only(),
              style: TextStyle(color: Colors.white),
              decoration: BoxDecoration(
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              placeholderStyle: TextStyle(
                color: CupertinoColors.white,
              ),
              validator: (value) {
                if (value == null) {
                  return "La  est obligatoire.";
                }
                return '';
              },
              // onChanged: (value) => print(value),
              onTap: () async {
              var date = await showDatePicker(
                  context: context,
                  initialDate:  DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2040),
                );
                setState(() {
                  // print(date.toString().split(" ")[0]);
                  _dateEditingController.text = date.toString().split(" ")[0];
                });
              },
            ),
          ],
        ));
  }
}
