<div class="shop shop-userregister">

    <form method="post" action={"xrowecommerce/userregister/"|ezurl} name='register' >
        <input type="submit" class="hide" style="display: hide;" name="StoreButton" value="{'Continue'|i18n('extension/xrowecommerce')}" />
        <h1>{'My Account'|i18n('extension/xrowecommerce')}</h1>
        
        {include uri="design:shop/basket_navigator.tpl" step='2'}
        {include uri="design:shop/userregister_preface.tpl"}    
        
        {def $error_count = false}{foreach $fields as $error}{foreach $error.errors as $items}{if $items|count()|gt(0)}{set $error_count = "true"}{/if}{/foreach}{/foreach}
        {if $error_count|eq("true")}
            <div class="warning">
                <h2>{'Validation errors'|i18n('extension/xrowecommerce')}</h2>
                <ul>
                {foreach $fields as $error}
                    {foreach $error.errors as $items}
                        <li>{$items}</li>
                    {/foreach}
                {/foreach}
                </ul>
            </div>
        {/if}
        {undef $error_count}
        <div>
            <div class="billing">
                <h3>{'Billing Information'|i18n('extension/xrowecommerce')}</h3>
                <p><span class="required">* <i>{'Required field'|i18n('extension/xrowecommerce')}</i></span></p>
                <div class="labelbreak"></div>
                
                {if $fields.company_name.enabled}
                    <div class="ur_companyname block{if $fields.company_name.errors|count()|gt(0)} error{/if}">
                        <label>{'Company name'|i18n('extension/xrowecommerce')}{if $fields.company_name.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="company_name" id="company_name" value="{$company_name|wash}" />
                    </div>
                {/if}
                {if $fields.company_additional.enabled}
                    <div class="ur_company_additional block{if $fields.company_additional.errors|count()|gt(0)} error{/if}">
                        <label>{'Company additional information'|i18n('extension/xrowecommerce')}{if $fields.company_additional.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="company_additional" id="company_additional" value="{$company_additional|wash}" />
                    </div>
                {/if}
                {if $fields.tax_id.enabled}
                    <div class="ur_taxid block{if $fields.tax_id.errors|count()|gt(0)} error{/if}">
                        <label>{'Tax ID'|i18n('extension/xrowecommerce')}{if $fields.tax_id.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="tax_id" {if and( $tax_id, $tax_id_valid|eq('2') )} readonly="readonly" disabled{/if} value="{$tax_id|wash}" />
                    </div>
                {/if}
                {if $fields.first_name.enabled}
                    <div class="ur_firstname block{if $fields.first_name.errors|count()|gt(0)} error{/if}">
                        <label>{'First name'|i18n('extension/xrowecommerce')}{if $fields.first_name.required}<span class="required">*</span></label>
                        <div class="labelbreak"></div>
                        <input type="text" name="first_name" id="first_name" value="{$first_name|wash}" />
                    </div>
                {/if}
                {if $fields.mi.enabled}
                    <div class="ur_mi block{if $fields.mi.errors|count()|gt(0)} error{/if}">
                        <label>{'MI'|i18n('extension/xrowecommerce')}{if $fields.mi.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input class="halfbox" type="text" name="mi" id="mi" size="2" value="{$mi|wash}" />
                    </div>
                {/if}
                {if $fields.last_name.enabled}
                    <div class="ur_lastname block{if $fields.last_name.errors|count()|gt(0)} error{/if}">
                        <label>{'Last name'|i18n('extension/xrowecommerce')}{if $fields.last_name.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="last_name" id="last_name" value="{$last_name|wash}" />
                    </div>
                {/if}
                {if $fields.address1.enabled}
                    <div class="block{if $fields.address1.errors|count()|gt(0)} error{/if}">
                        <label>{'Address 1'|i18n('extension/xrowecommerce')}{if $fields.address1.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="address1" id="address1" size="20" value="{$address1|wash}" title="{'Street address, P.O. box, company name, c/o'|i18n('extension/xrowecommerce')}" />
                    </div>
                {/if}
                {if $fields.address2.enabled}
                    <div class="block{if $fields.address2.errors|count()|gt(0)} error{/if}">
                        <label>{'Address 2'|i18n('extension/xrowecommerce')}{if $fields.address2.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="address2" id="address2" size="20" value="{$address2|wash}" title="{'Apartment, suite, unit, building, floor, etc.'|i18n('extension/xrowecommerce')}" />
                    </div>
                {/if}
                {if $fields.zip.enabled}
                    <div class="zip block{if $fields.zip.errors|count()|gt(0)} error{/if}">
                        <label>{'Zip'|i18n('extension/xrowecommerce')}{if $fields.zip.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" class="zip" name="zip" id="zip" value="{$zip|wash()}" />
                    </div>
                {/if}
                {if $fields.city.enabled}
                    <div class="break"></div>
                    <div class="city block{if $fields.city.errors|count()|gt(0)} error{/if}">
                        <label>{'City'|i18n('extension/xrowecommerce')}{if $fields.city.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="city" id="city" value="{$city|wash}" />
                    </div>
                {/if}
                {if $fields.state.enabled}
                    <div class="state block{if $fields.state.errors|count()|gt(0)} error{/if}">
                        <label>{'State / Province'|i18n('extension/xrowecommerce')}{if $fields.state.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <select class="state" name="state" id="state">
                        <option value="">&nbsp;</option>
                            <optgroup label="USA">
                                <option  {if eq($state,'AL')} selected="selected" {/if} >AL</option>
                                <option  {if eq($state,'AK')} selected="selected" {/if} >AK</option>
                                <option  {if eq($state,'AS')} selected="selected" {/if} >AS</option>
                                <option  {if eq($state,'AZ')} selected="selected" {/if} >AZ</option>
                                <option  {if eq($state,'AR')} selected="selected" {/if} >AR</option>
                                <option  {if eq($state,'CA')} selected="selected" {/if} >CA</option>
                                <option  {if eq($state,'CO')} selected="selected" {/if} >CO</option>
                                <option  {if eq($state,'CT')} selected="selected" {/if} >CT</option>
                                <option  {if eq($state,'DE')} selected="selected" {/if} >DE</option>
                                <option  {if eq($state,'DC')} selected="selected" {/if} >DC</option>
                                <option  {if eq($state,'FM')} selected="selected" {/if} >FM</option>
                                <option  {if eq($state,'FL')} selected="selected" {/if} >FL</option>
                                <option  {if eq($state,'GA')} selected="selected" {/if} >GA</option>
                                <option  {if eq($state,'GU')} selected="selected" {/if} >GU</option>
                                <option  {if eq($state,'HI')} selected="selected" {/if} >HI</option>
                                <option  {if eq($state,'ID')} selected="selected" {/if} >ID</option>
                                <option  {if eq($state,'IL')} selected="selected" {/if} >IL</option>
                                <option  {if eq($state,'IN')} selected="selected" {/if} >IN</option>
                                <option  {if eq($state,'IA')} selected="selected" {/if} >IA</option>
                                <option  {if eq($state,'KS')} selected="selected" {/if} >KS</option>
                                <option  {if eq($state,'KY')} selected="selected" {/if} >KY</option>
                                <option  {if eq($state,'LA')} selected="selected" {/if} >LA</option>
                                <option  {if eq($state,'ME')} selected="selected" {/if} >ME</option>
                                <option  {if eq($state,'MH')} selected="selected" {/if} >MH</option>
                                <option  {if eq($state,'MD')} selected="selected" {/if} >MD</option>
                                <option  {if eq($state,'MA')} selected="selected" {/if} >MA</option>
                                <option  {if eq($state,'MI')} selected="selected" {/if} >MI</option>
                                <option  {if eq($state,'MN')} selected="selected" {/if} >MN</option>
                                <option  {if eq($state,'MS')} selected="selected" {/if} >MS</option>
                                <option  {if eq($state,'MO')} selected="selected" {/if} >MO</option>
                                <option  {if eq($state,'MT')} selected="selected" {/if} >MT</option>
                                <option  {if eq($state,'NE')} selected="selected" {/if} >NE</option>
                                <option  {if eq($state,'NV')} selected="selected" {/if} >NV</option>
                                <option  {if eq($state,'NH')} selected="selected" {/if} >NH</option>
                                <option  {if eq($state,'NJ')} selected="selected" {/if} >NJ</option>
                                <option  {if eq($state,'NM')} selected="selected" {/if} >NM</option>
                                <option  {if eq($state,'NY')} selected="selected" {/if} >NY</option>
                                <option  {if eq($state,'NC')} selected="selected" {/if} >NC</option>
                                <option  {if eq($state,'ND')} selected="selected" {/if} >ND</option>
                                <option  {if eq($state,'MP')} selected="selected" {/if} >MP</option>
                                <option  {if eq($state,'OH')} selected="selected" {/if} >OH</option>
                                <option  {if eq($state,'OK')} selected="selected" {/if} >OK</option>
                                <option  {if eq($state,'OR')} selected="selected" {/if} >OR</option>
                                <option  {if eq($state,'PW')} selected="selected" {/if} >PW</option>
                                <option  {if eq($state,'PA')} selected="selected" {/if} >PA</option>
                                <option  {if eq($state,'PR')} selected="selected" {/if} >PR</option>
                                <option  {if eq($state,'RI')} selected="selected" {/if} >RI</option>
                                <option  {if eq($state,'SC')} selected="selected" {/if} >SC</option>
                                <option  {if eq($state,'SD')} selected="selected" {/if} >SD</option>
                                <option  {if eq($state,'TN')} selected="selected" {/if} >TN</option>
                                <option  {if eq($state,'TX')} selected="selected" {/if} >TX</option>
                                <option  {if eq($state,'UT')} selected="selected" {/if} >UT</option>
                                <option  {if eq($state,'VT')} selected="selected" {/if} >VT</option>
                                <option  {if eq($state,'VI')} selected="selected" {/if} >VI</option>
                                <option  {if eq($state,'VA')} selected="selected" {/if} >VA</option>
                                <option  {if eq($state,'WA')} selected="selected" {/if} >WA</option>
                                <option  {if eq($state,'WV')} selected="selected" {/if} >WV</option>
                                <option  {if eq($state,'WI')} selected="selected" {/if} >WI</option>
                                <option  {if eq($state,'WY')} selected="selected" {/if} >WY</option>
                             </optgroup>
                             <optgroup label="Canada">
                                <option  {if eq($state,'AB')} selected="selected" {/if} >AB</option>
                                <option  {if eq($state,'BC')} selected="selected" {/if} >BC</option>
                                <option  {if eq($state,'MB')} selected="selected" {/if} >MB</option>
                                <option  {if eq($state,'NB')} selected="selected" {/if} >NB</option>
                                <option  {if eq($state,'NF')} selected="selected" {/if} >NF</option>
                                <option  {if eq($state,'NS')} selected="selected" {/if} >NS</option>
                                <option  {if eq($state,'NT')} selected="selected" {/if} >NT</option>
                                <option  {if eq($state,'ON')} selected="selected" {/if} >ON</option>
                                <option  {if eq($state,'PE')} selected="selected" {/if} >PE</option>
                                <option  {if eq($state,'PQ')} selected="selected" {/if} >PQ</option>
                                <option  {if eq($state,'SK')} selected="selected" {/if} >SK</option>
                                <option  {if eq($state,'YT')} selected="selected" {/if} >YT</option>
                             </optgroup>
                             <optgroup label="Mexico">
                                <option  {if eq($state,'AG')} selected="selected" {/if} >AG</option>
                                <option  {if eq($state,'BC')} selected="selected" {/if} >BC</option>
                                <option  {if eq($state,'BS')} selected="selected" {/if} >BS</option>
                                <option  {if eq($state,'CH')} selected="selected" {/if} >CH</option>
                                <option  {if eq($state,'CL')} selected="selected" {/if} >CL</option>
                                <option  {if eq($state,'CM')} selected="selected" {/if} >CM</option>
                                <option  {if eq($state,'CO')} selected="selected" {/if} >CO</option>
                                <option  {if eq($state,'CS')} selected="selected" {/if} >CS</option>
                                <option  {if eq($state,'DF')} selected="selected" {/if} >DF</option>
                                <option  {if eq($state,'DG')} selected="selected" {/if} >DG</option>
                                <option  {if eq($state,'GR')} selected="selected" {/if} >GR</option>
                                <option  {if eq($state,'GT')} selected="selected" {/if} >GT</option>
                                <option  {if eq($state,'HG')} selected="selected" {/if} >HG</option>
                                <option  {if eq($state,'JA')} selected="selected" {/if} >JA</option>
                                <option  {if eq($state,'MI')} selected="selected" {/if} >MI</option>
                                <option  {if eq($state,'MO')} selected="selected" {/if} >MO</option>
                                <option  {if eq($state,'MX')} selected="selected" {/if} >MX</option>
                                <option  {if eq($state,'NA')} selected="selected" {/if} >NA</option>
                                <option  {if eq($state,'NL')} selected="selected" {/if} >NL</option>
                                <option  {if eq($state,'OA')} selected="selected" {/if} >OA</option>
                                <option  {if eq($state,'PU')} selected="selected" {/if} >PU</option>
                                <option  {if eq($state,'QR')} selected="selected" {/if} >QR</option>
                                <option  {if eq($state,'QT')} selected="selected" {/if} >QT</option>
                                <option  {if eq($state,'SI')} selected="selected" {/if} >SI</option>
                                <option  {if eq($state,'SL')} selected="selected" {/if} >SL</option>
                                <option  {if eq($state,'SO')} selected="selected" {/if} >SO</option>
                                <option  {if eq($state,'TB')} selected="selected" {/if} >TB</option>
                                <option  {if eq($state,'TL')} selected="selected" {/if} >TL</option>
                                <option  {if eq($state,'TM')} selected="selected" {/if} >TM</option>
                                <option  {if eq($state,'VE')} selected="selected" {/if} >VE</option>
                                <option  {if eq($state,'YU')} selected="selected" {/if} >YU</option>
                                <option  {if eq($state,'ZA')} selected="selected" {/if} >ZA</option>
                             </optgroup>
                        </select>
                    </div>
                {/if}
                    <div class="break"></div>
                
                {if $fields.country.enabled}
                    <div class="country block{if $fields.country.errors|count()|gt(0)} error{/if}">
                        <label>{'Country'|i18n('extension/xrowecommerce')}{if $fields.country.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                    
                        {def $countries=fetch( 'content', 'country_list', array(false, false))}
                                <select name="country" id="country">
                                    {*<option value="">&nbsp;</option>*}
                                    {foreach $countries as $country_list_item}
                                     <option value="{$country_list_item.Alpha3}" {if and( $country|ne(''), eq( $country, $country_list_item.Alpha3 ))} selected="selected"{/if}>
                                        {$country_list_item.Name|wash}
                                    </option>
                                    {/foreach}
                                </select>
                    
                    </div>
                {/if}
                
                <div class="break"></div>
                
                {if $fields.phone.enabled}
                    <div class="block{if $fields.phone.errors|count()|gt(0)} error{/if}">
                        <label>{'Phone'|i18n('extension/xrowecommerce')}{if $fields.phone.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="phone" class="phone" id="phone" value="{$phone|wash}" />
                    </div>
                {/if}
                
                {if $fields.fax.enabled}
                    <div class="block{if $fields.fax.errors|count()|gt(0)} error{/if}">
                        <label>{'Fax'|i18n('extension/xrowecommerce')}{if $fields.fax.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="fax" id="fax" class="fax" value="{$fax|wash}" />
                    </div>
                {/if}
                
                {if $fields.email.enabled}
                    <div class="block{/if}{if $fields.email.errors|count()|gt(0)} error{/if}">
                        <label>{'E-mail'|i18n('extension/xrowecommerce')}{if $fields.email.required}<span class="required">*</span>{/if}</label>
                        <div class="labelbreak"></div>
                        <input class="phone" type="text" name="email" id="email" value="{$email|wash}" />
                    </div>
                {/if}
                <div class="break"></div>
                
                {def $shipping_methods=fetch( 'shipping', 'list_methods' )}
                <div class="block">
                    {if $shipping_methods|count|gt(1)}
                            <label>{'Shipping'|i18n('extension/xrowecommerce')}<span class="required">*</span></label>
                            <div class="labelbreak"></div>
                            <select name="shippingtype" id="shippingtype">
                                {foreach $shipping_methods as $shipping_method}
                                <option value="{$shipping_method.identifier}" {if $shippingtype|eq($shipping_method.identifier)} selected="selected" {/if}>{$shipping_method.name}</option>
                                {/foreach}
                            </select>
                    {elseif $shipping_methods|count|eq(1)}
                        <input name="shippingtype" value="{$shipping_methods.0.identifier}" type="hidden">
                    {/if}
                </div>
                <div class="break"></div>
                
            </div> {*LEFT COL END*}
            
            {* right column *}
            <div class="shipping">
                <h3>{'Shipping Information'|i18n( 'extension/xrowecommerce' )}</h3>
                <label class="shipping-checkbox" for="shipping-checkbox"><input class="shipping-checkbox" id="shipping-checkbox" name="shipping" value="1" type="checkbox" {if $shipping} checked="checked" {/if}  />{'My billing and shipping addresses are identical.'|i18n('extension/xrowecommerce')}</label>
                <div class="block" id="shippinginfo"{if $shipping} style="display: none;"{else} style="display: block;"{/if}>
                    <p><span class="required">* {'Required field'|i18n('extension/xrowecommerce')}</span></p>
                    
                    {if $fields.s_company_name.enabled}
                        <div class="ur_companyname block{if $fields.s_company_name.errors|count()|gt(0)} error{/if}">
                            <label>{'Company name'|i18n('extension/xrowecommerce')}{if $fields.s_company_name.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_company_name" id="s_company_name" value="{$s_company_name|wash}" />
                    
                        </div>
                    {/if}
                    
                    {if $fields.s_company_additional.enabled}
                        <div class="ur_company_additional block{if $fields.s_company_additional.errors|count()|gt(0)} error{/if}">
                            <label>{'Company additional information'|i18n('extension/xrowecommerce')}{if $fields.s_company_additional.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_company_additional" id="s_company_additional" value="{$s_company_additional|wash}" />
                        </div>
                    {/if}
                    
                    {if $fields.s_first_name.enabled}
                        <div class="ur_firstname block{if $fields.s_first_name.errors|count()|gt(0)} error{/if}">
                            <label>{'First name'|i18n('extension/xrowecommerce')}{if $fields.s_first_name.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_first_name" id="s_first_name" value="{$s_first_name|wash}" />
                        </div>
                    {/if}
                    
                    {if $fields.s_mi.enabled}
                        <div class="ur_mi block{if $fields.s_mi.errors|count()|gt(0)} error{/if}">
                            <label>{'MI'|i18n('extension/xrowecommerce')}{if $fields.s_mi.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input class="halfbox" type="text" name="s_mi" id="s_mi" size="2" value="{$s_mi|wash}" />
                        </div>
                    {/if}
                    
                    {if $fields.s_last_name.enabled}
                        <div class="ur_lastname block{if $fields.s_last_name.errors|count()|gt(0)} error{/if}">
                            <label>{'Last name'|i18n('extension/xrowecommerce')}{if $fields.s_last_name.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_last_name" id="s_last_name" value="{$s_last_name|wash}" />
                        </div>
                    {/if}
                    
                    {if $fields.s_address1.enabled}
                        <div class="block{if $fields.s_address1.errors|count()|gt(0)} error{/if}">
                            <label>{'Address 1'|i18n('extension/xrowecommerce')}{if $fields.s_address1.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_address1" id="s_address1" size="20" value="{$s_address1|wash}" />
                        </div>
                    {/if}
                    
                    {if $fields.s_address2.enabled}
                        <div class="block{if $fields.s_address2.errors|count()|gt(0)} error{/if}">
                            <label>{'Address 2'|i18n('extension/xrowecommerce')}{if $fields.s_address2.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_address2" size="20" id="s_address2" value="{$s_address2|wash}" />
                        </div>
                    {/if}
                    
                    {if $fields.s_zip.enabled}
                        <div class="zip block{if $fields.s_zip.errors|count()|gt(0)} error{/if}">
                            <label>{'Zip'|i18n('extension/xrowecommerce')}{if $fields.s_zip.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_zip" id="s_zip" value="{$s_zip|wash()}"/>
                        </div>
                    {/if}
                    <div class="break"></div>
                    
                    {if $fields.s_city.enabled}
                        <div class="city block{if $fields.s_city.errors|count()|gt(0)} error{/if}">
                            <label>{'City'|i18n('extension/xrowecommerce')}{if $fields.s_city.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input type="text" name="s_city" value="{$s_city|wash}" id="s_city" />
                        </div>
                    {/if}
                    
                    {if $fields.s_state.enabled}
                        <div class="state block{if $fields.s_state.errors|count()|gt(0)} error{/if}">
                            <label>{'State / Province'|i18n('extension/xrowecommerce')}{if $fields.s_state.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <select name="s_state" id="s_state">
                                    <option value="">&nbsp;</option>
                                    <optgroup label="USA">
                                        <option  {if eq($s_state,'AL')} selected="selected" {/if} >AL</option>
                                        <option  {if eq($s_state,'AK')} selected="selected" {/if} >AK</option>
                                        <option  {if eq($s_state,'AS')} selected="selected" {/if} >AS</option>
                                        <option  {if eq($s_state,'AZ')} selected="selected" {/if} >AZ</option>
                                        <option  {if eq($s_state,'AR')} selected="selected" {/if} >AR</option>
                                        <option  {if eq($s_state,'CA')} selected="selected" {/if} >CA</option>
                                        <option  {if eq($s_state,'CO')} selected="selected" {/if} >CO</option>
                                        <option  {if eq($s_state,'CT')} selected="selected" {/if} >CT</option>
                                        <option  {if eq($s_state,'DE')} selected="selected" {/if} >DE</option>
                                        <option  {if eq($s_state,'DC')} selected="selected" {/if} >DC</option>
                                        <option  {if eq($s_state,'FM')} selected="selected" {/if} >FM</option>
                                        <option  {if eq($s_state,'FL')} selected="selected" {/if} >FL</option>
                                        <option  {if eq($s_state,'GA')} selected="selected" {/if} >GA</option>
                                        <option  {if eq($s_state,'GU')} selected="selected" {/if} >GU</option>
                                        <option  {if eq($s_state,'HI')} selected="selected" {/if} >HI</option>
                                        <option  {if eq($s_state,'ID')} selected="selected" {/if} >ID</option>
                                        <option  {if eq($s_state,'IL')} selected="selected" {/if} >IL</option>
                                        <option  {if eq($s_state,'IN')} selected="selected" {/if} >IN</option>
                                        <option  {if eq($s_state,'IA')} selected="selected" {/if} >IA</option>
                                        <option  {if eq($s_state,'KS')} selected="selected" {/if} >KS</option>
                                        <option  {if eq($s_state,'KY')} selected="selected" {/if} >KY</option>
                                        <option  {if eq($s_state,'LA')} selected="selected" {/if} >LA</option>
                                        <option  {if eq($s_state,'ME')} selected="selected" {/if} >ME</option>
                                        <option  {if eq($s_state,'MH')} selected="selected" {/if} >MH</option>
                                        <option  {if eq($s_state,'MD')} selected="selected" {/if} >MD</option>
                                        <option  {if eq($s_state,'MA')} selected="selected" {/if} >MA</option>
                                        <option  {if eq($s_state,'MI')} selected="selected" {/if} >MI</option>
                                        <option  {if eq($s_state,'MN')} selected="selected" {/if} >MN</option>
                                        <option  {if eq($s_state,'MS')} selected="selected" {/if} >MS</option>
                                        <option  {if eq($s_state,'MO')} selected="selected" {/if} >MO</option>
                                        <option  {if eq($s_state,'MT')} selected="selected" {/if} >MT</option>
                                        <option  {if eq($s_state,'NE')} selected="selected" {/if} >NE</option>
                                        <option  {if eq($s_state,'NV')} selected="selected" {/if} >NV</option>
                                        <option  {if eq($s_state,'NH')} selected="selected" {/if} >NH</option>
                                        <option  {if eq($s_state,'NJ')} selected="selected" {/if} >NJ</option>
                                        <option  {if eq($s_state,'NM')} selected="selected" {/if} >NM</option>
                                        <option  {if eq($s_state,'NY')} selected="selected" {/if} >NY</option>
                                        <option  {if eq($s_state,'NC')} selected="selected" {/if} >NC</option>
                                        <option  {if eq($s_state,'ND')} selected="selected" {/if} >ND</option>
                                        <option  {if eq($s_state,'MP')} selected="selected" {/if} >MP</option>
                                        <option  {if eq($s_state,'OH')} selected="selected" {/if} >OH</option>
                                        <option  {if eq($s_state,'OK')} selected="selected" {/if} >OK</option>
                                        <option  {if eq($s_state,'OR')} selected="selected" {/if} >OR</option>
                                        <option  {if eq($s_state,'PW')} selected="selected" {/if} >PW</option>
                                        <option  {if eq($s_state,'PA')} selected="selected" {/if} >PA</option>
                                        <option  {if eq($s_state,'PR')} selected="selected" {/if} >PR</option>
                                        <option  {if eq($s_state,'RI')} selected="selected" {/if} >RI</option>
                                        <option  {if eq($s_state,'SC')} selected="selected" {/if} >SC</option>
                                        <option  {if eq($s_state,'SD')} selected="selected" {/if} >SD</option>
                                        <option  {if eq($s_state,'TN')} selected="selected" {/if} >TN</option>
                                        <option  {if eq($s_state,'TX')} selected="selected" {/if} >TX</option>
                                        <option  {if eq($s_state,'UT')} selected="selected" {/if} >UT</option>
                                        <option  {if eq($s_state,'VT')} selected="selected" {/if} >VT</option>
                                        <option  {if eq($s_state,'VI')} selected="selected" {/if} >VI</option>
                                        <option  {if eq($s_state,'VA')} selected="selected" {/if} >VA</option>
                                        <option  {if eq($s_state,'WA')} selected="selected" {/if} >WA</option>
                                        <option  {if eq($s_state,'WV')} selected="selected" {/if} >WV</option>
                                        <option  {if eq($s_state,'WI')} selected="selected" {/if} >WI</option>
                                        <option  {if eq($s_state,'WY')} selected="selected" {/if} >WY</option>
                                     </optgroup>
                                     <optgroup label="Canada">
                                        <option  {if eq($s_state,'AB')} selected="selected" {/if} >AB</option>
                                        <option  {if eq($s_state,'BC')} selected="selected" {/if} >BC</option>
                                        <option  {if eq($s_state,'MB')} selected="selected" {/if} >MB</option>
                                        <option  {if eq($s_state,'NB')} selected="selected" {/if} >NB</option>
                                        <option  {if eq($s_state,'NF')} selected="selected" {/if} >NF</option>
                                        <option  {if eq($s_state,'NS')} selected="selected" {/if} >NS</option>
                                        <option  {if eq($s_state,'NT')} selected="selected" {/if} >NT</option>
                                        <option  {if eq($s_state,'ON')} selected="selected" {/if} >ON</option>
                                        <option  {if eq($s_state,'PE')} selected="selected" {/if} >PE</option>
                                        <option  {if eq($s_state,'PQ')} selected="selected" {/if} >PQ</option>
                                        <option  {if eq($s_state,'SK')} selected="selected" {/if} >SK</option>
                                        <option  {if eq($s_state,'YT')} selected="selected" {/if} >YT</option>
                                     </optgroup>
                                     <optgroup label="Mexico">
                                        <option  {if eq($s_state,'AG')} selected="selected" {/if} >AG</option>
                                        <option  {if eq($s_state,'BC')} selected="selected" {/if} >BC</option>
                                        <option  {if eq($s_state,'BS')} selected="selected" {/if} >BS</option>
                                        <option  {if eq($s_state,'CH')} selected="selected" {/if} >CH</option>
                                        <option  {if eq($s_state,'CL')} selected="selected" {/if} >CL</option>
                                        <option  {if eq($s_state,'CM')} selected="selected" {/if} >CM</option>
                                        <option  {if eq($s_state,'CO')} selected="selected" {/if} >CO</option>
                                        <option  {if eq($s_state,'CS')} selected="selected" {/if} >CS</option>
                                        <option  {if eq($s_state,'DF')} selected="selected" {/if} >DF</option>
                                        <option  {if eq($s_state,'DG')} selected="selected" {/if} >DG</option>
                                        <option  {if eq($s_state,'GR')} selected="selected" {/if} >GR</option>
                                        <option  {if eq($s_state,'GT')} selected="selected" {/if} >GT</option>
                                        <option  {if eq($s_state,'HG')} selected="selected" {/if} >HG</option>
                                        <option  {if eq($s_state,'JA')} selected="selected" {/if} >JA</option>
                                        <option  {if eq($s_state,'MI')} selected="selected" {/if} >MI</option>
                                        <option  {if eq($s_state,'MO')} selected="selected" {/if} >MO</option>
                                        <option  {if eq($s_state,'MX')} selected="selected" {/if} >MX</option>
                                        <option  {if eq($s_state,'NA')} selected="selected" {/if} >NA</option>
                                        <option  {if eq($s_state,'NL')} selected="selected" {/if} >NL</option>
                                        <option  {if eq($s_state,'OA')} selected="selected" {/if} >OA</option>
                                        <option  {if eq($s_state,'PU')} selected="selected" {/if} >PU</option>
                                        <option  {if eq($s_state,'QR')} selected="selected" {/if} >QR</option>
                                        <option  {if eq($s_state,'QT')} selected="selected" {/if} >QT</option>
                                        <option  {if eq($s_state,'SI')} selected="selected" {/if} >SI</option>
                                        <option  {if eq($s_state,'SL')} selected="selected" {/if} >SL</option>
                                        <option  {if eq($s_state,'SO')} selected="selected" {/if} >SO</option>
                                        <option  {if eq($s_state,'TB')} selected="selected" {/if} >TB</option>
                                        <option  {if eq($s_state,'TL')} selected="selected" {/if} >TL</option>
                                        <option  {if eq($s_state,'TM')} selected="selected" {/if} >TM</option>
                                        <option  {if eq($s_state,'VE')} selected="selected" {/if} >VE</option>
                                        <option  {if eq($s_state,'YU')} selected="selected" {/if} >YU</option>
                                        <option  {if eq($s_state,'ZA')} selected="selected" {/if} >ZA</option>
                                     </optgroup>
                                </select>
                        </div>
                        <div class="break"></div>
                    {/if}
                    
                    {if $fields.s_country.enabled}
                        <div class="country block{if $fields.s_country.errors|count()|gt(0)} error{/if}">
                            <label>{'Country'|i18n('extension/xrowecommerce')}{if $fields.s_country.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                        
                                    <select name="s_country" id="s_country">
                                        {foreach $countries as $country_list_item}
                                         <option value="{$country_list_item.Alpha3}" {if and( $s_country|ne(''), eq( $s_country, $country_list_item.Alpha3 ))} selected="selected"{/if}>
                                            {$country_list_item.Name}
                                        </option>
                                        {/foreach}
                                    </select>
                        </div>
                        <div class="break"></div>
                    {/if}
    
                    {if $fields.s_phone.enabled}
                        <div class="block{if $fields.s_phone.errors|count()|gt(0)} error{/if}">
                            <label>{'Phone'|i18n('extension/xrowecommerce')}{if $fields.s_phone.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input class="phone" type="text" id="s_phone" name="s_phone" value="{$s_phone|wash}" />
                        </div>
                    {/if}
    
                    {if $fields.s_fax.enabled}
                        <div class="block{if $fields.s_fax.errors|count()|gt(0)} error{/if}">
                            <label>{'Fax'|i18n('extension/xrowecommerce')}{if $fields.s_fax.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input class="phone" type="text" id="s_fax" name="s_fax" value="{$s_fax|wash}" />
                        </div>
                    {/if}
    
                    {if $fields.s_email.enabled}
                        <div class="block{if $fields.s_email.errors|count()|gt(0)} error{/if}">
                            <label>{'E-mail'|i18n('extension/xrowecommerce')}{if $fields.s_email.required}<span class="required">*</span>{/if}</label>
                            <div class="labelbreak"></div>
                            <input class="phone" type="text" name="s_email" id="semail" value="{$s_email|wash}" />
                        </div>
                        <div class="break"></div>
                    {/if}
                </div>
            
            {* / left column *}
            </div>
            
            {if ezini('Fields','Coupon','xrowecommerce.ini').enabled|eq('true')}
                <div class="coupon">
                    <h3>{'Coupon'|i18n('extension/xrowecommerce')}</h3>
                    <p>{'Please enter your coupon code exactly as it appears on your promotion.'|i18n('extension/xrowecommerce')}</p>
                    <div class="block">
                        <label>{'Coupon'|i18n('extension/xrowecommerce')}</label>
                        <div class="labelbreak"></div>
                        <input type="text" name="coupon_code" id="coupon_code" value="{$coupon_code|wash}" size="20" />
                    </div>
                </div>
            {/if}
    
            <div class="additional-information">
                <h3>{'Additional Information'|i18n( 'extension/xrowecommerce' )}</h3>
    
                {* Captcha Start *}
                    {def $access=fetch( 'user', 'has_access_to',
                                        hash( 'module',   'xrowecommerce',
                                              'function', 'bypass_captcha' ) )}
    
                    {if and( ezini('Fields','Captcha','xrowecommerce.ini').enabled|eq('true'), $access|not, ezhttp( 'xrowCaptchaSolved', 'session' )|not)}
                        <div class="block">
                            <label>{'Verification'|i18n('extension/xrowecommerce')}<span class="required">*</span></label>
                            <div class="labelbreak"></div>
                            {def $lang=ezini('Display','OverrideLang','recaptcha.ini')}
                            {if $lang|eq('')}{set $lang="en"}{/if}
                            <script type="text/javascript">
                                RecaptchaTheme='{ezini('Display','Theme','recaptcha.ini')}';
                                RecaptchaLang='{$lang}';
                                {literal}
                                var RecaptchaOptions = {
                                theme: RecaptchaTheme,
                                lang: RecaptchaLang,
                                };
                                {/literal}
                            </script>
                            {recaptcha_get_html()}
                        </div>
                    {/if}
                {* Captcha End *}
    
                {* Your No Partial Delivery *}
                {if ezini('Fields','NoPartialDelivery','xrowecommerce.ini').enabled|eq('true')}
                    <div class="block">
                            <label class="no_partial_delivery" for="no_partial_delivery"><input class="no_partial_delivery" type="checkbox" name="no_partial_delivery" id="no_partial_delivery" {if $no_partial_delivery} checked="checked" {/if} value="1" />{'No partial delivery'|i18n('extension/xrowecommerce')}</label>
                    </div>
                {/if}
            
                {* Your Reference *}
                {if ezini('Fields','Reference','xrowecommerce.ini').enabled|eq('true')}
                    <div class="block">
                            <label for="reference">{'Your reference'|i18n('extension/xrowecommerce')}</label>
                            <div class="labelbreak"></div>
                            <input class="reference" type="text" name="reference" id="reference" value="{$reference|wash}" />
                    </div>
                {/if}
            
                {* Your Message *}
                {if ezini('Fields','Message','xrowecommerce.ini').enabled|eq('true')}
                    <div class="block">
                            <label for="message">{'Your notes on order'|i18n('extension/xrowecommerce')}</label>
                            <div class="labelbreak"></div>
                            <textarea class="message" name="message" id="message" rows="10" cols="50">{$message|wash}</textarea>
                    </div>
                {/if}
            </div>
            
            <div class="buttonblock">
                <input id="cancel-button" class="button" type="submit" name="CancelButton" value="{'Cancel'|i18n('extension/xrowecommerce')}" title="{'Cancel order'|i18n('extension/xrowecommerce')}" />
                <input id="continue-button" class="button" type="submit" name="StoreButton" value="{'Continue'|i18n('extension/xrowecommerce')}" title="{'Continue order'|i18n('extension/xrowecommerce')}" />
            </div>
        </div>
        {literal}
            <script type="text/javascript">
                changeShipping();
                updateShipping();
            </script>
        {/literal}
    </form>
</div>