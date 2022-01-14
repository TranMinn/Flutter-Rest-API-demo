/// meta : {"pagination":{"total":1485,"pages":75,"page":1,"limit":20,"links":{"previous":null,"current":"https://gorest.co.in/public/v1/users?page=1","next":"https://gorest.co.in/public/v1/users?page=2"}}}
/// data : [{"id":2,"name":"Digambara Mukhopadhyay DC","email":"dc_digambara_mukhopadhyay@willms.name","gender":"female","status":"inactive"},{"id":3,"name":"The Hon. Devani Pandey","email":"pandey_hon_devani_the@kassulke.com","gender":"female","status":"inactive"},{"id":4,"name":"Udit Patil","email":"udit_patil@abshire.net","gender":"female","status":"active"},{"id":6,"name":"Baidehi Kaniyar JD","email":"jd_baidehi_kaniyar@langworth-kirlin.org","gender":"female","status":"active"},{"id":7,"name":"Deepan Nehru","email":"nehru_deepan@torp.info","gender":"female","status":"active"},{"id":9,"name":"Vijay Adiga","email":"vijay_adiga@tromp-wilkinson.co","gender":"male","status":"active"},{"id":10,"name":"Bhargava Dhawan","email":"bhargava_dhawan@marks-grimes.net","gender":"female","status":"active"},{"id":11,"name":"Ms. Ananta Kakkar","email":"kakkar_ananta_ms@bins.net","gender":"female","status":"active"},{"id":12,"name":"Malati Singh","email":"malati_singh@miller.org","gender":"male","status":"inactive"},{"id":13,"name":"Jahnu Verma I","email":"jahnu_i_verma@oreilly-jenkins.name","gender":"female","status":"inactive"},{"id":14,"name":"Ganapati Varma","email":"varma_ganapati@erdman.biz","gender":"female","status":"active"},{"id":15,"name":"Deependra Patel","email":"patel_deependra@waters-gerhold.net","gender":"male","status":"inactive"},{"id":16,"name":"The Hon. Darshan Jha","email":"darshan_jha_hon_the@toy.org","gender":"male","status":"inactive"},{"id":18,"name":"Shakuntala Bhattathiri","email":"shakuntala_bhattathiri@bogisich.biz","gender":"female","status":"inactive"},{"id":19,"name":"Poornima Shah","email":"poornima_shah@grimes.io","gender":"male","status":"active"},{"id":20,"name":"Ms. Vaidehi Nair","email":"nair_ms_vaidehi@altenwerth-waters.io","gender":"female","status":"inactive"},{"id":21,"name":"Chandran Naik","email":"naik_chandran@rice-hagenes.info","gender":"male","status":"active"},{"id":22,"name":"Jagmeet Butt","email":"jagmeet_butt@botsford.co","gender":"female","status":"inactive"},{"id":23,"name":"Susheel Ahluwalia","email":"ahluwalia_susheel@volkman.name","gender":"female","status":"inactive"},{"id":24,"name":"Suryakanta Bhat","email":"suryakanta_bhat@gleason.io","gender":"female","status":"inactive"}]

class UserModel {
  UserModel({
      Meta? meta, 
      List<Data>? data,}){
    _meta = meta;
    _data = data;
}

  UserModel.fromJson(dynamic json) {
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  Meta? _meta;
  List<Data>? _data;

  Meta? get meta => _meta;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// name : "Digambara Mukhopadhyay DC"
/// email : "dc_digambara_mukhopadhyay@willms.name"
/// gender : "female"
/// status : "inactive"

class Data {
  Data({
      int? id, 
      String? name, 
      String? email, 
      String? gender, 
      String? status,}){
    _id = id;
    _name = name;
    _email = email;
    _gender = gender;
    _status = status;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _gender = json['gender'];
    _status = json['status'];
  }
  int? _id;
  String? _name;
  String? _email;
  String? _gender;
  String? _status;

  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get gender => _gender;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['gender'] = _gender;
    map['status'] = _status;
    return map;
  }

}

/// pagination : {"total":1485,"pages":75,"page":1,"limit":20,"links":{"previous":null,"current":"https://gorest.co.in/public/v1/users?page=1","next":"https://gorest.co.in/public/v1/users?page=2"}}

class Meta {
  Meta({
      Pagination? pagination,}){
    _pagination = pagination;
}

  Meta.fromJson(dynamic json) {
    _pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
  }
  Pagination? _pagination;

  Pagination? get pagination => _pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    return map;
  }

}

/// total : 1485
/// pages : 75
/// page : 1
/// limit : 20
/// links : {"previous":null,"current":"https://gorest.co.in/public/v1/users?page=1","next":"https://gorest.co.in/public/v1/users?page=2"}

class Pagination {
  Pagination({
      int? total, 
      int? pages, 
      int? page, 
      int? limit, 
      Links? links,}){
    _total = total;
    _pages = pages;
    _page = page;
    _limit = limit;
    _links = links;
}

  Pagination.fromJson(dynamic json) {
    _total = json['total'];
    _pages = json['pages'];
    _page = json['page'];
    _limit = json['limit'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  int? _total;
  int? _pages;
  int? _page;
  int? _limit;
  Links? _links;

  int? get total => _total;
  int? get pages => _pages;
  int? get page => _page;
  int? get limit => _limit;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = _total;
    map['pages'] = _pages;
    map['page'] = _page;
    map['limit'] = _limit;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

/// previous : null
/// current : "https://gorest.co.in/public/v1/users?page=1"
/// next : "https://gorest.co.in/public/v1/users?page=2"

class Links {
  Links({
      dynamic previous, 
      String? current, 
      String? next,}){
    _previous = previous;
    _current = current;
    _next = next;
}

  Links.fromJson(dynamic json) {
    _previous = json['previous'];
    _current = json['current'];
    _next = json['next'];
  }
  dynamic _previous;
  String? _current;
  String? _next;

  dynamic get previous => _previous;
  String? get current => _current;
  String? get next => _next;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['previous'] = _previous;
    map['current'] = _current;
    map['next'] = _next;
    return map;
  }

}