import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  final databaseRef = FirebaseFirestore.instance;
  Future<void> addSemisterRegistration({
    required String programName,
    required String studentId,
    required String section,
    required String semister,
  }) async {
    Map<String, dynamic> data = <String, dynamic>{
      'programName': programName,
      'studentId': studentId,
      'section': section,
      'semister': semister,
    };
    await databaseRef
        .collection('semisterRegistration')
        .doc()
        .set(data)
        .catchError((e) {
      print(e);
    });
  }

  Future<void> addAddmissionRegistration({
    required String reffererId,
    required String programName,
    required String applicantName,
    required String fathersNameOccupation,
    required String mothersNameOccupation,
    required String address,
    required String birthDate,
    required String mobile,
    required String email,
    required String nationality,
    required String hscRegNo,
    required String hscGPA,
    required String sscGPA,
  }) async {
    Map<String, dynamic> data = <String, dynamic>{
      'refferId': reffererId,
      'programName': programName,
      'applicantName': applicantName,
      'Fathers Name & Occupation': fathersNameOccupation,
      'Mothers Name & Occupation': mothersNameOccupation,
      'address': address,
      'Date of Birth': birthDate,
      'Mobile': mobile,
      'Email': email,
      'Nationality': nationality,
      'HSC Registraion No.': hscRegNo,
      'HSC GPA': hscGPA,
      'SSC GPA': sscGPA,
    };
    await databaseRef
        .collection('admissionRegistration')
        .doc()
        .set(data)
        .catchError((e) {
      print(e);
    });
  }
}
