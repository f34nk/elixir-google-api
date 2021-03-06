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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse do
  @moduledoc """
  Response for Identitytoolkit-VerifyPhoneNumber

  ## Attributes

  - expiresIn (String):  Defaults to: `null`.
  - idToken (String):  Defaults to: `null`.
  - isNewUser (Boolean):  Defaults to: `null`.
  - localId (String):  Defaults to: `null`.
  - phoneNumber (String):  Defaults to: `null`.
  - refreshToken (String):  Defaults to: `null`.
  - temporaryProof (String):  Defaults to: `null`.
  - temporaryProofExpiresIn (String):  Defaults to: `null`.
  - verificationProof (String):  Defaults to: `null`.
  - verificationProofExpiresIn (String):  Defaults to: `null`.
  """

  defstruct [
    :"expiresIn",
    :"idToken",
    :"isNewUser",
    :"localId",
    :"phoneNumber",
    :"refreshToken",
    :"temporaryProof",
    :"temporaryProofExpiresIn",
    :"verificationProof",
    :"verificationProofExpiresIn"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse do
  def encode(value, options) do
    GoogleApi.IdentityToolkit.V3.Deserializer.serialize_non_nil(value, options)
  end
end

