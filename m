Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB555454C
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Jun 2022 12:34:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o3xfl-0001Cr-BQ; Wed, 22 Jun 2022 10:33:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1o3xfk-0001CW-RU
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jun 2022 10:33:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h/O2yUsrR3zbMDOcI6p2EfJi+EXDXu2J4E4lX2eXiss=; b=M2jToOsUKollGvX85yIBLpiiON
 EHk4VwopWJaUEgcoi3+htnCk55tr0ELxhc08ghJl4ViFAYIhrVFum6+SwPnLe4aZqp0MoFUMKdHtt
 Uhrdko1UCpVvWp3opf0Z68Gf7rDTdmTdnZdcz00EqqE8iCbtRZNmW4e2LyEwL2LMciEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h/O2yUsrR3zbMDOcI6p2EfJi+EXDXu2J4E4lX2eXiss=; b=fjKtZC2MkhElubVIQ2scoGusDU
 rjD1C/4SZYr3dKnhv6TpArzy2zW4B7FVxeRy4sPmHPBVfj7GFuHSHA5YObCv7gdAsBYmyT1GtiF6Q
 wkLimgp6KL6kSDyylRi3NnAofZgG42fWDK43r4h7lWl9Hi6FSKOIPqs8Av37TE1azFDQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3xff-00AF4A-Ay
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jun 2022 10:33:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655893989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h/O2yUsrR3zbMDOcI6p2EfJi+EXDXu2J4E4lX2eXiss=;
 b=JpA5gECPGF6y3SAFuYRspT726oVwkjZVNGGXA+l/QMH5R1QHWDozy9e8eqIl/5x8AHdVje
 3Q03m5/eL2NfkAQKaTT0eNN5MG7GY/jbzqQDCcVcXcr8y/qa3eByTkOz4WCXb+QXybkegZ
 kKyb7GDGn84sPs/Ccyi5VaJ0t47PLVE=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-116-IbDY1xeUO52u_bdKKJNxDw-1; Wed, 22 Jun 2022 06:33:08 -0400
X-MC-Unique: IbDY1xeUO52u_bdKKJNxDw-1
Received: by mail-ed1-f72.google.com with SMTP id
 z20-20020a05640235d400b0042dfc1c0e80so12991948edc.21
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 22 Jun 2022 03:33:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=h/O2yUsrR3zbMDOcI6p2EfJi+EXDXu2J4E4lX2eXiss=;
 b=r12tzDnDLi/E3cpJNPG2h7iPDoi5pmv9Lj5hebOtRHf4yWBxnxG8w5aIpyHh+EcEes
 mbJm2MQ+DV0K7lhVm9y9CvAll4tGL0A1WxVaB3lQLS4VDl7ZoM0wzdSSBTyFHHbimmhQ
 KH16P+lIJe8+Ttwij3ClL0+xb7h+m0A6i4xMSN6a/gWxIaXH2jhDE13HvT6IVw3Avkj4
 VIMingNe++mYTc8tK3anFtWNVxDu4yGuCWG6+cYQBAFQO3gPzljJfP03w+7vlR265Q4g
 ZcMS1SNyTImYrHUZG8msdZMlimEnY3rXaE0gJJWkN04YaZOJBX+Zf1p4DA7F4uvVMozp
 1QSw==
X-Gm-Message-State: AJIora/SAVBseTaBIO/b5g7NsK6582rfM/ExFEik0ioou3Lozbo46Lx+
 dEzvBlIPwcQxCCUDprGaCFJtCXt8gkV1BtYAW7TClKRvGbAe1dyxCYdObrlSkYWNVKuYrkwAE2S
 QY2chYdhZnHOq2M9dcPRpvTWvr4tMqnd1nCk=
X-Received: by 2002:a17:907:9704:b0:711:f441:dbe6 with SMTP id
 jg4-20020a170907970400b00711f441dbe6mr2433759ejc.26.1655893986880; 
 Wed, 22 Jun 2022 03:33:06 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tUGtmNWueerxyajMELgA1rpfwlIbpcsHiQfl7jJkpWc6IdkKFiMG3zstHY0/rSScR19hrEbQ==
