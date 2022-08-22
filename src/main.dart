void main() {
  var ageList = [1, 3, 5, 8, 4, 20, 25, 26, -30, 15.5, 40, 65];
  for (var i = 0; i < ageList.length; i++) {
    try {
      var a = double.parse(ageList[i].toString());
      var b = a.truncate().toDouble();
      if ((a <= 0) && (a != b)) throw FormatException(
          'Age must always be positive and cannot be decimal\nvalue = ${ageList[i]}\nindex = $i');
      if (a <= 0) throw FormatException(
          'Age must always be positive\nvalue = ${ageList[i]}\nindex = $i');
      if (a != b) throw FormatException(
          'Age cannot be a decimal\nvalue = ${ageList[i]}\nindex = $i');
    } catch (e) {
      print(e.toString());
    }
  }
}