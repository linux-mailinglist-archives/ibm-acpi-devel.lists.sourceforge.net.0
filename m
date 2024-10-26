Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6967C9B16E0
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:07:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4dhJ-00013J-RK;
	Sat, 26 Oct 2024 10:07:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4dhI-000139-9w
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/xhv1+b5m30tQ2V9ReCJqtNQVpNuW63djAAN6O+g2C4=; b=AqUHMRVAaJKYc+KNMVQ7Heer9X
 /DT/HLxnMO/YCJxBrSo2HzUY94CgTNvSVN0cz33mzY3oHWMe3PsmnuhPczQ/gMgGf3m64zp2noIw1
 0/LTHxQl+9KJS0wJDgFO3DkQoKh/G6fusP/KMomTenp4d212B1QMW3zc61ehCB5Gp8is=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/xhv1+b5m30tQ2V9ReCJqtNQVpNuW63djAAN6O+g2C4=; b=dKRS0jdxIRtbHBUyNHg5l9QVoB
 n2696ZgduPqRjOGjzuJSA4DVMkXlZMMOxdJTpjpNjXy2cRBRD8PRliGSLjBcGtI0qOxyCZn2nSQtX
 K2tbGwdqRIe56gHB0lg4syPg4STtaq4frgUVTAiblHFnyckAiWxleKT1bz8yRYvE9DKc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4dhG-00018r-Ma for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729937211;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/xhv1+b5m30tQ2V9ReCJqtNQVpNuW63djAAN6O+g2C4=;
 b=bU7Ged+G945wdKe7c9CIbhS9xOLHFxl8arkCDWU2fDifCOXQ7cONaAzPDqQZj7EWnMmCGr
 88tAby0N6Q3nLHe9ZLcJ0rRNVwScfytyV8DT4Y/9FTpo1hijcDckhc0CicuZbw2nknpF0H
 0bp4vYqItWF9hZrY+BqS+xiayvn3+x4=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-209-GV1DRKtPOsu7EUB2ZlhyAQ-1; Sat, 26 Oct 2024 06:06:47 -0400
X-MC-Unique: GV1DRKtPOsu7EUB2ZlhyAQ-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a9a1af73615so192509566b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729937206; x=1730542006;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/xhv1+b5m30tQ2V9ReCJqtNQVpNuW63djAAN6O+g2C4=;
 b=BucuJstU7gg1yV8+z5MqFJ4agnasLPG3sLZb9kv4fSWUhyAa4njDB28jj1sLDeliby
 NojLBmjPBvJdjHWjX1gRVaxbvFxc0zTHDdSkkt9y/jC1yQT0BqGE+vc3RcxyThhsjnKq
 fQ36bCHN5L2tRUOaKxA1FFtO89qz9AbWsl6d3Zcc5jqBdUivU/Tcwvnt4NOHoaJ1mdJn
 Of3gxstUlqDDOjfonEiyZIEXWFDZO6AvVpyoaOE6jqO+c3S8pc2JVcGCwb0WA56IJZhw
 rk4MhRm8ghyyQgjZQG2sG+BBi+wnzSrAe4NP3OwJSDK5hMwH8oFymdhyB2C5RDxxnMSP
 //Og==
X-Forwarded-Encrypted: i=1;
 AJvYcCXc6fN4gppeVfnbobbmYyp2fyUH46j50wo3aDfdMN1bBeGNbcwdmTMrfiBeG8iFBXsJ6XHhM5iTXifUcJvDoA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyV0PaQVN10g2zAGYq7NYG56O8CMoPvGNXAV+iiN5A03mdB1DAt
 VfKwq2l6OeoQ7N0Ca8nfSeSb4Fm8smso83mw0xcP0Fki0JXYnaCV2uG6zYp1tO7XIDqq82pip4U
 pOy/oWXJ1l4Unwa7NmJojPuKfwnFQJC8YQmEp27aMN8EUnLvFKMGEmg/cm/1otqpdowr/tCCs
X-Received: by 2002:a17:907:3204:b0:a9a:825:4c46 with SMTP id
 a640c23a62f3a-a9de5f66095mr143236066b.28.1729937206339; 
 Sat, 26 Oct 2024 03:06:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjzd66VSfmbE6a/PmIgA5tRRvaqKEjO55p9KQ0QO3fCz/oAy+qnzABJmGMxKzZn329gAG5bQ==
