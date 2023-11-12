class OrderModel {
  String id;
  String orderName;
  String donorId;
  String ngoId;
  String distributorId;
  int amount;
  int orderStatus;
  int orderCategoryId;
  String? createdBy;
  String createdDate;
  String? updatedBy;
  String? updatedDate;
  String? password;
  OrderModel({
    required this.id,
    required this.orderName,
    required this.donorId,
    required this.distributorId,
    required this.ngoId,
    required this.amount,
    required this.orderStatus,
    required this.orderCategoryId,
    required this.createdBy,
    required this.createdDate,
    this.updatedBy,
    this.updatedDate,
    this.password
  });
}
