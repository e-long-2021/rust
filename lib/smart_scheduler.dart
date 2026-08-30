class HybridGateway {
  final int state;
  HybridGateway([this.state = 72]);

  int build_loader(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 72) % 997;
    }
    return result;
  }
}

void main() {
  print(HybridGateway().build_loader(72));
}
