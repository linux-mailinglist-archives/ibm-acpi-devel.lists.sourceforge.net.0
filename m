Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5D139013F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 25 May 2021 14:46:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1llWRy-0007gF-8D; Tue, 25 May 2021 12:46:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1llWRx-0007g1-3r
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 25 May 2021 12:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BAsSn0QqqS827pEDp2tUmlZZNLwNBxRbKX1OInU2lIM=; b=bm8yVdm8N4CL5GRbWCUuf1oYpC
 F0wK750eFtzO7UTqEyfal5Ky5gL/4RVdXxF0E/1UHXOv6W/EBsvrtLaAVwLa+NiplINUrNFj2w2r3
 Lj8o9tX8I1GrY8qOqu1dA17D0vlfeE+tbKeMNRkTRFSjV5tFyaNCbcn7XPunyxPyPDWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BAsSn0QqqS827pEDp2tUmlZZNLwNBxRbKX1OInU2lIM=; b=OVAHiDIXQ6dJkXmudr/pLndZG3
 WI25NHCtgxG3t4KN9qMgtqSO78ksLMpIu/UTINnR4xLqDGBeWX+zH6cod1WpS1rFK4Q+8fnyFET3i
 KfhEDjCr+Bki6LxbDRBYdVAQnLkqJgScWNHfu1pp+YWVLfitSGX0LsAkEk0wQn824DqY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1llWRp-0000JR-Lh
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 25 May 2021 12:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621946768;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BAsSn0QqqS827pEDp2tUmlZZNLwNBxRbKX1OInU2lIM=;
 b=OSrfZAykddshKnU/sabRwVknMNmfZAGeyASSJSa0m0RwTMsFTemwCwgOQQahSAbDR2WDVh
 jtXYkS0zLpJzDc0kasyXhvYW31wx+626TUta6xPBb0tRJ2gsEpolNIf+/K05xZNZpE0jqy
 dDpLOCk/jAF/WbigjrE1Y5lYn1FprMA=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-6hXl7YMGPJ259RlL9ogfOA-1; Tue, 25 May 2021 08:46:06 -0400
X-MC-Unique: 6hXl7YMGPJ259RlL9ogfOA-1
Received: by mail-ed1-f70.google.com with SMTP id
 q18-20020a0564025192b02903888712212fso17249230edd.19
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 25 May 2021 05:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BAsSn0QqqS827pEDp2tUmlZZNLwNBxRbKX1OInU2lIM=;
 b=XJQl6AxUY+BYU+U9aaWVpuBQO00wPWuNMuMZQYtzJASfreAPaXoUXYV5FzVoefRD16
 OL9ToBggYfzXC+zMjp2c1vvV5QGuxi10ru+pREWOIBwRhZIwMGPRJ8oPUPX/X1DYRm/W
 LIRz20wQOy8AsV1TDJLV58LLuqLoz/1xk31BflV6rQgPkPENm8yJDRAygZeZ4yiGoBTN
 UcOJyi+NpDfwnf/2PeXvIIppv043MO0YoXcNY14O5/HjzCtv8R4aD2NY+WxS6ko1SspT
 SZXEkb9x02GNnpQr9EdyVhRlR6oFNtADnWfEwSk+cKU21I1S91YSh+pO+1WcpatolpdW
 TUsQ==
X-Gm-Message-State: AOAM531kBQi+uItqPkXiUeJ/VLn/M/n5MrhwU2pgtxUSRu2Bw47RUH6C
 9M4jxTQrzZijlGZl2HEYpMMSDOaHnu0/obXNuG+qa9rdjoft6md+zuWHig+sxEvoiBCdGqXH//B
 9ByOd6LWtHdSg01ANOsRb3YVPoOhZTlGAhr4=
X-Received: by 2002:a17:906:914d:: with SMTP id
 y13mr28396472ejw.489.1621946764867; 
 Tue, 25 May 2021 05:46:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzC24QkEUJbBUYm9nsAY/iT6F2AsbeP/cQgBHwWHXbl0ufK8TwUkYxJZeJhUNBBg0OZ4UCYgw==
X-Received: by 2002:a17:906:914d:: with SMTP id
 y13mr28396455ejw.489.1621946764680; 
 Tue, 25 May 2021 05:46:04 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id q18sm10517988edd.3.2021.05.25.05.46.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 May 2021 05:46:04 -0700 (PDT)
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, hmh@hmh.eng.br
References: <1621837438-70790-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <86bee518-cf29-f1b1-c1fc-b939f418be84@redhat.com>
Date: Tue, 25 May 2021 14:46:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1621837438-70790-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1llWRp-0000JR-Lh
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi: Fix
 inconsistent indenting
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
Cc: linux-hwmon@vger.kernel.org, jdelvare@suse.com, mgross@linux.intel.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 5/24/21 8:23 AM, Jiapeng Chong wrote:
> Eliminate the follow smatch warning:
> 
> drivers/platform/x86/thinkpad_acpi.c:7942 volume_write() warn:
> inconsistent indenting.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

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
> Changes in v2:
>   -For the follow advice: https://lore.kernel.org/patchwork/patch/1434215/
> 
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index dd60c93..b7fec1b 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -7938,7 +7938,7 @@ static int volume_write(char *buf)
>  				continue;
>  			} else if (sscanf(cmd, "level %u", &l) == 1 &&
>  				   l >= 0 && l <= TP_EC_VOLUME_MAX) {
> -					new_level = l;
> +				new_level = l;
>  				continue;
>  			}
>  		}
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
