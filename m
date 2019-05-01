Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBAF10B7C
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  1 May 2019 18:42:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hLsJ4-0007gF-1U; Wed, 01 May 2019 16:42:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hLsJ3-0007g9-2Z
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 May 2019 16:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fbidAVxL/+C4GnRDyVRJm+aDWDujR0UHb3nSwPjAKeo=; b=ivkXP0uhA59lMyQo63GQGqPNXe
 4jlBXSRm/ZnLmB7e7Ht1Y5qQXT9r/31MuxdcowSSr4JRVz9M6y7nirh++GjsB0LNfKZ7issfAMgeg
 fklMtTwlSfrf9X4gBdgAINdMBS0waYaEooc3E+7q5umPV+kHkJTxsobnpYQTOQz3oHQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fbidAVxL/+C4GnRDyVRJm+aDWDujR0UHb3nSwPjAKeo=; b=YxHlnf0KiTEp6w5iYtDw3SMM0p
 hndYq5jrXSxXs5oYewHeSQROa5+iAL60gD0CDuois19LZ+A/NPCfFPyNWsaqZmZ4MPSNjQTKTtRcP
 qVJwVpn52lN5VGFTC/SqBLiPgwFY3HO+4GdbezrYD7VMQfSZNRy7/GOxNd2MC9VAIOMk=;
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hLsJ1-001q3i-JS
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 May 2019 16:42:05 +0000
Received: by mail-lf1-f68.google.com with SMTP id j20so13528099lfh.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 01 May 2019 09:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fbidAVxL/+C4GnRDyVRJm+aDWDujR0UHb3nSwPjAKeo=;
 b=MWs7o6Ttgnwr1GZIiAzhbdZ/qLGLO+UrmWkbxIi6232ENCO1811NJ03l5PmupkOcgJ
 YNXgM/Z1dgGCAJ4iIukJJdeCaKLgmrg1b4RuDDH000okQxoVXUdiis9E25w6loiM3XvM
 KNr85cFly+uh5VDBOm+9IBNMKWk+/ly1skutHbvWE5dATIh2N/OcCSWXO29C9YDEpHTC
 IeNx6hCgZ2pgWqHK4xiQ1Q9SfverKufumJ6fFphQE0yX9IQNzlzKJwiMdIzX71dKtHZ7
 MQoV6VhjT2Ob3JfB2vctYYQj/D3AJlxPTJSvtkivmkeRkVhqUBXgZVXr+It+nKOOw+OI
 1SZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fbidAVxL/+C4GnRDyVRJm+aDWDujR0UHb3nSwPjAKeo=;
 b=gFUaY5JFLXhyIptAencZA1Rd45c4P6K4x16ZRYCLgrBNTWyH9R7FeSDdQ8XDp2bAdy
 vkLea2jXRt8X66wttgFTC3nJi2nvCej9S0fzLqs4L8GATSZ5WWXyx0zSb+5zJMLlbsIR
 +zZFl0T0KYl8/7kl3OAy8y+qKOZ49T9woGRaK8bUguiOX78NaeR/femNOUi5V9NKwzW5
 KAroGORoVPOqsrQXw5e3K6KfjwVPPoL+Hr1CJnFF1iHfI4IckhtswbV0/XD72AcqBpmL
 pt6NCLp/LDWeZ+1z+CZ4xrlN/OYQCnzexs0mkO10nrZI64kVRkQMs67VThHVCtiJpMu0
 059g==
X-Gm-Message-State: APjAAAXZZZL6r5sT22GudWBVZeQJWP5UeOCq5QV5YL+Bd8Vx90dHeT4Q
 eX0K2US21Ak5dsn3+RbgyEU=
X-Google-Smtp-Source: APXvYqz5aoaZCl6Q5QjICMVZ/B2HZtiGCrfohHd2xQNBQDH2lYOM9goOD4xG90g/9pZVtg8x6S5OIQ==
X-Received: by 2002:ac2:4192:: with SMTP id z18mr3293987lfh.96.1556728916891; 
 Wed, 01 May 2019 09:41:56 -0700 (PDT)
Received: from [192.168.1.19] (chf176.neoplus.adsl.tpnet.pl. [83.31.3.176])
 by smtp.gmail.com with ESMTPSA id 39sm1063178lja.11.2019.05.01.09.41.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 09:41:56 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com> <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com> <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com> <20190429152259.GB10501@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com>
Date: Wed, 1 May 2019 18:41:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429152259.GB10501@amd>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ucw.cz]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hLsJ1-001q3i-JS
Subject: Re: [ibm-acpi-devel] [PATCH] leds: avoid races with workqueue
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: ibm-acpi-devel@lists.sourceforge.net, ibm-acpi@hmh.eng.br,
 linux-leds@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Pavel,

Thank you for the patch.

On 4/29/19 5:22 PM, Pavel Machek wrote:
> 
> There are races between "main" thread and workqueue. They manifest
> themselves on Thinkpad X60:
>      
> This should result in LED blinking, but it turns it off instead:
>      
>      root@amd:/data/pavel# cd /sys/class/leds/tpacpi\:\:power
>      root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
>      root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
>      root@amd:/sys/class/leds/tpacpi::power#
>      
> It should be possible to transition from blinking to solid on by echo
> 0 > brightness; echo 1 > brightness... but that does not work, either,
> if done too quickly.
>      
> Synchronization of the workqueue fixes both.
>      
> Signed-off-by: Pavel Machek <pavel@ucw.cz>
> 
> diff --git a/drivers/leds/led-class.c b/drivers/leds/led-class.c
> index 68aa923..dcb59c8 100644
> --- a/drivers/leds/led-class.c
> +++ b/drivers/leds/led-class.c
> @@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
>   	if (state == LED_OFF)
>   		led_trigger_remove(led_cdev);
>   	led_set_brightness(led_cdev, state);
> +	flush_work(&led_cdev->set_brightness_work);

Is this really required here? It creates non-uniform brightness
setting behavior depending on whether it is set from sysfs or
by in-kernel call to led_set_brightness().

>   	ret = size;
>   unlock:
> diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
> index 9f8da39..aefac4d 100644
> --- a/drivers/leds/led-core.c
> +++ b/drivers/leds/led-core.c
> @@ -166,6 +166,11 @@ static void led_blink_setup(struct led_classdev *led_cdev,
>   		     unsigned long *delay_on,
>   		     unsigned long *delay_off)
>   {
> +	/*
> +	 * If "set brightness to 0" is pending in workqueue, we don't
> +	 * want that to be reordered after blink_set()
> +	 */
> +	flush_work(&led_cdev->set_brightness_work);
>   	if (!test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
>   	    led_cdev->blink_set &&
>   	    !led_cdev->blink_set(led_cdev, delay_on, delay_off))
> 

-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
