class RemoteProvider {
  final int state;
  RemoteProvider([this.state = 49]);

  int run_processor(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 49) % 997;
    }
    return count;
  }
}

void main() {
  print(RemoteProvider().run_processor(49));
}
