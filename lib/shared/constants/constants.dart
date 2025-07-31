import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

abstract class Constants {
  static Color primaryColor = Colors.pink[900]!;
  static Color successColor = Colors.green;
  static Color errorColor = Colors.red;
  static String baseUrl = 'http://192.168.119.17:8000';
}

abstract class ConstIcons {
  static IconData nameIcon = HugeIcons.strokeRoundedUserAccount;
  static IconData emailIcon = HugeIcons.strokeRoundedMailAccount01;
  static IconData phoneIcon = HugeIcons.strokeRoundedCall02;
  static IconData lockIcon = HugeIcons.strokeRoundedCall02;
  static IconData locationIcon = HugeIcons.strokeRoundedLocation02;
  static IconData invoiceNumberIcon = Icons.list_alt_rounded;
  static IconData shipmentTypeIcon = Icons.type_specimen_rounded;
  static IconData numberOfPiecesIcon = Icons.list_rounded;
  static IconData shipmentWeightIcon = Icons.timer_outlined;
  static IconData shipmentValueIcon = Icons.euro_symbol_rounded;
  static IconData senderLatIcon = HugeIcons.strokeRoundedLatitude;
  static IconData senderLngIcon = HugeIcons.strokeRoundedLongitude;
  static IconData deliveryPriceIcon = Icons.fire_truck;
  static IconData totalAmountIcon = Icons.attach_money_rounded;
}
