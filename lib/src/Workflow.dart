import 'package:WorkflowState/src/WorkflowState.dart';

class Workflow {
  WorkflowState _currentState;

  Workflow(this._currentState);

  WorkflowState get currentState => _currentState;

  set currentState(WorkflowState value) {
    _currentState = value;
  }
}