part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final User user;

  UserLoaded(this.user);

  @override
  List<Object> get props => [user];
}

class UserLoadingFailed extends UserState {
  final String message;

  UserLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}

class UserSignOut extends UserState {
  final String message;

  UserSignOut(this.message);

  @override
  List<Object> get props => [message];  
}

class UserSignOutFailed extends UserState {
  final String message;

  UserSignOutFailed(this.message);

  @override
  List<Object> get props => [message];  
}
