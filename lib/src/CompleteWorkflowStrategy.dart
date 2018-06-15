import 'package:WorkflowState/src/IWorkflowStrategy.dart';

class CompleteWorkflowStrategy implements IWorkflowStrategy {
  @override
  execute() {
    print("The Ready is Active");
  }
}