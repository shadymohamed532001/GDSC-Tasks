import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_gdsc/shared/Cubite/States.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitalState());

  static AppCubit get(context) => BlocProvider.of(context) ;

  bool IsPassword = true ;
  bool IsPassword2 = true ;

  void ChangeLoginPasswordVisible ()
  {
    IsPassword = ! IsPassword ;
    emit(AppChangeLoginPasswordVisbilatyState());
  }
  void ChangeLoginComfirmPasswordVisible ()
  {
    IsPassword2 = ! IsPassword2 ;
    emit(AppChangeLoginComfirmpasswordVisbilatyState());
  }
  // void ChangeRegisterVisible ()
  // {
  //   IsPassword = ! IsPassword ;
  //   emit(AppChangeRegisterVisbilatyState());
  // }

}
