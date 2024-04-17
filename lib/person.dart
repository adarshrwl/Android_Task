//class
class Person {
  final String? personId;
  final String? fullName;
  final String? address;
  final String? phoneNumber;
  final String? age;
  final String? batch;

//constructor
  Person(
      {this.personId,
      this.fullName,
      this.address,
      this.phoneNumber,
      this.age,
      this.batch});
//copyWith function
  Person copyWith(
      {String? personId,
      String? fullName,
      String? address,
      String? phoneNumber,
      String? age,
      String? batch}) {
    return Person(
        personId: personId ?? this.personId,
        fullName: fullName ?? this.fullName,
        address: address ?? this.address,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        age: age ?? this.age,
        batch: batch ?? this.batch);
  }
}

void main() {
  Person person = Person(
      personId: "1",
      fullName: "Adarsh Rawal",
      address: "Maitidevi",
      phoneNumber: "98000000",
      age: "21",
      batch: "32 B");
  Person person2 = person.copyWith();
  Person person3 = person.copyWith(
    personId: '2',
    fullName: "asdf",
  );
  Person person4 = person.copyWith(
      personId: '44', address: 'kathmandu', phoneNumber: '98989898');
  Person person5 = person4.copyWith(
      personId: '5', address: 'dillibazar', phoneNumber: '9809809803');
  print(
      'Person Details: ID: ${person.personId}, Name: ${person.fullName}, Address: ${person.address}, Phone: ${person.phoneNumber}, Age: ${person.age}, Batch: ${person.batch}');
  print(
      'Person Details: ID: ${person2.personId}, Name: ${person2.fullName}, Address: ${person2.address}, Phone: ${person2.phoneNumber}, Age: ${person2.age}, Batch: ${person2.batch}');
  print(
      'Person Details: ID: ${person3.personId}, Name: ${person3.fullName}, Address: ${person3.address}, Phone: ${person3.phoneNumber}, Age: ${person3.age}, Batch: ${person3.batch}');
  print(
      'Person Details: ID: ${person4.personId}, Name: ${person4.fullName}, Address: ${person4.address}, Phone: ${person4.phoneNumber}, Age: ${person4.age}, Batch: ${person4.batch}');
  print(
      'Person Details: ID: ${person5.personId}, Name: ${person5.fullName}, Address: ${person5.address}, Phone: ${person5.phoneNumber}, Age: ${person5.age}, Batch: ${person5.batch}');
}
