import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/_env/enviroment_type.dart';

void main() async {
  Enviroment.init(EnviromentType.qa).run();
}
