<?php

namespace rs\deactivate\Core\Controller;

class BaseController extends BaseController_parent
{
    public function showNewsletter()
    {
        $oRet = parent::showNewsletter();
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_global_newsletter'))
            $oRet = false;
        return $oRet;
    }
}