import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addDetails(Map<String, dynamic> infoMap) async {
    return await FirebaseFirestore.instance
        .collection("messages")
        .doc()
        .set(infoMap);
  }
}
