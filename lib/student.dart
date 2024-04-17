import 'package:class_work_1/batch.dart';

class Student {
  final String? stdId;
  final String fname;
  final String lname;
  final String? age;
  //Relation Creation
  final Batch batch;

  Student({this.stdId, required this.fname,required this.lname, this.age,required this.batch});
}
