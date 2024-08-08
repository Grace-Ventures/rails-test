require "test_helper"

class TasksController::DestroyTest < ActionDispatch::IntegrationTest
  setup do 
    @task = tasks(:task_one)
  end

  test "when request is successful" do
    assert_difference 'Task.count', -1 do
      delete task_path(@task)
    end
  end
end