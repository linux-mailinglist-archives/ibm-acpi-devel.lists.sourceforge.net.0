Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9B86E451D
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 17 Apr 2023 12:23:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1poM13-0002ST-W3;
	Mon, 17 Apr 2023 10:23:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1poM12-0002SD-Gf
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 17 Apr 2023 10:23:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SDk3y6YL8NcrP7qt8pUV/GZMMEBmQX45ZIgP7zWBk7U=; b=I7djCoo/f9TpR8b0cfOlUDNb63
 nFP9+unapAPsB5ip363rwACcFCDECOj44KqZgF740pkbCkl29hQxA1lhxNy/Y0tU7YlD8AV7am6jJ
 YKwl//ZW04SN6RzXRDkHwLm0OKxeyADDTJae7ESivPTn85lF7VzCAMMIlvyvmR22SnMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SDk3y6YL8NcrP7qt8pUV/GZMMEBmQX45ZIgP7zWBk7U=; b=i9EoXyQmrRuMkzFB43m0NVISmd
 chcraFC8SYkMXrr+1mHkuHk06W0OUlQB69ROdOR6iZzHgRqrGFs0XqqgBK2VqBdneJRvJjcCbSFMw
 NoS3eXystzUe2fDVwJWbWj/vmPLnikNgIs4P0BXyscERyHlp+I3YH/yvzYFr8gGcSdZE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1poM0w-0003Qy-33 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 17 Apr 2023 10:23:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681726987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SDk3y6YL8NcrP7qt8pUV/GZMMEBmQX45ZIgP7zWBk7U=;
 b=h/oSeB55utXO/Yk8Sx9aCd5Xt74WD0iJAXKEinn/ZA4w2EHpO1MPmEQFHAHSLhSHPnt7zu
 v/F8CP11+9Hi3/sPY1Qpilc/5ZPSPg91d0ZY8gxgKm68ZQahp5P9AWwphptvdiTs1Ws1LV
 /+Qd1gJxmaUV/GDZqllxryjgjXFnEsc=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-444-N68EUbtEMIKTE6XBt2M9iw-1; Mon, 17 Apr 2023 06:23:06 -0400
X-MC-Unique: N68EUbtEMIKTE6XBt2M9iw-1
Received: by mail-ed1-f72.google.com with SMTP id
 q19-20020a50c353000000b0050683052191so4726248edb.19
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 17 Apr 2023 03:23:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681726985; x=1684318985;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SDk3y6YL8NcrP7qt8pUV/GZMMEBmQX45ZIgP7zWBk7U=;
 b=Ms7S65tFb5YS2b/Lj88kBHt+VJybGJDZV5QeWJh5rGCD5D0F8X5QrlVaAXsKCYFEQ+
 +EsZADeb/HQylzTgPcQPekT2on/0bbpw9kvLhFAlm/3Q+V3p9y5mLHyajEOefvoC8O8K
 HiQyg9uPQxFS6b5cl6AvUUt5OrE7lb+F19aG2a5LXIW9jNsA5Q3V8ibaDpoh44RVJ3II
 z7F8GK7pZXpXfwG1ucp2NVmdaxEB2SqkhGyzVZyK43c66ewbj3jmkTE3gWxmcwKMPEFC
 pkyLb74bR+Ewh4g4pqxHdmKUiPMvjohZ0hzZuXaToqFAJrIYeb1v67Ai7z7id25x1M7L
 /B6w==
X-Gm-Message-State: AAQBX9d4vAtBkgoNqmGJhW44zl9xxqa8W8jrMPGJ7E8K+VaHv2Bdlsd4
 kAzBv9yTgQitfcQxhcEy2pEB3U9d5COgYSC0ablWdMpXz9ahwlRt9VvnPs3gQuotUgNSM+jOMJm
 FACnV25NzpjsflHfzBwco0CKGtkvIeAa5Qz4=
X-Received: by 2002:a17:906:847b:b0:870:58ae:842e with SMTP id
 hx27-20020a170906847b00b0087058ae842emr6583225ejc.24.1681726985680; 
 Mon, 17 Apr 2023 03:23:05 -0700 (PDT)
X-Google-Smtp-Source: AKy350YGUTVdM6CneYScPti+UqjkD+DXhvZvk6sKHWxt1tRef5U+FyZox7r7aBvtrU9acQmYQj4y4A==
X-Received: by 2002:a17:906:847b:b0:870:58ae:842e with SMTP id
 hx27-20020a170906847b00b0087058ae842emr6583211ejc.24.1681726985366; 
 Mon, 17 Apr 2023 03:23:05 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 14-20020a17090601ce00b0094a671c2298sm959213ejj.62.2023.04.17.03.23.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Apr 2023 03:23:04 -0700 (PDT)
Message-ID: <077df234-1872-c3f1-fc7d-1f935f6e5864@redhat.com>
Date: Mon, 17 Apr 2023 12:23:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Daniel Bertalan <dani@danielbertalan.dev>,
 Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20230414180034.63914-1-dani@danielbertalan.dev>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230414180034.63914-1-dani@danielbertalan.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/14/23 20:02, Daniel Bertalan wrote: > On the X380
 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for > accessing the
 Embedded Controller: instead of a method that reads from > the EC's m [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1poM0w-0003Qy-33
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 Embedded Controller access on X380 Yoga
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
Cc: ibm-acpi-devel@lists.sourceforge.net, liavalb@gmail.com,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/14/23 20:02, Daniel Bertalan wrote:
> On the X380 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for
> accessing the Embedded Controller: instead of a method that reads from
> the EC's memory, `ECRD` is the name of a location in high memory. This
> meant that trying to call them would fail with the following message:
> 
>   ACPI: \_SB.PCI0.LPCB.EC.ECRD: 1 arguments were passed to a non-method
>   ACPI object (RegionField)
> 
> With this commit, it is now possible to access the EC and read
> temperature and fan speed information. Note that while writes to the
> HFSP register do go through (as indicated by subsequent reads showing
> the new value), the fan does not actually change its speed.
> 
> Signed-off-by: Daniel Bertalan <dani@danielbertalan.dev>

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
>  drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 7191ff2625b1..6fe82f805ea8 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -11699,6 +11699,7 @@ static int __init thinkpad_acpi_module_init(void)
>  {
>  	const struct dmi_system_id *dmi_id;
>  	int ret, i;
> +	acpi_object_type obj_type;
>  
>  	tpacpi_lifecycle = TPACPI_LIFE_INIT;
>  
> @@ -11724,6 +11725,21 @@ static int __init thinkpad_acpi_module_init(void)
>  	TPACPI_ACPIHANDLE_INIT(ecrd);
>  	TPACPI_ACPIHANDLE_INIT(ecwr);
>  
> +	/*
> +	 * Quirk: in some models (e.g. X380 Yoga), an object named ECRD
> +	 * exists, but it is a register, not a method.
> +	 */
> +	if (ecrd_handle) {
> +		acpi_get_type(ecrd_handle, &obj_type);
> +		if (obj_type != ACPI_TYPE_METHOD)
> +			ecrd_handle = NULL;
> +	}
> +	if (ecwr_handle) {
> +		acpi_get_type(ecwr_handle, &obj_type);
> +		if (obj_type != ACPI_TYPE_METHOD)
> +			ecwr_handle = NULL;
> +	}
> +
>  	tpacpi_wq = create_singlethread_workqueue(TPACPI_WORKQUEUE_NAME);
>  	if (!tpacpi_wq) {
>  		thinkpad_acpi_module_exit();



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
