Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AFE8D7E51
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Jun 2024 11:17:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sE3oA-0000ia-Rp;
	Mon, 03 Jun 2024 09:16:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1sE3o9-0000iS-7c
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ER449LmaSckkw0lE9Rnq7WLr5seCu4LCDcpsoMn1VAg=; b=B5j1yyFtIf2+KgM72jGYglHnWr
 7X9S/mxnUPCJDyOLL86OnuAZnuisG0wV6tM/b4vTOLOymdsnUys6yEAaHbxNA4t3af+pQXnD3f0Zn
 esp4/0rGFFFYdJ4uaZpPLH38LF1mCtsmBrq+7NRn2FsUWIY38nCPL5AGQZp+GyV1zWIg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ER449LmaSckkw0lE9Rnq7WLr5seCu4LCDcpsoMn1VAg=; b=G9Mfn4pTuzOECpV1sdhiTWkYag
 Fcr4Lqc7+5SBSYjbSfayI28aZlFSGYv1y10dfr83w8/VAw6FU+CMnMLr5/JThU1MAWg+mn3zZffiw
 OQOrn5dD2HC0w+jORqvb/0bF8S1tefcktHNjcWty18aDUML3LVNphv0on9GRHlwzLR1g=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sE3oA-0000VI-Ho for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1717406198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ER449LmaSckkw0lE9Rnq7WLr5seCu4LCDcpsoMn1VAg=;
 b=FDKN3X91xH9V0OEEuo0jPuGYQOWeeFjmHq3UoHjTefrvwXXmesNGxlQDW6kqna9QrN7blm
 KrreNmJ0RERfNhtvKZfvOrjPP6Rgq5vmBknML5WrLngKnLBcFZ4KMWh5eahdhULXUiGdI2
 DjAzd2BVnQ2ExmIcZB8GRu4WSuFZF/Y=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-306-KfZ0ZLA6P8Cggfst6sIr2w-1; Mon, 03 Jun 2024 05:16:37 -0400
X-MC-Unique: KfZ0ZLA6P8Cggfst6sIr2w-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a68cc214ac7so70830566b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Jun 2024 02:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717406196; x=1718010996;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ER449LmaSckkw0lE9Rnq7WLr5seCu4LCDcpsoMn1VAg=;
 b=KslA4zq7MT2Kj9CIKXcFcAY3XoWbmdG07PkIYA4AuIAHW5seGXMVToNxtutJjXlPoi
 fKdC8KkpOx60AYJw/Hlf9n9lZt0Jg2DE3m/JkDxoctqCtHCGecXdFhm/7ti2NygI5Uzz
 IRwT33G0GaG0qUnsNUHSgcMjh3oEVUvP+BLryD11ZzIlkxwcY4tXgxSFrpR6HaVRcIfZ
 tMrGGl6XEabsilit/ShJKbjn5QiHtrzuM0zincqt0acbp+4W84hBo+6QLMLiONLxCBZ6
 wMf+05YBdRc9BCfNTZaKaKErjcl6kT+mdgGEPbgyFzINIjt0rT8+zmYY5dH8HVG8L0FQ
 n4QQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXglwP67JBP5KFcFyrRmLZXOKJTs+wksBkEU3t8P3hvSw4HAtUlLhlFvHQ1KTBgWjMr0UdxtOzKe5c/JR941+DPZPiV8k6+Bj656/TL8ID0H+gL6/0=
X-Gm-Message-State: AOJu0Yx8aja6q54Ie6j9lVBFLfiQnfAYCCLvBGUUgoQ/kvIZIs94ZEQk
 NQyJM/qx7bNlkP/uWDtMXERR9WXpCB73RN82/SAVoZrvryw2Q4ysZwFYCo3xOM2UXwCPb4BKE5f
 fJNgutoPj9Cl8XaG5nBT9L9CG6XlONTZJRLkjKIwYC1pY25sZxR+kEGsTOVzF7iOyFDauK3og
X-Received: by 2002:a17:907:3fa6:b0:a69:180e:9dde with SMTP id
 a640c23a62f3a-a69180e9e03mr102605566b.26.1717406196051; 
 Mon, 03 Jun 2024 02:16:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7yp9unRJH++xLy+GgIWNG4UQ4k52l26EQdjCKCjPLXFaFHYNHG+T5/e4WkozKTS/UOAX1Wg==
X-Received: by 2002:a17:907:3fa6:b0:a69:180e:9dde with SMTP id
 a640c23a62f3a-a69180e9e03mr102603466b.26.1717406195678; 
 Mon, 03 Jun 2024 02:16:35 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a68fbf068fesm186916366b.26.2024.06.03.02.16.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Jun 2024 02:16:35 -0700 (PDT)
Message-ID: <6629757d-fa07-450f-9de8-bcda54d42067@redhat.com>
Date: Mon, 3 Jun 2024 11:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
References: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
 <20240602090244.1666360-8-andy.shevchenko@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240602090244.1666360-8-andy.shevchenko@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 6/2/24 10:58 AM,
 Andy Shevchenko wrote: > Use 2-argument
 strscpy(), which is not only shorter but also provides > an additional check
 that destination buffer is an array. > > Signed-off-by: Andy Sh [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sE3oA-0000VI-Ho
Subject: Re: [ibm-acpi-devel] [PATCH v1 7/7] platform/x86: touchscreen_dmi:
 Use 2-argument strscpy()
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
Cc: Mark Pearson <markpearson@lenovo.com>, "Luke D. Jones" <luke@ljones.dev>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Corentin Chary <corentin.chary@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/2/24 10:58 AM, Andy Shevchenko wrote:
> Use 2-argument strscpy(), which is not only shorter but also provides
> an additional check that destination buffer is an array.
> 
> Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Since the code being modified only exists on the fixes branch I've merged
this as a fix now.

I know this is more of a cleanup then a pure fix, but since the DMI quirks
always get updated through the fixes branch this avoids conflicts.

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Regards,

Hans



> ---
>  drivers/platform/x86/touchscreen_dmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/touchscreen_dmi.c b/drivers/platform/x86/touchscreen_dmi.c
> index 2d9ca2292ea1..879a63e4ecd0 100644
> --- a/drivers/platform/x86/touchscreen_dmi.c
> +++ b/drivers/platform/x86/touchscreen_dmi.c
> @@ -1907,7 +1907,7 @@ static int __init ts_parse_props(char *str)
>  	u32 u32val;
>  	int i, ret;
>  
> -	strscpy(orig_str, str, sizeof(orig_str));
> +	strscpy(orig_str, str);
>  
>  	/*
>  	 * str is part of the static_command_line from init/main.c and poking



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
