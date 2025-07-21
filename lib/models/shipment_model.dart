import 'package:bloceproject/shared/constants/shipment_status.dart';

class ShipmentModel {
  late final int id;
  late final int clientId;
  late final int centerFromId;
  late final int centerToId;
  late final int pickupDriverId;
  late final int deliveryDriverId;
  late final double senderLat;
  late final double senderLng;
  late final int recipientId;
  late final ShipmentStatus status;
  late final double recipientLat;
  late final double recipientLng;
  late final String type;
  late final int numberOfPieces;
  late final double weight;
  late final String deliveryPrice;
  late final String productValue;
  late final String totalAmount;
  late final String invoiceNumber;
  late final String barcode;
  late final String qrCodeUrl;

  ShipmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    // clientId = json['clientId'];
    // centerFromId = json['centerFromId'];
    // centerToId = json['centerToId'];
    // pickupDriverId = json['pickupDriverId'];
    // deliveryDriverId = json['deliveryDriverId'];
    // senderLat = json['senderLat'];
    // senderLng = json['senderLng'];
    // recipientId = json['recipientId'];
    // recipientLat = json['recipientLat'];
    // recipientLng = json['recipientLng'];
    type = json['shipment_type'];
    // numberOfPieces = json['numberOfPieces'];
    // weight = json['weight'];
    deliveryPrice = json['delivery_price'];
    productValue = json['product_value'];
    totalAmount = json['total_amount'];
    // invoiceNumber = json['invoiceNumber'];
    barcode = json['barcode'];
    // qrCodeUrl = json['qrCodeUrl'];
    status = ShipmentStatus.fromBackendStatus(json['status']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'clientId': clientId,
        'centerFromId': centerFromId,
        'centerToId': centerToId,
        'pickupDriverId': pickupDriverId,
        'deliveryDriverId': deliveryDriverId,
        'senderLat': senderLat,
        'senderLng': senderLng,
        'recipientId': recipientId,
        'recipientLat': recipientLat,
        'recipientLng': recipientLng,
        'shipmentType': type,
        'numberOfPieces': numberOfPieces,
        'weight': weight,
        'deliveryPrice': deliveryPrice,
        'productValue': productValue,
        'totalAmount': totalAmount,
        'invoiceNumber': invoiceNumber,
        'barcode': barcode,
        'qrCodeUrl': qrCodeUrl,
        'status': status.toJson(),
      };
}
