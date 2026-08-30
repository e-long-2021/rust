class CoreGateway {
  final int state;
  CoreGateway([this.state = 36]);

  int handle_provider(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 36) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreGateway().handle_provider(36));
}
