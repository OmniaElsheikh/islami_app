import 'package:flutter/material.dart';
import 'package:islam_app/moduls/quran/page/quran_details_view.dart';
import 'package:islam_app/moduls/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  final List<String> suraNames = [
    "الفاتحه",
    "البقره",
    "ال عمران",
    "النساء",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
    "الفاتحه",
  ];

  QuranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/images/quran_header.png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "رقم السورة",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "El Messiri",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 35,
              width: 1,
              color: theme.primaryColor,
            ),
            Expanded(
              child: Text(
                "إسم السورة",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "El Messiri",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QuranDetailsView.routeName,
                );
              },
              child: SuraTitleWidget(
                suraName: suraNames[index],
                suraNumber: (index + 1).toString(),
              ),
            ),
            itemCount: suraNames.length,
          ),
        )
      ],
    );
  }
}

class SuraDetail {
  final String suraName;
  final String suraNumb;

  SuraDetail(this.suraName, this.suraNumb);
}
