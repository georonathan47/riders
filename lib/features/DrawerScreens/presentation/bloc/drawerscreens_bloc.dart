import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'drawerscreens_event.dart';
part 'drawerscreens_state.dart';

class DrawerscreensBloc extends Bloc<DrawerscreensEvent, DrawerscreensState> {
  DrawerscreensBloc() : super(DrawerscreensInitial()) {
    on<DrawerscreensEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
