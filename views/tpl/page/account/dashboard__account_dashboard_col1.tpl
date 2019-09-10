<div class="card">
    <div class="card-header">
        <a id="linkAccountPassword" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_password"}]">[{oxmultilang ident="CHANGE_PASSWORD"}]</a>
        <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_password"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
            <i class="fa fa-arrow-right"></i>
        </a>
    </div>
    <div class="card-body">[{oxmultilang ident="CHANGE_PASSWORD"}]</div>
</div>
[{if $oViewConf->getShowNewsletter()}]
    <div class="card">
        <div class="card-header">
            <a id="linkAccountNewsletter" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_newsletter"}]">[{oxmultilang ident="NEWSLETTER_SETTINGS"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_newsletter"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="NEWSLETTER_SUBSCRIBE_CANCEL"}]</div>
    </div>
[{/if}]
<div class="card">
    <div class="card-header">
        <a id="linkAccountBillship" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_user"}]">[{oxmultilang ident="BILLING_SHIPPING_SETTINGS"}]</a>
        <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_user"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
            <i class="fa fa-arrow-right"></i>
        </a>
    </div>
    <div class="card-body">[{oxmultilang ident="UPDATE_YOUR_BILLING_SHIPPING_SETTINGS"}]</div>
</div>
<div class="card">
    <div class="card-header">
        <a id="linkAccountOrder" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_order"}]">[{oxmultilang ident="ORDER_HISTORY"}]</a>
        <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_order"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
            <i class="fa fa-arrow-right"></i>
        </a>
    </div>
    <div class="card-body">[{oxmultilang ident="ORDERS"}] [{$oView->getOrderCnt()}]</div>
</div>
[{if $oView->isEnabledDownloadableFiles()}]
    <div class="card">
        <div class="card-header">
            <a id="linkAccountDownloads" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_downloads"}]">[{oxmultilang ident="MY_DOWNLOADS"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_downloads"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="MY_DOWNLOADS_DESC"}]</div>
    </div>
[{/if}]