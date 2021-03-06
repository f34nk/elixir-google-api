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

defmodule GoogleApi.Sheets.V4.Model.MatchedValueRange do
  @moduledoc """
  A value range that was matched by one or more data filers.

  ## Attributes

  - dataFilters ([DataFilter]): The DataFilters from the request that matched the range of values. Defaults to: `null`.
  - valueRange (ValueRange): The values matched by the DataFilter. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          dataFilters: list(GoogleApi.Sheets.V4.Model.DataFilter.t()),
          valueRange: GoogleApi.Sheets.V4.Model.ValueRange.t()
        }

  defstruct [
    :dataFilters,
    :valueRange
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.MatchedValueRange do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:dataFilters, :list, GoogleApi.Sheets.V4.Model.DataFilter, options)
    |> deserialize(:valueRange, :struct, GoogleApi.Sheets.V4.Model.ValueRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.MatchedValueRange do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
