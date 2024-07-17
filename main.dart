import 'dart:io';
import 'dart:math';
import 'Rooms.dart';
import "Reception .dart";

void main(List<String> args) {
  double? priceofroom;
  while (true) {
    print("what is type of room?");
    String? typeofroom = stdin.readLineSync()!;
    if (typeofroom == "suite") {
      print("choose N.of sutie:");
      int? Numofsuite = int.tryParse(stdin.readLineSync()!);
      if (suites.contains(Numofsuite)) {
        print("ok,This suite is avaliable");
        print("Enter your name: ");
        String name = stdin.readLineSync()!;

        print("Enter your age: ");
        int? age = int.tryParse(stdin.readLineSync()!);

        print("Enter your phone number: ");
        int? phoneNumber = int.tryParse(stdin.readLineSync()!);

        print("Enter your email: ");
        String? email = stdin.readLineSync()!;

        print("Enter your period of stay: ");
        int? periodofstay = int.tryParse(stdin.readLineSync()!);
        print("Grand Hotel says to hello you ");
        var r1 = Reception(Numofsuite!, typeofroom, 4000, name, age,
            phoneNumber, email, periodofstay);
        print(r1.toString());
        print("----------------------------------------------------------");
        print("after $periodofstay days");
        print(r1.checkout(
            DateTime.now(), DateTime.now().add(Duration(days: periodofstay!))));
        print("Thank you for using My Hotel!");
        break;
      } else {
        print("Sorry,This suite is not avaliable");
      }
    } else if (typeofroom == "singleroom") {
      priceofroom = 1000;
      while (true) {
        print("choose N.of room:");
        int? Numofroom = int.tryParse(stdin.readLineSync()!);
        if (singleroom.contains(Numofroom)) {
          print("ok,This room is avaliable");
          print("Enter your name: ");
          String name = stdin.readLineSync()!;

          print("Enter your age: ");
          int? age = int.tryParse(stdin.readLineSync()!);

          print("Enter your phone number: ");
          int? phoneNumber = int.tryParse(stdin.readLineSync()!);

          print("Enter your email: ");
          String? email = stdin.readLineSync()!;

          print("Enter your period of stay: ");
          int? periodofstay = int.tryParse(stdin.readLineSync()!);
          print("Grand Hotel says to hello you ");
          var r1 = Reception(Numofroom!, typeofroom, priceofroom, name, age,
              phoneNumber, email, periodofstay);
          print(r1.toString());
          print("----------------------------------------------------------");
          print("after $periodofstay days");
          print(r1.checkout(DateTime.now(),
              DateTime.now().add(Duration(days: periodofstay!))));
          print("Thank you for using My Hotel!");
          break;
        } else {
          print("Sorry,This room is not avaliable");
        }
      }
    } else {
      priceofroom = 2500;
      while (true) {
        print("choose N.of room:");
        int? Numofroom = int.tryParse(stdin.readLineSync()!);
        if (doubleroom.contains(Numofroom)) {
          print("ok,This room is avaliable");
          print("Enter your name: ");
          String name = stdin.readLineSync()!;

          print("Enter your age: ");
          int? age = int.tryParse(stdin.readLineSync()!);

          print("Enter your phone number: ");
          int? phoneNumber = int.tryParse(stdin.readLineSync()!);

          print("Enter your email: ");
          String? email = stdin.readLineSync()!;

          print("Enter your period of stay: ");
          int? periodofstay = int.tryParse(stdin.readLineSync()!);
          print("Grand Hotel says to hello you ");
          var r1 = Reception(Numofroom!, typeofroom, priceofroom, name, age,
              phoneNumber, email, periodofstay);
          print(r1.toString());
          print("----------------------------------------------------------");
          print("after $periodofstay days");
          print(r1.checkout(DateTime.now(),
              DateTime.now().add(Duration(days: periodofstay!))));
          print("Thank you for using My Hotel!");
          break;
        } else {
          print("Sorry,This room is not avaliable");
        }
      }
    }
    break;
  }
}
