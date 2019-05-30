class Pagination {
  int total;
  int perPage;
  int page;
  int lastPage;
  List<dynamic> data;

  Pagination(
      {this.total, this.perPage, this.page, this.lastPage, this.data});

  Pagination.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    perPage = json['perPage'];
    page = json['page'];
    lastPage = json['lastPage'];
    if (json['data'] != null) {
      data = new List<Null>();
      json['data'].forEach((v) {
        data.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['perPage'] = this.perPage;
    data['page'] = this.page;
    data['lastPage'] = this.lastPage;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
