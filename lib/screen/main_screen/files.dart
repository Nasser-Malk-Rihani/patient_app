import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:patient_app/widget/appbar_home_screen.dart';
import 'package:patient_app/widget/files_card.dart';
import 'package:sizer/sizer.dart';
class Files extends StatefulWidget {
  const Files({Key? key}) : super(key: key);

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            AppBarHomeScreen(title: "Files"),

            FilesCard(
              date: "3/1/2022",
              fileName: "Accumulative Sugar Test _ Moh...",
            ),
            FilesCard(
              date: "4/1/2022",
              fileName: "Accumulative Sugar Test _ Moh...",
            ),
          ],
        ),
      ),
    );
  }
}
