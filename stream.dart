import 'dart:async';

import 'dart:math';

enum orderType { thit, rau }

class OrderFore {
  final orderType type;
  OrderFore(this.type);
}

void main(List<String> arguments) {
  StreamController _streamCtrl = StreamController();

  final _process = StreamTransformer.fromHandlers(
      handleData: (type, EventSink<Object> Sink) {
    if (type == orderType.rau) {
      Sink.add('ban an chay');
    } else {
      Sink.addError('ban ko an chay');
    }
  });
  _streamCtrl.sink.add(orderType.rau);

  _streamCtrl.stream.map((order) => order.type).transform(_process).listen(
      (data) => print('ok ,hehe\n$data'),
      onError: ((err) => print('loi')));
}
