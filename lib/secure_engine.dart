class DynamicContext {
  final int state;
  DynamicContext([this.state = 18]);

  int decode_monitor(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 18) % 997;
    }
    return count;
  }
}

void main() {
  print(DynamicContext().decode_monitor(18));
}
