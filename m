Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2043B5EC
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 28 Apr 2019 14:03:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKiWQ-0001ZT-8c; Sun, 28 Apr 2019 12:03:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hKiWN-0001Yu-Sj
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 28 Apr 2019 12:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6JmwHycIMcKRap3PYXwfoDZSb8QQcE9P2dxpSjWPqgA=; b=IFjsRAYEG7sD4RGUhPU1eEAwdO
 AStQhoQRrQzPue7CDp4jgyx6JM65TQdFdyCo+caAjAVeUYLibK7xBxCyJhJzi6rjjZqKBeuOOaDL9
 BjpHfR0m3VmYFyzmBuCox/JAi2VkJjmkwjh2NXteariWj9pJTbr7BlpcUTXmPp2rCWpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6JmwHycIMcKRap3PYXwfoDZSb8QQcE9P2dxpSjWPqgA=; b=RBKhqazAsntQJxZU3z/HaQ1riO
 MW/uxI84neiaJa1d/fqs3GKxX14pCl7jw6FptuzcYq7NZ0N6Wt2VsINYQO16FleFdj5NkOonSAZeb
 IT8Qsy/tsW5FQiuxi943gHBcCzmcdQ4UGMR6x7bJU3W8FEIowQbxq3WPUc2gH6dxIhRI=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hKiWM-00G1zv-Eq
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 28 Apr 2019 12:03:03 +0000
Received: by mail-lf1-f66.google.com with SMTP id i68so5684155lfi.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 28 Apr 2019 05:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6JmwHycIMcKRap3PYXwfoDZSb8QQcE9P2dxpSjWPqgA=;
 b=vUNWFP9yGBHPOqsvgF10bOpBoS7kFy8Q1WwzOyZ/p43RLaVrZCNRQdVBIuPDR/TKJF
 voLFLtGDqD9HJghufAbMFBkjZQdfhxF5MqXtAVVBmEe264hAyqAyigqFl5GYyf6HJfCt
 oyoH61angePQSKIOHT9LTQryfO0r07ywDtC2w3Ml4IEA9YaxBIHWKSViG1OObbNFrRkT
 AUHu0YIFt83tls/zWsA4nRlm5O6j/pbcR4XnOz7UVzKH6zxDaNhKtAOv+Eixt1zldivc
 PuWTu0t7cxKpHbQ2vlbjhHI3wY46lTdMexoeQQgshwiYyScwo1W3lPCuWwxfQtoXdux9
 Pe1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6JmwHycIMcKRap3PYXwfoDZSb8QQcE9P2dxpSjWPqgA=;
 b=dCgzlP+PSN21X/ylHWUprl4j8/YfpQQU2os5BoVzd0Zd+oiC2kUcCcdESDCbc1uoJ3
 aHBi/qOD6Rx+kTAAT7AQfIbIZOAWhF1FLsLbHyuNkH6rzpUicXsYa0aGs9HdESUkp0ls
 efHrlH1cf5yoIHdqR1EY1uUGbl8B36ZYDR+Wm2bIFBW20vkIzCCi/jAx/14clcnjLi+L
 HapX+MPptihfkAaQs9y/9CLX0na8Yk7SLb0tYN3LXDfMJpvdZuX4V454jEHk9XQNSnkh
 7ZrugXzoiSoMwjYi0M51MpRh81hzihLrKo3NxQ0FFNK6n5UHtbsOy4fEkcmFY6MknCma
 1aZw==
X-Gm-Message-State: APjAAAWMSG/PXXuzgfawmHWsCzAjQIKil3xOMkbe8PRs4F4b+urjn14b
 nbK8gd8xXqV9XFP2CGnb4F4=
X-Google-Smtp-Source: APXvYqyKJWl3jOsG3uIyH5Q3u1bGVIkfdAt6lib3Z0V3GyQr8U+WEZo+tTmS0ZrETLFTzHlowaaiCA==
X-Received: by 2002:ac2:4246:: with SMTP id m6mr10272469lfl.0.1556452975673;
 Sun, 28 Apr 2019 05:02:55 -0700 (PDT)
Received: from [192.168.1.19] (bgq85.neoplus.adsl.tpnet.pl. [83.28.80.85])
 by smtp.gmail.com with ESMTPSA id w19sm6842581lfe.23.2019.04.28.05.02.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 05:02:54 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com> <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com> <20190427223207.GA3585@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
Date: Sun, 28 Apr 2019 14:02:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190427223207.GA3585@amd>
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ucw.cz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hKiWM-00G1zv-Eq
Subject: Re: [ibm-acpi-devel] Thinkpad ACPI led -- it keeps blinking
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

On 4/28/19 12:32 AM, Pavel Machek wrote:
> Hi!
> 
> This fixes one problem:
> 
> 									Pavel
> 
> Signed-off-by: Pavel Machek <pavel@ucw.cz>
> 
> diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
> index e3da7c0..d795d8f 100644
> --- a/drivers/leds/led-core.c
> +++ b/drivers/leds/led-core.c
> @@ -164,8 +164,14 @@ static void led_blink_setup(struct led_classdev *led_cdev,
>   		     unsigned long *delay_on,
>   		     unsigned long *delay_off)
>   {
> +	while (work_pending(&led_cdev->set_brightness_work)) {
> +		printk("Waiting for brightness set to finish\n");
> +		schedule();
> +	}

Or even better:

flush_work(&led_cdev->set_brightness_work);

>   	if (!test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
>   	    led_cdev->blink_set &&
> +	    /* This can sleep */
>   	    !led_cdev->blink_set(led_cdev, delay_on, delay_off))
>   		return;
>   
> 

-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
