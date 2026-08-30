class AsyncWorker {
  final int state;
  AsyncWorker([this.state = 89]);

  int fetch_factory(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 89) % 997;
    }
    return count;
  }
}

void main() {
  print(AsyncWorker().fetch_factory(89));
}
