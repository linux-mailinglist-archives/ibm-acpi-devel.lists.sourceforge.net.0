Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5033651D548
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 May 2022 12:11:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nmuvM-0001ec-TJ; Fri, 06 May 2022 10:10:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1nmuvL-0001eW-RJ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 06 May 2022 10:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yNzXFFqULcro2Xm8jKzvPPNgAioEvCfNrUO5846hy+E=; b=nI1fyoyIIHQJJvbXRZCOWH/LJx
 auGyiEpvQQjtxu1v43oiGEGmmAXVXN8t2cVRIjCS/hTk60ZEN7GRiE58VXP65zTKLLSPS8AdVhLsy
 ROuArzeeCV6InU48BwU5JyTXwDWeEacuoNfAilmN7MSvhFRpaSfe+WBElHS/lUzo/5eA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yNzXFFqULcro2Xm8jKzvPPNgAioEvCfNrUO5846hy+E=; b=gZ3vVb4UPna6jSbtQ1N1mIy9mC
 l+Ow2RYGkyFvlA/9jnFQ+5BXEpJ+SnYCV0gbCtoo7CYJu1WuvB2MvVQtyhwiFSPu8yLzGo4KYEkLX
 n5bP/KT0AE4Kf1EIwKLq1uH4qkiI/N5uAoBKH73TiLaCzMZbmhG21ODA5jd0oVG2kZkg=;
Received: from us-smtp-delivery-74.mimecast.com ([170.10.129.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmuvG-00391o-Gv
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 06 May 2022 10:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651831846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yNzXFFqULcro2Xm8jKzvPPNgAioEvCfNrUO5846hy+E=;
 b=Hs+T8F9LeQE8zR0GXVFMq0+Uvarn1EQ7HBMs0kcS/R2yCH70/1sBLijAVOOIVsN97gRu2t
 P+16wSZVMFUvWz5ABGnxo9pxc0amern/dkE/9PtI0w8MR81rLded/+Onv9dDXtSLG/rekz
 WulEe9cnDMgckCHfe8pLwzTphgp86uM=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-a8wkvoQnMwimNvD_wsIETA-1; Fri, 06 May 2022 06:10:42 -0400
X-MC-Unique: a8wkvoQnMwimNvD_wsIETA-1
Received: by mail-ed1-f70.google.com with SMTP id
 z20-20020a50f154000000b0042815e3008cso3706776edl.15
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 06 May 2022 03:10:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yNzXFFqULcro2Xm8jKzvPPNgAioEvCfNrUO5846hy+E=;
 b=qw1YMHkQTbS7WbdRWL2gb4xcdLCV/372rpzPCbLvx3ZXDPtsCag3G5ajnj/K7/Bp65
 IVrNSSj1++qcqf1deMlxcsGPIqCsqRbGEVUPy9bw6u/A5EB3FWh20TsxidZAskOWl7c5
 jGIsh0F0GtxkcdCrpE5wjnaEs9fNjLg81buzXdgJRJe52HGjC44WCdsx5hcIr+D4BWAa
 6QVXRYGZCzkGEjcU/Wob0QjLsWhvc32sQg+B+Vtqr9An4euMCkm5OhqEDC2yjUizEHqO
 ix8ontCEsDLW6mPZsO7QzD61xlKKRDIv/hA0MfUYpZyE0xEIF0PzMPj5KHXoaOfQf4lq
 GBiw==
X-Gm-Message-State: AOAM5337SiPxymFoZwnDdBjjcpqN9VPG7nyvmQwgfhBxPCyXrdSCmoKI
 afi31DkBJhpaLejUk6bMt/+R3DAx+217X0GS1ffFJ9qSugoszNE1A7vRwdouvrHgJHWfI8PTdkL
 EqybvcWNX9lSqcTYxcUQ7EZpMydzJZaGQ8RQ=
X-Received: by 2002:aa7:cb4d:0:b0:425:e24f:96ba with SMTP id
 w13-20020aa7cb4d000000b00425e24f96bamr2640518edt.214.1651831841742; 
 Fri, 06 May 2022 03:10:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyls/i/youBNjCIOSYH3hCA02MQVRuzS9ke3DkaRFVfIB53dB51/nYO/tu9/7fJlAhIOAdqhA==
X-Received: by 2002:aa7:cb4d:0:b0:425:e24f:96ba with SMTP id
 w13-20020aa7cb4d000000b00425e24f96bamr2640500edt.214.1651831841539; 
 Fri, 06 May 2022 03:10:41 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 er22-20020a170907739600b006f4fc3850a5sm1494716ejc.32.2022.05.06.03.10.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 May 2022 03:10:41 -0700 (PDT)
Message-ID: <b1ec2822-64dd-fef6-45b7-62f2518b1944@redhat.com>
Date: Fri, 6 May 2022 12:10:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Mario Limonciello <mario.limonciello@amd.com>,
 Mark Pearson <markpearson@lenovo.com>
References: <20220503183420.348-1-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220503183420.348-1-mario.limonciello@amd.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -4.6 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 5/3/22 20:34, Mario Limonciello wrote: > Users have
 reported that there are a few other DMI strings that T14 can > go by, and
 so these models should also pick up the quirk to avoid the s2idle > fir [...]
 Content analysis details:   (-4.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -3.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nmuvG-00391o-Gv
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add a few
 more models to s2idle quirk list
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
Cc: "open list:THINKPAD ACPI EXTRAS DRIVER"
 <ibm-acpi-devel@lists.sourceforge.net>, Mark Gross <mgross@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 5/3/22 20:34, Mario Limonciello wrote:
> Users have reported that there are a few other DMI strings that T14 can
> go by, and so these models should also pick up the quirk to avoid the s2idle
> firmware bug.
> 
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, since the original patch was still in my review-hans
branch (and not yet in for-next) I've squashed this fix into
the original patch.

This squashing will hopefully make backporting these fixes
easier.

Regards,

Hans





> ---
>  drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 2833609fade7..f3554068dd1e 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4463,6 +4463,22 @@ static const struct dmi_system_id fwbug_list[] __initconst = {
>  			DMI_MATCH(DMI_PRODUCT_NAME, "20UD"),
>  		}
>  	},
> +	{
> +		.ident = "T14 Gen1 AMD",
> +		.driver_data = &quirk_s2idle_bug,
> +		.matches = {
> +			DMI_MATCH(DMI_BOARD_VENDOR, "LENOVO"),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "20UE"),
> +		}
> +	},
> +	{
> +		.ident = "T14s Gen1 AMD",
> +		.driver_data = &quirk_s2idle_bug,
> +		.matches = {
> +			DMI_MATCH(DMI_BOARD_VENDOR, "LENOVO"),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "20UH"),
> +		}
> +	},
>  	{
>  		.ident = "P14s Gen1 AMD",
>  		.driver_data = &quirk_s2idle_bug,



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