X-Received: by 2002:a17:907:3204:b0:a9a:825:4c46 with SMTP id
 a640c23a62f3a-a9de5f66095mr143233866b.28.1729937205779; 
 Sat, 26 Oct 2024 03:06:45 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b1dfbdecbsm159602066b.5.2024.10.26.03.06.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:06:45 -0700 (PDT)
Message-ID: <6e7bc5fb-6b6d-40e3-b974-fd839a0d6b55@redhat.com>
Date: Sat, 26 Oct 2024 12:06:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-2-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-2-mario.limonciello@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 25-Oct-24 9:30 PM, Mario Limonciello wrote: > In order
 to prepare for allowing multiple handlers, introduce > a name field that
 can be used to distinguish between different > handlers. > > Tested-b [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t4dhG-00018r-Ma
Subject: Re: [ibm-acpi-devel] [PATCH 1/8] ACPI: platform-profile: Add a name
 member to handlers
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 25-Oct-24 9:30 PM, Mario Limonciello wrote:
> In order to prepare for allowing multiple handlers, introduce
> a name field that can be used to distinguish between different
> handlers.
> 
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/platform/surface/surface_platform_profile.c | 1 +
>  drivers/platform/x86/acer-wmi.c                     | 1 +
>  drivers/platform/x86/amd/pmf/sps.c                  | 1 +
>  drivers/platform/x86/asus-wmi.c                     | 1 +
>  drivers/platform/x86/dell/dell-pc.c                 | 1 +
>  drivers/platform/x86/hp/hp-wmi.c                    | 1 +
>  drivers/platform/x86/ideapad-laptop.c               | 1 +
>  drivers/platform/x86/inspur_platform_profile.c      | 1 +
>  drivers/platform/x86/thinkpad_acpi.c                | 1 +
>  include/linux/platform_profile.h                    | 1 +
>  10 files changed, 10 insertions(+)
> 
> diff --git a/drivers/platform/surface/surface_platform_profile.c b/drivers/platform/surface/surface_platform_profile.c
> index 3de864bc66108..61aa488a80eb5 100644
> --- a/drivers/platform/surface/surface_platform_profile.c
> +++ b/drivers/platform/surface/surface_platform_profile.c
> @@ -211,6 +211,7 @@ static int surface_platform_profile_probe(struct ssam_device *sdev)
>  
>  	tpd->sdev = sdev;
>  
> +	tpd->handler.name = "Surface Platform Profile";
>  	tpd->handler.profile_get = ssam_platform_profile_get;
>  	tpd->handler.profile_set = ssam_platform_profile_set;
>  
> diff --git a/drivers/platform/x86/acer-wmi.c b/drivers/platform/x86/acer-wmi.c
> index d09baa3d3d902..53fbc9b4d3df7 100644
> --- a/drivers/platform/x86/acer-wmi.c
> +++ b/drivers/platform/x86/acer-wmi.c
> @@ -1878,6 +1878,7 @@ static int acer_platform_profile_setup(void)
>  	if (quirks->predator_v4) {
>  		int err;
>  
> +		platform_profile_handler.name = "acer-wmi";
>  		platform_profile_handler.profile_get =
>  			acer_predator_v4_platform_profile_get;
>  		platform_profile_handler.profile_set =
> diff --git a/drivers/platform/x86/amd/pmf/sps.c b/drivers/platform/x86/amd/pmf/sps.c
> index 92f7fb22277dc..e2d0cc92c4396 100644
> --- a/drivers/platform/x86/amd/pmf/sps.c
> +++ b/drivers/platform/x86/amd/pmf/sps.c
> @@ -405,6 +405,7 @@ int amd_pmf_init_sps(struct amd_pmf_dev *dev)
>  		amd_pmf_set_sps_power_limits(dev);
>  	}
>  
> +	dev->pprof.name = "amd-pmf";
>  	dev->pprof.profile_get = amd_pmf_profile_get;
>  	dev->pprof.profile_set = amd_pmf_profile_set;
>  
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index 2ccc23b259d3e..c7c104c65a85a 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -3910,6 +3910,7 @@ static int platform_profile_setup(struct asus_wmi *asus)
>  
>  	dev_info(dev, "Using throttle_thermal_policy for platform_profile support\n");
>  
> +	asus->platform_profile_handler.name = "asus-wmi";
>  	asus->platform_profile_handler.profile_get = asus_wmi_platform_profile_get;
>  	asus->platform_profile_handler.profile_set = asus_wmi_platform_profile_set;
>  
> diff --git a/drivers/platform/x86/dell/dell-pc.c b/drivers/platform/x86/dell/dell-pc.c
> index 972385ca1990b..3cf79e55e3129 100644
> --- a/drivers/platform/x86/dell/dell-pc.c
> +++ b/drivers/platform/x86/dell/dell-pc.c
> @@ -247,6 +247,7 @@ static int thermal_init(void)
>  	thermal_handler = kzalloc(sizeof(*thermal_handler), GFP_KERNEL);
>  	if (!thermal_handler)
>  		return -ENOMEM;
> +	thermal_handler->name = "dell-pc";
>  	thermal_handler->profile_get = thermal_platform_profile_get;
>  	thermal_handler->profile_set = thermal_platform_profile_set;
>  
> diff --git a/drivers/platform/x86/hp/hp-wmi.c b/drivers/platform/x86/hp/hp-wmi.c
> index 81ccc96ffe40a..26cac73caf2b9 100644
> --- a/drivers/platform/x86/hp/hp-wmi.c
> +++ b/drivers/platform/x86/hp/hp-wmi.c
> @@ -1624,6 +1624,7 @@ static int thermal_profile_setup(void)
>  		set_bit(PLATFORM_PROFILE_COOL, platform_profile_handler.choices);
>  	}
>  
> +	platform_profile_handler.name = "hp-wmi";
>  	set_bit(PLATFORM_PROFILE_BALANCED, platform_profile_handler.choices);
>  	set_bit(PLATFORM_PROFILE_PERFORMANCE, platform_profile_handler.choices);
>  
> diff --git a/drivers/platform/x86/ideapad-laptop.c b/drivers/platform/x86/ideapad-laptop.c
> index 9d8c3f064050e..1f94c14c3b832 100644
> --- a/drivers/platform/x86/ideapad-laptop.c
> +++ b/drivers/platform/x86/ideapad-laptop.c
> @@ -1102,6 +1102,7 @@ static int ideapad_dytc_profile_init(struct ideapad_private *priv)
>  
>  	mutex_init(&priv->dytc->mutex);
>  
> +	priv->dytc->pprof.name = "ideapad-laptop";
>  	priv->dytc->priv = priv;
>  	priv->dytc->pprof.profile_get = dytc_profile_get;
>  	priv->dytc->pprof.profile_set = dytc_profile_set;
> diff --git a/drivers/platform/x86/inspur_platform_profile.c b/drivers/platform/x86/inspur_platform_profile.c
> index 8440defa67886..03da2c8cf6789 100644
> --- a/drivers/platform/x86/inspur_platform_profile.c
> +++ b/drivers/platform/x86/inspur_platform_profile.c
> @@ -177,6 +177,7 @@ static int inspur_wmi_probe(struct wmi_device *wdev, const void *context)
>  	priv->wdev = wdev;
>  	dev_set_drvdata(&wdev->dev, priv);
>  
> +	priv->handler.name = "inspur-wmi";
>  	priv->handler.profile_get = inspur_platform_profile_get;
>  	priv->handler.profile_set = inspur_platform_profile_set;
>  
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 4c1b0553f8720..c8c316b8507a5 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10549,6 +10549,7 @@ static void dytc_profile_refresh(void)
>  }
>  
>  static struct platform_profile_handler dytc_profile = {
> +	.name = "thinkpad-acpi",
>  	.profile_get = dytc_profile_get,
>  	.profile_set = dytc_profile_set,
>  };
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index f5492ed413f36..6fa988e417428 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -27,6 +27,7 @@ enum platform_profile_option {
>  };
>  
>  struct platform_profile_handler {
> +	const char *name;
>  	unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
>  	int (*profile_get)(struct platform_profile_handler *pprof,
>  				enum platform_profile_option *profile);



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
