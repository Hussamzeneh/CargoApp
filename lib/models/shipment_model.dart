class ShipmentModel {
  final String id;
  final String trackingNumber;
  final String status;
  final String origin;
  final String destination;
  final DateTime shipmentDate;
  final String? currentLocation;
  final double? progress;

  ShipmentModel({
    required this.id,
    required this.trackingNumber,
    required this.status,
    required this.origin,
    required this.destination,
    required this.shipmentDate,
    this.currentLocation,
    this.progress,
  });

  factory ShipmentModel.fromJson(Map<String, dynamic> json) {
    return ShipmentModel(
      id: json['id'],
      trackingNumber: json['trackingNumber'],
      status: json['status'],
      origin: json['origin'],
      destination: json['destination'],
      shipmentDate: DateTime.parse(json['shipmentDate']),
      currentLocation: json['currentLocation'],
      progress: json['progress']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'trackingNumber': trackingNumber,
    'status': status,
    'origin': origin,
    'destination': destination,
    'shipmentDate': shipmentDate.toIso8601String(),
    'currentLocation': currentLocation,
    'progress': progress,
  };
}