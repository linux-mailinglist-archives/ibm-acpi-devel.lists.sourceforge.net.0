Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D08C47CA24
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Dec 2021 01:14:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mzpGb-0004ra-Vh; Wed, 22 Dec 2021 00:14:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mzpGX-0004r6-Qr
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Dec 2021 00:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l0Qq4bqfzfE3trvRIEDVDXat+HDTqmCMW/URnd0so/Y=; b=fGZzD8Sz7rXYVNN1Znad6iuze2
 mRy8vw+rDrmUnhrJegsYzhZM0Jya88qIZihO5PSAyIeTdPDlC/RpaVcYefdPb9UI14XipiV7ooTQE
 6y5FBIEaNIf4EODoAWVXQETW4POVIVyn/iaVgiGzKS2Wtu301U37gF8rWpai2NCij3HU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l0Qq4bqfzfE3trvRIEDVDXat+HDTqmCMW/URnd0so/Y=; b=C5TapF7lJ3p2oNcBP7UHBE7ZdR
 c+qOcBGylfg/su9NO7Cf7knysUT9vXthJU690np9hhenT+/Wp31XN40FxzLh/qYexoAKVx99kXVDZ
 gR0D5h1AMAwsvXBQpl1cPq4fsRbrHO+7JIDeGsFzue8Lp+ZOO3E1nAQnftVbeQjYXhis=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzpGU-0004zt-Pp
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Dec 2021 00:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640132028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l0Qq4bqfzfE3trvRIEDVDXat+HDTqmCMW/URnd0so/Y=;
 b=JHq3Dc00zsB8JZBH9fKA4144BKn1MeC1mpPr3h6+NiCn/vKzJDyHPXntwgVsjBIW3D3sqt
 GAKWQyPN75qVP4c19FRxNs9Jdln1oeKzV3T3iUaIQovOUtoXZAyEQm4EDNK/o14kXVK0hj
 RThXIE0f0LEfIhQk9coNZlgZ+39HnJI=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-8z7LwkRgMxWf4_DbAnI9PQ-1; Tue, 21 Dec 2021 19:13:45 -0500
X-MC-Unique: 8z7LwkRgMxWf4_DbAnI9PQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 y17-20020a056402271100b003f7ef5ca612so322960edd.17
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Dec 2021 16:13:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=l0Qq4bqfzfE3trvRIEDVDXat+HDTqmCMW/URnd0so/Y=;
 b=hybQhW2aw51G4enr6sMvak8Th8E6wsMWjWuFAs6DQuhtLQ2iYkHD4052kWKWZ48uY+
 vbVuRcOuHZUWcIWcN0cwqo+4EbdjK7Me/yz+pO23Sxyk9z6EmZW2Fo5V/RKl2J9Ic7WE
 9PJbrA67b3lPuUCQUGMC4E4y1xfxsHM0diwRV2vE/U5J3BdAhXmq7pYEaYD9rZq0LHBT
 8+JOZX0DPf3TASPQZPdfJqNoGhaU7XTSnDDyWYHjxII8ZNm+11a49nQEdA80DXCp9/2z
 4nM3k1bpgiosKl5b8sH3QNyXrk1TiFvaWU/1+UPA45QAE2J2y01IbGN1Vi95ZS0k8GTX
 g3Vw==
X-Gm-Message-State: AOAM531tt52y3siLfxBUm3AFZ2zbqfpe8lXikHX5r/+Wy58qqbNOltXt
 vv9ArNlpNNcf/nNvlbV00axj2sjOQ/SRVYMdJ3GdjPrqQWTZ7m7l3IF366AqAIVkp8NtyenKj0E
 BsLmRB+PCjcy9jDG0UR70nwpS1TozDlvohmI=
X-Received: by 2002:a17:907:948c:: with SMTP id
 dm12mr503037ejc.551.1640132024358; 
 Tue, 21 Dec 2021 16:13:44 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwWIsX82dWa3sKDnmIan+Qjx5tWjk2AfiuQebVmEZ3//spVNOkyiANcePpTAxbV0EdzLofNog==
X-Received: by 2002:a17:907:948c:: with SMTP id
 dm12mr503023ejc.551.1640132024176; 
 Tue, 21 Dec 2021 16:13:44 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id r24sm97529edv.18.2021.12.21.16.13.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 16:13:43 -0800 (PST)
Message-ID: <4611aa52-d0ff-9de6-3fa8-d997175533f6@redhat.com>
Date: Wed, 22 Dec 2021 01:13:42 +0100
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
References: <20211222001127.3337471-1-rajatja@google.com>
 <20211222001127.3337471-3-rajatja@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211222001127.3337471-3-rajatja@google.com>
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
 Content preview:  Hi, On 12/22/21 01:11, Rajat Jain wrote: > Add a static entry
 in the x86 table, to detect and wait for > privacy-screen on some ChromeOS
 platforms. > > Please note that this means that if CONFIG_CHROMEOS_ [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Headers-End: 1mzpGU-0004zt-Pp
Subject: Re: [ibm-acpi-devel] [PATCH v4 3/3] drm/privacy_screen_x86: Add
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

On 12/22/21 01:11, Rajat Jain wrote:
> Add a static entry in the x86 table, to detect and wait for
> privacy-screen on some ChromeOS platforms.
> 
> Please note that this means that if CONFIG_CHROMEOS_PRIVACY_SCREEN is
> enabled, and if "GOOG0010" device is found in ACPI, then the i915 probe
> shall return EPROBE_DEFER until a platform driver actually registers the
> privacy-screen: https://hansdegoede.livejournal.com/25948.html
> 
> Signed-off-by: Rajat Jain <rajatja@google.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
> v4: * Simplify the detect_chromeos_privacy_screen() function
>     * Don't change the existing print statement
> v3: * Remove the pr_info() from detect_chromeos_privacy_screen(), instead
>       enhance the one already present in drm_privacy_screen_lookup_init()
> v2: * Use #if instead of #elif
>     * Reorder the patches in the series.
>     * Rebased on drm-tip
> 
>  drivers/gpu/drm/drm_privacy_screen_x86.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
> index a2cafb294ca6..88802cd7a1ee 100644
> --- a/drivers/gpu/drm/drm_privacy_screen_x86.c
> +++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
> @@ -47,6 +47,13 @@ static bool __init detect_thinkpad_privacy_screen(void)
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
> +static bool __init detect_chromeos_privacy_screen(void)
> +{
> +	return acpi_dev_present("GOOG0010", NULL, -1);
> +}
> +#endif
> +
>  static const struct arch_init_data arch_init_data[] __initconst = {
>  #if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>  	{
> @@ -58,6 +65,16 @@ static const struct arch_init_data arch_init_data[] __initconst = {
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
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
