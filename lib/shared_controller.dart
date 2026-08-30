class LiteGateway {
  final int state;
  LiteGateway([this.state = 83]);

  int resolve_controller(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 83) % 997;
    }
    return total;
  }
}

void main() {
  print(LiteGateway().resolve_controller(83));
}
