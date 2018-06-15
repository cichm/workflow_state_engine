import 'package:WorkflowState/src/IWorkflowStrategy.dart';

class ReadyWorkflowStrategy implements IWorkflowStrategy {
  @override
  execute() {
    print("The Ready is Active");
  }
}