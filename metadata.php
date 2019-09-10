<?php

$sMetadataVersion = '2.0';

$aModule = array(
    'id'          => 'rs-deactivate',
    'title'       => '*RS Deactivate',
    'description' => 'Deactivate some shop functions in WAVE theme',
    'thumbnail'   => '',
    'version'     => '1.0.4',
    'author'      => '',
    'url'         => '',
    'email'       => '',
    'extend'      => array(
        \OxidEsales\Eshop\Core\ViewConfig::class => rs\deactivate\Core\ViewConfig::class,
        \OxidEsales\Eshop\Application\Component\Widget\ArticleDetails::class => rs\deactivate\Component\Widget\ArticleDetails::class,
        \OxidEsales\Eshop\Core\Controller\BaseController::class => rs\deactivate\Core\Controller\BaseController::class,
    ),
    'templates' => array(
        'rs/deactivate/views/tpl/page/details/inc/productmain__details_productmain_productlinks.tpl' => 'rs/deactivate/views/tpl/page/details/inc/productmain__details_productmain_productlinks.tpl',
        'rs/deactivate/views/tpl/widget/footer/services__footer_services_items.tpl' => 'rs/deactivate/views/tpl/widget/footer/services__footer_services_items.tpl',
        'rs/deactivate/views/tpl/widget/header/servicebox__widget_header_servicebox_items.tpl' => 'rs/deactivate/views/tpl/widget/header/servicebox__widget_header_servicebox_items.tpl',
        'rs/deactivate/views/tpl/page/account/dashboard__account_dashboard_col1.tpl' => 'rs/deactivate/views/tpl/page/account/dashboard__account_dashboard_col1.tpl',
        'rs/deactivate/views/tpl/page/account/dashboard__account_dashboard_col2.tpl' => 'rs/deactivate/views/tpl/page/account/dashboard__account_dashboard_col2.tpl',
        'rs/deactivate/views/tpl/page/account/inc/account_menu__account_menu.tpl' => 'rs/deactivate/views/tpl/page/account/inc/account_menu__account_menu.tpl',
    ),
    'blocks'      => array(
        array(
            'template' => 'page/details/inc/productmain.tpl',
            'block'    => 'details_productmain_productlinks',
            'file'     => '/views/blocks/page/details/inc/productmain__details_productmain_productlinks.tpl',
        ),
        array(
            'template' => 'widget/footer/services.tpl',
            'block'    => 'footer_services_items',
            'file'     => '/views/blocks/widget/footer/services__footer_services_items.tpl',
        ),
        array(
            'template' => 'widget/header/servicebox.tpl',
            'block'    => 'widget_header_servicebox_items',
            'file'     => '/views/blocks/widget/header/servicebox__widget_header_servicebox_items.tpl',
        ),
        array(
            'template' => 'page/account/dashboard.tpl',
            'block'    => 'account_dashboard_col2',
            'file'     => '/views/blocks/page/account/dashboard__account_dashboard_col2.tpl',
        ),
        array(
            'template' => 'page/account/dashboard.tpl',
            'block'    => 'account_dashboard_col1',
            'file'     => '/views/blocks/page/account/dashboard__account_dashboard_col1.tpl',
        ),
        array(
            'template' => 'page/account/inc/account_menu.tpl',
            'block'    => 'account_menu',
            'file'     => '/views/blocks/page/account/inc/account_menu__account_menu.tpl',
        ),
        array(
            'template' => 'form/fieldset/order_newsletter.tpl',
            'block'    => 'user_billing_newsletter',
            'file'     => '/views/blocks/form/fieldset/order_newsletter__user_billing_newsletter.tpl',
        ),
        array(
            'template' => 'form/fieldset/user_account.tpl',
            'block'    => 'user_account_newsletter',
            'file'     => '/views/blocks/form/fieldset/user_account__user_account_newsletter.tpl',
        ),
        array(
            'template' => 'form/fieldset/user_noaccount.tpl',
            'block'    => 'user_noaccount_newsletter',
            'file'     => '/views/blocks/form/fieldset/user_noaccount__user_noaccount_newsletter.tpl',
        ),
        array(
            'template' => 'layout/footer.tpl',
            'block'    => 'dd_footer_manufacturerlist',
            'file'     => '/views/blocks/layout/footer__dd_footer_manufacturerlist.tpl',
        ),
        array(
            'template' => 'layout/footer.tpl',
            'block'    => 'dd_footer_categorytree',
            'file'     => '/views/blocks/layout/footer__dd_footer_categorytree.tpl',
        ),
    ),
    'settings'    => array(
        array(
            'group' => 'rs-deactivate_main_global',
            'name'  => 'rs-deactivate_global_notice_list',
            'type'  => 'bool',
            'value' => false,
        ),
        array(
            'group' => 'rs-deactivate_main_global',
            'name'  => 'rs-deactivate_global_newsletter',
            'type'  => 'bool',
            'value' => false,
        ),

        array(
            'group' => 'rs-deactivate_main_detail',
            'name'  => 'rs-deactivate_detail_pricealarm',
            'type'  => 'bool',
            'value' => false,
        ),
        array(
            'group' => 'rs-deactivate_main_detail',
            'name'  => 'rs-deactivate_detail_question_mail',
            'type'  => 'bool',
            'value' => false,
        ),

        array(
            'group' => 'rs-deactivate_main_footer',
            'name'  => 'rs-deactivate_footer_brands',
            'type'  => 'bool',
            'value' => false,
        ),
        array(
            'group' => 'rs-deactivate_main_footer',
            'name'  => 'rs-deactivate_footer_categories',
            'type'  => 'bool',
            'value' => false,
        ),
    ),
);