X-Received: by 2002:a17:907:9704:b0:711:f441:dbe6 with SMTP id
 jg4-20020a170907970400b00711f441dbe6mr2433750ejc.26.1655893986713; 
 Wed, 22 Jun 2022 03:33:06 -0700 (PDT)
Received: from [192.168.43.127] ([109.37.135.195])
 by smtp.gmail.com with ESMTPSA id
 g13-20020aa7c84d000000b004357b717a96sm8196638edt.85.2022.06.22.03.33.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Jun 2022 03:33:06 -0700 (PDT)
Message-ID: <37d1dd8f-109c-a4b1-b813-8b9ecb69ff92@redhat.com>
Date: Wed, 22 Jun 2022 12:33:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220616224951.66660-1-andriy.shevchenko@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220616224951.66660-1-andriy.shevchenko@linux.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 6/17/22 00:49, Andy Shevchenko wrote: > It's quite
 hard to understand in that zillions of headers that are included > if any
 specific one is already listed. Sort headers for better maintenance. > > [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o3xff-00AF4A-Ay
Subject: Re: [ibm-acpi-devel] [PATCH v1 1/2] platform/x86: thinkpad_acpi:
 Sort headers for better maintenance
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
Cc: Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/17/22 00:49, Andy Shevchenko wrote:
> It's quite hard to understand in that zillions of headers that are included
> if any specific one is already listed. Sort headers for better maintenance.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 58 +++++++++++++++-------------
>  1 file changed, 31 insertions(+), 27 deletions(-)

Thank you for your patch-series, I've applied the series to my
review-hans branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans



> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index e6cb4a14cdd4..eab50d47f567 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -34,46 +34,50 @@
>   *			    thanks to Chris Wright <chrisw@osdl.org>
>   */
>  
> -#include <linux/kernel.h>
> -#include <linux/module.h>
> -#include <linux/init.h>
> -#include <linux/types.h>
> -#include <linux/string.h>
> -#include <linux/list.h>
> -#include <linux/mutex.h>
> -#include <linux/sched.h>
> -#include <linux/sched/signal.h>
> -#include <linux/kthread.h>
> -#include <linux/freezer.h>
> -#include <linux/delay.h>
> -#include <linux/slab.h>
> -#include <linux/nvram.h>
> -#include <linux/proc_fs.h>
> -#include <linux/seq_file.h>
> -#include <linux/sysfs.h>
> +#include <linux/acpi.h>
>  #include <linux/backlight.h>
>  #include <linux/bitops.h>
> +#include <linux/delay.h>
> +#include <linux/dmi.h>
>  #include <linux/fb.h>
> -#include <linux/platform_device.h>
> +#include <linux/freezer.h>
>  #include <linux/hwmon.h>
>  #include <linux/hwmon-sysfs.h>
> +#include <linux/init.h>
>  #include <linux/input.h>
> -#include <linux/leds.h>
> -#include <linux/rfkill.h>
> -#include <linux/dmi.h>
>  #include <linux/jiffies.h>
> -#include <linux/workqueue.h>
> -#include <linux/acpi.h>
> +#include <linux/kernel.h>
> +#include <linux/kthread.h>
> +#include <linux/leds.h>
> +#include <linux/list.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/nvram.h>
>  #include <linux/pci.h>
> -#include <linux/power_supply.h>
> +#include <linux/platform_device.h>
>  #include <linux/platform_profile.h>
> -#include <sound/core.h>
> -#include <sound/control.h>
> -#include <sound/initval.h>
> +#include <linux/power_supply.h>
> +#include <linux/proc_fs.h>
> +#include <linux/rfkill.h>
> +#include <linux/sched.h>
> +#include <linux/sched/signal.h>
> +#include <linux/seq_file.h>
> +#include <linux/slab.h>
> +#include <linux/string.h>
> +#include <linux/sysfs.h>
> +#include <linux/types.h>
>  #include <linux/uaccess.h>
> +#include <linux/workqueue.h>
> +
>  #include <acpi/battery.h>
>  #include <acpi/video.h>
> +
>  #include <drm/drm_privacy_screen_driver.h>
> +
> +#include <sound/control.h>
> +#include <sound/core.h>
> +#include <sound/initval.h>
> +
>  #include "dual_accel_detect.h"
>  
>  /* ThinkPad CMOS commands */



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
