Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E4047C70D
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Dec 2021 19:54:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mzkGd-00065h-Q3; Tue, 21 Dec 2021 18:53:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mzkGc-00065X-M8
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Dec 2021 18:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RaxEfKPsvW2G/7TOdhBfY5WrgkaW6Nyc3UL395DMCcQ=; b=nSVc2XrpriEtr67a2f8fhdIhGl
 5USwkqeBlMenzZ6RwmstgKAA2kI0xES61AY7EN1Xcu1W/XlWvhDVVBvJZIEEmp/iV3aK4nvzjRTT/
 ENqCW0hWhRUbRoN3ieP3QAEuawhiP/hdYwWSqRV8FE4OfCAMctT4Ii3ksrexwIWWS868=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RaxEfKPsvW2G/7TOdhBfY5WrgkaW6Nyc3UL395DMCcQ=; b=RraHttzJ8wQdLUGreR5X44l5fI
 KSObfa32m47luKMvoV8tVCdUom2jL9X8UMukZ2tfu/PUKppiLghultXewTYByV8/yAYSgqpQmqUyU
 8MYbcri2EaizwXsSIT2c/Aef7PFS3hoZMnhZvZx/cRHju9XcOJSa5CPIDP/JraXe5cd8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzkGa-0005UY-UN
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Dec 2021 18:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640112814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RaxEfKPsvW2G/7TOdhBfY5WrgkaW6Nyc3UL395DMCcQ=;
 b=P7f3mFQkypbxJCbYd3Bb/DrrMLROUCLfpkO6Lus4RaezfChWM3Mv53w3KSv5qhgsl1KkeN
 EODobJgVngysp1MbEkmbIy1KP2R67zpilwYjztsJCqdeetNNEdbBUV8EJ9TD5mkcPg/TGn
 H8zWlyzYTS+GQHRH6xtI54N3o0wefzQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-gQY17E5KNQC8Pb4FAfovqw-1; Tue, 21 Dec 2021 13:53:31 -0500
X-MC-Unique: gQY17E5KNQC8Pb4FAfovqw-1
Received: by mail-ed1-f70.google.com with SMTP id
 y14-20020a056402440e00b003f81d896346so10260049eda.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Dec 2021 10:53:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=RaxEfKPsvW2G/7TOdhBfY5WrgkaW6Nyc3UL395DMCcQ=;
 b=baGc/atnrTMegXDY+otoFShUNbmdeqhs+XjRTMV1q9Q+s4Wa6wiyhYY46fEQAbyHiN
 2ZchqSGVAFBjCp9KscaM9Opx7cgp1Ol8MlEDE+1iyKsW3zBCmSR/Y3fBsK6V2QgfR8/I
 10Xu9GgYvJO65as/ntND8qun2L2boh4Eq/8HjZU3gOkzRM3uUtuRjOLwZ7NXOfehkO3t
 ENN7srUJytZMdvGWa2zVLF/3+br0MCRHJPY5T3JeeTrq15RChP8zYWp0j4bYnkgYrmLa
 RGBlpXfHE61t+c/AexDM+zoHCGi7lXO2TGvSsReeny47veiAI9tbBT9ixF5N1XjSJQd6
 Ku1w==
X-Gm-Message-State: AOAM530nTN2fB1pFJG/AqkX5QXEsvr/0vSc6pGyXgvbsQMKb2tQ9zC0G
 1YjkOp5eo5N6XKEvauIGbfUZq4BlEAcbWZ5Z1Oakp3a2Lb60BHDtktLkWu0jKn31uxH/AwxvKnm
 PQEGXFO/F/wYCqplYPrvaW9MzFHNZ5/Qc2j4=
X-Received: by 2002:a17:906:2802:: with SMTP id
 r2mr3940471ejc.172.1640112810367; 
 Tue, 21 Dec 2021 10:53:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwRqLy4pcUlbMjBepIrlRH0zBM2jdr2lBOYDmUXU8Typ0GYIlXRJZrjUnh4K1UqEUq6499rUA==
