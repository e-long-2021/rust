class DynamicGateway {
  final int state;
  DynamicGateway([this.state = 46]);

  int flush_factory(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 46) % 997;
    }
    return total;
  }
}

void main() {
  print(DynamicGateway().flush_factory(46));
}
