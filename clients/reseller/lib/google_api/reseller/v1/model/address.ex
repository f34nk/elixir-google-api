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

defmodule GoogleApi.Reseller.V1.Model.Address do
  @moduledoc """
  JSON template for address of a customer.

  ## Attributes

  - addressLine1 (String): A customer&#39;s physical address. An address can be composed of one to three lines. The addressline2 and addressLine3 are optional. Defaults to: `null`.
  - addressLine2 (String): Line 2 of the address. Defaults to: `null`.
  - addressLine3 (String): Line 3 of the address. Defaults to: `null`.
  - contactName (String): The customer contact&#39;s name. This is required. Defaults to: `null`.
  - countryCode (String): For countryCode information, see the ISO 3166 country code elements. Verify that country is approved for resale of Google products. This property is required when creating a new customer. Defaults to: `null`.
  - kind (String): Identifies the resource as a customer address. Value: customers#address Defaults to: `null`.
  - locality (String): An example of a locality value is the city of San Francisco. Defaults to: `null`.
  - organizationName (String): The company or company division name. This is required. Defaults to: `null`.
  - postalCode (String): A postalCode example is a postal zip code such as 94043. This property is required when creating a new customer. Defaults to: `null`.
  - region (String): An example of a region value is CA for the state of California. Defaults to: `null`.
  """

  defstruct [
    :"addressLine1",
    :"addressLine2",
    :"addressLine3",
    :"contactName",
    :"countryCode",
    :"kind",
    :"locality",
    :"organizationName",
    :"postalCode",
    :"region"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.Address do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.Address do
  def encode(value, options) do
    GoogleApi.Reseller.V1.Deserializer.serialize_non_nil(value, options)
  end
end

