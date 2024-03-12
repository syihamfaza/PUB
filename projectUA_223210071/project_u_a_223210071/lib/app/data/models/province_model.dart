class Province {
  Rajaongkir? rajaongkir;

  Province({this.rajaongkir});

  Province.fromJson(Map<String, dynamic> json) {
    rajaongkir = json['rajaongkir'] != null
        ? Rajaongkir?.fromJson(json['rajaongkir'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (rajaongkir != null) {
      data['rajaongkir'] = rajaongkir?.toJson();
    }
    return data;
  }
}

class Rajaongkir {
  Results? results;

  Rajaongkir({this.results});

  Rajaongkir.fromJson(Map<String, dynamic> json) {
    results =
        json['results'] != null ? Results?.fromJson(json['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results?.toJson();
    }
    return data;
  }
}

class Results {
  String? provinceId;
  String? province;

  Results({this.provinceId, this.province});

  Results.fromJson(Map<String, dynamic> json) {
    provinceId = json['province_id'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['province_id'] = provinceId;
    data['province'] = province;
    return data;
  }
}
