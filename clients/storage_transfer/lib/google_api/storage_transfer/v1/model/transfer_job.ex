# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.StorageTransfer.V1.Model.TransferJob do
  @moduledoc """
  This resource represents the configuration of a transfer job that runs periodically.

  ## Attributes

  - creationTime (String): This field cannot be changed by user requests. Defaults to: `null`.
  - deletionTime (String): This field cannot be changed by user requests. Defaults to: `null`.
  - description (String): A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded. Defaults to: `null`.
  - lastModificationTime (String): This field cannot be changed by user requests. Defaults to: `null`.
  - name (String): A globally unique name assigned by Storage Transfer Service when the job is created. This field should be left empty in requests to create a new transfer job; otherwise, the requests result in an &#x60;INVALID_ARGUMENT&#x60; error. Defaults to: `null`.
  - projectId (String): The ID of the Google Cloud Platform Console project that owns the job. Required. Defaults to: `null`.
  - schedule (Schedule): Schedule specification. Required. Defaults to: `null`.
  - status (String): Status of the job. This value MUST be specified for &#x60;CreateTransferJobRequests&#x60;.  NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from &#x60;ENABLED&#x60; to &#x60;DISABLED&#x60;, and an operation spawned by the transfer is running, the status change would not affect the current operation. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, ENABLED, DISABLED, DELETED]
  - transferSpec (TransferSpec): Transfer specification. Required. Defaults to: `null`.
  """

  defstruct [
    :"creationTime",
    :"deletionTime",
    :"description",
    :"lastModificationTime",
    :"name",
    :"projectId",
    :"schedule",
    :"status",
    :"transferSpec"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.TransferJob do
  import GoogleApi.StorageTransfer.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"schedule", :struct, GoogleApi.StorageTransfer.V1.Model.Schedule, options)
    |> deserialize(:"transferSpec", :struct, GoogleApi.StorageTransfer.V1.Model.TransferSpec, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.TransferJob do
  def encode(value, options) do
    GoogleApi.StorageTransfer.V1.Deserializer.serialize_non_nil(value, options)
  end
end

