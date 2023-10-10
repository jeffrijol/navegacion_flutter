class RentalHouseModel {
  RentalHouseModel({
    required this.id,
    required this.address,
    required this.type,
    required this.constructionDate,
    required this.lastReformDate,
    required this.bedrooms,
    required this.bathrooms,
    required this.services,
    required this.managedByUser,
    required this.v,
    required this.isActive,
  });
  late final String id;
  late final String address;
  late final String type;
  late final String constructionDate;
  late final String lastReformDate;
  late final int bedrooms;
  late final int bathrooms;
  late final List<Services> services;
  late final String managedByUser;
  late final int v;
  late final bool isActive;

  RentalHouseModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    address = json['address'];
    type = json['type'];
    constructionDate = json['constructionDate'];
    lastReformDate = json['lastReformDate'];
    bedrooms = json['bedrooms'];
    bathrooms = json['bathrooms'];
    services =
        List.from(json['services']).map((e) => Services.fromJson(e)).toList();
    managedByUser = json['managedByUser'];
    v = json['__v'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = id;
    data['address'] = address;
    data['type'] = type;
    data['constructionDate'] = constructionDate;
    data['lastReformDate'] = lastReformDate;
    data['bedrooms'] = bedrooms;
    data['bathrooms'] = bathrooms;
    data['services'] = services.map((e) => e.toJson()).toList();
    data['managedByUser'] = managedByUser;
    data['__v'] = v;
    data['isActive'] = isActive;
    return data;
  }

  RentalHouseModel copyWith({
    required String id,
    required String address,
    required String type,
    required String constructionDate,
    required String lastReformDate,
    required int bedrooms,
    required int bathrooms,
    required List<Services> services,
    required String managedByUser,
    required int v,
    required bool isActive,
  }) =>
      RentalHouseModel(
        id: id,
        address: address,
        type: type,
        constructionDate: constructionDate,
        lastReformDate: lastReformDate,
        v: v,
        bathrooms: bathrooms,
        bedrooms: bedrooms,
        isActive: isActive,
        managedByUser: managedByUser,
        services: [],
      );
}

class Services {
  Services({
    required this.name,
    required this.provider,
    required this.contractDate,
    required this.id,
  });
  late final String name;
  late final String provider;
  late final String contractDate;
  late final String id;

  Services.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    provider = json['provider'];
    contractDate = json['contractDate'];
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['provider'] = provider;
    data['contractDate'] = contractDate;
    data['_id'] = id;
    return data;
  }

  

  RentalHouseModel copyWith({
    required String id,
    required String address,
    required String type,
    required String constructionDate,
    required String lastReformDate,
    required int bedrooms,
    required int bathrooms,
    required List<Services> services,
    required String managedByUser,
    required int v,
    required bool isActive,
  }) =>
      RentalHouseModel(
        id: id,
        address: address,
        type: type,
        constructionDate: constructionDate,
        lastReformDate: lastReformDate,
        v: v,
        bathrooms: bathrooms,
        bedrooms: bedrooms,
        isActive: isActive,
        managedByUser: managedByUser,
        services: [],
      );
}
