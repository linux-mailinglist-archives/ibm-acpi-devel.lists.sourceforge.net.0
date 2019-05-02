Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F55121E0
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 May 2019 20:29:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hMGSc-0001in-GP; Thu, 02 May 2019 18:29:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hMGSb-0001ig-C5
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 18:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SsplXKAeRkabPuKAwfI1OVTxmW/W7nsVKsv/rEGcfJ8=; b=lSczvXBsw0TddSZZbOH4BInrZD
 9n9O3vSJe1SPsDdk29SC4mL2lPkNYgKDzjOmuoA57TxCnebagfpJZHjv8NHESrXvEB5X2Q19u2W7N
 CKJb5kDBL7hjd/u++U7MEPdh93+vNXMg8cq4FLY+Sn0DtBP8b60qQfcJIy5gtU8vkWpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SsplXKAeRkabPuKAwfI1OVTxmW/W7nsVKsv/rEGcfJ8=; b=WnWz1any5EnlBgIHw3XPzL6kca
 n7qUL2XoyfqUfSKeiqzsolOhQV47EHyaqnfcS4013vSB9NP+dm6Hp4lVOxTh9eBLm7Q2jRTVSfXHR
 Y4jk/DmNNgQNT+yiPXgUGtk5wnBFX/fUrhanNK9ThNklMaRpITOLjNuksJs6X0pB5Os4=;
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hMGSX-005X8i-M9
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 18:29:33 +0000
Received: by mail-wm1-f66.google.com with SMTP id h11so3887107wmb.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 May 2019 11:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SsplXKAeRkabPuKAwfI1OVTxmW/W7nsVKsv/rEGcfJ8=;
 b=hes5MEZMSiLSn8wlFgwFU7LyEwEGOu64ZzxzvMX/5Tqru9ohzXahF7TtZ9B/i79GMv
 UOgqAqVcU8A2PIyxr9DAHsx9l5tIBjGmliVIq//TkFdFpntBE1VeWj+B0YbPO4aALQxW
 CrSH3b8V/9BSv7HwHrmCb80Sdngspj+CpB1/q3OKqG2Qe1+xzgVvXuLWpo7Qh4vHAOYh
 D3OIvbcFXhy/Zks40WUSWse9t8fcK1SVT7+uFgQI1kaecHV8+MebkJIT99gvTUZyCi4p
 Q8wZ5aKswzJ9e8MuD9RLQzlTukFikxYUsesEODIklOVQ+I70fraeESpHSAUJi3yng/Me
 gNGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SsplXKAeRkabPuKAwfI1OVTxmW/W7nsVKsv/rEGcfJ8=;
 b=SHo2OCbUw0Q9FqIXUzDf68urE6VKBRUXThCxaGLefZdqKFFbH2ePIhk2YZI2hEel2q
 VyDsVB3uW5FXrfs20fki5emIAqS1BR4YBeWv5dgqLuPjiNvKIfEWBO6O81tij0SAGzgP
 lTiD4FSd9rc5fQdkTu6e2Iwtv6VHLMA5ud9Y4aWsBVnRDPypgITg9ag0VKg+Ux7e4wjY
 VUJD4tV87cleaLuS9QUM3OsNFCzgVp5SGz1nXDXclXF0QK4GI+ZxNIhqwTIXmrCc2KIA
 Nv3ZuNKjd7SXjW9Rcw1v8K+4jwKjG1GW0AJGtlTzA8/fi0cN8fef6AHPc35X+ahlp5as
 9krw==
X-Gm-Message-State: APjAAAUjICQ39OTrVFxz7aYJj44Zr/AzpSt581IoHRGPBijdVHKrFzgO
 EcoN6qHbRYS9o1aCWOxFxSc=
X-Google-Smtp-Source: APXvYqyUm1udY1J+ei2wQ5foIOqhf/1cNbveQuHxmKk0zpIE6dhTUKZGeXsOP8KD0qQe0CB/zILZEQ==
X-Received: by 2002:a7b:c3da:: with SMTP id t26mr3560824wmj.40.1556821763141; 
 Thu, 02 May 2019 11:29:23 -0700 (PDT)
Received: from [192.168.1.19] (chq152.neoplus.adsl.tpnet.pl. [83.31.14.152])
 by smtp.gmail.com with ESMTPSA id v192sm10070534wme.24.2019.05.02.11.29.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 11:29:22 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com> <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com> <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com> <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com> <20190501183600.GA20452@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com>
Date: Thu, 2 May 2019 20:29:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501183600.GA20452@amd>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.66 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ucw.cz]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMGSX-005X8i-M9
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

On 5/1/19 8:36 PM, Pavel Machek wrote:
> Hi!
> 
>>> There are races between "main" thread and workqueue. They manifest
>>> themselves on Thinkpad X60:
>>> This should result in LED blinking, but it turns it off instead:
>>>      root@amd:/data/pavel# cd /sys/class/leds/tpacpi\:\:power
>>>      root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
>>>      root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
>>>      root@amd:/sys/class/leds/tpacpi::power#

I believe this line is redundant, so I removed it.

>>> It should be possible to transition from blinking to solid on by echo
>>> 0 > brightness; echo 1 > brightness... but that does not work, either,
>>> if done too quickly.
>>> Synchronization of the workqueue fixes both.
>>> Signed-off-by: Pavel Machek <pavel@ucw.cz>
>>>
>>> diff --git a/drivers/leds/led-class.c b/drivers/leds/led-class.c
>>> index 68aa923..dcb59c8 100644
>>> --- a/drivers/leds/led-class.c
>>> +++ b/drivers/leds/led-class.c
>>> @@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
>>>   	if (state == LED_OFF)
>>>   		led_trigger_remove(led_cdev);
>>>   	led_set_brightness(led_cdev, state);
>>> +	flush_work(&led_cdev->set_brightness_work);
>>
>> Is this really required here? It creates non-uniform brightness
>> setting behavior depending on whether it is set from sysfs or
>> by in-kernel call to led_set_brightness().
> 
> This fixes the echo 0 > brightness; echo 1 > brightness. It has to be
> at a place where we can sleep.
> 
> If you have better idea, it is welcome, but it would be good to fix
> the bug.

Currently not, so I applied the patch in this shape.

-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
