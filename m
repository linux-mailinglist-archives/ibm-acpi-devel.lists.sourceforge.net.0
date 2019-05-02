Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BD6123CD
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 May 2019 23:03:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hMIr7-0001xz-D8; Thu, 02 May 2019 21:03:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hMIr6-0001xo-5o
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 21:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6crve4IlZrMXLSDasE9kaBscaqPspzUe9E6mxdE0XW4=; b=KLap4WuA4Fcq4zl2a+HLD4/48n
 9iVFrqN/BmbCJPDCroITQ0tATvX94MCvLilKx39JEVeMl9qM4PHkHLjjbXxr6fnAe8p6PbJQTLesV
 8XrH7FqnXi1/n3g+kp1G6soFNgL2kTGzfkoQmp5UCMKY2cGyvHC2vx9OpoL9E9GtpGww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6crve4IlZrMXLSDasE9kaBscaqPspzUe9E6mxdE0XW4=; b=M/F5483jVyDR1IPdv8yf1ODIaY
 HywYRhcdHSkHL2M1bgsoxt+bcZOkgPOHE1w+xvpZTFqogXKdpYiA2wJDDfMJYjfqedYyEzNXLWJvQ
 nZefhBwtlT671g2dwLK/bGIWvI5o+bI1n7XsDTS1HY4/hIWqQNZcUorxLI8hV5dJ8iE8=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hMIr4-005hbo-Op
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 21:03:00 +0000
Received: by mail-lf1-f67.google.com with SMTP id u17so2940281lfi.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 May 2019 14:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6crve4IlZrMXLSDasE9kaBscaqPspzUe9E6mxdE0XW4=;
 b=GnjKc88ToLkLdpRtAJpGY0N1EGQIkV0iKM+zml2yJTcEk9SIN+y00yToVUqXH2PUNl
 fAQjnI63F3GGiG4oaA7dOZwDKWZfPxSVaEhdDKSOxTrDWtrcntS9wV7he+kNJDczGKn8
 25oasK9cMTTxusxutKqiTRFmWyxcdgsESpAx2F57vrgh/mhQuJ8RhgU4uKBvMPDbCe7t
 xi3KCFNOqNpTbqqnd8cexQgPTvhlkVRNQ8sKAODRhqK8/hkabHcrYPUrVKnDl5T4Fx82
 wt1JQwfgY2EC0wxRXJp447FDtXeNUhBTe4tOyicj4l9lAIi3wKw3NLiC/siF4FneKk02
 5k5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6crve4IlZrMXLSDasE9kaBscaqPspzUe9E6mxdE0XW4=;
 b=umufIBYnpPHMTWwyLPCpOGVRqoNVjs0EP50YbYQ1QCLCdOkl+1x/K08mDrR6LyobFB
 XL6JX85apX3Xa6iGCJgRfzvK0grBo6XXZA6AOoOCh8GC0wp/ggghgKRMc7AaZ2cL+doK
 ClBteHnckDWs9XHhtJbaPnecvZyqPJZ3xfF3rlI9WHGBWmSld2pgzB0WHoS3ON1O2p5J
 wRDFynJZFW87MAFNyH4ZOafcjWwRLEp0KrdQmT7b6oWqTOZQNuzN2wH/lkD/W5O+CZKm
 c1Cp3eB2ICyigsGJKaNwYM7/LQ44U7edJ+dJyiP2sIIq3EjmITk4cxgxroJk22fsCxjn
 TiXQ==
X-Gm-Message-State: APjAAAVYD8FNR3YAO9hHIZv2B38lv5+dQQP8b+TJnxhHqlDuyAO0SQRD
 /hAV9quk57eBK9Nl91FrjZk=
X-Google-Smtp-Source: APXvYqwDRJHbEhrYAs31zwL43P+4BUb4FJyM6/7+sYKxTRBkhqg4195WfE/XVbPy/+xgC3wgVQA0VA==
X-Received: by 2002:ac2:485a:: with SMTP id 26mr3125406lfy.23.1556830971999;
 Thu, 02 May 2019 14:02:51 -0700 (PDT)
Received: from [192.168.1.19] (chq152.neoplus.adsl.tpnet.pl. [83.31.14.152])
 by smtp.gmail.com with ESMTPSA id k15sm18049lje.21.2019.05.02.14.02.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 14:02:51 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>
References: <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com> <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com> <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com> <20190501183600.GA20452@amd>
 <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com> <20190502191321.GB4845@amd>
 <62a99fe8-5c61-c681-3f9d-54e0a27a63d2@gmail.com> <20190502200606.GC4845@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <564697f8-ad02-6933-56e8-b3b19053d63d@gmail.com>
Date: Thu, 2 May 2019 23:02:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502200606.GC4845@amd>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMIr4-005hbo-Op
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

On 5/2/19 10:06 PM, Pavel Machek wrote:
> On Thu 2019-05-02 21:28:06, Jacek Anaszewski wrote:
>> On 5/2/19 9:13 PM, Pavel Machek wrote:
>>> Hi!
>>>
>>>>>>> +++ b/drivers/leds/led-class.c
>>>>>>> @@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
>>>>>>>   	if (state == LED_OFF)
>>>>>>>   		led_trigger_remove(led_cdev);
>>>>>>>   	led_set_brightness(led_cdev, state);
>>>>>>> +	flush_work(&led_cdev->set_brightness_work);
>>>>>>
>>>>>> Is this really required here? It creates non-uniform brightness
>>>>>> setting behavior depending on whether it is set from sysfs or
>>>>>> by in-kernel call to led_set_brightness().
>>>>>
>>>>> This fixes the echo 0 > brightness; echo 1 > brightness. It has to be
>>>>> at a place where we can sleep.
>>>>>
>>>>> If you have better idea, it is welcome, but it would be good to fix
>>>>> the bug.
>>>>
>>>> Currently not, so I applied the patch in this shape.
>>>
>>> Thanks!
>>>
>>> This is actually something that makes sense for stable.. perhaps the
>>> bots can pick it up.
>>
>> I was thinking of it, but finally decided to submit this patch
>> to linux-stable when it will prove not having side effects.
>>
>> But if you think it is ready for stable then I can add
>> relevant "Fixes" tag. Do you think that below will be an appropriate
>> base to refer to?
>>
>> Fixes 1afcadfcd184 ("leds: core: Use set_brightness_work for the blocking
>> op")
> 
> Yes, that looks right. If you can add fixes: and cc: stable tags, the
> rest should happen automagically.

Cc: stable@kernel.org is exactly for what it claims - sending a copy
to that list.

"Fixes:" seems to be always enough for the bots to pick a patch.

Tag added.

-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
