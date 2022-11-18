class FormModel {
  List<Data>? _data;
  Meta? _meta;

  FormModel({List<Data>? data, Meta? meta}) {
    if (data != null) {
      this._data = data;
    }
    if (meta != null) {
      this._meta = meta;
    }
  }

  List<Data>? get data => _data;
  set data(List<Data>? data) => _data = data;
  Meta? get meta => _meta;
  set meta(Meta? meta) => _meta = meta;

  FormModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
    _meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    if (this._meta != null) {
      data['meta'] = this._meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? _id;
  String? _name;
  String? _code;
  String? _category;
  String? _email;
  String? _domain;
  Null? _logo;
  Null? _phone;
  String? _logoUrl;
  String? _status;
  bool? _acceptHazardiousWaste;
  Null? _statusRemarks;
  Null? _details;
  Null? _verifiedAt;
  List<Services>? _services;

  Data(
      {int? id,
      String? name,
      String? code,
      String? category,
      String? email,
      String? domain,
      Null? logo,
      Null? phone,
      String? logoUrl,
      String? status,
      bool? acceptHazardiousWaste,
      Null? statusRemarks,
      Null? details,
      Null? verifiedAt,
      List<Services>? services}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (code != null) {
      this._code = code;
    }
    if (category != null) {
      this._category = category;
    }
    if (email != null) {
      this._email = email;
    }
    if (domain != null) {
      this._domain = domain;
    }
    if (logo != null) {
      this._logo = logo;
    }
    if (phone != null) {
      this._phone = phone;
    }
    if (logoUrl != null) {
      this._logoUrl = logoUrl;
    }
    if (status != null) {
      this._status = status;
    }
    if (acceptHazardiousWaste != null) {
      this._acceptHazardiousWaste = acceptHazardiousWaste;
    }
    if (statusRemarks != null) {
      this._statusRemarks = statusRemarks;
    }
    if (details != null) {
      this._details = details;
    }
    if (verifiedAt != null) {
      this._verifiedAt = verifiedAt;
    }
    if (services != null) {
      this._services = services;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get code => _code;
  set code(String? code) => _code = code;
  String? get category => _category;
  set category(String? category) => _category = category;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get domain => _domain;
  set domain(String? domain) => _domain = domain;
  Null? get logo => _logo;
  set logo(Null? logo) => _logo = logo;
  Null? get phone => _phone;
  set phone(Null? phone) => _phone = phone;
  String? get logoUrl => _logoUrl;
  set logoUrl(String? logoUrl) => _logoUrl = logoUrl;
  String? get status => _status;
  set status(String? status) => _status = status;
  bool? get acceptHazardiousWaste => _acceptHazardiousWaste;
  set acceptHazardiousWaste(bool? acceptHazardiousWaste) => _acceptHazardiousWaste = acceptHazardiousWaste;
  Null? get statusRemarks => _statusRemarks;
  set statusRemarks(Null? statusRemarks) => _statusRemarks = statusRemarks;
  Null? get details => _details;
  set details(Null? details) => _details = details;
  Null? get verifiedAt => _verifiedAt;
  set verifiedAt(Null? verifiedAt) => _verifiedAt = verifiedAt;
  List<Services>? get services => _services;
  set services(List<Services>? services) => _services = services;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _code = json['code'];
    _category = json['category'];
    _email = json['email'];
    _domain = json['domain'];
    _logo = json['logo'];
    _phone = json['phone'];
    _logoUrl = json['logo_url'];
    _status = json['status'];
    _acceptHazardiousWaste = json['accept_hazardious_waste'];
    _statusRemarks = json['status_remarks'];
    _details = json['details'];
    _verifiedAt = json['verified_at'];
    if (json['services'] != null) {
      _services = <Services>[];
      json['services'].forEach((v) {
        _services!.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['code'] = this._code;
    data['category'] = this._category;
    data['email'] = this._email;
    data['domain'] = this._domain;
    data['logo'] = this._logo;
    data['phone'] = this._phone;
    data['logo_url'] = this._logoUrl;
    data['status'] = this._status;
    data['accept_hazardious_waste'] = this._acceptHazardiousWaste;
    data['status_remarks'] = this._statusRemarks;
    data['details'] = this._details;
    data['verified_at'] = this._verifiedAt;
    if (this._services != null) {
      data['services'] = this._services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  int? _id;
  String? _name;
  String? _slug;
  String? _host;
  String? _statsApi;
  String? _description;
  String? _status;
  String? _statusRemarks;
  String? _createdAt;
  String? _updatedAt;
  int? _companyServiceId;

  Services(
      {int? id,
      String? name,
      String? slug,
      String? host,
      String? statsApi,
      String? description,
      String? status,
      String? statusRemarks,
      String? createdAt,
      String? updatedAt,
      int? companyServiceId}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (slug != null) {
      this._slug = slug;
    }
    if (host != null) {
      this._host = host;
    }
    if (statsApi != null) {
      this._statsApi = statsApi;
    }
    if (description != null) {
      this._description = description;
    }
    if (status != null) {
      this._status = status;
    }
    if (statusRemarks != null) {
      this._statusRemarks = statusRemarks;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (companyServiceId != null) {
      this._companyServiceId = companyServiceId;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;
  String? get host => _host;
  set host(String? host) => _host = host;
  String? get statsApi => _statsApi;
  set statsApi(String? statsApi) => _statsApi = statsApi;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get statusRemarks => _statusRemarks;
  set statusRemarks(String? statusRemarks) => _statusRemarks = statusRemarks;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get companyServiceId => _companyServiceId;
  set companyServiceId(int? companyServiceId) => _companyServiceId = companyServiceId;

  Services.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _host = json['host'];
    _statsApi = json['stats_api'];
    _description = json['description'];
    _status = json['status'];
    _statusRemarks = json['status_remarks'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _companyServiceId = json['company_service_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['host'] = this._host;
    data['stats_api'] = this._statsApi;
    data['description'] = this._description;
    data['status'] = this._status;
    data['status_remarks'] = this._statusRemarks;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['company_service_id'] = this._companyServiceId;
    return data;
  }
}

class Meta {
  int? _total;
  int? _count;
  int? _currentPage;
  int? _lastPage;
  Null? _previousPage;
  Null? _nextPage;

  Meta({int? total, int? count, int? currentPage, int? lastPage, Null? previousPage, Null? nextPage}) {
    if (total != null) {
      this._total = total;
    }
    if (count != null) {
      this._count = count;
    }
    if (currentPage != null) {
      this._currentPage = currentPage;
    }
    if (lastPage != null) {
      this._lastPage = lastPage;
    }
    if (previousPage != null) {
      this._previousPage = previousPage;
    }
    if (nextPage != null) {
      this._nextPage = nextPage;
    }
  }

  int? get total => _total;
  set total(int? total) => _total = total;
  int? get count => _count;
  set count(int? count) => _count = count;
  int? get currentPage => _currentPage;
  set currentPage(int? currentPage) => _currentPage = currentPage;
  int? get lastPage => _lastPage;
  set lastPage(int? lastPage) => _lastPage = lastPage;
  Null? get previousPage => _previousPage;
  set previousPage(Null? previousPage) => _previousPage = previousPage;
  Null? get nextPage => _nextPage;
  set nextPage(Null? nextPage) => _nextPage = nextPage;

  Meta.fromJson(Map<String, dynamic> json) {
    _total = json['total'];
    _count = json['count'];
    _currentPage = json['current_page'];
    _lastPage = json['last_page'];
    _previousPage = json['previous_page'];
    _nextPage = json['next_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this._total;
    data['count'] = this._count;
    data['current_page'] = this._currentPage;
    data['last_page'] = this._lastPage;
    data['previous_page'] = this._previousPage;
    data['next_page'] = this._nextPage;
    return data;
  }
}
