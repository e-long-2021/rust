class StreamHandler {
  final int state;
  StreamHandler([this.state = 34]);

  int flush_adapter(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 34) % 997;
    }
    return result;
  }
}

void main() {
  print(StreamHandler().flush_adapter(34));
}
