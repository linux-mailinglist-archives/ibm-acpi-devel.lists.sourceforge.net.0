Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C64706D4181
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Apr 2023 12:04:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1pjH2O-00085S-Di;
	Mon, 03 Apr 2023 10:03:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pjH2M-00084k-Vp
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Apr 2023 10:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wA8QAb0BytdfB1jw9T76UqPrNQns0erlp298xSbCHJo=; b=cGlX99VcBHL45J15oXe9coXbzd
 L9YdozUQVEchgFLpRB/czA7x4KAkOtZfrzZYSxpb6alKBwJNgfuGCACYyCzZmOla6+8cIeBf1A1RD
 JhnEn/1TueSZoJ87PjMitbVAJghIb2p6pFldXPYaCkj54Tqr1zM4Mv3aPmp6zYMOhCmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wA8QAb0BytdfB1jw9T76UqPrNQns0erlp298xSbCHJo=; b=H6UlCSDAmm3JL8JGtTbXGZr7WR
 HLAge5tisvMRapM54kDwivC1S4Pmav5grXgEmNi5+13JxiY3udHUpQW8vAVH/sjovsKMiDXxzy9bn
 FLv1nnCNv3NGIKcfJoydCZXqQjNtDAH0Z/tKSueG6LkxwMzOhGmhSD6oK/OAefb5M4CM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pjH2L-00DfMI-9l for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Apr 2023 10:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680516215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wA8QAb0BytdfB1jw9T76UqPrNQns0erlp298xSbCHJo=;
 b=gyAMoQUo7ZmPhpFGLRXhrCmUDDyYi/ue/FEtXyKxWGqCSEsmMebs230/VrtnQuOFUvXcrf
 Qs2jVQqYMjRGYuV+Bm/sh6o3tDndh1fsB6B8gr4AAtF3rzKYTNwNRKqctECcRCwNwZRKe3
 ZULzdd+nheynQOv6yleqTTaSS/khUA4=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-602-oMfRW4-EPSuAyvBP_mawfQ-1; Mon, 03 Apr 2023 06:03:32 -0400
X-MC-Unique: oMfRW4-EPSuAyvBP_mawfQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 j21-20020a508a95000000b004fd82403c91so40125705edj.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Apr 2023 03:03:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680516211;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wA8QAb0BytdfB1jw9T76UqPrNQns0erlp298xSbCHJo=;
 b=ySWD+u/2IFX2CZ/hgpRr8j+P0E72gM4g6flSWA6FGFvFh/77n9LO4GwkygHtAvH1FQ
 7lgJv0DeVsl5MtqRYT66AhTQ9oWbRjOtEixX2Be8+sVUEGHK0+2ZLUs/V4EvOiB3qE2P
 a33dnDJqGMWgzUY7Dubk8L+i1R/6Cb3OOU6qLN2E+44sm61n5ewtomljnQC186+5TyD/
 o0zuU/B+i5uHzBZUfwTxD4581+4WD4GzGzt4hszkBp/Zrja0I1knbcW653uo/QzV5tl3
 kKfl1apCrS2D6DTAX4HRchy/A0EcgK+gB6lHFHgSVE7mpfTt57kDozKTRA1+pLvcH60i
 qgYQ==
X-Gm-Message-State: AAQBX9f2N4CDOEHogCDEBgpKfeECWW0xGckeWFzps7cu2ZgK3mZTpgA3
 +H4lokqxd/a4Xpo0xSJX8lLfkOIwL9WxWCmEFtDDtbWw4arUK7R+oDB7K9xJq/H+Gb3TKZs/I8y
 U4dcyfE1E4uTzIllzpp1suYCXE7hgWa4n+cA=
X-Received: by 2002:aa7:d49a:0:b0:502:7d3f:1f04 with SMTP id
 b26-20020aa7d49a000000b005027d3f1f04mr10062088edr.19.1680516211102; 
 Mon, 03 Apr 2023 03:03:31 -0700 (PDT)
X-Google-Smtp-Source: AKy350a0nPW43YqlMdcDjiYd0jFbBqM/6O0e3gYnr0BMt9FfSlb1Dm3DExUKfArY9LumLUt0EDLCnw==
X-Received: by 2002:aa7:d49a:0:b0:502:7d3f:1f04 with SMTP id
 b26-20020aa7d49a000000b005027d3f1f04mr10062074edr.19.1680516210787; 
 Mon, 03 Apr 2023 03:03:30 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 f24-20020a50a6d8000000b004acbda55f6bsm4381529edc.27.2023.04.03.03.03.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Apr 2023 03:03:30 -0700 (PDT)
Message-ID: <a192e386-5385-d18a-9816-273e433eb833@redhat.com>
Date: Mon, 3 Apr 2023 12:03:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Benjamin Asbach <asbachb.kernel@impl.it>
References: <20230331232447.37204-1-asbachb.kernel@impl.it>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230331232447.37204-1-asbachb.kernel@impl.it>
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
 Content preview:  Hi, On 4/1/23 01:24, Benjamin Asbach wrote: >> Lenovo laptops
 that contain NVME SSDs across a variety of generations have >> trouble
 resuming
 from suspend to idle when the IOMMU translation layer is >> ac [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Headers-End: 1pjH2L-00DfMI-9l
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 missing T14s Gen1 type to s2idle quirk list
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
Cc: linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Mario Limonciello <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <markpearson@lenvo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/1/23 01:24, Benjamin Asbach wrote:
>> Lenovo laptops that contain NVME SSDs across a variety of generations have
>> trouble resuming from suspend to idle when the IOMMU translation layer is
>> active for the NVME storage device.
>>
>> This generally manifests as a large resume delay or page faults. These
>> delays and page faults occur as a result of a Lenovo BIOS specific SMI
>> that runs during the D3->D0 transition on NVME devices.
> 
> Link: https://lore.kernel.org/all/20220503183420.348-1-mario.limonciello@amd.com/
> 
> As Lenovo distributes T14s Gen1 laptops with different product names
> a missing one is added by this patch.
> 
> Note: Based on lenovo support page there might be some more variants which
> are not represented in s2idle quirk list.

Can you provide some more in info on this? Then Mark can maybe check
if we need to add more models ?

Mark, generally speaking it may help to do a DMI_EXACT_MATCH on
DMI_PRODUCT_VERSION with ThinkPads ? That contains the human
readable model string instead of things like "20UJ", and I guess
that we want to e.g. apply the s2idle quirk to all "T14s Gen1 AMD"
ThinkPads.

> 
> Signed-off-by: Benjamin Asbach <asbachb.kernel@impl.it>
> Tested-by: Benjamin Asbach <asbachb.kernel@impl.it>

Thank you for your patch, I've applied this patch to my fixes
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=fixes

I will include this patch in my next fixes pull-req to Linus
for the current kernel development cycle.

Regards,

Hans





> 
> Link: https://bbs.archlinux.org/viewtopic.php?pid=2084655#p2084655
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 32c10457399e..57428d7a392d 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4478,6 +4478,15 @@ static const struct dmi_system_id fwbug_list[] __initconst = {
>  			DMI_MATCH(DMI_PRODUCT_NAME, "20UH"),
>  		}
>  	},
> +	{
> +		.ident = "T14s Gen1 AMD",
> +		.driver_data = &quirk_s2idle_bug,
> +		.matches = {
> +			DMI_MATCH(DMI_BOARD_VENDOR, "LENOVO"),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "20UJ"),
> +		}
> +	},
> +
>  	{
>  		.ident = "P14s Gen1 AMD",
>  		.driver_data = &quirk_s2idle_bug,



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
