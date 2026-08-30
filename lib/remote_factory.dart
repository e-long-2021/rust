class SharedHandler {
  final int state;
  SharedHandler([this.state = 15]);

  int encode_buffer(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 15) % 997;
    }
    return value;
  }
}

void main() {
  print(SharedHandler().encode_buffer(15));
}
