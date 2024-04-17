//class
class Thirdtry {
  final String? name;
  final String? personID;
  final String? batch;
  // constructor
  Thirdtry({this.name, this.personID, this.batch});

  Thirdtry copyWith({String? name, String? personID, String? batch}) {
    return Thirdtry(
      name: name ?? this.name,
      personID: personID ?? this.personID,
      batch: batch ?? this.batch
    );
  }
}
