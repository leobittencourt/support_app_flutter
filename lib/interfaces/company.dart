class Company {
  int id;
  String socialName;
  String fantasyName;
  String cnpj;
  String streetName;
  String streetNumber;
  String zipcode;
  String district;
  String city;
  String state;
  Null country;
  String email;
  Null cellphone;
  Null telephone;
  bool isActive;
  String createdAt;
  String updatedAt;
  Null logoId;

  Company(
      {this.id,
        this.socialName,
        this.fantasyName,
        this.cnpj,
        this.streetName,
        this.streetNumber,
        this.zipcode,
        this.district,
        this.city,
        this.state,
        this.country,
        this.email,
        this.cellphone,
        this.telephone,
        this.isActive,
        this.createdAt,
        this.updatedAt,
        this.logoId});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    socialName = json['social_name'];
    fantasyName = json['fantasy_name'];
    cnpj = json['cnpj'];
    streetName = json['street_name'];
    streetNumber = json['street_number'];
    zipcode = json['zipcode'];
    district = json['district'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    email = json['email'];
    cellphone = json['cellphone'];
    telephone = json['telephone'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    logoId = json['logo_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['social_name'] = this.socialName;
    data['fantasy_name'] = this.fantasyName;
    data['cnpj'] = this.cnpj;
    data['street_name'] = this.streetName;
    data['street_number'] = this.streetNumber;
    data['zipcode'] = this.zipcode;
    data['district'] = this.district;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['email'] = this.email;
    data['cellphone'] = this.cellphone;
    data['telephone'] = this.telephone;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['logo_id'] = this.logoId;
    return data;
  }
}
