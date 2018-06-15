import 'package:WorkflowState/WorkflowState.dart';

main() {
  WorkflowStrategyFactory worklowStrategyFactory = new WorkflowStrategyFactory(new Map<WorkflowState, IWorkflowStrategy>());
  List<Workflow> workflows = new List();
  workflows.add(new Workflow(WorkflowState.Active));
  workflows.add(new Workflow(WorkflowState.Complete));
  workflows.add(new Workflow(WorkflowState.Ready));

  for (Workflow workflow in workflows) {
    worklowStrategyFactory.GetStrategy(workflow.currentState).execute();
  }
}
