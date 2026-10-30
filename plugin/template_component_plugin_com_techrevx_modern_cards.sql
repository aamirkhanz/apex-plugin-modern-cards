prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>6202419497391597
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'AAMIRKHANZ'
);
end;
/
 
prompt APPLICATION 100 - Apex Plug-ins
--
-- Application Export:
--   Application:     100
--   Name:            Apex Plug-ins
--   Date and Time:   07:03 Friday October 30, 2026
--   Exported By:     AAMIRKHANZ
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 5633498110666055
--   Manifest End
--   Version:         26.2.0
--   Instance ID:     2400160207269871
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_techrevx_modern_cards
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(5633498110666055)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.TECHREVX.MODERN_CARDS'
,p_display_name=>'Modern Cards'
,p_apexlang_name=>'travelCard'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_javascript_file_urls=>'#PLUGIN_FILES#modern-cards.js'
,p_css_file_urls=>'#PLUGIN_FILES#modern-cards.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'<div class="ak-Card ak-Card--#STYLE#{if ?SIZE/} ak-Card--size-#SIZE#{endif/} is-placeholder" aria-hidden="true">',
'  <div class="ak-Card-media"></div>',
'  <div class="ak-Card-title"></div>',
'  <div class="ak-Card-subtitle"></div>',
'  <div class="ak-Card-description"></div>',
'</div>',
'{else/}',
'<article class="ak-Card ak-Card--#STYLE#{if ?SIZE/} ak-Card--size-#SIZE#{endif/}{if ?ACCENT/} ak-Card--accent-#ACCENT#{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/}">',
'  {if ?FULL_CARD_LINK/}<a class="ak-Card-fullLink" href="#FULL_CARD_LINK#" #FULL_CARD_LINK_ATTR# aria-label="#TITLE!ATTR#"></a>{endif/}',
'  {case STYLE/}{when flip/}<div class="ak-Flip" tabindex="0"><div class="ak-Flip-face ak-Flip-front">{when flipIcon/}<div class="ak-Flip" tabindex="0"><div class="ak-Flip-face ak-Flip-front">{when flipNumber/}<div class="ak-Flip" tabindex="0"><div cl'
||'ass="ak-Flip-face ak-Flip-front">{endcase/}',
'  {if ?IMAGE/}<div class="ak-Card-media"><img class="ak-Card-image" src="#IMAGE#" alt="#IMAGE_DESCRIPTION!ATTR#" loading="lazy"></div>{endif/}',
'  {if ?BADGE/}<span class="ak-Card-badge">#BADGE#</span>{endif/}',
'  {if ?ICON/}<div class="ak-Card-icon" aria-hidden="true"><span class="fa #ICON#"></span></div>{endif/}',
'  <h3 class="ak-Card-title">#TITLE#</h3>',
'  {if ?SUBTITLE/}<p class="ak-Card-subtitle">#SUBTITLE#</p>{endif/}',
'  {if ?VALUE/}<div class="ak-Card-value">#VALUE#</div>{endif/}',
'  {case STYLE/}{when flip/}</div><div class="ak-Flip-face ak-Flip-back"><p class="ak-Card-backTitle">#TITLE#</p>{when flipIcon/}</div><div class="ak-Flip-face ak-Flip-back"><p class="ak-Card-backTitle">#TITLE#</p>{when flipNumber/}</div><div class="a'
||'k-Flip-face ak-Flip-back"><p class="ak-Card-backTitle">#TITLE#</p>{endcase/}',
'  {case STYLE/}{when jersey/}<div class="ak-Card-hero">{if ?IMAGE/}<img class="ak-Card-heroShadow" src="#IMAGE#" alt="" aria-hidden="true"><img class="ak-Card-heroLogo" src="#IMAGE#" alt="#IMAGE_DESCRIPTION!ATTR#">{else/}<span class="ak-Card-heroShad'
||'ow" aria-hidden="true">#VALUE#</span><span class="ak-Card-heroValue">#VALUE#</span>{endif/}</div>{endcase/}',
'  {if ?RATING/}<div class="ak-Card-rating" role="img" aria-label="#RATING!ATTR# out of 5"><span class="ak-Card-stars" style="--ak-rating: #RATING!ATTR#"></span><span class="ak-Card-ratingValue" aria-hidden="true">#RATING#</span></div>{endif/}',
'  {if ?DESCRIPTION/}<p class="ak-Card-description">#DESCRIPTION#</p>{endif/}',
'  {if ?PRICE/}<div class="ak-Card-meta"><span class="ak-Card-metaItem">{if ?PRICE_ICON/}<span class="ak-Card-metaIcon fa #PRICE_ICON#" aria-hidden="true"></span>{endif/}{if ?PRICE_PREFIX/}#PRICE_PREFIX# {endif/}<strong>#PRICE#</strong></span>{if ?COD'
||'E/}<span class="ak-Card-metaItem">{if ?CODE_ICON/}<span class="ak-Card-metaIcon fa #CODE_ICON#" aria-hidden="true"></span>{endif/}<strong>#CODE#</strong></span>{endif/}</div>{else/}{if ?CODE/}<div class="ak-Card-meta"><span class="ak-Card-metaItem">{'
||'if ?CODE_ICON/}<span class="ak-Card-metaIcon fa #CODE_ICON#" aria-hidden="true"></span>{endif/}<strong>#CODE#</strong></span></div>{endif/}{endif/}',
'  {if ?FOOTER/}<div class="ak-Card-footer">{if ?TREND/}<span class="ak-Card-trend ak-Card-trend--#TREND_DIRECTION#">#TREND#</span> {endif/}#FOOTER#</div>{else/}{if ?TREND/}<div class="ak-Card-footer"><span class="ak-Card-trend ak-Card-trend--#TREND_D'
||'IRECTION#">#TREND#</span></div>{endif/}{endif/}',
'  {if ?PRIMARY_ACTIONS/}<div class="ak-Card-actions"><div class="ak-Card-primary">#PRIMARY_ACTIONS#</div>{if ?SECONDARY_ACTIONS/}<div class="ak-Card-secondary">#SECONDARY_ACTIONS#</div>{endif/}</div>{else/}{if ?SECONDARY_ACTIONS/}<div class="ak-Card-'
||'actions"><div class="ak-Card-secondary">#SECONDARY_ACTIONS#</div></div>{endif/}{endif/}',
'  {case STYLE/}{when flip/}</div></div>{when flipIcon/}</div></div>{when flipNumber/}</div></div>{endcase/}',
'</article>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="ak-Cards{if ?COLUMNS/} ak-Cards--cols#COLUMNS#{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="ak-Cards-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>4
,p_standard_attributes=>'REGION_TEMPLATE:ROW_SELECTION'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Modern Cards: 15 card designs in one template component, for report regions and single cards.',
'',
'Travel Inset / Travel Overlay: photo cards with price and code meta row, call to action and favorite button.',
'Stat: dashboard metric with a floating accent icon tile, value, trend and footer.',
'Glass: frosted card over a soft color mesh.',
'Glow Border: animated gradient ring with a soft accent halo.',
'Spotlight: dark card with a light that follows the mouse.',
'Product: shop card with photo, badge, rating, price and cart/favorite actions.',
'Profile: cover band in the accent color with avatar (photo or icon), bio and actions.',
'Feature: clean bordered card with icon, text and a "learn more" style link action.',
'Neubrutalism: thick black borders, offset shadows and bold accent background.',
'Testimonial: star rating, quote and author with avatar.',
'Long Shadow: flat accent card with a small Subtitle over a big Title and a huge number (Value) with a long fading diagonal shadow; set Image to show a logo instead of the number.',
'Flip - Photo / Flip - Icon / Flip - Number: two-sided cards that flip on hover (tap on touch screens, focus with the keyboard). Front: photo, icon or number with title and subtitle. Back: title, description, rating, footer and actions.',
'',
'Size: Tiny, Small, Medium (default), Large or Extra Large scales the whole card; with Columns set to Auto it also changes how many cards fit per row.',
'Every element only renders when its attribute has a value; Page Designer shows the attributes each design uses.',
'Accent values: dark, info, success, primary, warning, danger, violet, gold.',
'Actions: Full Card Link, Primary Actions and Secondary Actions (button or menu).',
'JavaScript: akCards.toggle(element) toggles an action on/off and swaps an outlined icon (fa-heart-o) for the filled one.',
'',
'Documentation, updates and more plugins: https://www.techrevx.com'))
,p_version_identifier=>'2.2'
,p_about_url=>'https://www.techrevx.com'
,p_plugin_comment=>'All markup uses custom ak-Card classes. Styles in modern-cards.css, helpers in modern-cards.js (plugin files). The internal name is COM.TECHREVX.MODERN_CARDS since 2.1.'
,p_files_version=>2461344070252
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(5633589020666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_title=>'Appearance'
,p_apexlang_name=>'appearance'
,p_static_id=>'APPEARANCE'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(5633615142666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_title=>'Content'
,p_apexlang_name=>'content'
,p_static_id=>'CONTENT'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(5633779423666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_title=>'Details'
,p_apexlang_name=>'details'
,p_static_id=>'DETAILS'
,p_display_sequence=>40
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(5633825983666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_title=>'Media'
,p_apexlang_name=>'media'
,p_static_id=>'MEDIA'
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5647640942759000)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>20
,p_static_id=>'ACCENT'
,p_prompt=>'Accent'
,p_apexlang_name=>'accent'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'inset,overlay,product,testimonial'
,p_attribute_group_id=>wwv_flow_imp.id(5633589020666057)
,p_examples=>'info'
,p_help_text=>'Accent color: dark, info, success, primary, warning, danger, violet or gold. Use a column substitution such as &ACCENT. to color each card differently.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5647831799759002)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>80
,p_static_id=>'BADGE'
,p_prompt=>'Badge'
,p_apexlang_name=>'badge'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'inset,overlay,stat,testimonial'
,p_attribute_group_id=>wwv_flow_imp.id(5633615142666057)
,p_help_text=>'Short label shown as a pill, for example New, Beta or -20%.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5633938120666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>200
,p_static_id=>'CODE'
,p_prompt=>'Code'
,p_apexlang_name=>'code'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'inset,overlay'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_help_text=>'Short code shown in bold after the price, for example an airport code.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5634091424666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>210
,p_static_id=>'CODE_ICON'
,p_prompt=>'Code Icon'
,p_apexlang_name=>'codeIcon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-plane'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5633938120666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5634158393666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>12
,p_display_sequence=>40
,p_static_id=>'COLUMNS'
,p_prompt=>'Columns'
,p_apexlang_name=>'columns'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(5633589020666057)
,p_null_text=>'Auto'
,p_help_text=>'Number of cards per row. Auto fits as many cards as there is room for. All options fall back to fewer columns on small screens.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5634230240666057)
,p_plugin_attribute_id=>wwv_flow_imp.id(5634158393666057)
,p_display_sequence=>10
,p_display_value=>'2 Columns'
,p_return_value=>'2'
,p_apexlang_name=>'2'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5634373449666057)
,p_plugin_attribute_id=>wwv_flow_imp.id(5634158393666057)
,p_display_sequence=>20
,p_display_value=>'3 Columns'
,p_return_value=>'3'
,p_apexlang_name=>'3'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5634430107666057)
,p_plugin_attribute_id=>wwv_flow_imp.id(5634158393666057)
,p_display_sequence=>30
,p_display_value=>'4 Columns'
,p_return_value=>'4'
,p_apexlang_name=>'4'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5634510489666057)
,p_plugin_attribute_id=>wwv_flow_imp.id(5634158393666057)
,p_display_sequence=>40
,p_display_value=>'5 Columns'
,p_return_value=>'5'
,p_apexlang_name=>'5'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5634663617666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>30
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'Card CSS Classes'
,p_apexlang_name=>'cssClasses'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(5633589020666057)
,p_help_text=>'Extra CSS classes added to each card.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5647763151759002)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>70
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_apexlang_name=>'description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'inset,overlay,stat'
,p_attribute_group_id=>wwv_flow_imp.id(5633615142666057)
,p_help_text=>'Body text. For the Testimonial design this is the quote.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5648364300759003)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>150
,p_static_id=>'FOOTER'
,p_prompt=>'Footer'
,p_apexlang_name=>'footer'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'stat,flipNumber'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_help_text=>'Footer text under the divider, for example than last week.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5647928397759002)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>110
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_apexlang_name=>'icon'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'inset,overlay,product'
,p_attribute_group_id=>wwv_flow_imp.id(5633825983666057)
,p_examples=>'fa-calendar'
,p_help_text=>'Font APEX icon class, for example fa-calendar, or a column substitution such as &ICON_CLASS. Profile and Testimonial use it as the avatar when there is no image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5634728538666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>90
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_apexlang_name=>'image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'inset,overlay,product,profile,testimonial,brutal,jersey,flip'
,p_attribute_group_id=>wwv_flow_imp.id(5633825983666057)
,p_help_text=>'Photo. Travel and Product show it as the card picture, Profile and Testimonial as a round avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5634868178666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>100
,p_static_id=>'IMAGE_DESCRIPTION'
,p_prompt=>'Image Description'
,p_apexlang_name=>'imageDescription'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5634728538666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(5633825983666057)
,p_help_text=>'Alternative text read by screen readers for the photo.'
,p_important_for_accessibility=>true
,p_accessibility_help_text=>'Alternative text for the photo. Leave empty only when the photo is purely decorative.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5634939933666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>170
,p_static_id=>'PRICE'
,p_prompt=>'Price'
,p_apexlang_name=>'price'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'inset,overlay'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_help_text=>'Price shown in bold in the travel meta row, for example $120.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5635012474666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>190
,p_static_id=>'PRICE_ICON'
,p_prompt=>'Price Icon'
,p_apexlang_name=>'priceIcon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-tag'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5634939933666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5635147898666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>180
,p_static_id=>'PRICE_PREFIX'
,p_prompt=>'Price Prefix'
,p_apexlang_name=>'pricePrefix'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'from'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5634939933666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5648485693759003)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>160
,p_static_id=>'RATING'
,p_prompt=>'Rating'
,p_apexlang_name=>'rating'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'product,testimonial,flip'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_examples=>'4.5'
,p_help_text=>'Number from 0 to 5, shown as stars. Decimals fill partial stars.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5803555905362832)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>15
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_apexlang_name=>'size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'md'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(5633589020666057)
,p_help_text=>'Card size. Scales the whole card (text, spacing, icons, photos and buttons). In a report with Columns set to Auto, smaller sizes also fit more cards per row and larger sizes fewer.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5803666293362832)
,p_plugin_attribute_id=>wwv_flow_imp.id(5803555905362832)
,p_display_sequence=>40
,p_display_value=>'Large'
,p_return_value=>'lg'
,p_apexlang_name=>'lg'
,p_help_text=>'Scales the card to 112.5%.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5803786088362832)
,p_plugin_attribute_id=>wwv_flow_imp.id(5803555905362832)
,p_display_sequence=>30
,p_display_value=>'Medium'
,p_return_value=>'md'
,p_apexlang_name=>'md'
,p_help_text=>'Default size.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5803853147362832)
,p_plugin_attribute_id=>wwv_flow_imp.id(5803555905362832)
,p_display_sequence=>20
,p_display_value=>'Small'
,p_return_value=>'sm'
,p_apexlang_name=>'sm'
,p_help_text=>'Scales the card to 87.5%.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5803933698362832)
,p_plugin_attribute_id=>wwv_flow_imp.id(5803555905362832)
,p_display_sequence=>50
,p_display_value=>'Extra Large'
,p_return_value=>'xl'
,p_apexlang_name=>'xl'
,p_help_text=>'Scales the card to 125%; with Columns set to Auto fewer cards fit per row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5804057644362832)
,p_plugin_attribute_id=>wwv_flow_imp.id(5803555905362832)
,p_display_sequence=>10
,p_display_value=>'Tiny'
,p_return_value=>'xs'
,p_apexlang_name=>'xs'
,p_help_text=>'Scales the card to 75%; with Columns set to Auto more cards fit per row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5635229273666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>10
,p_static_id=>'STYLE'
,p_prompt=>'Design'
,p_apexlang_name=>'style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'inset'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(5633589020666057)
,p_help_text=>'Card design. Page Designer shows only the attributes the chosen design uses.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5647420932759000)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>100
,p_display_value=>'Neubrutalism'
,p_return_value=>'brutal'
,p_apexlang_name=>'brutal'
,p_help_text=>'Thick black borders, an offset shadow and a bold accent background.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5647338284759000)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>90
,p_display_value=>'Feature'
,p_return_value=>'feature'
,p_apexlang_name=>'feature'
,p_help_text=>'Clean bordered card with an icon, text and a link-style action.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5678355991133525)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>130
,p_display_value=>'Flip - Photo'
,p_return_value=>'flip'
,p_apexlang_name=>'flip'
,p_help_text=>'Photo on the front; rating, description and actions on the back.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5678422141133526)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>140
,p_display_value=>'Flip - Icon'
,p_return_value=>'flipIcon'
,p_apexlang_name=>'flipIcon'
,p_help_text=>'Accent icon on the front that flips top to bottom to a white back.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5678512057133526)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>150
,p_display_value=>'Flip - Number'
,p_return_value=>'flipNumber'
,p_apexlang_name=>'flipNumber'
,p_help_text=>'Big number on the front; description, trend and actions on a dark back.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5646883979758999)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>40
,p_display_value=>'Glass'
,p_return_value=>'glass'
,p_apexlang_name=>'glass'
,p_help_text=>'Frosted panel over a soft color mesh.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5646911971758999)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>50
,p_display_value=>'Glow Border'
,p_return_value=>'glow'
,p_apexlang_name=>'glow'
,p_help_text=>'Animated gradient ring with a soft accent halo.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5635327805666057)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>10
,p_display_value=>'Travel - Inset'
,p_return_value=>'inset'
,p_apexlang_name=>'inset'
,p_help_text=>'Photo in an inset frame with a price and code row, a call to action and a favorite button.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5667962225850875)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>120
,p_display_value=>'Long Shadow'
,p_return_value=>'jersey'
,p_apexlang_name=>'jersey'
,p_help_text=>'Flat accent card with a huge number or logo casting a long diagonal shadow.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5635481824666057)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>20
,p_display_value=>'Travel - Overlay'
,p_return_value=>'overlay'
,p_apexlang_name=>'overlay'
,p_help_text=>'Full-bleed photo with the text on a blurred band and a favorite button in the corner.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5647187904759000)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>70
,p_display_value=>'Product'
,p_return_value=>'product'
,p_apexlang_name=>'product'
,p_help_text=>'Shop card with photo, badge, rating, price and cart and favorite actions.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5647293437759000)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>80
,p_display_value=>'Profile'
,p_return_value=>'profile'
,p_apexlang_name=>'profile'
,p_help_text=>'Accent cover band with a round avatar (photo or icon), bio and actions.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5647064506758999)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>60
,p_display_value=>'Spotlight'
,p_return_value=>'spotlight'
,p_apexlang_name=>'spotlight'
,p_help_text=>'Dark card with a light that follows the pointer.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5646757870758999)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>30
,p_display_value=>'Stat'
,p_return_value=>'stat'
,p_apexlang_name=>'stat'
,p_help_text=>'Dashboard metric with a floating accent icon tile, a big value and a trend footer.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(5647516996759000)
,p_plugin_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_display_sequence=>110
,p_display_value=>'Testimonial'
,p_return_value=>'testimonial'
,p_apexlang_name=>'testimonial'
,p_help_text=>'Star rating, quote and the author with an avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5635583256666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>60
,p_static_id=>'SUBTITLE'
,p_prompt=>'Subtitle'
,p_apexlang_name=>'subtitle'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'stat'
,p_attribute_group_id=>wwv_flow_imp.id(5633615142666057)
,p_help_text=>'Muted line: fare class, product category, job title or the author''s role.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5635649408666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>50
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_apexlang_name=>'title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_sample_data_value=>'&NAME.'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(5633615142666057)
,p_examples=>'New York'
,p_help_text=>'Main heading: destination, metric label, product, person or quote author depending on the design.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5648148499759003)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>130
,p_static_id=>'TREND'
,p_prompt=>'Trend'
,p_apexlang_name=>'trend'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'stat,flipNumber'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_help_text=>'Change shown in bold at the start of the footer, for example +55%.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5648228759759003)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>140
,p_static_id=>'TREND_DIRECTION'
,p_prompt=>'Trend Direction'
,p_apexlang_name=>'trendDirection'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'up'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'stat,flipNumber'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_help_text=>'up (green), down (red) or neutral. Use a column substitution to set it per card.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(5648089718759003)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>120
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_apexlang_name=>'value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(5635229273666057)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'stat,product,jersey,flipNumber'
,p_attribute_group_id=>wwv_flow_imp.id(5633779423666057)
,p_examples=>'2,300'
,p_help_text=>'Big number: the metric of a Stat card, the price of a Product card or the center number of a Long Shadow card.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(5635732243666057)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_name=>'Button'
,p_apexlang_name=>'button'
,p_static_id=>'BUTTON'
,p_type=>'BUTTON'
,p_template=>'<a href="#LINK_URL#" #LINK_ATTR# class="ak-Card-btn{if IS_HOT/} ak-Card-btn--hot{endif/}{if IS_ICON_ONLY/} ak-Card-btn--icon{endif/} #CSS_CLASSES#"{if IS_ICON_ONLY/} title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"{endif/}{if IS_DISABLED/} aria-disable'
||'d="true" tabindex="-1"{endif/}>{if ?ICON_CLASSES/}<span class="ak-Card-btnIcon #ICON_CLASSES#" aria-hidden="true"></span>{endif/}{if IS_ICON_ONLY/}{else/}<span class="ak-Card-btnLabel">#LABEL#</span>{endif/}</a>'
,p_help_text=>'Button styled by the card design: pill call to action, round icon button when Display Type is Icon, or a text link in the Feature design.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(5635883741666058)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_name=>'Menu'
,p_apexlang_name=>'menu'
,p_static_id=>'MENU'
,p_type=>'MENU'
,p_template=>'<button type="button" data-menu="#MENU_ID#" class="ak-Card-btn{if IS_HOT/} ak-Card-btn--hot{endif/}{if IS_ICON_ONLY/} ak-Card-btn--icon{endif/} #CSS_CLASSES#"{if IS_ICON_ONLY/} title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"{endif/}{if IS_DISABLED/} d'
||'isabled{endif/}>{if ?ICON_CLASSES/}<span class="ak-Card-btnIcon #ICON_CLASSES#" aria-hidden="true"></span>{endif/}{if IS_ICON_ONLY/}{else/}<span class="ak-Card-btnLabel">#LABEL#</span><span class="ak-Card-btnCaret fa fa-chevron-down" aria-hidden="tru'
||'e"></span>{endif/}</button>#MENU#'
,p_help_text=>'Button that opens a menu of further actions.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(5635986379666058)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_name=>'Full Card Link'
,p_static_id=>'FULL_CARD_LINK'
,p_apexlang_name=>'fullCardLink'
,p_display_sequence=>10
,p_type=>'LINK'
,p_help_text=>'Makes the whole card a link. Buttons in the card stay clickable on their own.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(5636035708666058)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_apexlang_name=>'primaryActions'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(5635732243666057)
,p_help_text=>'Main call to action, shown as a full-width pill button, for example Search flight.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(5636150416666058)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_name=>'Secondary Actions'
,p_static_id=>'SECONDARY_ACTIONS'
,p_apexlang_name=>'secondaryActions'
,p_display_sequence=>30
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(5635732243666057)
,p_help_text=>'Extra action, usually an icon-only button such as a favorite heart. Inset style shows it beside the primary action, Overlay style in the top corner of the photo.'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A0A202A204D6F6465726E2043617264732074656D706C61746520636F6D706F6E656E740A202A205265706F72743A2020756C2E616B2D436172647320282D2D636F6C7332202E2E2E202D2D636F6C733529203E206C692E616B2D43617264732D6974';
wwv_flow_imp.g_varchar2_table(2) := '656D0A202A20436172643A2020202061727469636C652E616B2D436172642E616B2D436172642D2D3C64657369676E3E205B2E616B2D436172642D2D73697A652D3C73697A653E5D205B2E616B2D436172642D2D616363656E742D3C6E616D653E5D0A20';
wwv_flow_imp.g_varchar2_table(3) := '2A2020202020202020202064657369676E733A20696E7365742C206F7665726C61792C20737461742C20676C6173732C20676C6F772C2073706F746C696768742C2070726F647563742C2070726F66696C652C20666561747572652C2062727574616C2C';
wwv_flow_imp.g_varchar2_table(4) := '2074657374696D6F6E69616C2C0A202A202020202020202020202020202020202020206A65727365792C20666C69702C20666C697049636F6E2C20666C69704E756D6265720A202A2020202020202020202073697A65733A20202078732C20736D2C206D';
wwv_flow_imp.g_varchar2_table(5) := '64202864656661756C74292C206C672C20786C0A202A20202020202020202020616363656E74733A206461726B2C20696E666F2C20737563636573732C207072696D6172792C207761726E696E672C2064616E6765722C2076696F6C65742C20676F6C64';
wwv_flow_imp.g_varchar2_table(6) := '0A202A2050617274733A202020616B2D436172642D6D656469612C202D62616467652C202D69636F6E2C202D7469746C652C202D7375627469746C652C202D76616C75652C202D726174696E672C202D6465736372697074696F6E2C202D6D6574612C20';
wwv_flow_imp.g_varchar2_table(7) := '2D666F6F7465722C202D616374696F6E730A202A20416374696F6E733A202E616B2D436172642D62746E2C202D2D686F742C202D2D69636F6E2C202E69732D6163746976652028616B43617264732E746F67676C65290A202A2054686520636172642069';
wwv_flow_imp.g_varchar2_table(8) := '73206F6E6520666C6174206C697374206F662070617274733B20656163682064657369676E20617272616E676573207468656D207769746820666C6578206F72646572206F7220677269642061726561732E0A202A2F0A0A2F2A202D2D2D2D2D2D2D2D2D';
wwv_flow_imp.g_varchar2_table(9) := '2D205265706F72742067726964202D2D2D2D2D2D2D2D2D2D202A2F0A2E616B2D4361726473207B0A2020646973706C61793A20677269643B0A2020677269642D74656D706C6174652D636F6C756D6E733A20726570656174286175746F2D66696C6C2C20';
wwv_flow_imp.g_varchar2_table(10) := '6D696E6D6178286D696E28766172282D2D616B2D6D696E2C2031342E3572656D292C2031303025292C2031667229293B0A20206761703A20312E323572656D3B0A20206D617267696E3A20303B0A202070616464696E673A20302030203172656D3B0A20';
wwv_flow_imp.g_varchar2_table(11) := '206C6973742D7374796C653A206E6F6E653B0A7D0A0A2E616B2D43617264732D2D636F6C7332207B20677269642D74656D706C6174652D636F6C756D6E733A2072657065617428322C206D696E6D617828302C2031667229293B207D0A2E616B2D436172';
wwv_flow_imp.g_varchar2_table(12) := '64732D2D636F6C7333207B20677269642D74656D706C6174652D636F6C756D6E733A2072657065617428332C206D696E6D617828302C2031667229293B207D0A2E616B2D43617264732D2D636F6C7334207B20677269642D74656D706C6174652D636F6C';
wwv_flow_imp.g_varchar2_table(13) := '756D6E733A2072657065617428342C206D696E6D617828302C2031667229293B207D0A2E616B2D43617264732D2D636F6C7335207B20677269642D74656D706C6174652D636F6C756D6E733A2072657065617428352C206D696E6D617828302C20316672';
wwv_flow_imp.g_varchar2_table(14) := '29293B207D0A0A406D6564696120286D61782D77696474683A2031313939707829207B0A20202E616B2D43617264732D2D636F6C73342C0A20202E616B2D43617264732D2D636F6C7335207B20677269642D74656D706C6174652D636F6C756D6E733A20';
wwv_flow_imp.g_varchar2_table(15) := '72657065617428332C206D696E6D617828302C2031667229293B207D0A7D0A0A406D6564696120286D61782D77696474683A20393931707829207B0A20202E616B2D43617264732D2D636F6C73332C0A20202E616B2D43617264732D2D636F6C73342C0A';
wwv_flow_imp.g_varchar2_table(16) := '20202E616B2D43617264732D2D636F6C7335207B20677269642D74656D706C6174652D636F6C756D6E733A2072657065617428322C206D696E6D617828302C2031667229293B207D0A7D0A0A406D6564696120286D61782D77696474683A203633397078';
wwv_flow_imp.g_varchar2_table(17) := '29207B0A20202E616B2D43617264735B636C6173732A3D22616B2D43617264732D2D636F6C73225D207B20677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828302C20316672293B207D0A7D0A0A2E616B2D43617264732D697465';
wwv_flow_imp.g_varchar2_table(18) := '6D207B0A2020646973706C61793A20666C65783B0A20206D696E2D77696474683A20303B0A20206D617267696E3A20303B0A7D0A0A2F2A202D2D2D2D2D2D2D2D2D2D2053697A6573202D2D2D2D2D2D2D2D2D2D0A2020207A6F6F6D207363616C65732065';
wwv_flow_imp.g_varchar2_table(19) := '76657279206C656E67746820696E736964652074686520636172642028746578742C2073706163696E672C2069636F6E732C206D696E2D686569676874732C20736861646F777329207768696C65207468650A20202063617264207374696C6C2066696C';
wwv_flow_imp.g_varchar2_table(20) := '6C732069747320677269642063656C6C2E205769746820436F6C756D6E73203D204175746F20746865206D696E696D756D20636F6C756D6E20776964746820666F6C6C6F7773207468652073697A652E0A2020204D656469756D2028616E642061206361';
wwv_flow_imp.g_varchar2_table(21) := '726420776974686F757420612073697A652920697320383520253B204C61726765206973207468652064657369676E7327206E61747572616C2073697A652E202A2F0A2E616B2D43617264207B207A6F6F6D3A202E38353B207D0A2E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(22) := '2D73697A652D7873207B207A6F6F6D3A202E363B207D0A2E616B2D436172642D2D73697A652D736D207B207A6F6F6D3A202E37323B207D0A2E616B2D436172642D2D73697A652D6C67207B207A6F6F6D3A20313B207D0A2E616B2D436172642D2D73697A';
wwv_flow_imp.g_varchar2_table(23) := '652D786C207B207A6F6F6D3A20312E31353B207D0A0A2E616B2D43617264733A686173283E202E616B2D43617264732D6974656D203E202E616B2D436172642D2D73697A652D787329207B202D2D616B2D6D696E3A20313072656D3B206761703A202E38';
wwv_flow_imp.g_varchar2_table(24) := '373572656D3B207D0A2E616B2D43617264733A686173283E202E616B2D43617264732D6974656D203E202E616B2D436172642D2D73697A652D736D29207B202D2D616B2D6D696E3A2031322E323572656D3B206761703A203172656D3B207D0A2E616B2D';
wwv_flow_imp.g_varchar2_table(25) := '43617264733A686173283E202E616B2D43617264732D6974656D203E202E616B2D436172642D2D73697A652D6C6729207B202D2D616B2D6D696E3A20313772656D3B206761703A20312E3572656D3B207D0A2E616B2D43617264733A686173283E202E61';
wwv_flow_imp.g_varchar2_table(26) := '6B2D43617264732D6974656D203E202E616B2D436172642D2D73697A652D786C29207B202D2D616B2D6D696E3A20323272656D3B206761703A20312E373572656D3B207D0A0A2F2A202D2D2D2D2D2D2D2D2D2D20546F6B656E7320616E6420616363656E';
wwv_flow_imp.g_varchar2_table(27) := '7473202D2D2D2D2D2D2D2D2D2D202A2F0A2E616B2D43617264207B0A20202D2D616B2D62673A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C2023666666293B0A20202D2D616B2D746578743A2023313831383162';
wwv_flow_imp.g_varchar2_table(28) := '3B0A20202D2D616B2D6D757465643A20233731373137613B0A20202D2D616B2D626F726465723A207267626128302C20302C20302C202E3038293B0A20202F2A206C61796572656420736861646F77733A20636F6E74616374202B20616D6269656E7420';
wwv_flow_imp.g_varchar2_table(29) := '2B206B6579206C696768743B2064657369676E73206F766572726964652074686573652074776F20746F6B656E73202A2F0A20202D2D616B2D736861646F773A0A2020202030203170782032707820726762612831362C2032342C2034302C202E303529';
wwv_flow_imp.g_varchar2_table(30) := '2C0A20202020302034707820387078202D32707820726762612831362C2032342C2034302C202E3036292C0A202020203020313270782032347078202D38707820726762612831362C2032342C2034302C202E3130293B0A20202D2D616B2D736861646F';
wwv_flow_imp.g_varchar2_table(31) := '772D686F7665723A0A2020202030203270782034707820726762612831362C2032342C2034302C202E3035292C0A202020203020313270782032307078202D36707820726762612831362C2032342C2034302C202E3130292C0A20202020302032387078';
wwv_flow_imp.g_varchar2_table(32) := '2034387078202D3132707820726762612831362C2032342C2034302C202E3230293B0A20202D2D616B2D6C6966743A202D3470783B0A20202D2D616B2D656173653A2063756269632D62657A696572282E322C202E382C202E322C2031293B0A20202D2D';
wwv_flow_imp.g_varchar2_table(33) := '616B2D706C616365686F6C6465723A207267626128302C20302C20302C202E3036293B0A20202D2D616B2D6163746976653A20236535343834643B0A20202D2D616B2D75703A20233136613334613B0A20202D2D616B2D646F776E3A2023646332363236';
wwv_flow_imp.g_varchar2_table(34) := '3B0A0A20202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20233432343234612030252C20233139313931392031303025293B0A20202D2D616B2D616363656E742D736F6C69643A20233237323732613B0A20';
wwv_flow_imp.g_varchar2_table(35) := '202D2D616B2D616363656E742D736F66743A20726762612833392C2033392C2034322C202E3038293B0A20202D2D616B2D616363656E742D736861646F773A20726762612836342C2036342C2036342C202E34293B0A7D0A0A2E616B2D436172642D2D61';
wwv_flow_imp.g_varchar2_table(36) := '6363656E742D6461726B202020207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20233432343234612030252C20233139313931392031303025293B202D2D616B2D616363656E742D736F6C69643A2023';
wwv_flow_imp.g_varchar2_table(37) := '3237323732613B202D2D616B2D616363656E742D736F66743A20726762612833392C2033392C2034322C202E3038293B2020202D2D616B2D616363656E742D736861646F773A20726762612836342C2036342C2036342C202E34293B207D0A2E616B2D43';
wwv_flow_imp.g_varchar2_table(38) := '6172642D2D616363656E742D696E666F202020207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20233439613366312030252C20233161373365382031303025293B202D2D616B2D616363656E742D736F';
wwv_flow_imp.g_varchar2_table(39) := '6C69643A20233161373365383B202D2D616B2D616363656E742D736F66743A20726762612832362C203131352C203233322C202E31293B20202D2D616B2D616363656E742D736861646F773A20726762612832362C203131352C203233322C202E34293B';
wwv_flow_imp.g_varchar2_table(40) := '207D0A2E616B2D436172642D2D616363656E742D73756363657373207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20233636626236612030252C20233433613034372031303025293B202D2D616B2D61';
wwv_flow_imp.g_varchar2_table(41) := '6363656E742D736F6C69643A20233265376433323B202D2D616B2D616363656E742D736F66743A20726762612836372C203136302C2037312C202E3132293B20202D2D616B2D616363656E742D736861646F773A20726762612837362C203137352C2038';
wwv_flow_imp.g_varchar2_table(42) := '302C202E34293B207D0A2E616B2D436172642D2D616363656E742D7072696D617279207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20236563343037612030252C20236438316236302031303025293B';
wwv_flow_imp.g_varchar2_table(43) := '202D2D616B2D616363656E742D736F6C69643A20236438316236303B202D2D616B2D616363656E742D736F66743A2072676261283231362C2032372C2039362C202E31293B2020202D2D616B2D616363656E742D736861646F773A207267626128323333';
wwv_flow_imp.g_varchar2_table(44) := '2C2033302C2039392C202E34293B207D0A2E616B2D436172642D2D616363656E742D7761726E696E67207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20236666613732362030252C2023666238633030';
wwv_flow_imp.g_varchar2_table(45) := '2031303025293B202D2D616B2D616363656E742D736F6C69643A20236332343130633B202D2D616B2D616363656E742D736F66743A2072676261283235312C203134302C20302C202E3132293B20202D2D616B2D616363656E742D736861646F773A2072';
wwv_flow_imp.g_varchar2_table(46) := '676261283235352C203135322C20302C202E34293B207D0A2E616B2D436172642D2D616363656E742D64616E67657220207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C20236566353335302030252C20';
wwv_flow_imp.g_varchar2_table(47) := '236535333933352031303025293B202D2D616B2D616363656E742D736F6C69643A20236463323632363B202D2D616B2D616363656E742D736F66743A2072676261283232392C2035372C2035332C202E31293B2020202D2D616B2D616363656E742D7368';
wwv_flow_imp.g_varchar2_table(48) := '61646F773A2072676261283234342C2036372C2035342C202E34293B207D0A2E616B2D436172642D2D616363656E742D76696F6C657420207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E74283139356465672C202361373862';
wwv_flow_imp.g_varchar2_table(49) := '66612030252C20233664323864392031303025293B202D2D616B2D616363656E742D736F6C69643A20233763336165643B202D2D616B2D616363656E742D736F66743A2072676261283132342C2035382C203233372C202E31293B20202D2D616B2D6163';
wwv_flow_imp.g_varchar2_table(50) := '63656E742D736861646F773A2072676261283132342C2035382C203233372C202E34293B207D0A0A2E616B2D436172642D2D616363656E742D676F6C64202020207B202D2D616B2D616363656E743A206C696E6561722D6772616469656E742831393564';
wwv_flow_imp.g_varchar2_table(51) := '65672C20236532636634632030252C20236239613332612031303025293B202D2D616B2D616363656E742D736F6C69643A20233861376131303B202D2D616B2D616363656E742D736F66743A2072676261283139322C203137382C2035342C202E313629';
wwv_flow_imp.g_varchar2_table(52) := '3B202D2D616B2D616363656E742D736861646F773A2072676261283139322C203137382C2035342C202E3435293B207D0A0A2F2A202D2D2D2D2D2D2D2D2D2D2042617365206361726420616E64207061727473202D2D2D2D2D2D2D2D2D2D202A2F0A2E61';
wwv_flow_imp.g_varchar2_table(53) := '6B2D43617264207B0A2020706F736974696F6E3A2072656C61746976653B0A2020646973706C61793A20666C65783B0A2020666C65783A20312031206175746F3B0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0A20206761703A202E';
wwv_flow_imp.g_varchar2_table(54) := '373572656D3B0A20206D696E2D77696474683A20303B0A202070616464696E673A20312E3572656D3B0A2020626F726465723A2031707820736F6C696420766172282D2D616B2D626F72646572293B0A2020626F726465722D7261646975733A20317265';
wwv_flow_imp.g_varchar2_table(55) := '6D3B0A20206261636B67726F756E643A20766172282D2D616B2D6267293B0A2020626F782D736861646F773A20766172282D2D616B2D736861646F77293B0A2020636F6C6F723A20766172282D2D616B2D74657874293B0A202069736F6C6174696F6E3A';
wwv_flow_imp.g_varchar2_table(56) := '2069736F6C6174653B0A20207472616E736974696F6E3A207472616E73666F726D202E337320766172282D2D616B2D65617365292C20626F782D736861646F77202E337320766172282D2D616B2D65617365292C20626F726465722D636F6C6F72202E33';
wwv_flow_imp.g_varchar2_table(57) := '7320656173653B0A7D0A0A2E616B2D436172643A686F766572207B0A20207472616E73666F726D3A207472616E736C6174655928766172282D2D616B2D6C69667429293B0A2020626F782D736861646F773A20766172282D2D616B2D736861646F772D68';
wwv_flow_imp.g_varchar2_table(58) := '6F766572293B0A7D0A0A2E616B2D436172643A686173282E616B2D436172642D66756C6C4C696E6B29207B20637572736F723A20706F696E7465723B207D0A0A2E616B2D436172642E69732D706C616365686F6C6465722C0A2E616B2D436172642E6973';
wwv_flow_imp.g_varchar2_table(59) := '2D706C616365686F6C6465723A686F766572207B0A20207472616E73666F726D3A206E6F6E653B0A2020626F782D736861646F773A20766172282D2D616B2D736861646F77293B0A7D0A0A2E616B2D436172642D66756C6C4C696E6B207B0A2020706F73';
wwv_flow_imp.g_varchar2_table(60) := '6974696F6E3A206162736F6C7574653B0A2020696E7365743A20303B0A20207A2D696E6465783A20333B0A2020626F726465722D7261646975733A20696E68657269743B0A7D0A0A2E616B2D436172642D66756C6C4C696E6B3A666F6375732D76697369';
wwv_flow_imp.g_varchar2_table(61) := '626C65207B0A20206F75746C696E653A2033707820736F6C696420726762612832342C2032342C2032372C202E3335293B0A20206F75746C696E652D6F66667365743A202D3370783B0A7D0A0A2E616B2D436172642D6D65646961207B0A2020706F7369';
wwv_flow_imp.g_varchar2_table(62) := '74696F6E3A2072656C61746976653B0A20206F766572666C6F773A2068696464656E3B0A20206261636B67726F756E643A20766172282D2D616B2D706C616365686F6C646572293B0A7D0A0A2E616B2D436172642D696D616765207B0A2020646973706C';
wwv_flow_imp.g_varchar2_table(63) := '61793A20626C6F636B3B0A202077696474683A20313030253B0A20206865696768743A20313030253B0A20206F626A6563742D6669743A20636F7665723B0A7D0A0A2E616B2D436172642D6261646765207B0A2020646973706C61793A20696E6C696E65';
wwv_flow_imp.g_varchar2_table(64) := '2D666C65783B0A2020616C69676E2D6974656D733A2063656E7465723B0A2020616C69676E2D73656C663A20666C65782D73746172743B0A202070616464696E673A202E323572656D202E36323572656D3B0A2020626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(65) := '39393970783B0A20206261636B67726F756E643A20766172282D2D616B2D616363656E742D736F6674293B0A2020636F6C6F723A20766172282D2D616B2D616363656E742D736F6C6964293B0A2020666F6E742D73697A653A202E373572656D3B0A2020';
wwv_flow_imp.g_varchar2_table(66) := '666F6E742D7765696768743A203630303B0A20206C696E652D6865696768743A20312E323B0A7D0A0A2E616B2D436172642D69636F6E207B0A2020646973706C61793A20677269643B0A2020666C65783A20302030206175746F3B0A2020706C6163652D';
wwv_flow_imp.g_varchar2_table(67) := '6974656D733A2063656E7465723B0A202077696474683A203372656D3B0A20206865696768743A203372656D3B0A2020626F726465722D7261646975733A202E373572656D3B0A20206261636B67726F756E643A20766172282D2D616B2D616363656E74';
wwv_flow_imp.g_varchar2_table(68) := '2D736F6674293B0A2020636F6C6F723A20766172282D2D616B2D616363656E742D736F6C6964293B0A2020666F6E742D73697A653A20312E323572656D3B0A20207472616E736974696F6E3A207472616E73666F726D202E337320766172282D2D616B2D';
wwv_flow_imp.g_varchar2_table(69) := '65617365292C20626F782D736861646F77202E337320766172282D2D616B2D65617365293B0A7D0A0A2F2A20466F6E742041504558207365747320612066697865642031367078206F6E202E66613B206C65742069636F6E7320666F6C6C6F7720746865';
wwv_flow_imp.g_varchar2_table(70) := '697220636F6E7461696E657227732073697A65202A2F0A2E616B2D436172642D69636F6E203E202E66612C0A2E616B2D436172642D62746E49636F6E2E66612C0A2E616B2D436172642D6D65746149636F6E2E6661207B20666F6E742D73697A653A2069';
wwv_flow_imp.g_varchar2_table(71) := '6E68657269743B206C696E652D6865696768743A20313B207D0A0A2E616B2D436172642D7469746C65207B0A20206D617267696E3A20303B0A2020666F6E742D73697A653A20312E31323572656D3B0A2020666F6E742D7765696768743A203730303B0A';
wwv_flow_imp.g_varchar2_table(72) := '20206C65747465722D73706163696E673A202D2E3031656D3B0A20206C696E652D6865696768743A20312E333B0A2020636F6C6F723A20696E68657269743B0A7D0A0A2E616B2D436172642D7375627469746C65207B0A20206D617267696E3A20303B0A';
wwv_flow_imp.g_varchar2_table(73) := '2020666F6E742D73697A653A202E38373572656D3B0A20206C696E652D6865696768743A20312E34353B0A2020636F6C6F723A20766172282D2D616B2D6D75746564293B0A7D0A0A2E616B2D436172642D76616C7565207B0A2020666F6E742D73697A65';
wwv_flow_imp.g_varchar2_table(74) := '3A20312E3572656D3B0A2020666F6E742D7765696768743A203730303B0A20206C65747465722D73706163696E673A202D2E3032656D3B0A20206C696E652D6865696768743A20312E323B0A7D0A0A2E616B2D436172642D6465736372697074696F6E20';
wwv_flow_imp.g_varchar2_table(75) := '7B0A20206D617267696E3A20303B0A2020666F6E742D73697A653A202E3933373572656D3B0A20206C696E652D6865696768743A20312E363B0A2020636F6C6F723A20766172282D2D616B2D6D75746564293B0A7D0A0A2E616B2D436172642D72617469';
wwv_flow_imp.g_varchar2_table(76) := '6E67207B0A2020646973706C61793A20696E6C696E652D666C65783B0A2020616C69676E2D6974656D733A2063656E7465723B0A20206761703A202E3572656D3B0A2020666F6E742D73697A653A202E38373572656D3B0A7D0A0A2E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(77) := '7374617273207B0A20202D2D616B2D726174696E673A20303B0A2020666F6E742D73697A653A203172656D3B0A20206C696E652D6865696768743A20313B0A20206C65747465722D73706163696E673A202E31656D3B0A7D0A0A2E616B2D436172642D73';
wwv_flow_imp.g_varchar2_table(78) := '746172733A3A6265666F7265207B0A2020636F6E74656E743A20225C323630355C323630355C323630355C323630355C32363035223B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742839306465672C202366353965306220';
wwv_flow_imp.g_varchar2_table(79) := '63616C6328766172282D2D616B2D726174696E6729202A20323025292C20236434643464382063616C6328766172282D2D616B2D726174696E6729202A2032302529293B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2074657874';
wwv_flow_imp.g_varchar2_table(80) := '3B0A20206261636B67726F756E642D636C69703A20746578743B0A2020636F6C6F723A207472616E73706172656E743B0A7D0A0A2E616B2D436172642D726174696E6756616C7565207B0A2020666F6E742D7765696768743A203630303B0A2020636F6C';
wwv_flow_imp.g_varchar2_table(81) := '6F723A20766172282D2D616B2D6D75746564293B0A7D0A0A2E616B2D436172642D6D657461207B0A2020646973706C61793A20666C65783B0A2020666C65782D777261703A20777261703B0A2020616C69676E2D6974656D733A2063656E7465723B0A20';
wwv_flow_imp.g_varchar2_table(82) := '206761703A202E3572656D20312E323572656D3B0A2020666F6E742D73697A653A203172656D3B0A20206C696E652D6865696768743A20312E343B0A7D0A0A2E616B2D436172642D6D6574614974656D207B0A2020646973706C61793A20696E6C696E65';
wwv_flow_imp.g_varchar2_table(83) := '2D666C65783B0A2020616C69676E2D6974656D733A2063656E7465723B0A20206761703A202E3572656D3B0A7D0A0A2E616B2D436172642D6D65746149636F6E207B20666F6E742D73697A653A203172656D3B206F7061636974793A202E35353B207D0A';
wwv_flow_imp.g_varchar2_table(84) := '2E616B2D436172642D6D6574614974656D207374726F6E67207B20666F6E742D7765696768743A203730303B207D0A0A2E616B2D436172642D666F6F746572207B0A2020666F6E742D73697A653A202E38373572656D3B0A20206C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(85) := '743A20312E353B0A2020636F6C6F723A20766172282D2D616B2D6D75746564293B0A7D0A0A2E616B2D436172642D7472656E64207B20666F6E742D7765696768743A203730303B207D0A2E616B2D436172642D7472656E642D2D7570207B20636F6C6F72';
wwv_flow_imp.g_varchar2_table(86) := '3A20766172282D2D616B2D7570293B207D0A2E616B2D436172642D7472656E642D2D646F776E207B20636F6C6F723A20766172282D2D616B2D646F776E293B207D0A2E616B2D436172642D7472656E642D2D6E65757472616C207B20636F6C6F723A2069';
wwv_flow_imp.g_varchar2_table(87) := '6E68657269743B207D0A0A2F2A202D2D2D2D2D2D2D2D2D2D20416374696F6E73202D2D2D2D2D2D2D2D2D2D202A2F0A2E616B2D436172642D616374696F6E73207B0A2020706F736974696F6E3A2072656C61746976653B0A20207A2D696E6465783A2034';
wwv_flow_imp.g_varchar2_table(88) := '3B0A2020646973706C61793A20666C65783B0A2020616C69676E2D6974656D733A2063656E7465723B0A20206761703A202E373572656D3B0A20206D617267696E2D626C6F636B2D73746172743A206175746F3B0A202070616464696E672D626C6F636B';
wwv_flow_imp.g_varchar2_table(89) := '2D73746172743A202E3572656D3B0A7D0A0A2E616B2D436172642D7072696D617279207B0A2020646973706C61793A20666C65783B0A2020666C65783A20312031206175746F3B0A20206761703A202E3572656D3B0A20206D696E2D77696474683A2030';
wwv_flow_imp.g_varchar2_table(90) := '3B0A7D0A0A2E616B2D436172642D7365636F6E64617279207B0A2020646973706C61793A20666C65783B0A20206761703A202E3572656D3B0A7D0A0A2E616B2D436172642D62746E207B0A2020646973706C61793A20696E6C696E652D666C65783B0A20';
wwv_flow_imp.g_varchar2_table(91) := '20616C69676E2D6974656D733A2063656E7465723B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A20206761703A202E3572656D3B0A20206D696E2D6865696768743A20322E373572656D3B0A202070616464696E673A20302031';
wwv_flow_imp.g_varchar2_table(92) := '2E323572656D3B0A2020626F726465723A2031707820736F6C696420766172282D2D616B2D626F72646572293B0A2020626F726465722D7261646975733A2039393970783B0A20206261636B67726F756E643A20236666663B0A2020636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(93) := '6172282D2D616B2D74657874293B0A2020666F6E743A20696E68657269743B0A2020666F6E742D73697A653A202E3933373572656D3B0A2020666F6E742D7765696768743A203630303B0A20206C696E652D6865696768743A20313B0A2020746578742D';
wwv_flow_imp.g_varchar2_table(94) := '6465636F726174696F6E3A206E6F6E653B0A202077686974652D73706163653A206E6F777261703B0A2020637572736F723A20706F696E7465723B0A20207472616E736974696F6E3A207472616E73666F726D202E31357320656173652C206261636B67';
wwv_flow_imp.g_varchar2_table(95) := '726F756E642D636F6C6F72202E31357320656173652C20636F6C6F72202E31357320656173652C20626F782D736861646F77202E31357320656173652C20626F726465722D636F6C6F72202E31357320656173653B0A7D0A0A2E616B2D436172642D6274';
wwv_flow_imp.g_varchar2_table(96) := '6E3A686F766572207B20746578742D6465636F726174696F6E3A206E6F6E653B206261636B67726F756E643A20236634663466353B207D0A2E616B2D436172642D62746E3A616374697665207B207472616E73666F726D3A207363616C65282E3938293B';
wwv_flow_imp.g_varchar2_table(97) := '207D0A0A2E616B2D436172642D62746E3A666F6375732D76697369626C65207B0A20206F75746C696E653A2032707820736F6C69642063757272656E74436F6C6F723B0A20206F75746C696E652D6F66667365743A203270783B0A7D0A0A2E616B2D4361';
wwv_flow_imp.g_varchar2_table(98) := '72642D62746E2D2D686F74207B0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0A20206261636B67726F756E643A20233138313831623B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D62746E2D2D686F';
wwv_flow_imp.g_varchar2_table(99) := '743A686F766572207B206261636B67726F756E643A20233030303B20636F6C6F723A20236666663B207D0A0A2E616B2D436172642D62746E2D2D69636F6E207B0A2020666C65783A20302030206175746F3B0A202077696474683A20322E373572656D3B';
wwv_flow_imp.g_varchar2_table(100) := '0A202070616464696E673A20303B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D73697A653A20312E31323572656D3B0A7D0A0A2E616B2D436172642D62746E2D2D69636F6E3A616374697665207B207472616E73666F726D';
wwv_flow_imp.g_varchar2_table(101) := '3A207363616C65282E3932293B207D0A0A2E616B2D436172642D62746E5B617269612D64697361626C65643D2274727565225D2C0A2E616B2D436172642D62746E3A64697361626C6564207B0A20206F7061636974793A202E353B0A2020706F696E7465';
wwv_flow_imp.g_varchar2_table(102) := '722D6576656E74733A206E6F6E653B0A7D0A0A2E616B2D436172642D7072696D617279202E616B2D436172642D62746E207B20666C65783A20312031206175746F3B207D0A2E616B2D436172642D62746E4361726574207B20666F6E742D73697A653A20';
wwv_flow_imp.g_varchar2_table(103) := '2E373572656D3B206F7061636974793A202E373B207D0A2E616B2D436172642D62746E2E69732D616374697665207B20636F6C6F723A20766172282D2D616B2D616374697665293B207D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(104) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A20202054726176656C202D20496E736574202F204F7665726C61790A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(105) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D696E7365742C0A2E616B2D436172642D2D6F7665726C6179207B0A';
wwv_flow_imp.g_varchar2_table(106) := '20202D2D616B2D6672616D653A202E36323572656D3B0A20202D2D616B2D6D656469612D7261646975733A20312E3572656D3B0A0A20202D2D616B2D736861646F773A0A2020202030203170782032707820726762612831362C2032342C2034302C202E';
wwv_flow_imp.g_varchar2_table(107) := '3034292C0A2020202030203870782031367078202D36707820726762612831362C2032342C2034302C202E3038292C0A202020203020323470782034307078202D3136707820726762612831362C2032342C2034302C202E3136293B0A20202D2D616B2D';
wwv_flow_imp.g_varchar2_table(108) := '736861646F772D686F7665723A0A2020202030203270782034707820726762612831362C2032342C2034302C202E3035292C0A202020203020313670782032387078202D38707820726762612831362C2032342C2034302C202E3134292C0A2020202030';
wwv_flow_imp.g_varchar2_table(109) := '20333670782036307078202D3230707820726762612831362C2032342C2034302C202E3238293B0A20202D2D616B2D6C6966743A202D3670783B0A0A20206761703A20303B0A202070616464696E673A20766172282D2D616B2D6672616D65293B0A2020';
wwv_flow_imp.g_varchar2_table(110) := '626F726465723A20303B0A2020626F726465722D7261646975733A203272656D3B0A20206F766572666C6F773A2068696464656E3B0A7D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D696D6167652C0A2E616B2D436172642D2D6F';
wwv_flow_imp.g_varchar2_table(111) := '7665726C6179202E616B2D436172642D696D616765207B207472616E736974696F6E3A207472616E73666F726D202E377320766172282D2D616B2D65617365293B207D0A0A2E616B2D436172642D2D696E7365743A686F766572202E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(112) := '696D6167652C0A2E616B2D436172642D2D6F7665726C61793A686F766572202E616B2D436172642D696D616765207B207472616E73666F726D3A207363616C6528312E3035293B207D0A0A2E616B2D436172642D2D696E736574203E203A6E6F74282E61';
wwv_flow_imp.g_varchar2_table(113) := '6B2D436172642D6D65646961293A6E6F74282E616B2D436172642D66756C6C4C696E6B292C0A2E616B2D436172642D2D6F7665726C6179203E203A6E6F74282E616B2D436172642D6D65646961293A6E6F74282E616B2D436172642D66756C6C4C696E6B';
wwv_flow_imp.g_varchar2_table(114) := '29207B206D617267696E2D696E6C696E653A20312E323572656D3B207D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D6D656469612C0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D6D65646961207B20626F';
wwv_flow_imp.g_varchar2_table(115) := '726465722D7261646975733A20766172282D2D616B2D6D656469612D726164697573293B207D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D7469746C652C0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D74';
wwv_flow_imp.g_varchar2_table(116) := '69746C65207B0A20206D617267696E2D626C6F636B2D73746172743A20312E323572656D3B0A2020666F6E742D73697A653A20312E373572656D3B0A20206C65747465722D73706163696E673A202D2E3033656D3B0A20206C696E652D6865696768743A';
wwv_flow_imp.g_varchar2_table(117) := '20312E31353B0A7D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D7375627469746C652C0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7375627469746C65207B0A20206D617267696E2D626C6F636B2D7374';
wwv_flow_imp.g_varchar2_table(118) := '6172743A202E33373572656D3B0A2020666F6E742D73697A653A203172656D3B0A2020636F6C6F723A20236131613161613B0A7D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D6D6574612C0A2E616B2D436172642D2D6F7665726C';
wwv_flow_imp.g_varchar2_table(119) := '6179202E616B2D436172642D6D657461207B206D617267696E2D626C6F636B2D73746172743A20312E323572656D3B207D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D616374696F6E732C0A2E616B2D436172642D2D6F7665726C';
wwv_flow_imp.g_varchar2_table(120) := '6179202E616B2D436172642D616374696F6E73207B2070616464696E672D626C6F636B3A20312E323572656D202E38373572656D3B207D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D62746E2C0A2E616B2D436172642D2D6F7665';
wwv_flow_imp.g_varchar2_table(121) := '726C6179202E616B2D436172642D62746E207B0A20206D696E2D6865696768743A20332E3572656D3B0A2020666F6E742D73697A653A203172656D3B0A7D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D62746E2D2D69636F6E2C0A';
wwv_flow_imp.g_varchar2_table(122) := '2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D62746E2D2D69636F6E207B0A202077696474683A20332E3572656D3B0A2020666F6E742D73697A653A20312E323572656D3B0A7D0A0A2E616B2D436172642D2D696E736574202E616B';
wwv_flow_imp.g_varchar2_table(123) := '2D436172642D6D65646961207B206173706563742D726174696F3A2031202F20313B207D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D62746E2D2D686F74207B0A2020626F782D736861646F773A20696E73657420302031707820';
wwv_flow_imp.g_varchar2_table(124) := '302072676261283235352C203235352C203235352C202E3132292C2030203670782031347078202D367078207267626128302C20302C20302C202E35293B0A7D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D7365636F6E64617279';
wwv_flow_imp.g_varchar2_table(125) := '202E616B2D436172642D62746E207B0A20206261636B67726F756E643A20236666663B0A2020636F6C6F723A20766172282D2D616B2D616374697665293B0A2020626F782D736861646F773A2030203470782031327078202D347078207267626128302C';
wwv_flow_imp.g_varchar2_table(126) := '20302C20302C202E3135293B0A7D0A0A2E616B2D436172642D2D696E736574202E616B2D436172642D7365636F6E64617279202E616B2D436172642D62746E3A686F766572207B206261636B67726F756E643A20236666663566353B207D0A0A2F2A204F';
wwv_flow_imp.g_varchar2_table(127) := '7665726C61793A2070686F746F20626568696E642065766572797468696E6720286E65676174697665207A2D696E64657820696E73696465207468652069736F6C617465642063617264292C20736F207468650A202020756E706F736974696F6E656420';
wwv_flow_imp.g_varchar2_table(128) := '616374696F6E7320726F77206C65747320746865207365636F6E6461727920616374696F6E2073697420696E207468652063617264277320746F7020636F726E65722E202A2F0A2E616B2D436172642D2D6F7665726C6179207B0A20206A757374696679';
wwv_flow_imp.g_varchar2_table(129) := '2D636F6E74656E743A20666C65782D656E643B0A20206D696E2D6865696768743A20333472656D3B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D6D65646961207B0A2020706F7369';
wwv_flow_imp.g_varchar2_table(130) := '74696F6E3A206162736F6C7574653B0A2020696E7365743A20766172282D2D616B2D6672616D65293B0A20207A2D696E6465783A202D313B0A20202F2A206F766572666C6F77202B20626F726465722D72616469757320616C6F6E6520646F6573206E6F';
wwv_flow_imp.g_varchar2_table(131) := '7420636C697020746865206261636B64726F702D66696C746572206661646520696E204368726F6D69756D202A2F0A2020636C69702D706174683A20696E736574283020726F756E6420766172282D2D616B2D6D656469612D72616469757329293B0A7D';
wwv_flow_imp.g_varchar2_table(132) := '0A0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D6D656469613A3A6166746572207B0A2020636F6E74656E743A2022223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365743A20343525203020303B0A20';
wwv_flow_imp.g_varchar2_table(133) := '20626F726465722D7261646975733A2030203020766172282D2D616B2D6D656469612D7261646975732920766172282D2D616B2D6D656469612D726164697573293B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428313830';
wwv_flow_imp.g_varchar2_table(134) := '6465672C207267626128302C20302C20302C2030292030252C207267626128302C20302C20302C202E333529203435252C207267626128302C20302C20302C202E37292031303025293B0A20202D7765626B69742D6261636B64726F702D66696C746572';
wwv_flow_imp.g_varchar2_table(135) := '3A20626C75722831347078293B0A20206261636B64726F702D66696C7465723A20626C75722831347078293B0A20202D7765626B69742D6D61736B2D696D6167653A206C696E6561722D6772616469656E74283138306465672C207472616E7370617265';
wwv_flow_imp.g_varchar2_table(136) := '6E742030252C202330303020333525293B0A20206D61736B2D696D6167653A206C696E6561722D6772616469656E74283138306465672C207472616E73706172656E742030252C202330303020333525293B0A7D0A0A2E616B2D436172642D2D6F766572';
wwv_flow_imp.g_varchar2_table(137) := '6C6179202E616B2D436172642D7375627469746C65207B20636F6C6F723A2072676261283235352C203235352C203235352C202E37293B207D0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D6D65746149636F6E207B206F706163';
wwv_flow_imp.g_varchar2_table(138) := '6974793A202E383B207D0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7469746C65207B206D617267696E2D626C6F636B2D73746172743A206175746F3B207D0A2E616B2D436172642D2D6F7665726C6179202E616B2D43617264';
wwv_flow_imp.g_varchar2_table(139) := '2D616374696F6E73207B20706F736974696F6E3A207374617469633B206D617267696E2D626C6F636B2D73746172743A20303B2070616464696E672D626C6F636B2D656E643A20312E323572656D3B207D0A0A2E616B2D436172642D2D6F7665726C6179';
wwv_flow_imp.g_varchar2_table(140) := '202E616B2D436172642D7072696D617279207B0A2020706F736974696F6E3A2072656C61746976653B0A20207A2D696E6465783A20343B0A7D0A0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7072696D617279202E616B2D4361';
wwv_flow_imp.g_varchar2_table(141) := '72642D62746E207B0A2020626F726465723A20303B0A20206261636B67726F756E643A206C696E6561722D6772616469656E74283138306465672C20236666662030252C20236563656365662031303025293B0A2020636F6C6F723A2023313831383162';
wwv_flow_imp.g_varchar2_table(142) := '3B0A2020626F782D736861646F773A2030203870782032307078202D387078207267626128302C20302C20302C202E36293B0A7D0A0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7072696D617279202E616B2D436172642D6274';
wwv_flow_imp.g_varchar2_table(143) := '6E3A686F766572207B206261636B67726F756E643A20236666663B207D0A0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7365636F6E64617279207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A2063';
wwv_flow_imp.g_varchar2_table(144) := '616C6328766172282D2D616B2D6672616D6529202B202E373572656D293B0A202072696768743A2063616C6328766172282D2D616B2D6672616D6529202B202E373572656D293B0A20207A2D696E6465783A20343B0A7D0A0A2E616B2D436172642D2D6F';
wwv_flow_imp.g_varchar2_table(145) := '7665726C6179202E616B2D436172642D7365636F6E64617279202E616B2D436172642D62746E207B0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E3335293B0A20206261636B67726F756E643A20726762';
wwv_flow_imp.g_varchar2_table(146) := '61283235352C203235352C203235352C202E3138293B0A2020636F6C6F723A20236666663B0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C75722831307078293B0A20206261636B64726F702D66696C7465723A20626C7572';
wwv_flow_imp.g_varchar2_table(147) := '2831307078293B0A7D0A0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7365636F6E64617279202E616B2D436172642D62746E3A686F766572207B206261636B67726F756E643A2072676261283235352C203235352C203235352C';
wwv_flow_imp.g_varchar2_table(148) := '202E33293B207D0A2E616B2D436172642D2D6F7665726C6179202E616B2D436172642D7365636F6E64617279202E616B2D436172642D62746E2E69732D616374697665207B206261636B67726F756E643A20236666663B20636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(149) := '2D616B2D616374697665293B207D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202020537461';
wwv_flow_imp.g_varchar2_table(150) := '74202D20666C6F6174696E6720616363656E742069636F6E2074696C650A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(151) := '3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D73746174207B0A2020646973706C61793A20677269643B0A2020677269642D74656D706C6174652D636F6C756D6E733A206175746F206D696E6D617828302C20316672293B0A2020677269642D7465';
wwv_flow_imp.g_varchar2_table(152) := '6D706C6174652D61726561733A0A202020202269636F6E202020207469746C65220A202020202269636F6E2020202076616C7565220A2020202022666F6F7465722020666F6F746572220A2020202022616374696F6E7320616374696F6E73223B0A2020';
wwv_flow_imp.g_varchar2_table(153) := '2D2D616B2D736861646F773A0A2020202030203170782033707820726762612831362C2032342C2034302C202E3036292C0A2020202030203670782031327078202D34707820726762612831362C2032342C2034302C202E3038292C0A20202020302031';
wwv_flow_imp.g_varchar2_table(154) := '3670782033327078202D3132707820726762612831362C2032342C2034302C202E3134293B0A20202D2D616B2D736861646F772D686F7665723A0A2020202030203270782034707820726762612831362C2032342C2034302C202E3036292C0A20202020';
wwv_flow_imp.g_varchar2_table(155) := '3020313470782032347078202D38707820726762612831362C2032342C2034302C202E3132292C0A202020203020333070782035307078202D3136707820726762612831362C2032342C2034302C202E3234293B0A0A20206761703A2030203172656D3B';
wwv_flow_imp.g_varchar2_table(156) := '0A20206D617267696E2D626C6F636B2D73746172743A20312E3572656D3B0A202070616464696E673A2030203172656D3B0A2020626F726465723A20303B0A2020626F726465722D7261646975733A202E373572656D3B0A2020636F6C6F723A20233334';
wwv_flow_imp.g_varchar2_table(157) := '343736373B0A7D0A0A2E616B2D436172642D2D73746174202E616B2D436172642D69636F6E207B0A2020677269642D617265613A2069636F6E3B0A202077696474683A203472656D3B0A20206865696768743A203472656D3B0A20206D617267696E2D62';
wwv_flow_imp.g_varchar2_table(158) := '6C6F636B2D73746172743A202D312E3572656D3B0A2020626F726465722D7261646975733A202E373572656D3B0A20206261636B67726F756E643A20766172282D2D616B2D616363656E74293B0A2020636F6C6F723A20236666663B0A2020666F6E742D';
wwv_flow_imp.g_varchar2_table(159) := '73697A653A20312E3572656D3B0A2020626F782D736861646F773A20302034707820323070782030207267626128302C20302C20302C202E3134292C2030203770782031307078202D35707820766172282D2D616B2D616363656E742D736861646F7729';
wwv_flow_imp.g_varchar2_table(160) := '3B0A7D0A0A2E616B2D436172642D2D737461743A686F766572202E616B2D436172642D69636F6E207B0A20207472616E73666F726D3A207472616E736C61746559282D34707829207363616C6528312E3034293B0A2020626F782D736861646F773A2030';
wwv_flow_imp.g_varchar2_table(161) := '203130707820323870782030207267626128302C20302C20302C202E3138292C203020313670782032327078202D3130707820766172282D2D616B2D616363656E742D736861646F77293B0A7D0A0A2E616B2D436172642D2D73746174202E616B2D4361';
wwv_flow_imp.g_varchar2_table(162) := '72642D7469746C65207B0A2020677269642D617265613A207469746C653B0A202070616464696E672D626C6F636B2D73746172743A202E3572656D3B0A2020666F6E742D73697A653A202E38373572656D3B0A2020666F6E742D7765696768743A203430';
wwv_flow_imp.g_varchar2_table(163) := '303B0A20206C65747465722D73706163696E673A20303B0A2020746578742D616C69676E3A20656E643B0A2020636F6C6F723A20233762383039613B0A7D0A0A2E616B2D436172642D2D73746174202E616B2D436172642D76616C7565207B0A20206772';
wwv_flow_imp.g_varchar2_table(164) := '69642D617265613A2076616C75653B0A202070616464696E672D626C6F636B2D656E643A203172656D3B0A2020746578742D616C69676E3A20656E643B0A2020636F6C6F723A20233334343736373B0A7D0A0A2E616B2D436172642D2D73746174202E61';
wwv_flow_imp.g_varchar2_table(165) := '6B2D436172642D666F6F746572207B0A2020677269642D617265613A20666F6F7465723B0A2020706F736974696F6E3A2072656C61746976653B0A202070616464696E672D626C6F636B3A202E373572656D203172656D3B0A2020666F6E742D77656967';
wwv_flow_imp.g_varchar2_table(166) := '68743A203330303B0A2020636F6C6F723A20233762383039613B0A7D0A0A2E616B2D436172642D2D73746174202E616B2D436172642D666F6F7465723A3A6265666F7265207B0A2020636F6E74656E743A2022223B0A2020706F736974696F6E3A206162';
wwv_flow_imp.g_varchar2_table(167) := '736F6C7574653B0A2020696E7365743A20302030206175746F3B0A20206865696768743A203170783B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742839306465672C207472616E73706172656E742C207267626128302C20';
wwv_flow_imp.g_varchar2_table(168) := '302C20302C202E34292C207472616E73706172656E74293B0A20206F7061636974793A202E32353B0A7D0A0A2E616B2D436172642D2D73746174202E616B2D436172642D616374696F6E73207B0A2020677269642D617265613A20616374696F6E733B0A';
wwv_flow_imp.g_varchar2_table(169) := '202070616464696E672D626C6F636B3A2030203172656D3B0A7D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(170) := '3D3D3D3D3D0A202020476C617373202D2066726F737465642070616E656C206F766572206120736F667420636F6C6F72206D6573680A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(171) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D676C617373207B0A20202D2D616B2D676C6173732D74696E743A20766172282D2D616B2D616363656E742D736F6C6964293B0A0A202062';
wwv_flow_imp.g_varchar2_table(172) := '6F726465723A2031707820736F6C69642072676261283235352C203235352C203235352C202E3138293B0A2020626F726465722D7261646975733A20312E3572656D3B0A20206261636B67726F756E643A0A2020202072616469616C2D6772616469656E';
wwv_flow_imp.g_varchar2_table(173) := '742831323025203930252061742030252030252C20766172282D2D616B2D676C6173732D74696E74292030252C207472616E73706172656E7420353525292C0A2020202072616469616C2D6772616469656E742839302520383025206174203130302520';
wwv_flow_imp.g_varchar2_table(174) := '313030252C20236563343839392030252C207472616E73706172656E7420353525292C0A2020202072616469616C2D6772616469656E74283730252036302520617420313030252030252C20233232643365652030252C207472616E73706172656E7420';
wwv_flow_imp.g_varchar2_table(175) := '353025292C0A20202020233066313732613B0A20202D2D616B2D736861646F773A20696E73657420302031707820302072676261283235352C203235352C203235352C202E3235292C2030203870782031367078202D38707820726762612831352C2032';
wwv_flow_imp.g_varchar2_table(176) := '332C2034322C202E3335292C203020323470782034347078202D3230707820726762612831352C2032332C2034322C202E36293B0A20202D2D616B2D736861646F772D686F7665723A20696E73657420302031707820302072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(177) := '352C203235352C202E33292C203020313470782032347078202D3130707820726762612831352C2032332C2034322C202E34292C203020333670782036347078202D3234707820726762612831352C2032332C2034322C202E3735293B0A2020636F6C6F';
wwv_flow_imp.g_varchar2_table(178) := '723A20236666663B0A20206F766572666C6F773A2068696464656E3B0A7D0A0A2E616B2D436172642D2D676C6173733A6E6F74285B636C6173732A3D22616B2D436172642D2D616363656E742D225D29207B202D2D616B2D676C6173732D74696E743A20';
wwv_flow_imp.g_varchar2_table(179) := '233633363666313B207D0A0A2E616B2D436172642D2D676C6173733A3A6265666F7265207B0A2020636F6E74656E743A2022223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365743A20303B0A20207A2D696E6465783A202D31';
wwv_flow_imp.g_varchar2_table(180) := '3B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3036293B0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C75722832387078292073617475726174652831343025293B0A20206261';
wwv_flow_imp.g_varchar2_table(181) := '636B64726F702D66696C7465723A20626C75722832387078292073617475726174652831343025293B0A7D0A0A2E616B2D436172642D2D676C617373202E616B2D436172642D69636F6E207B0A2020626F726465723A2031707820736F6C696420726762';
wwv_flow_imp.g_varchar2_table(182) := '61283235352C203235352C203235352C202E3235293B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3134293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D676C617373202E616B';
wwv_flow_imp.g_varchar2_table(183) := '2D436172642D6261646765207B0A2020626F726465723A2031707820736F6C69642072676261283235352C203235352C203235352C202E3235293B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3134293B0A';
wwv_flow_imp.g_varchar2_table(184) := '2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D676C617373202E616B2D436172642D7375627469746C652C0A2E616B2D436172642D2D676C617373202E616B2D436172642D6465736372697074696F6E207B20636F6C6F723A2072';
wwv_flow_imp.g_varchar2_table(185) := '676261283235352C203235352C203235352C202E3735293B207D0A0A2E616B2D436172642D2D676C617373202E616B2D436172642D62746E207B0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E33293B0A';
wwv_flow_imp.g_varchar2_table(186) := '20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3132293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D676C617373202E616B2D436172642D62746E3A686F766572207B206261636B67';
wwv_flow_imp.g_varchar2_table(187) := '726F756E643A2072676261283235352C203235352C203235352C202E3232293B207D0A2E616B2D436172642D2D676C617373202E616B2D436172642D62746E2D2D686F74207B206261636B67726F756E643A20236666663B20636F6C6F723A2023306631';
wwv_flow_imp.g_varchar2_table(188) := '3732613B207D0A2E616B2D436172642D2D676C617373202E616B2D436172642D62746E2D2D686F743A686F766572207B206261636B67726F756E643A20236631663566393B20636F6C6F723A20233066313732613B207D0A0A2E616B2D436172642D2D67';
wwv_flow_imp.g_varchar2_table(189) := '6C617373202E616B2D436172642D62616467652C0A2E616B2D436172642D2D676C6F77202E616B2D436172642D62616467652C0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D6261646765207B0A2020706F736974696F6E3A';
wwv_flow_imp.g_varchar2_table(190) := '206162736F6C7574653B0A2020746F703A20312E3572656D3B0A202072696768743A20312E3572656D3B0A20207A2D696E6465783A20313B0A7D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(191) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202020476C6F7720426F72646572202D20616E696D61746564206772616469656E742072696E670A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(192) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A4070726F7065727479202D2D616B2D616E676C65207B0A202073796E7461783A20223C616E676C653E';
wwv_flow_imp.g_varchar2_table(193) := '223B0A2020696E697469616C2D76616C75653A20306465673B0A2020696E6865726974733A2066616C73653B0A7D0A0A2E616B2D436172642D2D676C6F77207B0A20202D2D616B2D72696E673A20312E3570783B0A0A20202D2D616B2D736861646F773A';
wwv_flow_imp.g_varchar2_table(194) := '2030203470782031307078202D34707820726762612831362C2032342C2034302C202E3038292C203020313870782034307078202D3138707820766172282D2D616B2D616363656E742D736861646F77293B0A20202D2D616B2D736861646F772D686F76';
wwv_flow_imp.g_varchar2_table(195) := '65723A2030203870782031367078202D36707820726762612831362C2032342C2034302C202E31292C203020323870782036307078202D3136707820766172282D2D616B2D616363656E742D736861646F77292C2030203020302034707820766172282D';
wwv_flow_imp.g_varchar2_table(196) := '2D616B2D616363656E742D736F6674293B0A0A2020626F726465723A20303B0A2020626F726465722D7261646975733A20312E323572656D3B0A20206261636B67726F756E643A207472616E73706172656E743B0A7D0A0A2E616B2D436172642D2D676C';
wwv_flow_imp.g_varchar2_table(197) := '6F773A686F7665723A3A6265666F7265207B20616E696D6174696F6E2D6475726174696F6E3A20322E35733B207D0A0A2E616B2D436172642D2D676C6F773A3A6265666F72652C0A2E616B2D436172642D2D676C6F773A3A6166746572207B0A2020636F';
wwv_flow_imp.g_varchar2_table(198) := '6E74656E743A2022223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020626F726465722D7261646975733A20696E68657269743B0A7D0A0A2F2A207468652072696E67202A2F0A2E616B2D436172642D2D676C6F773A3A6265666F726520';
wwv_flow_imp.g_varchar2_table(199) := '7B0A2020696E7365743A20303B0A20207A2D696E6465783A202D323B0A20206261636B67726F756E643A20636F6E69632D6772616469656E742866726F6D20766172282D2D616B2D616E676C65292C20766172282D2D616B2D616363656E742D736F6C69';
wwv_flow_imp.g_varchar2_table(200) := '64292C20236563343839392C20236635396530622C20233232643365652C20766172282D2D616B2D616363656E742D736F6C696429293B0A2020616E696D6174696F6E3A20616B2D7370696E203673206C696E65617220696E66696E6974653B0A7D0A0A';
wwv_flow_imp.g_varchar2_table(201) := '2F2A207468652063617264207375726661636520696E73696465207468652072696E67202A2F0A2E616B2D436172642D2D676C6F773A3A6166746572207B0A2020696E7365743A20766172282D2D616B2D72696E67293B0A20207A2D696E6465783A202D';
wwv_flow_imp.g_varchar2_table(202) := '313B0A2020626F726465722D7261646975733A2063616C6328312E323572656D202D20766172282D2D616B2D72696E6729293B0A20206261636B67726F756E643A20766172282D2D616B2D6267293B0A7D0A0A2E616B2D436172642D2D676C6F77202E61';
wwv_flow_imp.g_varchar2_table(203) := '6B2D436172642D69636F6E207B206261636B67726F756E643A20766172282D2D616B2D616363656E74293B20636F6C6F723A20236666663B207D0A0A406B65796672616D657320616B2D7370696E207B0A2020746F207B202D2D616B2D616E676C653A20';
wwv_flow_imp.g_varchar2_table(204) := '3336306465673B207D0A7D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A20202053706F746C69';
wwv_flow_imp.g_varchar2_table(205) := '676874202D206461726B20636172642C206C6967687420666F6C6C6F77732074686520706F696E7465720A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(206) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D73706F746C69676874207B0A20202D2D616B2D783A203530253B0A20202D2D616B2D793A2030253B0A20202D2D616B2D73706F743A20766172282D2D616B2D616363';
wwv_flow_imp.g_varchar2_table(207) := '656E742D736F6C6964293B0A0A20202D2D616B2D736861646F773A2030203470782031307078202D347078207267626128302C20302C20302C202E33292C203020323070782034307078202D32347078207267626128302C20302C20302C202E38293B0A';
wwv_flow_imp.g_varchar2_table(208) := '20202D2D616B2D736861646F772D686F7665723A203020313070782032307078202D387078207267626128302C20302C20302C202E34292C203020333270782036307078202D32347078207267626128302C20302C20302C202E39292C20302030203430';
wwv_flow_imp.g_varchar2_table(209) := '7078202D3132707820636F6C6F722D6D697828696E20737267622C20766172282D2D616B2D73706F7429203435252C207472616E73706172656E74293B0A0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E';
wwv_flow_imp.g_varchar2_table(210) := '31293B0A20206261636B67726F756E643A20233061306130613B0A2020636F6C6F723A20236661666166613B0A20206F766572666C6F773A2068696464656E3B0A7D0A0A2E616B2D436172642D2D73706F746C696768743A6E6F74285B636C6173732A3D';
wwv_flow_imp.g_varchar2_table(211) := '22616B2D436172642D2D616363656E742D225D292C0A2E616B2D436172642D2D73706F746C696768742E616B2D436172642D2D616363656E742D6461726B207B202D2D616B2D73706F743A20233862356366363B207D0A0A2E616B2D436172642D2D7370';
wwv_flow_imp.g_varchar2_table(212) := '6F746C696768743A3A6265666F7265207B0A2020636F6E74656E743A2022223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365743A20303B0A20207A2D696E6465783A202D313B0A20206261636B67726F756E643A2072616469';
wwv_flow_imp.g_varchar2_table(213) := '616C2D6772616469656E7428323872656D20636972636C6520617420766172282D2D616B2D782920766172282D2D616B2D79292C20636F6C6F722D6D697828696E20737267622C20766172282D2D616B2D73706F7429203338252C207472616E73706172';
wwv_flow_imp.g_varchar2_table(214) := '656E74292C207472616E73706172656E7420343525293B0A20206F7061636974793A20303B0A20207472616E736974696F6E3A206F706163697479202E337320656173653B0A7D0A0A2E616B2D436172642D2D73706F746C696768743A686F766572207B';
wwv_flow_imp.g_varchar2_table(215) := '20626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E32293B207D0A2E616B2D436172642D2D73706F746C696768743A686F7665723A3A6265666F7265207B206F7061636974793A20313B207D0A0A2E616B2D436172';
wwv_flow_imp.g_varchar2_table(216) := '642D2D73706F746C69676874202E616B2D436172642D69636F6E207B0A2020626F726465723A2031707820736F6C69642072676261283235352C203235352C203235352C202E31293B0A20206261636B67726F756E643A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(217) := '352C203235352C202E3036293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D6261646765207B206261636B67726F756E643A2072676261283235352C203235352C203235352C';
wwv_flow_imp.g_varchar2_table(218) := '202E3038293B20636F6C6F723A20236534653465373B207D0A0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D7375627469746C652C0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D646573637269';
wwv_flow_imp.g_varchar2_table(219) := '7074696F6E207B20636F6C6F723A20236131613161613B207D0A0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D62746E207B0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E31';
wwv_flow_imp.g_varchar2_table(220) := '32293B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3036293B0A2020636F6C6F723A20236661666166613B0A7D0A0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D62746E3A686F';
wwv_flow_imp.g_varchar2_table(221) := '766572207B206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3132293B207D0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D62746E2D2D686F74207B206261636B67726F756E643A202366';
wwv_flow_imp.g_varchar2_table(222) := '61666166613B20636F6C6F723A20233061306130613B207D0A2E616B2D436172642D2D73706F746C69676874202E616B2D436172642D62746E2D2D686F743A686F766572207B206261636B67726F756E643A20236666663B20636F6C6F723A2023306130';
wwv_flow_imp.g_varchar2_table(223) := '6130613B207D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A20202050726F64756374202D2073';
wwv_flow_imp.g_varchar2_table(224) := '686F7020636172640A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D';
wwv_flow_imp.g_varchar2_table(225) := '70726F64756374207B0A2020646973706C61793A20677269643B0A2020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828302C2031667229206175746F3B0A2020677269642D74656D706C6174652D61726561733A0A20202020';
wwv_flow_imp.g_varchar2_table(226) := '226D65646961202020202020206D65646961220A20202020227375627469746C65202020207375627469746C65220A20202020227469746C65202020202020207469746C65220A2020202022726174696E67202020202020726174696E67220A20202020';
wwv_flow_imp.g_varchar2_table(227) := '226465736372697074696F6E206465736372697074696F6E220A202020202276616C756520202020202020616374696F6E73223B0A20206761703A202E33373572656D202E373572656D3B0A202070616464696E673A202E3572656D202E3572656D2031';
wwv_flow_imp.g_varchar2_table(228) := '72656D3B0A2020626F726465722D7261646975733A20312E323572656D3B0A7D0A0A2E616B2D436172642D2D70726F64756374203E203A6E6F74282E616B2D436172642D6D65646961293A6E6F74282E616B2D436172642D66756C6C4C696E6B293A6E6F';
wwv_flow_imp.g_varchar2_table(229) := '74282E616B2D436172642D626164676529207B206D617267696E2D696E6C696E653A202E3572656D3B207D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D6D65646961207B0A2020677269642D617265613A206D656469613B0A';
wwv_flow_imp.g_varchar2_table(230) := '20206173706563742D726174696F3A2034202F20333B0A20206D617267696E2D626C6F636B2D656E643A202E3572656D3B0A2020626F726465722D7261646975733A203172656D3B0A7D0A0A2E616B2D436172642D2D70726F64756374202E616B2D4361';
wwv_flow_imp.g_varchar2_table(231) := '72642D696D616765207B207472616E736974696F6E3A207472616E73666F726D202E357320656173653B207D0A2E616B2D436172642D2D70726F647563743A686F766572202E616B2D436172642D696D616765207B207472616E73666F726D3A20736361';
wwv_flow_imp.g_varchar2_table(232) := '6C6528312E3034293B207D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D6261646765207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20312E323572656D3B0A20206C6566743A20312E32357265';
wwv_flow_imp.g_varchar2_table(233) := '6D3B0A20207A2D696E6465783A20323B0A20206261636B67726F756E643A20233138313831623B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D7375627469746C65207B0A20206772';
wwv_flow_imp.g_varchar2_table(234) := '69642D617265613A207375627469746C653B0A2020666F6E742D73697A653A202E373572656D3B0A2020666F6E742D7765696768743A203630303B0A20206C65747465722D73706163696E673A202E3036656D3B0A2020746578742D7472616E73666F72';
wwv_flow_imp.g_varchar2_table(235) := '6D3A207570706572636173653B0A7D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D7469746C65207B20677269642D617265613A207469746C653B20666F6E742D73697A653A20312E3036323572656D3B207D0A2E616B2D4361';
wwv_flow_imp.g_varchar2_table(236) := '72642D2D70726F64756374202E616B2D436172642D726174696E67207B20677269642D617265613A20726174696E673B207D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D6465736372697074696F6E207B0A2020677269642D';
wwv_flow_imp.g_varchar2_table(237) := '617265613A206465736372697074696F6E3B0A2020646973706C61793A202D7765626B69742D626F783B0A20206F766572666C6F773A2068696464656E3B0A2020666F6E742D73697A653A202E38373572656D3B0A20202D7765626B69742D626F782D6F';
wwv_flow_imp.g_varchar2_table(238) := '7269656E743A20766572746963616C3B0A20202D7765626B69742D6C696E652D636C616D703A20323B0A7D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D76616C7565207B0A2020677269642D617265613A2076616C75653B0A';
wwv_flow_imp.g_varchar2_table(239) := '2020616C69676E2D73656C663A2063656E7465723B0A20206D617267696E2D626C6F636B2D73746172743A202E3572656D3B0A2020666F6E742D73697A653A20312E33373572656D3B0A7D0A0A2E616B2D436172642D2D70726F64756374202E616B2D43';
wwv_flow_imp.g_varchar2_table(240) := '6172642D616374696F6E73207B0A2020677269642D617265613A20616374696F6E733B0A2020616C69676E2D73656C663A2063656E7465723B0A20206D617267696E2D626C6F636B2D73746172743A202E3572656D3B0A202070616464696E673A20303B';
wwv_flow_imp.g_varchar2_table(241) := '0A20206761703A202E3572656D3B0A7D0A0A2E616B2D436172642D2D70726F64756374202E616B2D436172642D7365636F6E64617279202E616B2D436172642D62746E207B20636F6C6F723A20766172282D2D616B2D616374697665293B207D0A0A2F2A';
wwv_flow_imp.g_varchar2_table(242) := '203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A20202050726F66696C65202D20616363656E7420636F7665';
wwv_flow_imp.g_varchar2_table(243) := '722062616E642077697468206176617461720A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A';
wwv_flow_imp.g_varchar2_table(244) := '2E616B2D436172642D2D70726F66696C65207B0A20202D2D616B2D636F7665723A20766172282D2D616B2D616363656E74293B0A0A2020616C69676E2D6974656D733A2063656E7465723B0A20206761703A202E3572656D3B0A202070616464696E673A';
wwv_flow_imp.g_varchar2_table(245) := '203372656D20312E3572656D20312E3572656D3B0A2020626F726465722D7261646975733A20312E323572656D3B0A2020746578742D616C69676E3A2063656E7465723B0A20206F766572666C6F773A2068696464656E3B0A7D0A0A2E616B2D43617264';
wwv_flow_imp.g_varchar2_table(246) := '2D2D70726F66696C653A6E6F74285B636C6173732A3D22616B2D436172642D2D616363656E742D225D29207B202D2D616B2D636F7665723A206C696E6561722D6772616469656E74283133356465672C20233633363666312030252C2023656334383939';
wwv_flow_imp.g_varchar2_table(247) := '2031303025293B207D0A0A2E616B2D436172642D2D70726F66696C653A3A6265666F7265207B0A2020636F6E74656E743A2022223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365743A20302030206175746F3B0A20207A2D69';
wwv_flow_imp.g_varchar2_table(248) := '6E6465783A202D313B0A20206865696768743A203672656D3B0A20206261636B67726F756E643A20766172282D2D616B2D636F766572293B0A7D0A0A2E616B2D436172642D2D70726F66696C65202E616B2D436172642D6D656469612C0A2E616B2D4361';
wwv_flow_imp.g_varchar2_table(249) := '72642D2D70726F66696C65202E616B2D436172642D69636F6E207B0A202077696474683A203672656D3B0A20206865696768743A203672656D3B0A20206D617267696E2D626C6F636B2D656E643A202E3572656D3B0A2020626F726465723A2034707820';
wwv_flow_imp.g_varchar2_table(250) := '736F6C696420766172282D2D616B2D6267293B0A2020626F726465722D7261646975733A203530253B0A2020626F782D736861646F773A2030203870782032307078202D387078207267626128302C20302C20302C202E3335293B0A7D0A0A2E616B2D43';
wwv_flow_imp.g_varchar2_table(251) := '6172642D2D70726F66696C65202E616B2D436172642D69636F6E207B0A20206261636B67726F756E643A20766172282D2D616B2D636F766572293B0A2020636F6C6F723A20236666663B0A2020666F6E742D73697A653A20322E323572656D3B0A7D0A0A';
wwv_flow_imp.g_varchar2_table(252) := '2F2A2070686F746F2077696E73206F766572207468652069636F6E207768656E20626F74682061726520676976656E202A2F0A2E616B2D436172642D2D70726F66696C65202E616B2D436172642D6D65646961207E202E616B2D436172642D69636F6E20';
wwv_flow_imp.g_varchar2_table(253) := '7B20646973706C61793A206E6F6E653B207D0A0A2E616B2D436172642D2D70726F66696C65202E616B2D436172642D7469746C65207B20666F6E742D73697A653A20312E323572656D3B207D0A2E616B2D436172642D2D70726F66696C65202E616B2D43';
wwv_flow_imp.g_varchar2_table(254) := '6172642D6261646765207B206F726465723A20313B20616C69676E2D73656C663A2063656E7465723B207D0A2E616B2D436172642D2D70726F66696C65202E616B2D436172642D6465736372697074696F6E207B206F726465723A20323B207D0A0A2E61';
wwv_flow_imp.g_varchar2_table(255) := '6B2D436172642D2D70726F66696C65202E616B2D436172642D616374696F6E73207B0A20206F726465723A20333B0A202077696474683A20313030253B0A202070616464696E672D626C6F636B2D73746172743A203172656D3B0A7D0A0A2F2A203D3D3D';
wwv_flow_imp.g_varchar2_table(256) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A20202046656174757265202D20636C65616E20626F72646572656420';
wwv_flow_imp.g_varchar2_table(257) := '636172642077697468206C696E6B20616374696F6E0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D20';
wwv_flow_imp.g_varchar2_table(258) := '2A2F0A2E616B2D436172642D2D66656174757265207B0A20202D2D616B2D736861646F773A2030203170782032707820726762612831362C2032342C2034302C202E3034293B0A20202D2D616B2D736861646F772D686F7665723A203020327078203470';
wwv_flow_imp.g_varchar2_table(259) := '7820726762612831362C2032342C2034302C202E3034292C203020313670782033327078202D3136707820726762612831362C2032342C2034302C202E3232293B0A20202D2D616B2D6C6966743A202D3370783B0A0A2020626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(260) := '3A20236534653465373B0A2020626F726465722D7261646975733A202E373572656D3B0A7D0A0A2E616B2D436172642D2D666561747572653A686F766572207B20626F726465722D636F6C6F723A20236434643464383B207D0A2E616B2D436172642D2D';
wwv_flow_imp.g_varchar2_table(261) := '666561747572653A686F766572202E616B2D436172642D69636F6E207B207472616E73666F726D3A207363616C6528312E30382920726F74617465282D34646567293B207D0A0A2E616B2D436172642D2D66656174757265202E616B2D436172642D6963';
wwv_flow_imp.g_varchar2_table(262) := '6F6E207B0A202077696474683A20322E373572656D3B0A20206865696768743A20322E373572656D3B0A20206D617267696E2D626C6F636B2D656E643A202E323572656D3B0A2020626F726465722D7261646975733A202E36323572656D3B0A7D0A0A2E';
wwv_flow_imp.g_varchar2_table(263) := '616B2D436172642D2D66656174757265202E616B2D436172642D6261646765207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20312E3572656D3B0A202072696768743A20312E3572656D3B0A7D0A0A2E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(264) := '2D66656174757265202E616B2D436172642D7469746C65207B20666F6E742D73697A653A203172656D3B20666F6E742D7765696768743A203630303B207D0A0A2E616B2D436172642D2D66656174757265202E616B2D436172642D7072696D617279202E';
wwv_flow_imp.g_varchar2_table(265) := '616B2D436172642D62746E207B0A2020666C65783A20302030206175746F3B0A20206D696E2D6865696768743A206175746F3B0A202070616464696E673A20303B0A2020626F726465723A20303B0A20206261636B67726F756E643A206E6F6E653B0A20';
wwv_flow_imp.g_varchar2_table(266) := '20636F6C6F723A20766172282D2D616B2D616363656E742D736F6C6964293B0A2020666F6E742D73697A653A202E38373572656D3B0A7D0A0A2E616B2D436172642D2D66656174757265202E616B2D436172642D7072696D617279202E616B2D43617264';
wwv_flow_imp.g_varchar2_table(267) := '2D62746E3A3A6166746572207B0A2020636F6E74656E743A20225C32313932223B0A20207472616E736974696F6E3A207472616E73666F726D202E327320656173653B0A7D0A0A2E616B2D436172642D2D66656174757265202E616B2D436172642D7072';
wwv_flow_imp.g_varchar2_table(268) := '696D617279202E616B2D436172642D62746E3A686F7665723A3A6166746572207B207472616E73666F726D3A207472616E736C6174655828337078293B207D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(269) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A2020204E657562727574616C69736D202D20746869636B20626F72646572732C206F666673657420736861646F772C20626F6C642061636365';
wwv_flow_imp.g_varchar2_table(270) := '6E74206261636B67726F756E640A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D43';
wwv_flow_imp.g_varchar2_table(271) := '6172642D2D62727574616C207B0A20202D2D616B2D62727574616C2D62673A20236664653034373B0A0A20202D2D616B2D736861646F773A2036707820367078203020233030303B0A20202D2D616B2D736861646F772D686F7665723A20397078203970';
wwv_flow_imp.g_varchar2_table(272) := '78203020233030303B0A0A2020626F726465723A2033707820736F6C696420233030303B0A2020626F726465722D7261646975733A202E373572656D3B0A20206261636B67726F756E643A20766172282D2D616B2D62727574616C2D6267293B0A202063';
wwv_flow_imp.g_varchar2_table(273) := '6F6C6F723A20233030303B0A20207472616E736974696F6E3A207472616E73666F726D202E31357320656173652C20626F782D736861646F77202E31357320656173653B0A7D0A0A2E616B2D436172642D2D62727574616C2E616B2D436172642D2D6163';
wwv_flow_imp.g_varchar2_table(274) := '63656E742D6461726B202020207B202D2D616B2D62727574616C2D62673A20236535653765623B207D0A2E616B2D436172642D2D62727574616C2E616B2D436172642D2D616363656E742D696E666F202020207B202D2D616B2D62727574616C2D62673A';
wwv_flow_imp.g_varchar2_table(275) := '20233933633566643B207D0A2E616B2D436172642D2D62727574616C2E616B2D436172642D2D616363656E742D73756363657373207B202D2D616B2D62727574616C2D62673A20233836656661633B207D0A2E616B2D436172642D2D62727574616C2E61';
wwv_flow_imp.g_varchar2_table(276) := '6B2D436172642D2D616363656E742D7072696D617279207B202D2D616B2D62727574616C2D62673A20236639613864343B207D0A2E616B2D436172642D2D62727574616C2E616B2D436172642D2D616363656E742D7761726E696E67207B202D2D616B2D';
wwv_flow_imp.g_varchar2_table(277) := '62727574616C2D62673A20236664626137343B207D0A2E616B2D436172642D2D62727574616C2E616B2D436172642D2D616363656E742D64616E67657220207B202D2D616B2D62727574616C2D62673A20236663613561353B207D0A2E616B2D43617264';
wwv_flow_imp.g_varchar2_table(278) := '2D2D62727574616C2E616B2D436172642D2D616363656E742D76696F6C657420207B202D2D616B2D62727574616C2D62673A20236334623566643B207D0A0A2E616B2D436172642D2D62727574616C3A686F766572207B207472616E73666F726D3A2074';
wwv_flow_imp.g_varchar2_table(279) := '72616E736C617465282D3370782C202D337078293B207D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D6D65646961207B0A20206173706563742D726174696F3A203136202F2031303B0A2020626F726465723A2032707820736F';
wwv_flow_imp.g_varchar2_table(280) := '6C696420233030303B0A2020626F726465722D7261646975733A202E3572656D3B0A7D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D69636F6E207B0A2020626F726465723A2032707820736F6C696420233030303B0A2020626F';
wwv_flow_imp.g_varchar2_table(281) := '726465722D7261646975733A202E3572656D3B0A20206261636B67726F756E643A20236666663B0A2020626F782D736861646F773A2033707820337078203020233030303B0A2020636F6C6F723A20233030303B0A7D0A0A2E616B2D436172642D2D6272';
wwv_flow_imp.g_varchar2_table(282) := '7574616C202E616B2D436172642D6261646765207B0A2020626F726465722D7261646975733A202E33373572656D3B0A20206261636B67726F756E643A20233030303B0A2020636F6C6F723A20236666663B0A20206C65747465722D73706163696E673A';
wwv_flow_imp.g_varchar2_table(283) := '202E3034656D3B0A2020746578742D7472616E73666F726D3A207570706572636173653B0A7D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D7469746C65207B20666F6E742D73697A653A20312E33373572656D3B20666F6E742D';
wwv_flow_imp.g_varchar2_table(284) := '7765696768743A203830303B207D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D7375627469746C652C0A2E616B2D436172642D2D62727574616C202E616B2D436172642D6465736372697074696F6E207B20636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(285) := '3030303B20666F6E742D7765696768743A203530303B206F7061636974793A202E383B207D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D62746E207B0A2020626F726465723A2032707820736F6C696420233030303B0A202062';
wwv_flow_imp.g_varchar2_table(286) := '6F726465722D7261646975733A202E3572656D3B0A20206261636B67726F756E643A20236666663B0A2020626F782D736861646F773A2033707820337078203020233030303B0A2020636F6C6F723A20233030303B0A2020666F6E742D7765696768743A';
wwv_flow_imp.g_varchar2_table(287) := '203730303B0A7D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D62746E3A686F766572207B0A20206261636B67726F756E643A20236666663B0A20207472616E73666F726D3A207472616E736C617465282D3170782C202D317078';
wwv_flow_imp.g_varchar2_table(288) := '293B0A2020626F782D736861646F773A2034707820347078203020233030303B0A7D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D62746E3A616374697665207B0A20207472616E73666F726D3A207472616E736C617465283270';
wwv_flow_imp.g_varchar2_table(289) := '782C20327078293B0A2020626F782D736861646F773A2031707820317078203020233030303B0A7D0A0A2E616B2D436172642D2D62727574616C202E616B2D436172642D62746E2D2D686F742C0A2E616B2D436172642D2D62727574616C202E616B2D43';
wwv_flow_imp.g_varchar2_table(290) := '6172642D62746E2D2D686F743A686F766572207B206261636B67726F756E643A20233030303B20636F6C6F723A20236666663B207D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(291) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A20202054657374696D6F6E69616C202D2073746172732C2071756F746520616E6420617574686F720A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(292) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D74657374696D6F6E69616C207B0A2020646973706C61793A20677269643B0A20206772';
wwv_flow_imp.g_varchar2_table(293) := '69642D74656D706C6174652D636F6C756D6E733A206175746F206D696E6D617828302C20316672293B0A2020677269642D74656D706C6174652D61726561733A0A2020202022726174696E67202020202020726174696E67220A20202020226465736372';
wwv_flow_imp.g_varchar2_table(294) := '697074696F6E206465736372697074696F6E220A20202020226D65646961202020202020207469746C65220A20202020226D65646961202020202020207375627469746C65220A2020202022616374696F6E732020202020616374696F6E73223B0A2020';
wwv_flow_imp.g_varchar2_table(295) := '677269642D74656D706C6174652D726F77733A206175746F20316672206175746F206175746F206175746F3B0A20206761703A2030202E38373572656D3B0A202070616464696E673A20312E373572656D3B0A2020626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(296) := '312E323572656D3B0A7D0A0A2E616B2D436172642D2D74657374696D6F6E69616C3A3A6265666F7265207B0A2020636F6E74656E743A20225C32303143223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A202E323572656D3B';
wwv_flow_imp.g_varchar2_table(297) := '0A202072696768743A20312E323572656D3B0A20207A2D696E6465783A202D313B0A2020666F6E742D66616D696C793A2047656F726769612C202254696D6573204E657720526F6D616E222C2073657269663B0A2020666F6E742D73697A653A20367265';
wwv_flow_imp.g_varchar2_table(298) := '6D3B0A20206C696E652D6865696768743A20313B0A2020636F6C6F723A207267626128302C20302C20302C202E3036293B0A7D0A0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D726174696E67207B0A2020677269642D';
wwv_flow_imp.g_varchar2_table(299) := '617265613A20726174696E673B0A20206D617267696E2D626C6F636B2D656E643A203172656D3B0A7D0A0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D6465736372697074696F6E207B0A2020677269642D617265613A';
wwv_flow_imp.g_varchar2_table(300) := '206465736372697074696F6E3B0A20206D617267696E2D626C6F636B2D656E643A20312E3572656D3B0A2020666F6E742D73697A653A20312E3036323572656D3B0A2020636F6C6F723A20233237323732613B0A7D0A0A2E616B2D436172642D2D746573';
wwv_flow_imp.g_varchar2_table(301) := '74696D6F6E69616C202E616B2D436172642D6D656469612C0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D69636F6E207B0A2020677269642D617265613A206D656469613B0A202077696474683A203372656D3B0A2020';
wwv_flow_imp.g_varchar2_table(302) := '6865696768743A203372656D3B0A2020626F726465722D7261646975733A203530253B0A7D0A0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D69636F6E207B206261636B67726F756E643A20766172282D2D616B2D6163';
wwv_flow_imp.g_varchar2_table(303) := '63656E74293B20636F6C6F723A20236666663B20666F6E742D73697A653A20312E31323572656D3B207D0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D6D65646961207E202E616B2D436172642D69636F6E207B206469';
wwv_flow_imp.g_varchar2_table(304) := '73706C61793A206E6F6E653B207D0A0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D7469746C65207B0A2020677269642D617265613A207469746C653B0A2020616C69676E2D73656C663A20656E643B0A2020666F6E74';
wwv_flow_imp.g_varchar2_table(305) := '2D73697A653A202E3933373572656D3B0A7D0A0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D7375627469746C65207B0A2020677269642D617265613A207375627469746C653B0A2020616C69676E2D73656C663A2073';
wwv_flow_imp.g_varchar2_table(306) := '746172743B0A2020666F6E742D73697A653A202E3831323572656D3B0A7D0A0A2E616B2D436172642D2D74657374696D6F6E69616C202E616B2D436172642D616374696F6E73207B0A2020677269642D617265613A20616374696F6E733B0A2020706164';
wwv_flow_imp.g_varchar2_table(307) := '64696E672D626C6F636B2D73746172743A20312E323572656D3B0A7D0A0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(308) := '3D3D3D3D3D3D3D0A2020204C6F6E6720536861646F7720286A657273657929202D20666C617420636172642C2068756765206E756D626572206F72206C6F676F2077697468206120666164696E67206C6F6E6720736861646F770A202020546865207368';
wwv_flow_imp.g_varchar2_table(309) := '61646F77206973206120626C61636B20636F7079206F6620746865206E756D6265722F6C6F676F206578747275646564207769746820612073686F727420646F75626C696E6720636861696E206F662064726F702D736861646F77732C0A202020746865';
wwv_flow_imp.g_varchar2_table(310) := '6E20666164656420746F77617264732074686520626F74746F6D2D726967687420776974682061206D61736B2E2049747320626F7820697320706164646564206F757420746F207468650A202020626F74746F6D2D72696768742028616E642070756C6C';
wwv_flow_imp.g_varchar2_table(311) := '6564206261636B2077697468206E65676174697665206D617267696E732920736F20746865206D61736B20636F766572732074686520747261696C2E0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(312) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D6A6572736579207B0A20202D2D616B2D666C61743A20233534373263383B0A20202D2D616B2D747261696C3A20313772';
wwv_flow_imp.g_varchar2_table(313) := '656D3B0A20202F2A20646F75626C696E6720636861696E3A2065616368207374657020636F706965732065766572797468696E6720647261776E20736F206661722C20736F2038207061737365732067697665206120736F6C696420302D323535707820';
wwv_flow_imp.g_varchar2_table(314) := '657874727573696F6E202A2F0A20202D2D616B2D6C6F6E672D736861646F773A0A2020202064726F702D736861646F77283170782031707820302023303030290A2020202064726F702D736861646F77283270782032707820302023303030290A202020';
wwv_flow_imp.g_varchar2_table(315) := '2064726F702D736861646F77283470782034707820302023303030290A2020202064726F702D736861646F77283870782038707820302023303030290A2020202064726F702D736861646F772831367078203136707820302023303030290A2020202064';
wwv_flow_imp.g_varchar2_table(316) := '726F702D736861646F772833327078203332707820302023303030290A2020202064726F702D736861646F772836347078203634707820302023303030290A2020202064726F702D736861646F7728313238707820313238707820302023303030293B0A';
wwv_flow_imp.g_varchar2_table(317) := '20202D2D616B2D736861646F773A20302031707820327078207267626128302C20302C20302C202E31292C203020313070782032347078202D31327078207267626128302C20302C20302C202E3335293B0A20202D2D616B2D736861646F772D686F7665';
wwv_flow_imp.g_varchar2_table(318) := '723A20302032707820347078207267626128302C20302C20302C202E3132292C203020323470782034347078202D31367078207267626128302C20302C20302C202E3435293B0A0A2020616C69676E2D6974656D733A2063656E7465723B0A2020676170';
wwv_flow_imp.g_varchar2_table(319) := '3A20303B0A20206D696E2D6865696768743A20323272656D3B0A20206173706563742D726174696F3A2037202F2031303B0A202070616464696E673A20322E3572656D20312E3572656D203272656D3B0A2020626F726465723A20303B0A2020626F7264';
wwv_flow_imp.g_varchar2_table(320) := '65722D7261646975733A202E33373572656D3B0A20206261636B67726F756E643A20766172282D2D616B2D666C6174293B0A2020636F6C6F723A20236666663B0A2020746578742D616C69676E3A2063656E7465723B0A20206F766572666C6F773A2068';
wwv_flow_imp.g_varchar2_table(321) := '696464656E3B0A7D0A0A2E616B2D436172642D2D6A65727365792E616B2D436172642D2D616363656E742D6461726B202020207B202D2D616B2D666C61743A20233362343235323B207D0A2E616B2D436172642D2D6A65727365792E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(322) := '2D616363656E742D696E666F202020207B202D2D616B2D666C61743A20233534373263383B207D0A2E616B2D436172642D2D6A65727365792E616B2D436172642D2D616363656E742D73756363657373207B202D2D616B2D666C61743A20233336613734';
wwv_flow_imp.g_varchar2_table(323) := '363B207D0A2E616B2D436172642D2D6A65727365792E616B2D436172642D2D616363656E742D7072696D617279207B202D2D616B2D666C61743A20236436336136643B207D0A2E616B2D436172642D2D6A65727365792E616B2D436172642D2D61636365';
wwv_flow_imp.g_varchar2_table(324) := '6E742D7761726E696E67207B202D2D616B2D666C61743A20236530363631663B207D0A2E616B2D436172642D2D6A65727365792E616B2D436172642D2D616363656E742D64616E67657220207B202D2D616B2D666C61743A20236436343534313B207D0A';
wwv_flow_imp.g_varchar2_table(325) := '2E616B2D436172642D2D6A65727365792E616B2D436172642D2D616363656E742D76696F6C657420207B202D2D616B2D666C61743A20233764356663373B207D0A2E616B2D436172642D2D6A65727365792E616B2D436172642D2D616363656E742D676F';
wwv_flow_imp.g_varchar2_table(326) := '6C64202020207B202D2D616B2D666C61743A20236330623233363B207D0A0A2F2A2073696E676C652D636F6C756D6E2070686F6E65733A2074686520373A313020736861706520776F756C64206D616B65206120766572792074616C6C2063617264202A';
wwv_flow_imp.g_varchar2_table(327) := '2F0A406D6564696120286D61782D77696474683A20363339707829207B0A20202E616B2D436172642D2D6A6572736579207B0A202020206D696E2D6865696768743A20323472656D3B0A202020206173706563742D726174696F3A206175746F3B0A2020';
wwv_flow_imp.g_varchar2_table(328) := '7D0A7D0A0A2F2A20746865206865726F20626C6F636B2062656C6F77207265706C61636573207468652067656E65726963206D6564696120616E642076616C7565207061727473202A2F0A2E616B2D436172642D2D6A6572736579203E202E616B2D4361';
wwv_flow_imp.g_varchar2_table(329) := '72642D6D656469612C0A2E616B2D436172642D2D6A6572736579203E202E616B2D436172642D76616C7565207B20646973706C61793A206E6F6E653B207D0A0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D7375627469746C65207B';
wwv_flow_imp.g_varchar2_table(330) := '0A20206F726465723A202D313B0A20206D617267696E3A20303B0A2020666F6E742D73697A653A203172656D3B0A2020666F6E742D7765696768743A203730303B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D6A6572736579';
wwv_flow_imp.g_varchar2_table(331) := '202E616B2D436172642D7469746C65207B0A2020666F6E742D73697A653A20636C616D7028312E373572656D2C203376772C20322E3572656D293B0A20206C65747465722D73706163696E673A202D2E3032656D3B0A20206C696E652D6865696768743A';
wwv_flow_imp.g_varchar2_table(332) := '20312E30353B0A20206F766572666C6F772D777261703A20616E7977686572653B0A7D0A0A2E616B2D436172642D6865726F207B0A2020646973706C61793A20677269643B0A2020666C65783A20312031206175746F3B0A2020706C6163652D6974656D';
wwv_flow_imp.g_varchar2_table(333) := '733A2063656E7465723B0A202077696474683A20313030253B0A20206D617267696E2D626C6F636B2D73746172743A20312E3572656D3B0A20207472616E736974696F6E3A207472616E73666F726D202E347320766172282D2D616B2D65617365293B0A';
wwv_flow_imp.g_varchar2_table(334) := '7D0A0A2E616B2D436172642D6865726F56616C75652C0A2E616B2D436172642D6865726F536861646F772C0A2E616B2D436172642D6865726F4C6F676F207B0A2020677269642D617265613A2031202F20313B0A7D0A0A2E616B2D436172642D6865726F';
wwv_flow_imp.g_varchar2_table(335) := '56616C75652C0A7370616E2E616B2D436172642D6865726F536861646F77207B0A2020666F6E742D73697A653A20636C616D70283572656D2C203976772C20382E3572656D293B0A2020666F6E742D7765696768743A203830303B0A20206C6574746572';
wwv_flow_imp.g_varchar2_table(336) := '2D73706163696E673A202D2E3033656D3B0A20206C696E652D6865696768743A20313B0A7D0A0A2E616B2D436172642D6865726F56616C75652C0A2E616B2D436172642D6865726F4C6F676F207B0A2020706F736974696F6E3A2072656C61746976653B';
wwv_flow_imp.g_varchar2_table(337) := '0A20207A2D696E6465783A20313B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D6865726F4C6F676F2C0A696D672E616B2D436172642D6865726F536861646F77207B0A202077696474683A203535253B0A20206D61782D686569';
wwv_flow_imp.g_varchar2_table(338) := '6768743A20313072656D3B0A20206F626A6563742D6669743A20636F6E7461696E3B0A7D0A0A2E616B2D436172642D6865726F536861646F77207B0A2020626F782D73697A696E673A20636F6E74656E742D626F783B0A20206D617267696E3A20302063';
wwv_flow_imp.g_varchar2_table(339) := '616C6328766172282D2D616B2D747261696C29202A202D31292063616C6328766172282D2D616B2D747261696C29202A202D312920303B0A202070616464696E673A203020766172282D2D616B2D747261696C2920766172282D2D616B2D747261696C29';
wwv_flow_imp.g_varchar2_table(340) := '20303B0A2020636F6C6F723A20233030303B0A20206F7061636974793A202E32323B0A202066696C7465723A20766172282D2D616B2D6C6F6E672D736861646F77293B0A20202D7765626B69742D6D61736B2D696D6167653A206C696E6561722D677261';
wwv_flow_imp.g_varchar2_table(341) := '6469656E74283133356465672C2023303030203135252C207472616E73706172656E7420363025293B0A20206D61736B2D696D6167653A206C696E6561722D6772616469656E74283133356465672C2023303030203135252C207472616E73706172656E';
wwv_flow_imp.g_varchar2_table(342) := '7420363025293B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A696D672E616B2D436172642D6865726F536861646F77207B2066696C7465723A206272696768746E65737328302920766172282D2D616B2D6C6F6E672D73686164';
wwv_flow_imp.g_varchar2_table(343) := '6F77293B207D0A0A2E616B2D436172642D2D6A65727365793A686F766572202E616B2D436172642D6865726F207B207472616E73666F726D3A207363616C6528312E3034293B207D0A0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(344) := '6465736372697074696F6E207B0A20206F726465723A20323B0A20206D617267696E2D626C6F636B2D73746172743A203172656D3B0A2020666F6E742D73697A653A202E38373572656D3B0A2020636F6C6F723A2072676261283235352C203235352C20';
wwv_flow_imp.g_varchar2_table(345) := '3235352C202E3835293B0A7D0A0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D6261646765207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203172656D3B0A20206C6566743A203172656D3B0A202062';
wwv_flow_imp.g_varchar2_table(346) := '61636B67726F756E643A2072676261283235352C203235352C203235352C202E32293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D616374696F6E73207B0A20206F726465723A2033';
wwv_flow_imp.g_varchar2_table(347) := '3B0A202077696474683A20313030253B0A7D0A0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D62746E207B0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E3335293B0A20206261636B';
wwv_flow_imp.g_varchar2_table(348) := '67726F756E643A2072676261283235352C203235352C203235352C202E3135293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D62746E3A686F766572207B206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(349) := '3A2072676261283235352C203235352C203235352C202E3235293B207D0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D62746E2D2D686F74207B206261636B67726F756E643A20236666663B20636F6C6F723A20233138313831623B';
wwv_flow_imp.g_varchar2_table(350) := '207D0A2E616B2D436172642D2D6A6572736579202E616B2D436172642D62746E2D2D686F743A686F766572207B206261636B67726F756E643A20236634663466353B20636F6C6F723A20233138313831623B207D0A2F2A203D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(351) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202020466C6970206361726473202D20666C69702C20666C697049636F6E2C20666C69704E';
wwv_flow_imp.g_varchar2_table(352) := '756D6265720A2020202E616B2D466C697020686F6C64732074776F20666163657320696E206F6E6520677269642063656C6C202874686520636172642074616B6573207468652074616C6C65722066616365277320686569676874292E0A202020466C69';
wwv_flow_imp.g_varchar2_table(353) := '7073206F6E20686F76657220286D6F757365292C206F6E2074617020282E69732D666C69707065642C20736574206279206D6F6465726E2D63617264732E6A732920616E64207768696C65207468650A20202063617264206F72206F6E65206F66206974';
wwv_flow_imp.g_varchar2_table(354) := '73206261636B2D6661636520627574746F6E7320686173206B6579626F61726420666F6375732E0A2020203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_imp.g_varchar2_table(355) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D202A2F0A2E616B2D436172642D2D666C69702C0A2E616B2D436172642D2D666C697049636F6E2C0A2E616B2D436172642D2D666C69704E756D626572207B0A20202D2D616B2D736861646F773A206E6F6E653B';
wwv_flow_imp.g_varchar2_table(356) := '0A20202D2D616B2D736861646F772D686F7665723A206E6F6E653B0A20202D2D616B2D6C6966743A203070783B0A20202D2D616B2D666163652D736861646F773A0A2020202030203170782032707820726762612831362C2032342C2034302C202E3035';
wwv_flow_imp.g_varchar2_table(357) := '292C0A2020202030203670782031327078202D34707820726762612831362C2032342C2034302C202E3038292C0A202020203020323070782033367078202D3134707820726762612831362C2032342C2034302C202E3138293B0A0A20206761703A2030';
wwv_flow_imp.g_varchar2_table(358) := '3B0A202070616464696E673A20303B0A2020626F726465723A20303B0A20206261636B67726F756E643A207472616E73706172656E743B0A202070657273706563746976653A203134303070783B0A7D0A0A2E616B2D466C6970207B0A2020706F736974';
wwv_flow_imp.g_varchar2_table(359) := '696F6E3A2072656C61746976653B0A2020646973706C61793A20677269643B0A2020666C65783A20312031206175746F3B0A20206D696E2D6865696768743A20323072656D3B0A2020626F726465722D7261646975733A20312E323572656D3B0A20206F';
wwv_flow_imp.g_varchar2_table(360) := '75746C696E653A206E6F6E653B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E736974696F6E3A207472616E73666F726D202E377320766172282D2D616B2D65617365293B0A2020637572736F723A20';
wwv_flow_imp.g_varchar2_table(361) := '706F696E7465723B0A7D0A0A2E616B2D466C69702D66616365207B0A2020677269642D617265613A2031202F20313B0A2020706F736974696F6E3A2072656C61746976653B0A2020646973706C61793A20666C65783B0A2020666C65782D646972656374';
wwv_flow_imp.g_varchar2_table(362) := '696F6E3A20636F6C756D6E3B0A20206761703A202E373572656D3B0A20206D696E2D77696474683A20303B0A202070616464696E673A20312E3572656D3B0A2020626F726465722D7261646975733A20696E68657269743B0A2020626F782D736861646F';
wwv_flow_imp.g_varchar2_table(363) := '773A20766172282D2D616B2D666163652D736861646F77293B0A20206F766572666C6F773A2068696464656E3B0A202069736F6C6174696F6E3A2069736F6C6174653B0A20202D7765626B69742D6261636B666163652D7669736962696C6974793A2068';
wwv_flow_imp.g_varchar2_table(364) := '696464656E3B0A20206261636B666163652D7669736962696C6974793A2068696464656E3B0A7D0A0A2E616B2D466C69702D6261636B207B207472616E73666F726D3A20726F746174655928313830646567293B207D0A2E616B2D436172642D2D666C69';
wwv_flow_imp.g_varchar2_table(365) := '7049636F6E202E616B2D466C69702D6261636B207B207472616E73666F726D3A20726F746174655828313830646567293B207D0A0A406D656469612028686F7665723A20686F76657229207B0A20202E616B2D436172642D2D666C69703A686F76657220';
wwv_flow_imp.g_varchar2_table(366) := '2E616B2D466C69702C0A20202E616B2D436172642D2D666C69704E756D6265723A686F766572202E616B2D466C6970207B207472616E73666F726D3A20726F746174655928313830646567293B207D0A20202E616B2D436172642D2D666C697049636F6E';
wwv_flow_imp.g_varchar2_table(367) := '3A686F766572202E616B2D466C6970207B207472616E73666F726D3A20726F7461746558282D313830646567293B207D0A7D0A0A2F2A206B6579626F61726420666F63757320286E6F74206D6F75736520636C69636B732920686F6C6473207468652063';
wwv_flow_imp.g_varchar2_table(368) := '61726420666C69707065642C20616C736F207768696C652061206261636B2D6661636520627574746F6E20697320666F6375736564202A2F0A2E616B2D436172642D2D666C6970202E616B2D466C69702E69732D666C69707065642C0A2E616B2D436172';
wwv_flow_imp.g_varchar2_table(369) := '642D2D666C6970202E616B2D466C69703A666F6375732D76697369626C652C0A2E616B2D436172642D2D666C6970202E616B2D466C69703A686173283A666F6375732D76697369626C65292C0A2E616B2D436172642D2D666C69704E756D626572202E61';
wwv_flow_imp.g_varchar2_table(370) := '6B2D466C69702E69732D666C69707065642C0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69703A666F6375732D76697369626C652C0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69703A686173283A66';
wwv_flow_imp.g_varchar2_table(371) := '6F6375732D76697369626C6529207B207472616E73666F726D3A20726F746174655928313830646567293B207D0A0A2E616B2D436172642D2D666C697049636F6E202E616B2D466C69702E69732D666C69707065642C0A2E616B2D436172642D2D666C69';
wwv_flow_imp.g_varchar2_table(372) := '7049636F6E202E616B2D466C69703A666F6375732D76697369626C652C0A2E616B2D436172642D2D666C697049636F6E202E616B2D466C69703A686173283A666F6375732D76697369626C6529207B207472616E73666F726D3A20726F7461746558282D';
wwv_flow_imp.g_varchar2_table(373) := '313830646567293B207D0A0A2E616B2D466C69703A666F6375732D76697369626C65202E616B2D466C69702D66616365207B20626F782D736861646F773A20766172282D2D616B2D666163652D736861646F77292C203020302030203370782076617228';
wwv_flow_imp.g_varchar2_table(374) := '2D2D616B2D616363656E742D736861646F77293B207D0A0A2E616B2D436172642D6261636B5469746C65207B0A20206D617267696E3A20303B0A2020666F6E742D73697A653A20312E31323572656D3B0A2020666F6E742D7765696768743A203730303B';
wwv_flow_imp.g_varchar2_table(375) := '0A20206C696E652D6865696768743A20312E333B0A7D0A0A2E616B2D466C69702D6261636B202E616B2D436172642D616374696F6E73207B2070616464696E672D626C6F636B2D73746172743A202E373572656D3B207D0A0A2F2A2068696E7420746861';
wwv_flow_imp.g_varchar2_table(376) := '74207468652063617264206861732061206261636B2073696465202A2F0A2E616B2D466C69702D66726F6E743A3A6166746572207B0A2020636F6E74656E743A20225C32314242223B0A2020706F736974696F6E3A206162736F6C7574653B0A20207269';
wwv_flow_imp.g_varchar2_table(377) := '6768743A203172656D3B0A2020626F74746F6D3A202E38373572656D3B0A2020666F6E742D73697A653A203172656D3B0A20206C696E652D6865696768743A20313B0A20206F7061636974793A202E34353B0A7D0A0A2F2A202D2D2D2D2D2D2D2D2D2D20';
wwv_flow_imp.g_varchar2_table(378) := '466C6970202D2050686F746F202D2D2D2D2D2D2D2D2D2D202A2F0A2E616B2D436172642D2D666C6970202E616B2D466C6970207B206D696E2D6865696768743A20323472656D3B207D0A0A2E616B2D436172642D2D666C6970202E616B2D466C69702D66';
wwv_flow_imp.g_varchar2_table(379) := '726F6E74207B0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0A202070616464696E673A20312E373572656D3B0A20206261636B67726F756E643A20233138313831623B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B';
wwv_flow_imp.g_varchar2_table(380) := '2D436172642D2D666C6970202E616B2D436172642D6D65646961207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365743A20303B0A20207A2D696E6465783A202D313B0A2020626F726465722D7261646975733A20303B0A7D0A';
wwv_flow_imp.g_varchar2_table(381) := '0A2E616B2D436172642D2D666C6970202E616B2D436172642D6D656469613A3A6166746572207B0A2020636F6E74656E743A2022223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365743A20303B0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(382) := '643A206C696E6561722D6772616469656E74283138306465672C207267626128302C20302C20302C203029203430252C207267626128302C20302C20302C202E3735292031303025293B0A7D0A0A2E616B2D436172642D2D666C6970202E616B2D436172';
wwv_flow_imp.g_varchar2_table(383) := '642D7469746C65207B20666F6E742D73697A653A20312E3572656D3B206C65747465722D73706163696E673A202D2E3032656D3B207D0A2E616B2D436172642D2D666C6970202E616B2D436172642D7375627469746C65207B20636F6C6F723A20726762';
wwv_flow_imp.g_varchar2_table(384) := '61283235352C203235352C203235352C202E3735293B207D0A0A2E616B2D436172642D2D666C6970202E616B2D436172642D6261646765207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20312E323572656D3B0A20206C65';
wwv_flow_imp.g_varchar2_table(385) := '66743A20312E323572656D3B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E39293B0A2020636F6C6F723A20233138313831623B0A7D0A0A2E616B2D436172642D2D666C6970202E616B2D466C69702D626163';
wwv_flow_imp.g_varchar2_table(386) := '6B207B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A202070616464696E673A20312E373572656D3B0A20206261636B67726F756E643A20766172282D2D616B2D616363656E74293B0A2020636F6C6F723A20236666663B0A7D0A';
wwv_flow_imp.g_varchar2_table(387) := '0A2E616B2D436172642D2D666C69703A6E6F74285B636C6173732A3D22616B2D436172642D2D616363656E742D225D29202E616B2D466C69702D6261636B207B206261636B67726F756E643A206C696E6561722D6772616469656E74283133356465672C';
wwv_flow_imp.g_varchar2_table(388) := '20233633363666312030252C20236563343839392031303025293B207D0A0A2E616B2D436172642D2D666C6970202E616B2D466C69702D6261636B202E616B2D436172642D6465736372697074696F6E207B20636F6C6F723A2072676261283235352C20';
wwv_flow_imp.g_varchar2_table(389) := '3235352C203235352C202E3838293B207D0A2E616B2D436172642D2D666C6970202E616B2D466C69702D6261636B202E616B2D436172642D726174696E6756616C7565207B20636F6C6F723A2072676261283235352C203235352C203235352C202E3835';
wwv_flow_imp.g_varchar2_table(390) := '293B207D0A2E616B2D436172642D2D666C6970202E616B2D466C69702D6261636B202E616B2D436172642D616374696F6E73207B206D617267696E2D626C6F636B2D73746172743A202E3572656D3B207D0A0A2E616B2D436172642D2D666C6970202E61';
wwv_flow_imp.g_varchar2_table(391) := '6B2D466C69702D6261636B202E616B2D436172642D62746E207B0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E34293B0A20206261636B67726F756E643A2072676261283235352C203235352C20323535';
wwv_flow_imp.g_varchar2_table(392) := '2C202E3134293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D666C6970202E616B2D466C69702D6261636B202E616B2D436172642D62746E2D2D686F74207B20626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_imp.g_varchar2_table(393) := '3B206261636B67726F756E643A20236666663B20636F6C6F723A20233138313831623B207D0A0A2F2A202D2D2D2D2D2D2D2D2D2D20466C6970202D2049636F6E202D2D2D2D2D2D2D2D2D2D202A2F0A2E616B2D436172642D2D666C697049636F6E202E61';
wwv_flow_imp.g_varchar2_table(394) := '6B2D466C69702D66726F6E74207B0A2020616C69676E2D6974656D733A2063656E7465723B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A2020746578742D616C69676E3A2063656E7465723B0A20206261636B67726F756E643A';
wwv_flow_imp.g_varchar2_table(395) := '20766172282D2D616B2D616363656E74293B0A2020636F6C6F723A20236666663B0A7D0A0A2E616B2D436172642D2D666C697049636F6E3A6E6F74285B636C6173732A3D22616B2D436172642D2D616363656E742D225D29202E616B2D466C69702D6672';
wwv_flow_imp.g_varchar2_table(396) := '6F6E74207B206261636B67726F756E643A206C696E6561722D6772616469656E74283133356465672C20233065613565392030252C20233633363666312031303025293B207D0A0A2E616B2D436172642D2D666C697049636F6E202E616B2D436172642D';
wwv_flow_imp.g_varchar2_table(397) := '69636F6E207B0A202077696474683A203572656D3B0A20206865696768743A203572656D3B0A20206D617267696E2D626C6F636B2D656E643A202E373572656D3B0A2020626F726465723A2031707820736F6C69642072676261283235352C203235352C';
wwv_flow_imp.g_varchar2_table(398) := '203235352C202E33293B0A2020626F726465722D7261646975733A20312E3572656D3B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E3136293B0A2020636F6C6F723A20236666663B0A2020666F6E742D7369';
wwv_flow_imp.g_varchar2_table(399) := '7A653A20322E323572656D3B0A7D0A0A2E616B2D436172642D2D666C697049636F6E202E616B2D436172642D7469746C65207B20666F6E742D73697A653A20312E33373572656D3B207D0A2E616B2D436172642D2D666C697049636F6E202E616B2D4361';
wwv_flow_imp.g_varchar2_table(400) := '72642D7375627469746C65207B20636F6C6F723A2072676261283235352C203235352C203235352C202E38293B207D0A0A2E616B2D436172642D2D666C697049636F6E202E616B2D436172642D6261646765207B0A2020706F736974696F6E3A20616273';
wwv_flow_imp.g_varchar2_table(401) := '6F6C7574653B0A2020746F703A20312E323572656D3B0A202072696768743A20312E323572656D3B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C202E32293B0A2020636F6C6F723A20236666663B0A7D0A0A2E61';
wwv_flow_imp.g_varchar2_table(402) := '6B2D436172642D2D666C697049636F6E202E616B2D466C69702D6261636B207B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A20206261636B67726F756E643A20766172282D2D616B2D6267293B0A2020626F726465723A203170';
wwv_flow_imp.g_varchar2_table(403) := '7820736F6C696420766172282D2D616B2D626F72646572293B0A7D0A0A2E616B2D436172642D2D666C697049636F6E202E616B2D466C69702D6261636B202E616B2D436172642D6261636B5469746C65207B20636F6C6F723A20766172282D2D616B2D61';
wwv_flow_imp.g_varchar2_table(404) := '6363656E742D736F6C6964293B207D0A0A2F2A202D2D2D2D2D2D2D2D2D2D20466C6970202D204E756D626572202D2D2D2D2D2D2D2D2D2D202A2F0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69702D66726F6E74207B0A20206A';
wwv_flow_imp.g_varchar2_table(405) := '7573746966792D636F6E74656E743A2063656E7465723B0A20206261636B67726F756E643A20766172282D2D616B2D6267293B0A2020626F726465723A2031707820736F6C696420766172282D2D616B2D626F72646572293B0A7D0A0A2E616B2D436172';
wwv_flow_imp.g_varchar2_table(406) := '642D2D666C69704E756D626572202E616B2D436172642D69636F6E207B206D617267696E2D626C6F636B2D656E643A202E3572656D3B207D0A0A2E616B2D436172642D2D666C69704E756D626572202E616B2D436172642D76616C7565207B0A20206F72';
wwv_flow_imp.g_varchar2_table(407) := '6465723A202D313B0A2020666F6E742D73697A653A20636C616D7028322E373572656D2C203576772C20332E373572656D293B0A2020666F6E742D7765696768743A203830303B0A20206C65747465722D73706163696E673A202D2E3034656D3B0A2020';
wwv_flow_imp.g_varchar2_table(408) := '6C696E652D6865696768743A20313B0A2020636F6C6F723A20766172282D2D616B2D616363656E742D736F6C6964293B0A7D0A0A2E616B2D436172642D2D666C69704E756D626572202E616B2D436172642D69636F6E207B206F726465723A202D323B20';
wwv_flow_imp.g_varchar2_table(409) := '7D0A2E616B2D436172642D2D666C69704E756D626572202E616B2D436172642D7469746C65207B20666F6E742D73697A653A203172656D3B20666F6E742D7765696768743A203630303B207D0A0A2E616B2D436172642D2D666C69704E756D626572202E';
wwv_flow_imp.g_varchar2_table(410) := '616B2D436172642D6261646765207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20312E323572656D3B0A202072696768743A20312E323572656D3B0A7D0A0A2E616B2D436172642D2D666C69704E756D626572202E616B2D';
wwv_flow_imp.g_varchar2_table(411) := '466C69702D6261636B207B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A20206261636B67726F756E643A20233138313831623B0A2020636F6C6F723A20236661666166613B0A7D0A0A2E616B2D436172642D2D666C69704E756D';
wwv_flow_imp.g_varchar2_table(412) := '626572202E616B2D466C69702D6261636B202E616B2D436172642D6465736372697074696F6E207B20636F6C6F723A20236131613161613B207D0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69702D6261636B202E616B2D4361';
wwv_flow_imp.g_varchar2_table(413) := '72642D666F6F746572207B20636F6C6F723A20236131613161613B207D0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69702D6261636B202E616B2D436172642D7472656E642D2D7570207B20636F6C6F723A2023346164653830';
wwv_flow_imp.g_varchar2_table(414) := '3B207D0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69702D6261636B202E616B2D436172642D7472656E642D2D646F776E207B20636F6C6F723A20236638373137313B207D0A0A2E616B2D436172642D2D666C69704E756D6265';
wwv_flow_imp.g_varchar2_table(415) := '72202E616B2D466C69702D6261636B202E616B2D436172642D62746E207B0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C202E3135293B0A20206261636B67726F756E643A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(416) := '2C203235352C202E3038293B0A2020636F6C6F723A20236661666166613B0A7D0A0A2E616B2D436172642D2D666C69704E756D626572202E616B2D466C69702D6261636B202E616B2D436172642D62746E2D2D686F74207B20626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(417) := '723A207472616E73706172656E743B206261636B67726F756E643A20236661666166613B20636F6C6F723A20233138313831623B207D0A2F2A202D2D2D2D2D2D2D2D2D2D204C617A79206C6F6164696E6720706C616365686F6C64657273202D2D2D2D2D';
wwv_flow_imp.g_varchar2_table(418) := '2D2D2D2D2D202A2F0A2E616B2D436172642E69732D706C616365686F6C646572202E616B2D436172642D6D656469612C0A2E616B2D436172642E69732D706C616365686F6C646572202E616B2D436172642D7469746C652C0A2E616B2D436172642E6973';
wwv_flow_imp.g_varchar2_table(419) := '2D706C616365686F6C646572202E616B2D436172642D7375627469746C652C0A2E616B2D436172642E69732D706C616365686F6C646572202E616B2D436172642D6465736372697074696F6E207B0A20206261636B67726F756E643A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(420) := '6B2D706C616365686F6C646572293B0A2020626F726465722D7261646975733A202E3572656D3B0A2020616E696D6174696F6E3A20616B2D70756C736520312E347320656173652D696E2D6F757420696E66696E6974653B0A7D0A0A2E616B2D43617264';
wwv_flow_imp.g_varchar2_table(421) := '2E69732D706C616365686F6C646572202E616B2D436172642D6D65646961207B206173706563742D726174696F3A2034202F20333B20626F726465722D7261646975733A203172656D3B207D0A2E616B2D436172642E69732D706C616365686F6C646572';
wwv_flow_imp.g_varchar2_table(422) := '202E616B2D436172642D7469746C65207B2077696474683A203630253B206865696768743A20312E3572656D3B207D0A2E616B2D436172642E69732D706C616365686F6C646572202E616B2D436172642D7375627469746C65207B2077696474683A2034';
wwv_flow_imp.g_varchar2_table(423) := '30253B206865696768743A203172656D3B207D0A2E616B2D436172642E69732D706C616365686F6C646572202E616B2D436172642D6465736372697074696F6E207B2077696474683A203835253B206865696768743A20322E3572656D3B207D0A2E616B';
wwv_flow_imp.g_varchar2_table(424) := '2D436172642D2D737461742E69732D706C616365686F6C646572202E616B2D436172642D6D65646961207B20646973706C61793A206E6F6E653B207D0A0A406B65796672616D657320616B2D70756C7365207B0A2020353025207B206F7061636974793A';
wwv_flow_imp.g_varchar2_table(425) := '202E353B207D0A7D0A0A406D656469612028707265666572732D726564756365642D6D6F74696F6E3A2072656475636529207B0A20202E616B2D436172642C0A20202E616B2D43617264202A2C0A20202E616B2D436172643A3A6265666F72652C0A2020';
wwv_flow_imp.g_varchar2_table(426) := '2E616B2D436172643A3A6166746572207B207472616E736974696F6E3A206E6F6E652021696D706F7274616E743B20616E696D6174696F6E3A206E6F6E652021696D706F7274616E743B207D0A0A20202F2A206B65657020746865207374726F6E676572';
wwv_flow_imp.g_varchar2_table(427) := '20736861646F7720617320686F76657220666565646261636B2C2064726F7020746865206D6F76656D656E74202A2F0A20202E616B2D436172643A686F7665722C0A20202E616B2D436172643A686F766572202E616B2D436172642D69636F6E2C0A2020';
wwv_flow_imp.g_varchar2_table(428) := '2E616B2D436172643A686F766572202E616B2D436172642D696D6167652C0A20202E616B2D436172643A686F766572202E616B2D436172642D6865726F207B207472616E73666F726D3A206E6F6E652021696D706F7274616E743B207D0A0A20202F2A20';
wwv_flow_imp.g_varchar2_table(429) := '666C6970206361726473207374696C6C207475726E206F7665722C206A75737420776974686F75742074686520726F746174696F6E20616E696D6174696F6E202A2F0A20202E616B2D466C6970207B207472616E736974696F6E3A206E6F6E652021696D';
wwv_flow_imp.g_varchar2_table(430) := '706F7274616E743B207D0A7D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(5648523050759014)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_file_name=>'modern-cards.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A0A202A204D6F6465726E2043617264732074656D706C61746520636F6D706F6E656E742068656C706572730A202A20616B43617264732E746F67676C652820656C202920746F67676C65732074686520616374696F6E207468617420636F6E746169';
wwv_flow_imp.g_varchar2_table(2) := '6E7320656C3A2069732D6163746976652C20617269612D7072657373656420616E642C207768656E207468650A202A20616374696F6E2069636F6E20697320616E206F75746C696E65642069636F6E202866612D2A2D6F292C206974732066696C6C6564';
wwv_flow_imp.g_varchar2_table(3) := '2076657273696F6E2E2052657475726E7320746865206E657720737461746520616E642074726967676572730A202A2022616B63617264746F67676C6522206F6E2074686520616374696F6E2E20616B54726176656C43617264206973206B6570742061';
wwv_flow_imp.g_varchar2_table(4) := '7320616E20616C69617320666F722076657273696F6E20312070616765732E0A202A2053706F746C696768742064657369676E3A20746865206C6967687420666F6C6C6F77732074686520706F696E746572207468726F75676820746865202D2D616B2D';
wwv_flow_imp.g_varchar2_table(5) := '78202F202D2D616B2D7920637573746F6D2070726F706572746965730A202A2028636F7272656374656420666F722074686520435353207A6F6F6D206F66207468652053697A6520617474726962757465292E0A202A20466C69702064657369676E733A';
wwv_flow_imp.g_varchar2_table(6) := '20686F76657220666C69707320776974682061206D6F75736520616E64206B6579626F61726420666F6375732073686F777320746865206261636B2028435353293B206F6E20746F7563682073637265656E730A202A20612074617020746F67676C6573';
wwv_flow_imp.g_varchar2_table(7) := '202E69732D666C69707065642E2054617073206F6E2074686520636172642773206F776E20627574746F6E7320616E64206C696E6B7320617265206C65667420616C6F6E652E0A202A20616B43617264732E666C69702820656C205B2C2073746174655D';
wwv_flow_imp.g_varchar2_table(8) := '202920666C697073206120636172642066726F6D20636F64652E0A202A2F0A282066756E6374696F6E2829207B0A2020202076617220616B4361726473203D2077696E646F772E616B4361726473207C7C207B0A2020202020202020746F67676C653A20';
wwv_flow_imp.g_varchar2_table(9) := '66756E6374696F6E2820656C2029207B0A2020202020202020202020207661722062746E203D20242820656C20292E636C6F736573742820222E616B2D436172642D62746E2220292C0A2020202020202020202020202020202069636F6E203D2062746E';
wwv_flow_imp.g_varchar2_table(10) := '2E66696E642820222E616B2D436172642D62746E49636F6E2220292C0A202020202020202020202020202020206F6E203D202162746E2E686173436C61737328202269732D6163746976652220292C0A202020202020202020202020202020206F75746C';
wwv_flow_imp.g_varchar2_table(11) := '696E6564203D2069636F6E2E64617461282022616B4F75746C696E65642220293B0A0A20202020202020202020202069662028206F75746C696E6564203D3D3D20756E646566696E65642029207B0A202020202020202020202020202020206F75746C69';
wwv_flow_imp.g_varchar2_table(12) := '6E6564203D202820282069636F6E2E61747472282022636C617373222029207C7C20222220292E6D6174636828202F5C6266612D5B5C772D5D2B2D6F5C622F2029207C7C205B202222205D20295B2030205D3B0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(13) := '69636F6E2E64617461282022616B4F75746C696E6564222C206F75746C696E656420293B0A2020202020202020202020207D0A20202020202020202020202062746E2E746F67676C65436C61737328202269732D616374697665222C206F6E20292E6174';
wwv_flow_imp.g_varchar2_table(14) := '7472282022617269612D70726573736564222C206F6E20293B0A20202020202020202020202069662028206F75746C696E65642029207B0A2020202020202020202020202020202069636F6E2E746F67676C65436C61737328206F75746C696E65642C20';
wwv_flow_imp.g_varchar2_table(15) := '216F6E20292E746F67676C65436C61737328206F75746C696E65642E7265706C61636528202F2D6F242F2C20222220292C206F6E20293B0A2020202020202020202020207D0A20202020202020202020202062746E2E74726967676572282022616B6361';
wwv_flow_imp.g_varchar2_table(16) := '7264746F67676C65222C207B206163746976653A206F6E207D20293B0A20202020202020202020202072657475726E206F6E3B0A20202020202020207D0A202020207D3B0A0A2020202077696E646F772E616B4361726473203D20616B43617264733B0A';
wwv_flow_imp.g_varchar2_table(17) := '2020202077696E646F772E616B54726176656C43617264203D2077696E646F772E616B54726176656C43617264207C7C20616B43617264733B0A0A20202020696620282021616B43617264732E73706F746C69676874426F756E642029207B0A20202020';
wwv_flow_imp.g_varchar2_table(18) := '20202020616B43617264732E73706F746C69676874426F756E64203D20747275653B0A2020202020202020646F63756D656E742E6164644576656E744C697374656E6572282022706F696E7465726D6F7665222C2066756E6374696F6E28206576656E74';
wwv_flow_imp.g_varchar2_table(19) := '2029207B0A2020202020202020202020207661722063617264203D206576656E742E7461726765742E636C6F73657374202626206576656E742E7461726765742E636C6F736573742820222E616B2D436172642D2D73706F746C696768742220292C0A20';
wwv_flow_imp.g_varchar2_table(20) := '202020202020202020202020202020726563742C207A6F6F6D3B0A0A2020202020202020202020206966202820636172642029207B0A2020202020202020202020202020202072656374203D20636172642E676574426F756E64696E67436C69656E7452';
wwv_flow_imp.g_varchar2_table(21) := '65637428293B0A202020202020202020202020202020202F2F2073697A65642063617264732075736520435353207A6F6F6D3A20706F696E74657220616E6420726563742061726520696E2073637265656E2070782C207468652070726F706572747920';
wwv_flow_imp.g_varchar2_table(22) := '697320696E20636172642070780A202020202020202020202020202020207A6F6F6D203D20636172642E63757272656E744353535A6F6F6D207C7C20313B0A20202020202020202020202020202020636172642E7374796C652E73657450726F70657274';
wwv_flow_imp.g_varchar2_table(23) := '792820222D2D616B2D78222C2028206576656E742E636C69656E7458202D20726563742E6C6566742029202F207A6F6F6D202B202270782220293B0A20202020202020202020202020202020636172642E7374796C652E73657450726F70657274792820';
wwv_flow_imp.g_varchar2_table(24) := '222D2D616B2D79222C2028206576656E742E636C69656E7459202D20726563742E746F702029202F207A6F6F6D202B202270782220293B0A2020202020202020202020207D0A20202020202020207D2C207B20706173736976653A2074727565207D2029';
wwv_flow_imp.g_varchar2_table(25) := '3B0A202020207D0A0A20202020696620282021616B43617264732E666C6970426F756E642029207B0A2020202020202020616B43617264732E666C6970426F756E64203D20747275653B0A2020202020202020616B43617264732E666C6970203D206675';
wwv_flow_imp.g_varchar2_table(26) := '6E6374696F6E2820656C2C2073746174652029207B0A20202020202020202020202076617220666C6970203D20242820656C20292E636C6F736573742820222E616B2D466C69702220293B0A20202020202020202020202072657475726E20666C69702E';
wwv_flow_imp.g_varchar2_table(27) := '746F67676C65436C61737328202269732D666C6970706564222C20737461746520292E686173436C61737328202269732D666C69707065642220293B0A20202020202020207D3B0A2020202020202020242820646F63756D656E7420292E6F6E28202263';
wwv_flow_imp.g_varchar2_table(28) := '6C69636B222C20222E616B2D466C6970222C2066756E6374696F6E28206576656E742029207B0A20202020202020202020202069662028202428206576656E742E74617267657420292E636C6F73657374282022612C20627574746F6E2C202E616B2D43';
wwv_flow_imp.g_varchar2_table(29) := '6172642D62746E2220292E6C656E6774682029207B0A2020202020202020202020202020202072657475726E3B0A2020202020202020202020207D0A202020202020202020202020696620282077696E646F772E6D617463684D6564696128202228686F';
wwv_flow_imp.g_varchar2_table(30) := '7665723A206E6F6E65292220292E6D6174636865732029207B0A20202020202020202020202020202020616B43617264732E666C697028207468697320293B0A2020202020202020202020207D0A20202020202020207D20293B0A202020207D0A7D2029';
wwv_flow_imp.g_varchar2_table(31) := '28293B0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(5648622585759014)
,p_plugin_id=>wwv_flow_imp.id(5633498110666055)
,p_file_name=>'modern-cards.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
