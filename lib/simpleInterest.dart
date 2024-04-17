void main() {
  double si = simpleInterest(pr: 100, time: 13, rate: 13);
  print('The toal simple interest is $si');
}

double simpleInterest(
    {required double pr,
     required double time,
     required double rate}) {
  double SI = (pr * time * rate);
  return SI;
}
