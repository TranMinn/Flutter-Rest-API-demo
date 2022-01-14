/// meta : {"pagination":{"total":1414,"pages":71,"page":1,"limit":20,"links":{"previous":null,"current":"https://gorest.co.in/public/v1/posts?page=1","next":"https://gorest.co.in/public/v1/posts?page=2"}}}
/// data : [{"id":1507,"user_id":1797,"title":"title","body":"body"},{"id":1511,"user_id":1797,"title":"title","body":"body"},{"id":1512,"user_id":1797,"title":"title","body":"body"},{"id":1513,"user_id":1797,"title":"title","body":"body"},{"id":1514,"user_id":1797,"title":"title","body":"body"},{"id":1515,"user_id":1804,"title":"title","body":"body"},{"id":1516,"user_id":1804,"title":"title","body":"body"},{"id":1517,"user_id":1804,"title":"title","body":"body"},{"id":1439,"user_id":1203,"title":"fghjkl jj","body":"abcdhhj"},{"id":1462,"user_id":1412,"title":"salmk00k","body":"khan"},{"id":1474,"user_id":1129,"title":"alkyaio","body":"kyakaro"},{"id":1476,"user_id":1794,"title":"title","body":"body"},{"id":1477,"user_id":1794,"title":"title","body":"body"},{"id":1478,"user_id":1794,"title":"title","body":"body"},{"id":1479,"user_id":1794,"title":"title","body":"body"},{"id":1480,"user_id":1794,"title":"title","body":"body"},{"id":1481,"user_id":1794,"title":"title","body":"body"},{"id":1482,"user_id":1794,"title":"title","body":"body"},{"id":1483,"user_id":1794,"title":"title","body":"body"},{"id":1484,"user_id":1794,"title":"title","body":"body"}]

class PostModel {
  PostModel({
      Meta? meta, 
      List<Data>? data,}){
    _meta = meta;
    _data = data;
}

  PostModel.fromJson(dynamic json) {
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

/// id : 1507
/// user_id : 1797
/// title : "title"
/// body : "body"

class Data {
  Data({
      int? id, 
      int? userId, 
      String? title, 
      String? body,}){
    _id = id;
    _userId = userId;
    _title = title;
    _body = body;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _title = json['title'];
    _body = json['body'];
  }
  int? _id;
  int? _userId;
  String? _title;
  String? _body;

  int? get id => _id;
  int? get userId => _userId;
  String? get title => _title;
  String? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['title'] = _title;
    map['body'] = _body;
    return map;
  }

}

/// pagination : {"total":1414,"pages":71,"page":1,"limit":20,"links":{"previous":null,"current":"https://gorest.co.in/public/v1/posts?page=1","next":"https://gorest.co.in/public/v1/posts?page=2"}}

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

/// total : 1414
/// pages : 71
/// page : 1
/// limit : 20
/// links : {"previous":null,"current":"https://gorest.co.in/public/v1/posts?page=1","next":"https://gorest.co.in/public/v1/posts?page=2"}

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
/// current : "https://gorest.co.in/public/v1/posts?page=1"
/// next : "https://gorest.co.in/public/v1/posts?page=2"

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