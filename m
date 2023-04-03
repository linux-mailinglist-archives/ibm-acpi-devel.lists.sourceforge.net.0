Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A769B6D417F
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Apr 2023 12:03:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1pjH1p-0007zv-M3;
	Mon, 03 Apr 2023 10:03:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pjH1o-0007zj-JW
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Apr 2023 10:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rjmzd/YE21ORQOPGQC93EsHd4KdzCGtkIKV/EHIywtI=; b=OMMMGgKQvZyRnHFdGW7afFp1uJ
 SNQaeeBYCJKu9R1rnrZNPTRa75CiQWaGuZ7tTJgw9bUjfbUlCwqPxYFHiX2+VRMkCiOOLoH5TxRb2
 B2pNmZxrqKvAakVpv/hToGHqNWV2ALN1+PH8rqrb/iqO1x2STkG1F+v3m2c6cJnek41I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rjmzd/YE21ORQOPGQC93EsHd4KdzCGtkIKV/EHIywtI=; b=ALbMKLLCQ/0lCo7JvgNpHNZ9Qe
 kdIeooPB7q23DDlcJz4u8sOzOhQuCFZ+bGgeLtYtBlP2t55AVZSIcsLl9oXS8ZzKkUWHvGD198a7t
 UmUV3Byjr6NXdZ5o1SrdrDf/MXP81xRKLbN0uwHbP/d9UsCnG3fpoAe4awex5sdx9GwY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pjH1k-00DfKj-2x for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Apr 2023 10:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680516178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rjmzd/YE21ORQOPGQC93EsHd4KdzCGtkIKV/EHIywtI=;
 b=bAmCcl2fYs9Rlql70Mme9mmbTULFVMlJQgw5W62uZ7JxU/18FT4g13Hg6wcVxMsswe2HT/
 j6W1pttqyqE7l4sRdYG2xX2LEPMZNJWXFQiIbJ7P89+DpxhlP09hoQZmgPp9OQvBBUk3bw
 glubYjY9cg7QoGN25bx5lxORqoUDFyE=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-4wBcNMEOM-2smgj_xHoBAQ-1; Mon, 03 Apr 2023 06:02:57 -0400
X-MC-Unique: 4wBcNMEOM-2smgj_xHoBAQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 b1-20020aa7dc01000000b004ad062fee5eso40079980edu.17
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Apr 2023 03:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680516175;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rjmzd/YE21ORQOPGQC93EsHd4KdzCGtkIKV/EHIywtI=;
 b=N45NF/AhRY7evaEHP99KwGoDW3ulbovAvQQkdGC2Y5R12n0UyYTiiVH75cRmU9cw8Q
 x/W19orzli5vpLatJIYMhLMIqvD7NPombIdW4JDuuWjhzQDIhsltURPyK0jOv3DQHX9O
 pQJt9xdLFNQpVxzYpSYNCRxllvoT8Z6KoTuEeuWcpbwXc7r2WI9Z8Zwf4wNNJJ7TDZ6+
 TToH8jr2AfhNXe7rQ18q16FQez2KmsUIzB8k3tz7/JTZmyJFo9XEbC2OwE0fXBMf5B0c
 W2suUUp3UDqacgmRaFt0Cs4Z7FnVrAWMulDwg0jlK95Pmm2Gt65HNHKt4HYpUx41qdsd
 jhJg==
X-Gm-Message-State: AAQBX9dNt5k9fLQqDAZsqS13nGidpGjoUQ7GDuSA0xU5n3XxyTlwIJRq
 OYXcmjNvTn0VMcHUd2zLEzAmTTPkotnwVsYufz458dE/hcQrRz438E1tEXUi38znTAnZMEMDksM
 ALOCsDj8oJmmoaXGxPA3evs3lRLIc4f6RCwnDeZMFZCY=
X-Received: by 2002:a17:906:2350:b0:8a9:e330:3a23 with SMTP id
 m16-20020a170906235000b008a9e3303a23mr33600699eja.26.1680516175801; 
 Mon, 03 Apr 2023 03:02:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350agIn0Z0BbxQrKaHifZIEBKc5yhaJP+oZ1IQ62dW0fNCJWsj/pNyk/lJ7Zxx4QPY7mHa5cEMw==
X-Received: by 2002:a17:906:2350:b0:8a9:e330:3a23 with SMTP id
 m16-20020a170906235000b008a9e3303a23mr33600677eja.26.1680516175495; 
 Mon, 03 Apr 2023 03:02:55 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 m24-20020a17090679d800b00946c1068b14sm4248587ejo.120.2023.04.03.03.02.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Apr 2023 03:02:54 -0700 (PDT)
Message-ID: <12a26960-1cc8-80df-e284-d0fa4768f558@redhat.com>
Date: Mon, 3 Apr 2023 12:02:53 +0200
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
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/1/23 01:24, Benjamin Asbach wrote: >> Lenovo laptops
 that contain NVME SSDs across a variety of generations have >> trouble
 resuming
 from suspend to idle when the IOMMU translation layer is >> ac [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pjH1k-00DfKj-2x
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

Note it will show up in my fixes branch once I've pushed my
local branch there, which might take a while.

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
