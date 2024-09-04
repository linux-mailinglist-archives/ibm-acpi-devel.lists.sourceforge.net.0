Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D696C67F
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  4 Sep 2024 20:32:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1slun5-0000Qk-Fy;
	Wed, 04 Sep 2024 18:31:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1slun3-0000Qb-V2
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 18:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aRSp1v5PZIdxAQeHR9DcZAxUHCkfQs5kyuYnxD2c5HI=; b=B1d5kMc9x1DTN136YLq18OuZuy
 IodE2S2QA10ymv7ObHVaRGGsyPZdWGHBTZ9rRKcwOOSXI5HaKTnqQUcA66YhEm4cl6+UqT+aoO4/F
 cSmD5hcAG7bzyMsElg9j570kPzKHUnA6GJfh3vDn8D8zBDMwHlwxx0Bu+HNNETfGBAhU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aRSp1v5PZIdxAQeHR9DcZAxUHCkfQs5kyuYnxD2c5HI=; b=ldxh8xxIi/tfPSsJBOBOBx9BFe
 mTK7/lhOcCze923kgNZtxQD6++PAAdm5kQcp7uD+HVCQQ2zcbgK09C8sX4HweHOrx3b89M0RIsH7B
 At5c6tDNWwxFgwjhk/WUDCuJJX5hvAc131EHeszXWZCGz+J5YjOvPe2LKQ4L5O0GL2UA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slun3-0005K7-SY for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 18:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725474686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aRSp1v5PZIdxAQeHR9DcZAxUHCkfQs5kyuYnxD2c5HI=;
 b=A+wB1e69iJ2QnZW9YQoemqTV7BMvcROIS1zrTRSC6IJhVZ9SNm1Cj0a9uCB8TXLbvH+Yye
 IDEGlkCP1fY+VXCBn0whYoWZuJpiWDROM0H28mm8oO9wzWPEL7v+rwSY2hwerCg0oLJNr0
 i1d4ksV1vUh8aWAXCUOm3jTx4WmqHvk=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-442-rGms5ojcOy6rbkYTsbUZVg-1; Wed, 04 Sep 2024 14:31:25 -0400
X-MC-Unique: rGms5ojcOy6rbkYTsbUZVg-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-5c251a09953so3633692a12.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 04 Sep 2024 11:31:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725474684; x=1726079484;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aRSp1v5PZIdxAQeHR9DcZAxUHCkfQs5kyuYnxD2c5HI=;
 b=khGMlBXAkdlUH7oOhED2IiELYZ+JR+8AO92CDYv/trIGUJWOVIB28Wig4JG0tFgorl
 BsReaW72+sdl7GA5nX1diReeK4rM8/mCJetl18ziwB2e3341Uea6ny2p4oU2AiSQ1QUW
 ORnZKgvQy1vVjM3uHd9DQSVEF8nzFaYy350pQcnibFOYp/3ssBwRBvPeMDbvlo/ZABba
 +uQubDjKryEb7X/ZapByoibietClcmBmezx0B3m55A4ybi1GD7d0m2ydHAYgkO/XzQQR
 TF9iQSPOSV+Zv2MfEscz4ag3fXMItc4ezRlStCAeE17EV5+ipLVkJCWy1vPsgcuVQQaZ
 qGkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmjJVfyXhA9fmOaygVUif3RNcjoA4MO8M/mcxymUry2nFEP1Vz/8iDCWEVb6o/LWhq+aSvuWFEU8/KzjIetw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxF7m3MrJ5e6vLA6rqYT104xuwveRljVK14g4mTW2Mlr0nX9S1U
 xCtuQZZHL5KZfTEyMsKE7snFu/kxRJJ2GSstdeVY8V7dXHaGQ+lljlafnDCDmZh6hqOlDUKe7O4
 0ePYeh7RUvcfxEAoe89UImHMzr57b21EbVlvJ5ewRxQCFdIjWvD+dqVLvCMl96wihIpG1ZEfI
X-Received: by 2002:a17:907:7e84:b0:a86:8953:e1fe with SMTP id
 a640c23a62f3a-a89d8849241mr883947966b.47.1725474683910; 
 Wed, 04 Sep 2024 11:31:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsikd3mhZk9gwltRUrA+sywi3kpqEM45M7eSD6hruJJ+6cnxhPclwmJluFYskGKkTOx/tLyQ==
X-Received: by 2002:a17:907:7e84:b0:a86:8953:e1fe with SMTP id
 a640c23a62f3a-a89d8849241mr883944966b.47.1725474683332; 
 Wed, 04 Sep 2024 11:31:23 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a8a620455d1sm22325966b.67.2024.09.04.11.31.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Sep 2024 11:31:22 -0700 (PDT)
Message-ID: <05d4e489-c081-4edb-b203-88701b135b74@redhat.com>
Date: Wed, 4 Sep 2024 20:31:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthias Fetzer <kontakt@matthias-fetzer.de>, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <20240903172756.19235-1-kontakt@matthias-fetzer.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240903172756.19235-1-kontakt@matthias-fetzer.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 9/3/24 7:27 PM,
 Matthias Fetzer wrote: > When the TPACPI_FAN_WR_ACPI_FANW
 branch is taken s stays uninitialized > and would be later used in a debug
 print. > > Since the registers are always set to [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1slun3-0005K7-SY
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 uninitialized symbol
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 9/3/24 7:27 PM, Matthias Fetzer wrote:
> When the TPACPI_FAN_WR_ACPI_FANW branch is taken s stays uninitialized
> and would be later used in a debug print.
> 
> Since the registers are always set to the same two static values inside the
> branch s is initialized to 0.
> 
> Signed-off-by: Matthias Fetzer <kontakt@matthias-fetzer.de>

Thank you.

I've applied this with the following tags added to the commit message:

Fixes: 57d0557dfa49 ("platform/x86: thinkpad_acpi: Add Thinkpad Edge E531 fan support")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/platform-driver-x86/f99e558d-c62a-41eb-93b3-cf00c016d907@stanley.mountain/

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans



> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 8f7053920884..4c1b0553f872 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8318,7 +8318,7 @@ static int fan_set_level_safe(int level)
>  
>  static int fan_set_enable(void)
>  {
> -	u8 s;
> +	u8 s = 0;
>  	int rc;
>  
>  	if (!fan_control_allowed)



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
