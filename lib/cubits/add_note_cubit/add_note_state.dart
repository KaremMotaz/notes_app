part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteLoaded extends AddNoteState {}

final class AddNoteError extends AddNoteState {
  final String errorMessage;
  AddNoteError(this.errorMessage);
}
