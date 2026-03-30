import 'package:flutter_bloc/flutter_bloc.dart';

//in observer we have many functions :
/* 1- onCreat() , 2-onChange() , 3-onEvent() ,
   4-onTransition() , 5-onError() , 6-onClose()*/
class MyBlocObserver
    extends BlocObserver {
  @override
  //معرفة متى يتم انشاء البلوك
  //1- onCreat()
  void onCreate(
    BlocBase<dynamic> bloc,
  ) {
    print(
      "=========================bloc/onCreate============================",
    );
    print(bloc);
    print(
      "=========================bloc/onCreate============================",
    );
    super.onCreate(bloc);
  }

  //2- 2-onChange()
  @override
  void onChange(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) {
    print("Bloc");
    print(bloc);
    print(
      "=========================Change====================",
    );
    print(change);
    super.onChange(bloc, change);
  }

  //3-onEvent()
  @override
  void onEvent(
    Bloc<dynamic, dynamic> bloc,
    Object? event,
  ) {
    print(
      "=================OnEvent================",
    );
    print("Bloc");
    print(bloc);
    print(
      "=========================Event",
    );
    print(event);
    super.onEvent(bloc, event);
  }

  //4-onTransition()
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic>
    transition,
  ) {
    print(
      "=================Transition================",
    );
    print("Bloc");
    print(bloc);
    print("Transition");
    print(Transition);
    print(
      "=========================Event",
    );
    super.onTransition(
      bloc,
      transition,
    );
  }

  // 5-onError()
  @override
  void onError(
    BlocBase<dynamic> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    print(
      "==============Error=============",
    );
    print(error);
    super.onError(
      bloc,
      error,
      stackTrace,
    );
  }
}
