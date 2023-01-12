// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:spoot_light/Models/UserModels.dart';

// var fAuth = FirebaseAuth.instance;

// firestore_set(collection, doc, set) async {
//   doc != null
//       ? await FirebaseFirestore.instance
//           .collection(collection.toString())
//           .doc(doc.toString())
//           .set(set)
//       : await FirebaseFirestore.instance
//           .collection(collection.toString())
//           .add(set);
// }

// firestore_update(collection, doc, data) async {
//   try {
//     EasyLoading.show();
//     var dat = await FirebaseFirestore.instance
//         .collection("$collection")
//         .doc("$doc")
//         .update(data);
//     EasyLoading.dismiss();

//     return dat;
//   } on FirebaseException catch (e) {
//     EasyLoading.dismiss();

//     Get.snackbar("${e.message}", "");
//     print(e);
//   } catch (e) {
//     EasyLoading.dismiss();

//     print(e);
//     Get.snackbar("${e}", "");
//   }
// }

// addfav(List like, uid, collection, doc) async {
//   if (like.contains(uid)) {
//     await firestore_update(collection, doc, {
//       "fav": FieldValue.arrayRemove([uid]),
//     });
//   } else {
//     await firestore_update(collection, doc, {
//       "fav": FieldValue.arrayUnion([uid]),
//     });
//   }
// }

// firestore_get(collection, doc) async {
//   try {
//     EasyLoading.show();

//     DocumentSnapshot userData =
//         await FirebaseFirestore.instance.collection(collection).doc(doc).get();
//     EasyLoading.dismiss();

//     return userData;
//   } on FirebaseException catch (e) {
//     EasyLoading.dismiss();

//     Get.snackbar("${e.message}", "");
//     print(e);
//   } catch (e) {
//     EasyLoading.dismiss();

//     print(e);
//     Get.snackbar("${e}", "");
//   }
// }

// pickImage(
//   ImageSource source,
// ) async {
//   final ImagePicker _imagePicker = ImagePicker();
//   XFile? _file = await _imagePicker.pickImage(
//       source: source, imageQuality: 50, maxHeight: 600, maxWidth: 900);
//   if (_file != null) {
//     // name =   _file.name;
//     return await _file.readAsBytes();
//   }
//   print('No Image Selected');
// }

// var fStorage = FirebaseStorage.instance;

// uploadImageToStorage(PickedFile? pickedFile1) async {
//   String uploadedPhotoUrl = "";
//   try {
//     EasyLoading.show();

//     print("object 1");
//     // var directory = await PickedFile(pickedFile);
//     print(" ${pickedFile1!.path}");
//     // var path = pickedFile!.path;
//     Reference _reference = fStorage.ref().child('images/${pickedFile1.path}');
//     print("object 2");

//     await _reference
//         .putData(
//       await pickedFile1.readAsBytes(),
//       SettableMetadata(contentType: 'image/jpeg'),
//     )
//         .whenComplete(() async {
//       print("object 3");

//       await _reference.getDownloadURL().then((value) {
//         uploadedPhotoUrl = value;
//       });
//       print("object 4");
//     });
//     if (uploadedPhotoUrl != "") {
//       print(uploadedPhotoUrl);
//       EasyLoading.dismiss();

//       return uploadedPhotoUrl;
//     }

//     EasyLoading.dismiss();
//   } catch (e) {
//     print(e);
//     EasyLoading.dismiss();

//     Get.snackbar("$e", "");
//   }
// }

// chooseImage(
//   ImageSource source,
// ) async {
//   try {
//     EasyLoading.show();
//     print("object 5");

//     PickedFile? pickedFile = await ImagePicker().getImage(
//       source: source,
//     );
//     print("object 6");
//     print(pickedFile!.path);

//     if (pickedFile != null) {
//       EasyLoading.dismiss();

//       return pickedFile;
//     }
//     EasyLoading.dismiss();
//   } catch (e) {
//     EasyLoading.dismiss();

//     Get.snackbar("$e", "");
//   }
// }
// // getUserModelById(String uid) async {
// //     // UserModel? userModel;

// //     // DocumentSnapshot docSnap =
// //     //     await FirebaseFirestore.instance.collection("users").doc(uid).get();
// //     DocumentSnapshot docSnap = await firestore_get("", uid);

// //     if (docSnap.data() != null) {
// //       // userModel = UserModel.fromMap(docSnap.data() as Map<String, dynamic>);
// //     }

// //     return userModel;
// //   }
// var currentUserData = UserModel();
