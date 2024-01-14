Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C3C82D1EB
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 14 Jan 2024 19:57:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rP5fR-0001BB-OM;
	Sun, 14 Jan 2024 18:57:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rP5fQ-0001B5-5q
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 14 Jan 2024 18:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G8k+j3Zq1KBDKp3ZxSbZTbYrJN4lVOTmWHBkEE278hE=; b=h4GK6otDLeJN9B3+7nUpYIyLRM
 RtdrUVWKlpbhFFdZ3I8VBdyM06ZC/SciQ1hv6I3HxvDIBpce9lQvCqjBsmpBog2wOv+bxGDO536Lv
 YOx9hzdDkcPRujSXnHbGUqGoBp+JCHRVnfWrt9RtagzEFeBKchj1Y83skzCq8YXUvu9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G8k+j3Zq1KBDKp3ZxSbZTbYrJN4lVOTmWHBkEE278hE=; b=lzd4aD1beccn7/Yn/tZyMkyTma
 9/s7vXLKIuER4e9hP2FPlFR4811lsTnoSb1lT5RcLQITK9D/Bi1ImGvvmoVs/UawDSMELWGqrlVHg
 +lJgU6x7w3TP+yDzhsL9EAwyBetd9m5ZBtZp+shF9Rs5nYJKErZe5vt0+asjTKllXnvw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rP5fM-0008KG-Te for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 14 Jan 2024 18:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1705258614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G8k+j3Zq1KBDKp3ZxSbZTbYrJN4lVOTmWHBkEE278hE=;
 b=LEhA+1ysIAV7eFMnLjk+eN5G1lSKAsKx92ALpYC/SgxucDUYh0ap+3blqKM3sp3ejZNYDU
 V76YMt/f9hdC9dyTcE7+zRFEJDKWjjzNdQdLEP8tXPMpbZJgJV8P1PiUMfj7z7nsRQSeb7
 E/rWOklnTXUTO4RLie01TSRsSUrRSoI=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-541-AsFFWEI_OJmT29V6TKZHbA-1; Sun, 14 Jan 2024 13:56:52 -0500
X-MC-Unique: AsFFWEI_OJmT29V6TKZHbA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a2b6c2a5fddso263155566b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 14 Jan 2024 10:56:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705258612; x=1705863412;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G8k+j3Zq1KBDKp3ZxSbZTbYrJN4lVOTmWHBkEE278hE=;
 b=dGfXD4jElt1WYdqezgqG3vM0zuLgmlUffOXIOfkj9ceApD5tQ2/n9B7/yNmWLifAiC
 CQ7h2AZB0ZeDNCBeGGlinanbWOu/98HtLjdDjTuOOztdBWX+ptlHc3s4yVScWEQbloou
 oAeskLMO3BH6PnyeZj8AuWZ+Rq0Fmr3uL8WLXvmq+dwBBQ2aRh+UofsTwv03C96eLFno
 jy0KBDWRjANxe7PKGasuH2qip0dUFe0aC3BgMqDQS1HWCn0c9bQjfxATyS14B5wROQsm
 VuYA101pfmByGQPL+HMIbtsR+kjnGUC6NmVeNGq6dUH7RoEHIYW7oDH9f593cYeTLxU6
 ZCYw==
X-Gm-Message-State: AOJu0YwUnpmr9NIwtyabJkpCmGxso9ROzBCiTf0pIp4GpNE28Q5LX++3
 LDNFUJEnHOIdDHZzK9O647R3DvDpHF+fkW9OxPrxSg8szqJYzmtolyOkNcJx5PIk4FJeAbGykwV
 n0OsRSc2B/l8Zw/GL6CgAILLRV6QibGxDbwnYLKY+U8o=
X-Received: by 2002:a17:907:c8a:b0:a28:b2b0:fe14 with SMTP id
 gi10-20020a1709070c8a00b00a28b2b0fe14mr1723706ejc.144.1705258611747; 
 Sun, 14 Jan 2024 10:56:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSNiCsEUJI5eVbBBEbjbotuVhPqw90/G9K4Dl6iBGhhTex5Ig38s4LEdup5Nfp2GGqVMBoKQ==
X-Received: by 2002:a17:907:c8a:b0:a28:b2b0:fe14 with SMTP id
 gi10-20020a1709070c8a00b00a28b2b0fe14mr1723695ejc.144.1705258611473; 
 Sun, 14 Jan 2024 10:56:51 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 st7-20020a170907c08700b00a2cfa8edbcesm2646129ejc.199.2024.01.14.10.56.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Jan 2024 10:56:51 -0800 (PST)
