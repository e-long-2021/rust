class CoreHandler {
  final int state;
  CoreHandler([this.state = 74]);

  int build_session(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 74) % 997;
    }
    return value;
  }
}

void main() {
  print(CoreHandler().build_session(74));
}
