<?php

namespace rs\deactivate\Component\Widget;

class ArticleDetails extends ArticleDetails_parent
{
    public function isPriceAlarm()
    {
        $oRet = parent::isPriceAlarm();
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_detail_pricealarm'))
            $oRet = null;
        return $oRet;
    }

    public function getShowQuestionMail()
    {
        $oRet = true;
        if((bool) $this->getConfig()->getConfigParam('rs-deactivate_detail_question_mail'))
            $oRet = false;
        return $oRet;
    }
}
