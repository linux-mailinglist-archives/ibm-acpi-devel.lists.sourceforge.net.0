Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EB421F283
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 15:29:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvKzp-0001k6-Q2; Tue, 14 Jul 2020 13:29:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jvKzo-0001ju-2z
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 13:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+zcLl9caLOTqhvrKcdF/JOO8jE4h/VokVethjwU/Des=; b=ed3ew3YvidlA0vM+gn36lUKFaS
 TZB0ruJjrWV/vOFruvNP1LN5O5xq1alCCTfDno/3+c0gVSljqzBR5AjyH/BF4t/KejXPj6RTrK8nF
 32n0iTfTBjIhuWT3ftbIS+s5z1I089bzeeW4Oti4Np1LgPWRiV18IsGjpNSX36fZ0mh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+zcLl9caLOTqhvrKcdF/JOO8jE4h/VokVethjwU/Des=; b=G/7DTbD/WlI3Oi0zdr3wZvdSdt
 V4Tf0qvq2XiZCsV/ToA1ZlsAPWc+qEQpXrBqktTB5D5JlQPNNZGFAnMgSRh9WZ4sjeMcd4PVFceQR
 9MvKJs9KD9/bDXKRRxXGtjEyZKY1fSUIPeW996VkGNyf9GNBpi2JNf2toBK8IyMLa0iI=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jvKzm-006zNa-H9
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 13:29:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594733352;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+zcLl9caLOTqhvrKcdF/JOO8jE4h/VokVethjwU/Des=;
 b=Jl4CeGU5LOKaySZAzFwminMS1ZY4PQfgVidYQYWXyKtUwYCtcQDR/9zki8NzwunFJQterQ
 BxW4puJtK6B5pgA5tZtDb1pvin+lHSt0rh2d7q/M/f0beynZ8r6Sa8I7KaLKnt3xWcSTan
 SVNHzFB4rklvhrNZmItPnlWOWzxP4Rc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-500-Nl1Y6atbNIGp0H7O4Xto4g-1; Tue, 14 Jul 2020 09:29:09 -0400
X-MC-Unique: Nl1Y6atbNIGp0H7O4Xto4g-1
Received: by mail-wr1-f72.google.com with SMTP id g14so21715062wrp.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 06:29:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+zcLl9caLOTqhvrKcdF/JOO8jE4h/VokVethjwU/Des=;
 b=FOsMZOTorexGyS4yQvG853QgL9E6DIJeEM+xgJ5K8ll0Evaa1A3zL7aQQw5t549m3G
 SCuKvhoGjcyfIWOlVHLP2S0gqnZMryCQUehIHD4nKI7mDoF3BdyeKYy39Bz5XkDZd1QJ
 NJfmVmVraa4Dzu3n4gURqXD/l72BH4jSRGUujECy79EI6HopTECpQQKJHhKB5qleF2i7
 B3wBJlXgcHV3uPtL9spYEFgVtVEG7Yc2Dmq79svFMjwDs7Y54iB5WfQ7LjVZcTACMcHN
 LiNnXHBWYv1IjfPq4w7vjCUQ9vcgQc9QMYYg/U+APfG+qVC7Uv80d1sEikQvG49gxykL
 IIpQ==
X-Gm-Message-State: AOAM532c3SJD37g0QYbnMaRNGe1yHWz5iVmFbwOUe5K/VDNpAMdeIvbY
 Ndn92B0lxt3OZ2x+48VDTcLMzaoq1ZrcdNXTFmeyjdLcNCetoIRzEqjVVa9mL2fAYVRVWxM+srq
 8QeF6fdhKVyxfeAnfReJsXrkJhjJf0CxH/IQ=
X-Received: by 2002:a7b:c313:: with SMTP id k19mr4591723wmj.67.1594733345041; 
 Tue, 14 Jul 2020 06:29:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJze0m4qHNxZ4AJzz6FfseQv2/O0o3MHOUE4o26oEtKnyMPK4c1AYnR1dyfxt5ndwL05F9o5TA==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr4591692wmj.67.1594733344848; 
 Tue, 14 Jul 2020 06:29:04 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id k4sm7385845wrp.86.2020.07.14.06.29.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:29:04 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net, Darren Hart <dvhart@infradead.org>,
 platform-driver-x86@vger.kernel.org
References: <20200714104250.87970-1-andriy.shevchenko@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <6920cff7-ab7c-a4ef-4f8f-83966b7bf498@redhat.com>
Date: Tue, 14 Jul 2020 15:29:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200714104250.87970-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvKzm-006zNa-H9
Subject: Re: [ibm-acpi-devel] [PATCH v1] platform/x86: thinkpad_acpi: Limit
 size when call strndup_user()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 7/14/20 12:42 PM, Andy Shevchenko wrote:
> During conversion to use strndup_user() the commit 35d13c7a0512
> ("platform/x86: thinkpad_acpi: Use strndup_user() in dispatch_proc_write()")
> missed the fact that buffer coming thru procfs is not immediately NULL
> terminated. We have to limit size when calling strndup_user().
> 
> Fixes: 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user() in dispatch_proc_write()")
> Reported-by: Hans de Goede <hdegoede@redhat.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>   drivers/platform/x86/thinkpad_acpi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index f571d6254e7c..f411ad814cab 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -886,7 +886,7 @@ static ssize_t dispatch_proc_write(struct file *file,
>   	if (!ibm || !ibm->write)
>   		return -EINVAL;
>   
> -	kernbuf = strndup_user(userbuf, PAGE_SIZE);
> +	kernbuf = strndup_user(userbuf, min_t(long, count, PAGE_SIZE));
>   	if (IS_ERR(kernbuf))
>   		return PTR_ERR(kernbuf);
>   
> 

This is not going to work:

char *strndup_user(const char __user *s, long n)
{
         char *p;
         long length;

         length = strnlen_user(s, n);

         if (!length)
                 return ERR_PTR(-EFAULT);

         if (length > n)
                 return ERR_PTR(-EINVAL);


And strnlen_user is:

#ifndef __strnlen_user
#define __strnlen_user(s, n) (strnlen((s), (n)) + 1)
#endif

/*
  * Unlike strnlen, strnlen_user includes the nul terminator in
  * its returned count. Callers should check for a returned value
  * greater than N as an indication the string is too long.
  */
static inline long strnlen_user(const char __user *src, long n)
{
         if (!access_ok(src, 1))
                 return 0;
         return __strnlen_user(src, n);
}

So strnlen_user returns (n + ) for a string which is n bytes
longs, so:

         length = strnlen_user(s, n);

Will set length = n + 1, and then this check triggers:

         if (length > n)
                 return ERR_PTR(-EINVAL);

Because n + 1 > n, I also build the module with your patch
and as expected I get:

[root@x1 ~]# echo -n 0 > /proc/acpi/ibm/lcdshadow
-bash: echo: write error: Invalid argument

Note you also cannot pass count+1 because then strnlen will
return count+1 if there is no terminating 0 after count bytes
and strnlen_user will return count + 1 + 1 and we still hit
the same check (and we are trying to consume one byte too much).

Can we please just go with the revert for now?

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
