<?php

namespace rs\deactivate\Core;

class ViewConfig extends ViewConfig_parent
{
    public function getShowNoticeList()
    {
        $oRet = true;
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_global_notice_list'))
            $oRet = false;
        return $oRet;
    }

    public function getShowNewsletter()
    {
        $oRet = true;
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_global_newsletter'))
            $oRet = false;
        return $oRet;
    }

    public function getShowFooterCategories()
    {
        $oRet = true;
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_footer_categories'))
            $oRet = false;
        return $oRet;
    }

    public function getShowFooterBrands()
    {
        $oRet = true;
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_footer_brands'))
            $oRet = false;
        return $oRet;
    }
}