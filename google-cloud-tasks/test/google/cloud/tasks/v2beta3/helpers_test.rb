# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "minitest/autorun"
require "minitest/spec"

require "google/gax"

require "google/cloud/tasks"
require "google/cloud/tasks/v2beta3/helpers"

require "google/cloud/tasks/v2beta3/cloud_tasks_client"

class HelperMockTasksCredentials_v2beta3 < Google::Cloud::Tasks::V2beta3::Credentials
  def initialize
  end

  def updater_proc
    proc do
      raise "The client was trying to make a grpc request. This should not " \
          "happen since the grpc layer is being mocked."
    end
  end
end

describe Google::Cloud::Tasks::V2beta3::CloudTasksClient do
  let(:mock_credentials) { HelperMockTasksCredentials_v2beta3.new }

  describe "the location_path instance method" do
    it "correctly calls Google::Cloud::Tasks::V2beta3::CloudTasksClient.location_path" do
      Google::Cloud::Tasks::V2beta3::Credentials.stub(:default, mock_credentials) do
        parameters = Google::Cloud::Tasks::V2beta3::CloudTasksClient.method("location_path").parameters.map { |arg| arg.last.to_s }
        client = Google::Cloud::Tasks.new version: :v2beta3
        assert_equal(
          client.location_path(*parameters),
          Google::Cloud::Tasks::V2beta3::CloudTasksClient.location_path(*parameters)
        )
      end
    end
  end

  describe "the project_path instance method" do
    it "correctly calls Google::Cloud::Tasks::V2beta3::CloudTasksClient.project_path" do
      Google::Cloud::Tasks::V2beta3::Credentials.stub(:default, mock_credentials) do
        parameters = Google::Cloud::Tasks::V2beta3::CloudTasksClient.method("project_path").parameters.map { |arg| arg.last.to_s }
        client = Google::Cloud::Tasks.new version: :v2beta3
        assert_equal(
          client.project_path(*parameters),
          Google::Cloud::Tasks::V2beta3::CloudTasksClient.project_path(*parameters)
        )
      end
    end
  end

  describe "the queue_path instance method" do
    it "correctly calls Google::Cloud::Tasks::V2beta3::CloudTasksClient.queue_path" do
      Google::Cloud::Tasks::V2beta3::Credentials.stub(:default, mock_credentials) do
        parameters = Google::Cloud::Tasks::V2beta3::CloudTasksClient.method("queue_path").parameters.map { |arg| arg.last.to_s }
        client = Google::Cloud::Tasks.new version: :v2beta3
        assert_equal(
          client.queue_path(*parameters),
          Google::Cloud::Tasks::V2beta3::CloudTasksClient.queue_path(*parameters)
        )
      end
    end
  end

  describe "the task_path instance method" do
    it "correctly calls Google::Cloud::Tasks::V2beta3::CloudTasksClient.task_path" do
      Google::Cloud::Tasks::V2beta3::Credentials.stub(:default, mock_credentials) do
        parameters = Google::Cloud::Tasks::V2beta3::CloudTasksClient.method("task_path").parameters.map { |arg| arg.last.to_s }
        client = Google::Cloud::Tasks.new version: :v2beta3
        assert_equal(
          client.task_path(*parameters),
          Google::Cloud::Tasks::V2beta3::CloudTasksClient.task_path(*parameters)
        )
      end
    end
  end
end