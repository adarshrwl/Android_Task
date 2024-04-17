import 'package:class_work_1/student.dart';

import 'batch.dart';

void main() {
//Create 3 Batches
  Batch batch1 = Batch(batchId: '1', batchName: '32A');
  Batch batch2 = Batch(batchId: '2', batchName: '32B');
  Batch batch3 = Batch(batchId: '3', batchName: "32C");

//Create 5 Students

  Student s1 =
      Student(stdId: '1', fname: "Adarsh", lname: 'Rawal', batch: batch1);
  Student s2 = Student(fname: 'Ansal', lname: 'Subedi', batch: batch2);
  Student s3 = Student(fname: 'Divsh', lname: 'Bhattarai', batch: batch3);
  Student s4 = Student(fname: 'Ajit', lname: 'Manda;', batch: batch1);
  Student s5 = Student(fname: "Manoj", lname: 'Pandey', batch: batch2);

//Add all the students

  List<Student> lststudent = [s1, s2, s3, s4, s5];

  //display all the students from 32A
  for (Student s in lststudent) {
    if (s.batch.batchName == '32A') {
      print('${s.fname} is in batch ${s.batch.batchName}');
    }
  }
}
