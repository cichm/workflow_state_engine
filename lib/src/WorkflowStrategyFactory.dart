import 'package:WorkflowState/src/ActiveWorkflowStrategy.dart';
import 'package:WorkflowState/src/CompleteWorkflowStrategy.dart';
import 'package:WorkflowState/src/IWorkflowStrategy.dart';
import 'package:WorkflowState/src/ReadyWorkflowStrategy.dart';
import 'package:WorkflowState/src/WorkflowState.dart';

class WorkflowStrategyFactory {
  Map<WorkflowState, IWorkflowStrategy> _strategies;

  WorkflowStrategyFactory(this._strategies) {
    _strategies[WorkflowState.Ready] = new ReadyWorkflowStrategy();
    _strategies[WorkflowState.Active] = new ActiveWorkflowStrategy();
    _strategies[WorkflowState.Complete] = new CompleteWorkflowStrategy();
  }

  IWorkflowStrategy GetStrategy(WorkflowState state) {
    return _strategies[state];
  }
}