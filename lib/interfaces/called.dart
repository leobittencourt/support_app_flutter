import 'package:support_app_flutter/interfaces/company.dart';
import 'package:support_app_flutter/interfaces/user.dart';

class Called {
  int id;
  int ownerId;
  int companyId;
  int attendantId;
  String subject;
  String description;
  int status;
  bool isActive;
  String createdAt;
  String updatedAt;
  String statusLabel;
  User owner;
  Company company;
  User attendant;

  Called(
      {this.id,
      this.ownerId,
      this.companyId,
      this.attendantId,
      this.subject,
      this.description,
      this.status,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.statusLabel,
      this.owner,
      this.company,
      this.attendant});

  Called.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ownerId = json['owner_id'];
    companyId = json['company_id'];
    attendantId = json['attendant_id'];
    subject = json['subject'];
    description = json['description'];
    status = json['status'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    statusLabel = json['status_label'];
    owner = json['owner'] != null ? new User.fromJson(json['owner']) : null;
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    attendant =
        json['attendant'] != null ? new User.fromJson(json['attendant']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['owner_id'] = this.ownerId;
    data['company_id'] = this.companyId;
    data['attendant_id'] = this.attendantId;
    data['subject'] = this.subject;
    data['description'] = this.description;
    data['status'] = this.status;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['status_label'] = this.statusLabel;
    if (this.owner != null) {
      data['owner'] = this.owner.toJson();
    }
    if (this.company != null) {
      data['company'] = this.company.toJson();
    }
    if (this.attendant != null) {
      data['attendant'] = this.attendant.toJson();
    }
    return data;
  }
}
