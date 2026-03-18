require "test_helper"

class ProductionTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_task = production_tasks(:one)
  end

  test "should get index" do
    get production_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_production_task_url
    assert_response :success
  end

  test "should create production_task" do
    assert_difference("ProductionTask.count") do
      post production_tasks_url, params: { production_task: { completed: @production_task.completed, description: @production_task.description, video_project_id: @production_task.video_project_id } }
    end

    assert_redirected_to video_project_url(ProductionTask.last.video_project)
  end

  test "should show production_task" do
    get production_task_url(@production_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_task_url(@production_task)
    assert_response :success
  end

  test "should update production_task" do
    patch production_task_url(@production_task), params: { production_task: { completed: @production_task.completed, description: @production_task.description, video_project_id: @production_task.video_project_id } }
    assert_redirected_to video_project_url(@production_task.video_project)
  end

  test "should destroy production_task" do
    assert_difference("ProductionTask.count", -1) do
      delete production_task_url(@production_task)
    end

    assert_redirected_to production_tasks_url
  end
end
