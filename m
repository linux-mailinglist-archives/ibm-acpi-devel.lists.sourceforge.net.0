Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE971228E
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 May 2019 21:28:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hMHNU-0004da-AD; Thu, 02 May 2019 19:28:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hMHNT-0004dT-J6
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 19:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e+LsBLoOMDYcJHGcdymvzMRZj4d5mzdj5SdX3j4QjyI=; b=TMfjp6yCQTmWw3JzBGcRMNVhGp
 yz/tJZBAXa8cEobEEy/SHtmFWjZU0gJqPsEQBijPFibAexeS48rz8BANpCTdfevj+lR6O9fKcTjkN
 bUhvPgBfzG3+UtWOYkvo0wrDTonovPiPlam4+Jo0V6FbW2Y1OzM4OP+MIccB5La5v0Zg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e+LsBLoOMDYcJHGcdymvzMRZj4d5mzdj5SdX3j4QjyI=; b=AMDMp3zyg8UJYUlddMuKWZKbh2
 1GCt6SD/vzP2nmDdqYtH6s8ClQ31jE+oQANno3wDCu0XJfMGsWWt3hhGmW6CEr/64xszEhBnM4XHN
 orgRTObcSaM2iEioeD57d0OBSAI28zzz6kT5MMrZulnLHR+o8pFSTJvqiN3xNR4hjdNs=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hMHNR-0030IQ-Lw
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 19:28:19 +0000
Received: by mail-lj1-f194.google.com with SMTP id h21so3216379ljk.13
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 May 2019 12:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=e+LsBLoOMDYcJHGcdymvzMRZj4d5mzdj5SdX3j4QjyI=;
 b=um/+KSAsN8HJKncMKrBqfhLjvsoQnK4k+JtIO+LjliEYyWjF+0pPRlSE1wimLSX2rw
 wcNa1I95D3ebMSMSd9CZN9YLD2rgHbduV6chx2NDuTNYQMnR3JD4eIZLEvzkAhSlgwOV
 rhJUFGd94UqtvWNf7o5Cd5zpbMPFbSrV/TiDR7pvuZKPHsm+OJ+OcmxQDeN1noFx55qa
 dPHznDTDdOjGAjL+oS3sC6cA2YPftZBqdd2ABmYhSKv4UXLJB2nFinomU+vIbrR2mIFG
 S8KxCIfF6bq6gyAV+grrVC3cFmSflU05PREJSIVItYS50Kx2hwl/I2zYF8jWn4LcBIFu
 G4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=e+LsBLoOMDYcJHGcdymvzMRZj4d5mzdj5SdX3j4QjyI=;
 b=axft/NAWgwum2olVbVQBzp63YqGOmiL3oFrrRT5ulW/BKLq7+nSGHxJdEewLo38wrB
 S4EOfTXCkEKf6uBlypQAmz6a7Sq7dREgbpdVYOZpnaptP4F/OlC2br7len/pGwZkSXjP
 cEvIxusWqUftKKYLsbPAA2mT414CEHVvJrFmog2M+5l7lY8yGOcFtIlou9ftIG1zngOZ
 b1NQS/hJDDs34oEZDmbVSnVU7EbsgaMyB9oEH/VKeYwT9E4L3SwZJtutCq7dUo0KlgMg
 L//LwU30Aqz+jTax0INncyE/TsXwcBksqMbf32Ctf9dOpXgvvDIwyAqA9gFyWFZtiqTe
 /uwg==
X-Gm-Message-State: APjAAAWJFTn6ldEoeVbsxNI3KJQ6AQKGwZNR73SHbVGtJ6QolkEiSxHU
 8y6KClKTI7lynUHqtjjEDTg=
X-Google-Smtp-Source: APXvYqyXoBxbwu/Lncgl3/qfOLy6bKoVk86Hh1SKPi0lhS102tEopRSnzeeqNbLIlxcA+dhQjazKNw==
X-Received: by 2002:a2e:844a:: with SMTP id u10mr2914093ljh.41.1556825291015; 
 Thu, 02 May 2019 12:28:11 -0700 (PDT)
Received: from [192.168.1.19] (chq152.neoplus.adsl.tpnet.pl. [83.31.14.152])
 by smtp.gmail.com with ESMTPSA id b28sm4088lfc.7.2019.05.02.12.28.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:28:10 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>
References: <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com> <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com> <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com> <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com> <20190501183600.GA20452@amd>
 <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com> <20190502191321.GB4845@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <62a99fe8-5c61-c681-3f9d-54e0a27a63d2@gmail.com>
Date: Thu, 2 May 2019 21:28:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502191321.GB4845@amd>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMHNR-0030IQ-Lw
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
 stable@kernel.org, linux-leds@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On 5/2/19 9:13 PM, Pavel Machek wrote:
> Hi!
> 
>>>>> +++ b/drivers/leds/led-class.c
>>>>> @@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
>>>>>   	if (state == LED_OFF)
>>>>>   		led_trigger_remove(led_cdev);
>>>>>   	led_set_brightness(led_cdev, state);
>>>>> +	flush_work(&led_cdev->set_brightness_work);
>>>>
>>>> Is this really required here? It creates non-uniform brightness
>>>> setting behavior depending on whether it is set from sysfs or
>>>> by in-kernel call to led_set_brightness().
>>>
>>> This fixes the echo 0 > brightness; echo 1 > brightness. It has to be
>>> at a place where we can sleep.
>>>
>>> If you have better idea, it is welcome, but it would be good to fix
>>> the bug.
>>
>> Currently not, so I applied the patch in this shape.
> 
> Thanks!
> 
> This is actually something that makes sense for stable.. perhaps the
> bots can pick it up.

I was thinking of it, but finally decided to submit this patch
to linux-stable when it will prove not having side effects.

But if you think it is ready for stable then I can add
relevant "Fixes" tag. Do you think that below will be an appropriate
base to refer to?

Fixes 1afcadfcd184 ("leds: core: Use set_brightness_work for the 
blocking op")

?
-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
