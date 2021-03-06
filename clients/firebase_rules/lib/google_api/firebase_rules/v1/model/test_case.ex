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

defmodule GoogleApi.FirebaseRules.V1.Model.TestCase do
  @moduledoc """
  &#x60;TestCase&#x60; messages provide the request context and an expectation as to whether the given context will be allowed or denied. Test cases may specify the &#x60;request&#x60;, &#x60;resource&#x60;, and &#x60;function_mocks&#x60; to mock a function call to a service-provided function.  The &#x60;request&#x60; object represents context present at request-time.  The &#x60;resource&#x60; is the value of the target resource as it appears in persistent storage before the request is executed.

  ## Attributes

  - expectation (String): Test expectation. Defaults to: `null`.
    - Enum - one of [EXPECTATION_UNSPECIFIED, ALLOW, DENY]
  - functionMocks (List[FunctionMock]): Optional function mocks for service-defined functions. If not set, any service defined function is expected to return an error, which may or may not influence the test outcome. Defaults to: `null`.
  """

  defstruct [
    :"expectation",
    :"functionMocks"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.TestCase do
  import GoogleApi.FirebaseRules.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"functionMocks", :list, GoogleApi.FirebaseRules.V1.Model.FunctionMock, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.TestCase do
  def encode(value, options) do
    GoogleApi.FirebaseRules.V1.Deserializer.serialize_non_nil(value, options)
  end
end

