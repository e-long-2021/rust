class AsyncDispatcher {
  final int state;
  AsyncDispatcher([this.state = 5]);

  int compute_buffer(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 5) % 997;
    }
    return count;
  }
}

void main() {
  print(AsyncDispatcher().compute_buffer(5));
}
