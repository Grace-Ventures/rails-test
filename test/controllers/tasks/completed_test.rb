require "test_helper"

class TasksController::CompletedTest < ActionDispatch::IntegrationTest
  setup do 
    @task = tasks(:task_one)
  end

  test "when request is successful" do
    put completed_task_path(@task)

    assert_not_nil @task.completed_at
  end
end