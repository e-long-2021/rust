class BatchAdapter {
  final int state;
  BatchAdapter([this.state = 55]);

  int build_monitor(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 55) % 997;
    }
    return value;
  }
}

void main() {
  print(BatchAdapter().build_monitor(55));
}
