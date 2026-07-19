import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';
import 'package:smart_inverter/util/timepicker_list.dart';

class Timesetter extends StatefulWidget {
  final String label;
  const Timesetter({required this.label, super.key});
  @override
  State<Timesetter> createState() => _TimesetterState();
}

class _TimesetterState extends State<Timesetter> {
  // TimeOfDay selectTime = TimeOfDay.now();

  Future<void> timePickerBtn(
    BuildContext context,
    int index,
    TimeOfDay current,
  ) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: current,
    );

    if (picked != null && picked != current) {
      setState(() {
        TimeList[index].time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(child: StyledText(widget.label, fontSize: 36)),
          ...TimeList.asMap().entries.map((list) {
            int index = list.key;
            var item = list.value;
            return ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () => timePickerBtn(context, index, item.time),
              child: Container(
                width: 500,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledText(item.title, fontSize: 24),
                    StyledText(
                      "${item.time.hour.toString().padLeft(2, "0")}:${item.time.minute.toString().padLeft(2, "0")}",
                      fontSize: 20,
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
