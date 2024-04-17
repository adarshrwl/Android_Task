//class
class Practice {
  final String? name;
  final String? age;
  final String? number;

//constructor
//{} these brackets are used for makig the paramaters optional
  Practice({
    this.name,
    this.age,
    this.number,
  });

// copywith function
// ? is used for making the variable null safe where it states that it can hold null values
// where as ?? is used for assigining the second values in case the first variable is not available

  Practice copyWith({String? name, String? age, String? number}) {
    return Practice(
        name: name ?? this.name,
        age: age ?? this.age,
        number: number ?? this.number);
  }
}

