<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#if (requestAttributes.uiLabelMap)?exists><#assign uiLabelMap = requestAttributes.uiLabelMap></#if>

<#assign unselectedClassName = "tabButton">
<#assign selectedClassMap = {page.tabButtonItem?default("void") : "tabButtonSelected"}>

<#if security.hasEntityPermission("MARKETING", "_VIEW", session)>
<#if marketingCampaign?has_content>
<#-- Main Heading -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td align="right">
      <div class="tabContainer">
        <a href="<@ofbizUrl>/EditMarketingCampaign?marketingCampaignId=${marketingCampaignId}</@ofbizUrl>" class="${selectedClassMap.EditMarketingCampaign?default(unselectedClassName)}">${uiLabelMap.MarketingCampaign}</a>
        <a href="<@ofbizUrl>/ListMarketingCampaignRole?marketingCampaignId=${marketingCampaignId}</@ofbizUrl>" class="${selectedClassMap.MarketingCampaignRole?default(unselectedClassName)}">${uiLabelMap.MarketingCampaignRole}</a>
      </div>
    </td>
  </tr>
 </table>

<#else>
  <div class="head2">${uiLabelMap.MarketingNoMarketingCampaignFoundWithId}: ${marketingCampaignId?if_exists}</div>
</#if>
<#else>
  <div class="head2">${uiLabelMap.MarketingViewPermissionError}</div>
</#if>
