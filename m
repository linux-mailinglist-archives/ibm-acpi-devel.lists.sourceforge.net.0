Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E664481CA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Nov 2021 15:29:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mk5eC-0007TN-Iy; Mon, 08 Nov 2021 14:29:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mk5eB-0007TD-Bd
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 14:29:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=71aVjrj1e3sOLG/pL2w6mLRIsX6/3JU4ODwP9EBqpA8=; b=DY8daS3MUTIedl+IG2S+Q39U6C
 Aen224JPWGMe1uAMziZ4QAZT2rcMflRpyIScKqgPZhU9X7/R4ukNt7AI37cnJgWxvbwgDg7YaLBCH
 7MLA8JwT/zZaCh/4rkEaEfUMj2PGj6LhI98XxaV/9JFwd3IGijzYosABiux/uw4ROKZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=71aVjrj1e3sOLG/pL2w6mLRIsX6/3JU4ODwP9EBqpA8=; b=lrq/du/2bDYAxMcsIw1A/xaUDX
 GPixQSKKfBQr2KhyRfOB8eZVXV7oqpIC0YEZD9sG2S8yJIDEL+vBJt6ICdF9+Z1dxQ7MslPwxU4+y
 l0qfY7ekTQwicoi+oCqsaFwECu2bY4+bFBzy2SGpfnq/HvH1BjGOFyjs+lv+54xgGDn8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk5e9-0001CL-4B
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 14:29:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636381751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=71aVjrj1e3sOLG/pL2w6mLRIsX6/3JU4ODwP9EBqpA8=;
 b=IDIi5oiFAiYDvT+ovcDanEMGtXoE62XuhQ95t5CUPR9KjBdKwD/IHegHkOAi32S3TyX2ey
 DxnH7QlcB1ubpwmNQG4WnzqO6EmngNHYf8HweVwbXPC9ed/uQ1MmrEAHIFN8NNEbwFWbor
 2Wnk9aIc14LVwcH2eIKF9OxFJkFweVU=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-kipFAjQFOSe0148wTAEnrw-1; Mon, 08 Nov 2021 09:29:09 -0500
X-MC-Unique: kipFAjQFOSe0148wTAEnrw-1
Received: by mail-ed1-f69.google.com with SMTP id
 w13-20020a05640234cd00b003e2fde5ff8aso9319096edc.14
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Nov 2021 06:29:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=71aVjrj1e3sOLG/pL2w6mLRIsX6/3JU4ODwP9EBqpA8=;
 b=ulF5jHoyP666DaqLn+GhVS3rKsKveg7+eGxXupUUJt1bKspb87l9uxw9wbgKmIWCNW
 ZYI6vaYxPapD6c/BlZKckNhIkkJwKizzRtlvKXQfPeSDLJWDGiRoSHu2y1EAnCr0ntVF
 2B6SMQdgidagkoyeeVh3684qfpxCbVvXjTHU0M2Vm5mphdiCb+3c+/eArp5766YcSW20
 u+hyI0fiqPMkAU9RvowkblMqOL4vhd8TrBFwDTBgDpMKJS9imOG5tDLhdHOORDwbn+to
 2a6ciG8zN2k4fuaVod6MY8CLkfdNiAbG73Lb5AJRs3QTxn0ggCB3PLk51Tnc+0rIDb24
 N5qQ==
X-Gm-Message-State: AOAM531I973MhtGQlYwBVYVkD3QRQZobOuHg/Z5sc/jlrRFS+n2CS7Or
 T6sQGAgTiuaWaxdYoMeUZRZyYEorb7VEOAbtlkzXdWyli0fsnnWhmI2EtgbwZtTo1c2bKa6RE5s
 lycNhdviOKhuV4C3N3swmeiCJ6eYZtaMjrT4=
X-Received: by 2002:a17:907:7f11:: with SMTP id
 qf17mr340934ejc.196.1636381748099; 
 Mon, 08 Nov 2021 06:29:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy40KEvnccUheADBfx44eYP2KT68QmuQhoH5jSfkJBJUyUlVs7eWXb/DLH8E3tWNFWJas9Wlg==
X-Received: by 2002:a17:907:7f11:: with SMTP id
 qf17mr340908ejc.196.1636381747915; 
 Mon, 08 Nov 2021 06:29:07 -0800 (PST)
Received: from [10.40.1.223] ([81.30.35.201])
 by smtp.gmail.com with ESMTPSA id g1sm6893863eje.105.2021.11.08.06.29.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Nov 2021 06:29:07 -0800 (PST)
Message-ID: <cbdeb76c-bf5a-36c9-88bf-3f2754066090@redhat.com>
Date: Mon, 8 Nov 2021 15:29:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Jimmy Wang <jimmy221b@163.com>
References: <20211105090528.39677-1-jimmy221b@163.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211105090528.39677-1-jimmy221b@163.com>
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
 Content preview:  Hi, On 11/5/21 10:05, Jimmy Wang wrote: > This adds dual fan
 control for P1 / X1 Extreme Gen4 > > Signed-off-by: Jimmy Wang
 <jimmy221b@163.com> Thanks, patch looks good to me. 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mk5e9-0001CL-4B
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 support for dual fan control
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
Cc: Mark Gross <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/5/21 10:05, Jimmy Wang wrote:
>    This adds dual fan control for P1 / X1 Extreme Gen4
> 
> Signed-off-by: Jimmy Wang <jimmy221b@163.com>

Thanks, patch looks good to me.

I will merge this once 5.16-rc1 is out.

Regards,

Hans


> ---
>  drivers/platform/x86/thinkpad_acpi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 9c632df734bb..eb201d001075 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8766,6 +8766,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
> +	TPACPI_Q_LNV3('N', '4', '0', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (4nd gen) */
>  	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
>  	TPACPI_Q_LNV3('N', '3', '2', TPACPI_FAN_2CTL),	/* X1 Carbon (9th gen) */
>  };
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
