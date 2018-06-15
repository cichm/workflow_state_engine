import 'package:WorkflowState/src/IWorkflowStrategy.dart';
import 'package:WorkflowState/src/WorkflowState.dart';

class ActiveWorkflowStrategy implements IWorkflowStrategy {
  WorkflowState _workflowState;

  @override
  execute() {
    _workflowState = WorkflowState.Active;
    print("The Workflow is Active");
  }
}