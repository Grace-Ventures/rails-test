require "test_helper"

class TasksController::CreateTest < ActionDispatch::IntegrationTest
  setup do 
    @task_params = {
      task: {
        title: random_string,
        description: random_string,
        due_at: Time.current + 1.day
      }
    }
  end

  test "when request is successful" do
    assert_difference 'Task.count', 1 do
      post tasks_path, params: @task_params
    end
  end
end