X-Received: by 2002:a17:906:2802:: with SMTP id
 r2mr3940454ejc.172.1640112810048; 
 Tue, 21 Dec 2021 10:53:30 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id i6sm5695402edx.46.2021.12.21.10.53.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 10:53:29 -0800 (PST)
Message-ID: <c6abc6df-6e66-38e3-d934-e71467d71f88@redhat.com>
Date: Tue, 21 Dec 2021 19:53:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Rajat Jain <rajatja@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Benson Leung <bleung@chromium.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, gwendal@google.com,
 seanpaul@google.com, marcheu@google.com, dtor@google.com
References: <20211220222828.2625444-1-rajatja@google.com>
 <20211220222828.2625444-3-rajatja@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211220222828.2625444-3-rajatja@google.com>
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
 Content preview:  Hi, On 12/20/21 23:28, Rajat Jain wrote: > Add a static entry
 in the x86 table, to detect and wait for > privacy-screen on some ChromeOS
 platforms. > > Please note that this means that if CONFIG_CHROMEOS_ [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mzkGa-0005UY-UN
Subject: Re: [ibm-acpi-devel] [PATCH v3 3/3] drm/privacy_screen_x86: Add
 entry for ChromeOS privacy-screen
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 12/20/21 23:28, Rajat Jain wrote:
> Add a static entry in the x86 table, to detect and wait for
> privacy-screen on some ChromeOS platforms.
> 
> Please note that this means that if CONFIG_CHROMEOS_PRIVACY_SCREEN is
> enabled, and if "GOOG0010" device is found in ACPI, then the i915 probe
> shall return EPROBE_DEFER until a platform driver actually registers the
> privacy-screen: https://hansdegoede.livejournal.com/25948.html
> 
> Signed-off-by: Rajat Jain <rajatja@google.com>
> ---
> v3: * Remove the pr_info() from detect_chromeos_privacy_screen(), instead
>       enhance the one already present in drm_privacy_screen_lookup_init()
> v2: * Use #if instead of #elif
>     * Reorder the patches in the series.
>     * Rebased on drm-tip
> 
>  drivers/gpu/drm/drm_privacy_screen_x86.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
> index a2cafb294ca6..0fdd2b500e6d 100644
> --- a/drivers/gpu/drm/drm_privacy_screen_x86.c
> +++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
> @@ -47,6 +47,16 @@ static bool __init detect_thinkpad_privacy_screen(void)
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
> +static bool __init detect_chromeos_privacy_screen(void)
> +{
> +	if (!acpi_dev_present("GOOG0010", NULL, -1))
> +		return false;
> +
> +	return true;

This can be simplified to just:

	return acpi_dev_present("GOOG0010", NULL, -1);

> +}
> +#endif
> +
>  static const struct arch_init_data arch_init_data[] __initconst = {
>  #if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>  	{
> @@ -58,6 +68,16 @@ static const struct arch_init_data arch_init_data[] __initconst = {
>  		.detect = detect_thinkpad_privacy_screen,
>  	},
>  #endif
> +#if IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
> +	{
> +		.lookup = {
> +			.dev_id = NULL,
> +			.con_id = NULL,
> +			.provider = "privacy_screen-GOOG0010:00",
> +		},
> +		.detect = detect_chromeos_privacy_screen,
> +	},
> +#endif
>  };
>  
>  void __init drm_privacy_screen_lookup_init(void)
> @@ -68,7 +88,8 @@ void __init drm_privacy_screen_lookup_init(void)
>  		if (!arch_init_data[i].detect())
>  			continue;
>  
> -		pr_info("Found '%s' privacy-screen provider\n",
> +		pr_info("Found '%s' privacy-screen provider."
> +			"Might have to defer probe for it...\n",
>  			arch_init_data[i].lookup.provider);

I'm afraid this change in the log message will only confuse users,
and for your goal of checking if a privacy-screen provider has
been detected, the original message is good enough.

Please drop this part of the patch.

Regards,

Hans



>  
>  		/* Make a copy because arch_init_data is __initconst */
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
