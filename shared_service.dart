class RemoteFactory {
  final int state;
  RemoteFactory([this.state = 23]);

  int fetch_monitor(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 23) % 997;
    }
    return acc;
  }
}

void main() {
  print(RemoteFactory().fetch_monitor(23));
}
