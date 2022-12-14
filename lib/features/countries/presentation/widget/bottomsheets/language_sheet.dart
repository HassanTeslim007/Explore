import 'package:explore/core/util/colors.dart';
import 'package:explore/core/util/size_config.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  String groupValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.fromWidth(context, 6), vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.fontSize(context, 5))),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bahasa',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "Bahasa",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Deutsch',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "Deutsch",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "English",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fran??aise',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "Fran??aise",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Italiano',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "Italiano",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Portugu??s',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "Portugu??s",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('P??????????????',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "P??????????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Svenska',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "Svenska",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('T??rk??e',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "T??rk??e",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('?????????',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "?????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('????????????????',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "????????????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('????????????????????????',
                    style:
                        TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                Radio(
                  activeColor: kBlack,
                  value: "????????????????????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
