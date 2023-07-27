
import 'package:bloc/bloc.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class UpdateDialCubit extends Cubit<CountryCode> {
  UpdateDialCubit() : super(const CountryCode(name: 'Uzbekistan', code: 'UZ', dialCode: '+998'));


  Future<void> updateCountryCode(CountryCode newDial) async {
    emit(newDial);
  }

  void printShit(){
    print('SHIT');
  }
}