Message-ID: <52263b68-b52c-43e3-b038-211bc7eed3bb@redhat.com>
Date: Sun, 14 Jan 2024 19:56:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Matthew Garrett <mjg59@srcf.ucam.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?=
 <pali@kernel.org>, Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <daef7331-dcb4-4b3a-802e-656629486b4c@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <daef7331-dcb4-4b3a-802e-656629486b4c@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 1/14/24 18:14,
 Heiner Kallweit wrote: > Since 64f67b5240db
 ("leds: trigger: audio: Add an activate callback to > ensure the initial
 brightness is set") the audio triggers have an > activate callbac [...] 
 Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rP5fM-0008KG-Te
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: remove obsolete calls
 to ledtrig_audio_get
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
Cc: ibm-acpi-devel@lists.sourceforge.net, acpi4asus-user@lists.sourceforge.net,
 Dell.Client.Kernel@dell.com, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 1/14/24 18:14, Heiner Kallweit wrote:
> Since 64f67b5240db ("leds: trigger: audio: Add an activate callback to
> ensure the initial brightness is set") the audio triggers have an
> activate callback which sets the LED brightness as soon as the
> (default) trigger is bound to the LED device. So we can remove the
> call to ledtrig_audio_get.
> 
> Positive side effect: There's no code dependency to ledtrig-audio any
> longer, what allows to remove some Kconfig dependencies.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - remove Kconfig dependencies related to the audio LED trigger

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/platform/x86/Kconfig                 | 6 ------
>  drivers/platform/x86/asus-wmi.c              | 1 -
>  drivers/platform/x86/dell/Kconfig            | 3 ---
>  drivers/platform/x86/dell/dell-laptop.c      | 2 --
>  drivers/platform/x86/dell/dell-wmi-privacy.c | 1 -
>  drivers/platform/x86/huawei-wmi.c            | 1 -
>  drivers/platform/x86/thinkpad_acpi.c         | 1 -
>  7 files changed, 15 deletions(-)
> 
> diff --git a/drivers/platform/x86/Kconfig b/drivers/platform/x86/Kconfig
> index bdd302274..6dbd40e2a 100644
> --- a/drivers/platform/x86/Kconfig
> +++ b/drivers/platform/x86/Kconfig
> @@ -56,8 +56,6 @@ config HUAWEI_WMI
>  	depends on INPUT
>  	select INPUT_SPARSEKMAP
>  	select LEDS_CLASS
> -	select LEDS_TRIGGERS
> -	select LEDS_TRIGGER_AUDIO
>  	select NEW_LEDS
>  	help
>  	  This driver provides support for Huawei WMI hotkeys, battery charge
> @@ -269,8 +267,6 @@ config ASUS_WMI
>  	select INPUT_SPARSEKMAP
>  	select LEDS_CLASS
>  	select NEW_LEDS
> -	select LEDS_TRIGGERS
> -	select LEDS_TRIGGER_AUDIO
>  	select ACPI_PLATFORM_PROFILE
>  	help
>  	  Say Y here if you have a WMI aware Asus laptop (like Eee PCs or new
> @@ -507,8 +503,6 @@ config THINKPAD_ACPI
>  	select NVRAM
>  	select NEW_LEDS
>  	select LEDS_CLASS
> -	select LEDS_TRIGGERS
> -	select LEDS_TRIGGER_AUDIO
>  	help
>  	  This is a driver for the IBM and Lenovo ThinkPad laptops. It adds
>  	  support for Fn-Fx key combinations, Bluetooth control, video
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index 18be35fdb..21dee425e 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -1620,7 +1620,6 @@ static int asus_wmi_led_init(struct asus_wmi *asus)
>  	if (asus_wmi_dev_is_present(asus, ASUS_WMI_DEVID_MICMUTE_LED)) {
>  		asus->micmute_led.name = "platform::micmute";
>  		asus->micmute_led.max_brightness = 1;
> -		asus->micmute_led.brightness = ledtrig_audio_get(LED_AUDIO_MICMUTE);
>  		asus->micmute_led.brightness_set_blocking = micmute_led_set;
>  		asus->micmute_led.default_trigger = "audio-micmute";
>  
> diff --git a/drivers/platform/x86/dell/Kconfig b/drivers/platform/x86/dell/Kconfig
> index e712df67f..bd9f44597 100644
> --- a/drivers/platform/x86/dell/Kconfig
> +++ b/drivers/platform/x86/dell/Kconfig
> @@ -57,8 +57,6 @@ config DELL_LAPTOP
>  	select POWER_SUPPLY
>  	select LEDS_CLASS
>  	select NEW_LEDS
> -	select LEDS_TRIGGERS
> -	select LEDS_TRIGGER_AUDIO
>  	help
>  	This driver adds support for rfkill and backlight control to Dell
>  	laptops (except for some models covered by the Compal driver).
> @@ -165,7 +163,6 @@ config DELL_WMI
>  
>  config DELL_WMI_PRIVACY
>  	bool "Dell WMI Hardware Privacy Support"
> -	depends on LEDS_TRIGGER_AUDIO = y || DELL_WMI = LEDS_TRIGGER_AUDIO
>  	depends on DELL_WMI
>  	help
>  	  This option adds integration with the "Dell Hardware Privacy"
> diff --git a/drivers/platform/x86/dell/dell-laptop.c b/drivers/platform/x86/dell/dell-laptop.c
> index 658643835..42f7de2b4 100644
> --- a/drivers/platform/x86/dell/dell-laptop.c
> +++ b/drivers/platform/x86/dell/dell-laptop.c
> @@ -2252,7 +2252,6 @@ static int __init dell_init(void)
>  	if (dell_smbios_find_token(GLOBAL_MIC_MUTE_DISABLE) &&
>  	    dell_smbios_find_token(GLOBAL_MIC_MUTE_ENABLE) &&
>  	    !dell_privacy_has_mic_mute()) {
> -		micmute_led_cdev.brightness = ledtrig_audio_get(LED_AUDIO_MICMUTE);
>  		ret = led_classdev_register(&platform_device->dev, &micmute_led_cdev);
>  		if (ret < 0)
>  			goto fail_led;
> @@ -2261,7 +2260,6 @@ static int __init dell_init(void)
>  
>  	if (dell_smbios_find_token(GLOBAL_MUTE_DISABLE) &&
>  	    dell_smbios_find_token(GLOBAL_MUTE_ENABLE)) {
> -		mute_led_cdev.brightness = ledtrig_audio_get(LED_AUDIO_MUTE);
>  		ret = led_classdev_register(&platform_device->dev, &mute_led_cdev);
>  		if (ret < 0)
>  			goto fail_backlight;
> diff --git a/drivers/platform/x86/dell/dell-wmi-privacy.c b/drivers/platform/x86/dell/dell-wmi-privacy.c
> index c517bd45d..4d94603f7 100644
> --- a/drivers/platform/x86/dell/dell-wmi-privacy.c
> +++ b/drivers/platform/x86/dell/dell-wmi-privacy.c
> @@ -288,7 +288,6 @@ static int dell_privacy_leds_setup(struct device *dev)
>  	priv->cdev.max_brightness = 1;
>  	priv->cdev.brightness_set_blocking = dell_privacy_micmute_led_set;
>  	priv->cdev.default_trigger = "audio-micmute";
> -	priv->cdev.brightness = ledtrig_audio_get(LED_AUDIO_MICMUTE);
>  	return devm_led_classdev_register(dev, &priv->cdev);
>  }
>  
> diff --git a/drivers/platform/x86/huawei-wmi.c b/drivers/platform/x86/huawei-wmi.c
> index 0ef1c46b6..dde139c69 100644
> --- a/drivers/platform/x86/huawei-wmi.c
> +++ b/drivers/platform/x86/huawei-wmi.c
> @@ -310,7 +310,6 @@ static void huawei_wmi_leds_setup(struct device *dev)
>  	huawei->cdev.max_brightness = 1;
>  	huawei->cdev.brightness_set_blocking = &huawei_wmi_micmute_led_set;
>  	huawei->cdev.default_trigger = "audio-micmute";
> -	huawei->cdev.brightness = ledtrig_audio_get(LED_AUDIO_MICMUTE);
>  	huawei->cdev.dev = dev;
>  	huawei->cdev.flags = LED_CORE_SUSPENDRESUME;
>  
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c4895e9bc..d1c9f91fd 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9285,7 +9285,6 @@ static int mute_led_init(struct ibm_init_struct *iibm)
>  			continue;
>  		}
>  
> -		mute_led_cdev[i].brightness = ledtrig_audio_get(i);
>  		err = led_classdev_register(&tpacpi_pdev->dev, &mute_led_cdev[i]);
>  		if (err < 0) {
>  			while (i--)



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
