class IP {
  final String ip;
  IP({required this.ip});

  // factory IP.fromMap(Map<String, dynamic> map) {
  //   return IP(
  //     ip: map["ip"]
  //   );
  // }

  static IP fromMap(Map<String, dynamic> map) {
    return IP(ip: map["ip"]);
  }
}
