class Request {
  late String request;

  Request({required this.request});

  Request.fromJson(Map<String, dynamic> json) {
    request = json['request'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['request'] = request;
    return data;
  }
}
