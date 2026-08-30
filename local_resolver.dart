class SimpleScheduler {
  final int state;
  SimpleScheduler([this.state = 26]);

  int sync_resolver(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 26) % 997;
    }
    return value;
  }
}

void main() {
  print(SimpleScheduler().sync_resolver(26));
}
