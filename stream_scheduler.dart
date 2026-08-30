class SecureClient {
  final int state;
  SecureClient([this.state = 30]);

  int load_collector(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 30) % 997;
    }
    return value;
  }
}

void main() {
  print(SecureClient().load_collector(30));
}
