
[{assign var="oConfig" value=$oViewConf->getConfig()}]
[{assign var="oSession" value=$oConfig->getSession()}]
[{assign var="oDetailsProduct" value=$oView->getProduct()}]

[{assign var=bShow value=false}]
[{capture name="ul"}]
    [{if $oViewConf->getShowCompareList()}]
        [{assign var=bShow value=true}]
        <li>
            [{oxid_include_dynamic file="page/details/inc/compare_links.tpl" testid="" type="compare" aid=$oDetailsProduct->oxarticles__oxid->value anid=$oDetailsProduct->oxarticles__oxnid->value in_list=$oDetailsProduct->isOnComparisonList() page=$oView->getActPage() text_to_id="COMPARE" text_from_id="REMOVE_FROM_COMPARE_LIST"}]
        </li>
    [{/if}]

    [{if $oViewConf->getShowSuggest()}]
        [{assign var=bShow value=true}]
        <li>
            <a id="suggest" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=suggest" params="anid=`$oDetailsProduct->oxarticles__oxnid->value`"|cat:$oViewConf->getNavUrlParams()}]">[{oxmultilang ident="RECOMMEND"}]</a>
        </li>
    [{/if}]


    [{if $oViewConf->getShowListmania()}]
        [{assign var=bShow value=true}]
        <li>
            [{if $oxcmp_user}]
            <a id="recommList" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=recommadd" params="aid=`$oDetailsProduct->oxarticles__oxnid->value`&amp;anid=`$oDetailsProduct->oxarticles__oxnid->value`"|cat:$oViewConf->getNavUrlParams()|cat:"&amp;stoken="|cat:$oSession->getSessionChallengeToken()}]">[{oxmultilang ident="ADD_TO_LISTMANIA_LIST"}]</a>
            [{else}]
            <a id="loginToRecommlist" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" params="anid=`$oDetailsProduct->oxarticles__oxnid->value`"|cat:"&amp;sourcecl="|cat:$oViewConf->getTopActiveClassName()|cat:$oViewConf->getNavUrlParams()}]">[{oxmultilang ident="ADD_TO_LISTMANIA_LIST"}]</a>
            [{/if}]
        </li>
    [{/if}]

    [{if $oViewConf->getShowNoticeList()}]
        [{assign var=bShow value=true}]
        <li>
            [{if $oxcmp_user}]
            <a id="linkToNoticeList" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl="|cat:$oViewConf->getTopActiveClassName() params="aid=`$oDetailsProduct->oxarticles__oxnid->value`&amp;anid=`$oDetailsProduct->oxarticles__oxnid->value`&amp;fnc=tonoticelist&amp;am=1"|cat:$oViewConf->getNavUrlParams()|cat:"&amp;stoken="|cat:$oSession->getSessionChallengeToken()}]">[{oxmultilang ident="ADD_TO_WISH_LIST"}]</a>
            [{else}]
            <a id="loginToNotice" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" params="anid=`$oDetailsProduct->oxarticles__oxnid->value`"|cat:"&amp;sourcecl="|cat:$oViewConf->getTopActiveClassName()|cat:$oViewConf->getNavUrlParams()}]">[{oxmultilang ident="ADD_TO_WISH_LIST"}]</a>
            [{/if}]
        </li>
    [{/if}]

    [{if $oViewConf->getShowWishlist()}]
        [{assign var=bShow value=true}]
        <li>
            [{if $oxcmp_user}]
            <a id="linkToWishList" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl="|cat:$oViewConf->getTopActiveClassName() params="aid=`$oDetailsProduct->oxarticles__oxnid->value`&anid=`$oDetailsProduct->oxarticles__oxnid->value`&amp;fnc=towishlist&amp;am=1"|cat:$oViewConf->getNavUrlParams()|cat:"&amp;stoken="|cat:$oSession->getSessionChallengeToken()}]">[{oxmultilang ident="ADD_TO_GIFT_REGISTRY"}]</a>
            [{else}]
            <a id="loginToWish" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" params="anid=`$oDetailsProduct->oxarticles__oxnid->value`"|cat:"&amp;sourcecl="|cat:$oViewConf->getTopActiveClassName()|cat:$oViewConf->getNavUrlParams()}]">[{oxmultilang ident="ADD_TO_GIFT_REGISTRY"}]</a>
            [{/if}]
        </li>
    [{/if}]

    [{if $oView->getShowQuestionMail()}]
        [{assign var=bShow value=true}]
        <li>
            [{mailto extra='id="questionMail"' address=$oDetailsProduct->oxarticles__oxquestionemail->value|default:$oxcmp_shop->oxshops__oxinfoemail->value subject='QUESTIONS_ABOUT_THIS_PRODUCT'|oxmultilangassign|cat:" "|cat:$oDetailsProduct->oxarticles__oxartnum->value text='QUESTIONS_ABOUT_THIS_PRODUCT'|oxmultilangassign}]
        </li>
    [{/if}]
[{/capture}]

[{if $bShow}]
<ul class="list-unstyled details-action-links">
    [{$smarty.capture.ul}]
</ul>
[{/if}]
