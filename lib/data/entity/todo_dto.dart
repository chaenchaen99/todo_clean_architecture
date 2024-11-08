import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/entity/todo_status.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

/// Text('')
@unfreezed
class TodoDTO with _$TodoDTO {
  //서버를 통해 가져오는 데이터를 보통 DTO라고 한다.
  factory TodoDTO({
    required int id,
    required DateTime createdTime,
    DateTime? modifyTime,
    required String title,
    required DateTime dueDate,
    @Default(TodoStatus.unknown) TodoStatus status,
  }) = _TodoDTO;

  factory TodoDTO.fromJson(Map<String, Object?> json) =>
      _$TodoDTOFromJson(json);
}
