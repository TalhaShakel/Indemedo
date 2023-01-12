import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indemedo/APIService.dart';

class ExpandableList extends StatelessWidget {

  final PC =  List.generate(
      mapPersonalCare.length, (i) => "${mapPersonalCare[i]['name']}");

  // final DN = new List.generate(
  //     mapDietNutrition.length, (i) => "${mapDietNutrition[i]['name']}");

  // final SBC =
  //     new List.generate(mapshopbyHC.length, (i) => "${mapshopbyHC[i]['name']}");

  // final list = new List.generate(3, (i) => "item ${[i + 1]}");

  // final MD = new List.generate(
  //     mapMedicalDevices.length, (i) => "${mapMedicalDevices[i]['name']}");

  // List Medlist = ['First Aid Kits', 'All-Medicines'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // ListView.builder(
        //   shrinkWrap: true,
        //   physics: ScrollPhysics(),
        //   itemBuilder: (context, i) => ExpansionTile(
        //     title: Text("Medicine"),
        //     children: Medlist.map((val) => GestureDetector(
        //           onTap: () {
        //             if (val == "First Aid Kits") {
        //               Get.to(() => MedicineScreen());
        //             }
        //             if (val == "All-Medicines") {
        //               Get.to(() => MedicineScreen());
        //             }
        //           },
        //           child: ListTile(
        //             title: Text(val),
        //           ),
        //         )).toList(),
        //   ),
        //   itemCount: 1,
        // ),
        // ////////
//         Divider(),
        GestureDetector(
          onTap: () {
            // Get.to(() => PersonalCareScreen());
          },
          child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, i) => ExpansionTile(
              title: Text("${mapCategoriesData[i]['name']}"),
              children: PC
                  .map((val) => ListTile(
                        title: Text(val),
                      ))
                  .toList(),
            ),
            itemCount: mapCategoriesData.length,
          ),
        ),
//         Divider(),
//         GestureDetector(
//           onTap: () {
//             Get.to(() => DietNutritionScreen());
//           },
//           child: ListView.builder(
//             shrinkWrap: true,
//             physics: ScrollPhysics(),
//             itemBuilder: (context, i) => ExpansionTile(
//               title: Text("Diet Nutrition"),
//               children: DN
//                   .map((val) => ListTile(
//                         title: Text(val),
//                       ))
//                   .toList(),
//             ),
//             itemCount: 1,
//           ),
//         ),
//         Divider(),
//         GestureDetector(
//           onTap: () {
//             Get.to(() => ShopByConcer());
//           },
//           child: ListView.builder(
//             shrinkWrap: true,
//             physics: ScrollPhysics(),
//             itemBuilder: (context, i) => ExpansionTile(
//               title: Text("Shop By Concer"),
//               children: SBC
//                   .map((val) => ListTile(
//                         title: Text(val),
//                       ))
//                   .toList(),
//             ),
//             itemCount: 1,
//           ),
//         ),
//         Divider(),
//         GestureDetector(
//           onTap: () {
//             Get.to(() => DiabeticCare());
//           },
//           child: ListView.builder(
//             shrinkWrap: true,
//             physics: ScrollPhysics(),
//             itemBuilder: (context, i) => ExpansionTile(
//               title: Text("Diabetic Care"),
//               children: list
//                   .map((val) => ListTile(
//                         title: Text(val),
//                       ))
//                   .toList(),
//             ),
//             itemCount: 1,
//           ),
//         ),
//         Divider(),
//         GestureDetector(
//           onTap: () {
//             Get.to(() => MedicalDevices());
//           },
//           child: ListView.builder(
//             shrinkWrap: true,
//             physics: ScrollPhysics(),
//             itemBuilder: (context, i) => ExpansionTile(
//               title: Text("Medical Devices"),
//               children: MD
//                   .map((val) => ListTile(
//                         title: Text(val),
//                       ))
//                   .toList(),
//             ),
//             itemCount: 1,
//           ),
//         ),
      ],
    );
  }
}
