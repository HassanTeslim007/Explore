import 'package:explore/core/util/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FilterCheckBoxTile extends StatefulWidget {
  final String title;
   bool? checkValue = false;
 FilterCheckBoxTile({super.key, required this.title});

  @override
  State<FilterCheckBoxTile> createState() => _FilterCheckBoxTileState();
}

class _FilterCheckBoxTileState extends State<FilterCheckBoxTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            Checkbox(
              value: widget.checkValue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              activeColor: kBlack,
              onChanged: (newValue) {
                setState(() {
                  widget.checkValue = newValue;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
