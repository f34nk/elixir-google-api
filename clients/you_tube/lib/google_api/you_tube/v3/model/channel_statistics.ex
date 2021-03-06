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

defmodule GoogleApi.YouTube.V3.Model.ChannelStatistics do
  @moduledoc """
  Statistics about a channel: number of subscribers, number of videos in the channel, etc.

  ## Attributes

  - commentCount (String.t): The number of comments for the channel. Defaults to: `null`.
  - hiddenSubscriberCount (boolean()): Whether or not the number of subscribers is shown for this user. Defaults to: `null`.
  - subscriberCount (String.t): The number of subscribers that the channel has. Defaults to: `null`.
  - videoCount (String.t): The number of videos uploaded to the channel. Defaults to: `null`.
  - viewCount (String.t): The number of times the channel has been viewed. Defaults to: `null`.
  """

  defstruct [
    :commentCount,
    :hiddenSubscriberCount,
    :subscriberCount,
    :videoCount,
    :viewCount
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelStatistics do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelStatistics do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
