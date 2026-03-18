require "test_helper"

class VideoProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_project = video_projects(:one)
  end

  test "should get index" do
    get video_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_video_project_url
    assert_response :success
  end

  test "should create video_project" do
    assert_difference("VideoProject.count") do
      post video_projects_url, params: { video_project: { category: @video_project.category, status: @video_project.status, target_date: @video_project.target_date, title: @video_project.title } }
    end

    assert_redirected_to video_project_url(VideoProject.last)
  end

  test "should show video_project" do
    get video_project_url(@video_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_project_url(@video_project)
    assert_response :success
  end

  test "should update video_project" do
    patch video_project_url(@video_project), params: { video_project: { category: @video_project.category, status: @video_project.status, target_date: @video_project.target_date, title: @video_project.title } }
    assert_redirected_to video_project_url(@video_project)
  end

  test "should destroy video_project" do
    assert_difference("VideoProject.count", -1) do
      delete video_project_url(@video_project)
    end

    assert_redirected_to video_projects_url
  end
end
