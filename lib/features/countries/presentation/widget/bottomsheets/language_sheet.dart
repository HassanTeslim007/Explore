import 'package:explore/core/theme/colors.dart';
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
    return Container(
      height: SizeConfig.fromHeight(context, 70),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )),
      child: Padding(
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
                  Text('Française',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "Française",
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
                  Text('Português',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "Português",
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
                  Text('Pу́сский',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "Pу́сский",
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
                  Text('Türkçe',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "Türkçe",
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
                  Text('普通话',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "普通话",
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
                  Text('بالعربية',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "بالعربية",
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
                  Text('বাঙ্গালী',
                      style:
                          TextStyle(fontSize: SizeConfig.fontSize(context, 4))),
                  Radio(
                    activeColor: kBlack,
                    value: "বাঙ্গালী",
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
      ),
    );
  }
}
