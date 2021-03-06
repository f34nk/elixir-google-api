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

defmodule GoogleApi.AdSense.V14.Api.Adunits do
  @moduledoc """
  API calls for all endpoints tagged `Adunits`.
  """

  alias GoogleApi.AdSense.V14.Connection
  import GoogleApi.AdSense.V14.RequestBuilder


  @doc """
  List all custom channels which the specified ad unit belongs to.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String): Ad client which contains the ad unit.
  - ad_unit_id (String): Ad unit for which to list custom channels.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): The maximum number of custom channels to include in the response, used for paging.
    - :page_token (String): A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.CustomChannels{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_customchannels_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdSense.V14.Model.CustomChannels.t} | {:error, Tesla.Env.t}
  def adsense_adunits_customchannels_list(connection, ad_client_id, ad_unit_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/adclients/{adClientId}/adunits/{adUnitId}/customchannels", %{
         "adClientId" => URI.encode_www_form(ad_client_id),
         "adUnitId" => URI.encode_www_form(ad_unit_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSense.V14.Model.CustomChannels{})
  end

  @doc """
  Gets the specified ad unit in the specified ad client.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String): Ad client for which to get the ad unit.
  - ad_unit_id (String): Ad unit to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdSense.V14.Model.AdUnit.t} | {:error, Tesla.Env.t}
  def adsense_adunits_get(connection, ad_client_id, ad_unit_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/adclients/{adClientId}/adunits/{adUnitId}", %{
         "adClientId" => URI.encode_www_form(ad_client_id),
         "adUnitId" => URI.encode_www_form(ad_unit_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSense.V14.Model.AdUnit{})
  end

  @doc """
  Get ad code for the specified ad unit.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String): Ad client with contains the ad unit.
  - ad_unit_id (String): Ad unit to get the code for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.AdCode{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_get_ad_code(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdSense.V14.Model.AdCode.t} | {:error, Tesla.Env.t}
  def adsense_adunits_get_ad_code(connection, ad_client_id, ad_unit_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/adclients/{adClientId}/adunits/{adUnitId}/adcode", %{
         "adClientId" => URI.encode_www_form(ad_client_id),
         "adUnitId" => URI.encode_www_form(ad_unit_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSense.V14.Model.AdCode{})
  end

  @doc """
  List all ad units in the specified ad client for this AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String): Ad client for which to list ad units.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :include_inactive (Boolean): Whether to include inactive ad units. Default: true.
    - :max_results (Integer): The maximum number of ad units to include in the response, used for paging.
    - :page_token (String): A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.AdUnits{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AdSense.V14.Model.AdUnits.t} | {:error, Tesla.Env.t}
  def adsense_adunits_list(connection, ad_client_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"includeInactive" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/adclients/{adClientId}/adunits", %{
         "adClientId" => URI.encode_www_form(ad_client_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSense.V14.Model.AdUnits{})
  end
end
