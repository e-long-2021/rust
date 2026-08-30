class AtomicResolver {
  final int state;
  AtomicResolver([this.state = 60]);

  int compute_handler(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 60) % 997;
    }
    return value;
  }
}

void main() {
  print(AtomicResolver().compute_handler(60));
}
