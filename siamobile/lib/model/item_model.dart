class ItemModel {
  bool isExpanded;
  String header;
  BodyModel bodyModel;

  ItemModel({this.isExpanded: false, this.header, this.bodyModel});
}

class BodyModel {
  int price;
  int quantity;
  String sn;
  String materialcode;
  String description;
  String validity;

  BodyModel(
      {this.price,
      this.quantity,
      this.sn,
      this.materialcode,
      this.description,
      this.validity});
}
