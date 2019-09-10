[{if $oViewConf->getShowNoticeList()}]
    <div class="card">
        <div class="card-header">
            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist"}]">[{oxmultilang ident="MY_WISH_LIST"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_noticelist"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="PRODUCT"}] [{if $oxcmp_user}][{$oxcmp_user->getNoticeListArtCnt()}][{else}]0[{/if}]</div>
    </div>
[{/if}]
[{if $oViewConf->getShowWishlist()}]
    <div class="card">
        <div class="card-header">
            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist"}]">[{oxmultilang ident="MY_GIFT_REGISTRY"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_wishlist"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="PRODUCT"}] [{if $oxcmp_user}][{$oxcmp_user->getWishListArtCnt()}][{else}]0[{/if}]</div>
    </div>
[{/if}]
[{if $oViewConf->getShowCompareList()}]
    <div class="card">
        <div class="card-header">
            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=compare"}]">[{oxmultilang ident="MY_PRODUCT_COMPARISON"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=compare"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="PRODUCT"}] [{if $oView->getCompareItemsCnt()}][{$oView->getCompareItemsCnt()}][{else}]0[{/if}]</div>
    </div>
[{/if}]
[{if $oViewConf->getShowListmania()}]
    <div class="card">
        <div class="card-header">
            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist"}]">[{oxmultilang ident="MY_LISTMANIA"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_recommlist"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="LISTS"}] [{if $oxcmp_user->getRecommListsCount()}][{$oxcmp_user->getRecommListsCount()}][{else}]0[{/if}]</div>
    </div>
[{/if}]
[{if $oView->isUserAllowedToManageOwnReviews()}]
    <div class="card">
        <div class="card-header">
            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_reviewlist"}]">[{oxmultilang ident="MY_REVIEWS"}]</a>
            <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_reviewlist"}]" class="btn btn-outline-dark btn-sm float-right edit-button">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="card-body">[{oxmultilang ident="MY_REVIEWS"}] [{if $oView->getReviewAndRatingItemsCount()}][{$oView->getReviewAndRatingItemsCount()}][{else}]0[{/if}]</div>
    </div>
[{/if}]