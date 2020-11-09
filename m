Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A632ABC79
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  9 Nov 2020 14:38:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kc7Mo-0007lr-KL; Mon, 09 Nov 2020 13:37:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kc7Mn-0007ld-OM
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 09 Nov 2020 13:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vo+cO/LNGoPT1bsa0vhqVm/6CFvb1OA4fjV8AjbaH64=; b=KCd/KJoUSy2qhS3D5RsAJMC2iB
 kvJOQl71fn2aqQyc+rfLqwU5FFWJk6tvPr6QKeLF0ye9dzhTZUbxGGnivQfWJLPIx0nQBtnLVs6wV
 JcKRvQ1jXOmM00KM3WTlUTgIiawS3vJ5DnaiMT6Lcm8QhRJgZlWAWsesWHpVzMSAypwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vo+cO/LNGoPT1bsa0vhqVm/6CFvb1OA4fjV8AjbaH64=; b=AbLMtvFns6atXO0kotxnQiYT7X
 iLPvA7jhI+D/d8jGdnUs5n1uZhCfab7rKoMAJnFYSU15aAV8y1fNo3543bvWFKGOvumXuCFbHTvOK
 Ofzxdh7kK6QYpj3lz8yKHK+XTSPVkkvTeC0hFnFqiq7EpvTq4thjTqQq0xkxcj0q4/RQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kc7Mb-005fXL-DN
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 09 Nov 2020 13:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604929055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Vo+cO/LNGoPT1bsa0vhqVm/6CFvb1OA4fjV8AjbaH64=;
 b=E2GUPcpn668BxMx27yl16obvrcvu+IpJam/JqdCdCvW3HHmY3MwZgWFzig831ds4e4zfGo
 ucRJoXEgTrfOLCIdyZctgQZwq7pYagQLNMiXQchl/KY4U/PZ/VkIru54baZL4+dxZbkVpc
 sjMCpy9xuD+AgHqj1YeoLVnMq5qimn4=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-SgSHYISsMSu8Dot4az9gKQ-1; Mon, 09 Nov 2020 08:37:31 -0500
X-MC-Unique: SgSHYISsMSu8Dot4az9gKQ-1
Received: by mail-ed1-f71.google.com with SMTP id g1so1193254edk.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 09 Nov 2020 05:37:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Vo+cO/LNGoPT1bsa0vhqVm/6CFvb1OA4fjV8AjbaH64=;
 b=HVG7de0se40roe2X7J4FeAfotulf3eejTkyvuSgVheRQS1HlAwedrd7H1c0wRuuSKh
 pT2tgzzr3LzVLjyp3JRTmbS7SoYIkSa5o7QsuP80MUkyJCLgb/4moRbmljTftLsWWnoG
 CemDOExTO0mdL7gXZwZOIyRdhgeq5alZmjXLIA1iZ48Ik7wwrHSm9OaeWGve+lrZkZHw
 sclEpuolLtMdvXQAUwwuv4F7g5pSBtJ1juvEJ5WNumKRAKejvy1KXJ+fSEmXRT0KEjFI
 MW8GpePdKahnG4YV9ndmmW9mYObCVcCfWMsn4CwvNttGSuIFyN8wh70JgN7mFlkzYcIS
 NaKg==
X-Gm-Message-State: AOAM5329AZCPUuJi0U6fsIxHTV8qfLobvN/UQHQr9gbS1akmfP1S+jjG
 VbPMLZg1GmNIZBKms2OjM1MJM6rw3NbPEu+pK/AgNNG+SRj5XhGMlYfl7MBgaN9WDJBUiP6O6nT
 RuAsCRLgHL7F4Y44Q+dF1Bk5miOGpn3kIfxs=
X-Received: by 2002:a05:6402:141:: with SMTP id
 s1mr14869282edu.87.1604929050158; 
 Mon, 09 Nov 2020 05:37:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxuQ6FsIO36mhFnvxPw7RhYbSoCdxR7tjK6DBJFPoceOlCj5Tl6mBAK5aRnLvzv5GT7qzlxPw==
X-Received: by 2002:a05:6402:141:: with SMTP id
 s1mr14869256edu.87.1604929049864; 
 Mon, 09 Nov 2020 05:37:29 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
 by smtp.gmail.com with ESMTPSA id a10sm8889799edn.77.2020.11.09.05.37.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Nov 2020 05:37:29 -0800 (PST)
To: Iakov 'Jake' Kirilenko <jake.kirilenko@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
References: <20201105152556.34073-1-jake.kirilenko@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1b5ec9ac-a587-2b6e-83da-f3b3c18efd43@redhat.com>
Date: Mon, 9 Nov 2020 14:37:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201105152556.34073-1-jake.kirilenko@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kc7Mb-005fXL-DN
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: add P1 gen3 second fan
 support
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Mark Gross <mgross@linux.intel.com>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/5/20 4:25 PM, Iakov 'Jake' Kirilenko wrote:
> Tested on my P1 gen3, works fine with `thinkfan`. Since thinkpad_acpi fan
> control is off by default, it is safe to add 2nd fan control for brave
> overclockers
> 
> Signed-off-by: Iakov 'Jake' Kirilenko <jake.kirilenko@gmail.com>

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
>  drivers/platform/x86/thinkpad_acpi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index e38106750..4d64ba291 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8776,6 +8776,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2CTL),	/* P52 / P72 */
>  	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
> +	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
>  };
>  
>  static int __init fan_init(struct ibm_init_struct *iibm)
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
