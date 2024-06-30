import 'Rooms.dart';
import 'dart:math';
import 'dart:io';

class Reception extends Rooms {
  String? name;
  int? age;
  int? phoneNumber;
  String? email;
  int? periodofstay;

  checkout(DateTime checkInDate, DateTime checkOutDate) {
    int duration = checkOutDate.difference(checkInDate).inDays;
    print("The check:");
    print(duration * priceofroom);

    print('rate the hotel:');
    double? rate = double.tryParse(stdin.readLineSync()!);
    print("the feedback:");
    String? feedback = stdin.readLineSync();
  }

  Reception(int room, String typeofroom, double priceofroom, this.name,
      this.age, this.phoneNumber, this.email, this.periodofstay)
      : super(room, typeofroom, priceofroom);
  @override
  String toString() {
    return "Name:$name\nage: $age\nphonenumber:$phoneNumber\nthe email:$email\nperiodofstay:$periodofstay days\nNum.room:$numberofroom\nType:$typeofroom";
  }
}
