Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C7E82D174
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 14 Jan 2024 17:36:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rP3SD-0005Ad-2R;
	Sun, 14 Jan 2024 16:35:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rP3SB-0005AX-0j
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 14 Jan 2024 16:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jdw+7gt1nEV0mGxoDo2azbfbm9yfPMBbLB8ljSRmOWw=; b=mWC7VXnaB09cFzU4FlCM2F5I94
 wfAc6RH8jJHVpah0HtlxcdxlVLwJcTOKAkk1ULzqDu/8ZxcpZ5OVGD+an2IYQvBSo7YmUezbvoN76
 1WBmBIw/05f/R3yLfPU0Q14KrVHtqoeIQ+fUQ5U1loH7RHDv8iKDJ2/56gpDIImuHTl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jdw+7gt1nEV0mGxoDo2azbfbm9yfPMBbLB8ljSRmOWw=; b=iE3KTqHfw+3XzG3YQxFUGHH9FT
 ITBKWcVO7MbdHzBmlhHb3oabw5hpmIbtsHSuDJu1BAC7YRRd3LLDsgBQ0Be/fFMPwC90/k2lLRvdv
 iholi/Tqx28Z02uJ7QKALrpYoR932nOFSNr+InU0/vtnukhWTNFoWLfm3YAVWu9g/CYc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rP3S1-0002bu-9d for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 14 Jan 2024 16:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1705250103;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jdw+7gt1nEV0mGxoDo2azbfbm9yfPMBbLB8ljSRmOWw=;
 b=HNGEo2Al9IlK9z32lYOc5R5+4YZ/XbChiFGGo0QAN7tixvHr0+/F1w1hDStnpGF0gIw1uR
 RnKM2QDjOIr+bGhx1mfwIp/lJFuK62wUii5tZM0qQFaLcJkGHCqM0QRi7Z1qY2LyzGste+
 2JAMarPkL7v5aTLeGDV2FMH9OQlv4ug=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-19QSmlwUO562vReIaoxjQA-1; Sun, 14 Jan 2024 11:35:01 -0500
X-MC-Unique: 19QSmlwUO562vReIaoxjQA-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-50edc80b859so2560960e87.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 14 Jan 2024 08:35:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705250100; x=1705854900;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Jdw+7gt1nEV0mGxoDo2azbfbm9yfPMBbLB8ljSRmOWw=;
 b=cC6z7yvwrHzkqQYO4Tc6iaJY8fPE4Wlh9WWZsg+sL8s0XVo8OkKaJBcUxBKe4oQW0j
 9B92zdWkPUqiMs1E6OqtbYxvSQGvUCSUKpzbSu4Rf2A9GgqLJ/FxxK2NO34lC1LGIdIU
 MKxYBcSzlwSr7wfUhqpJ085fxoYPliDodR2PlBBQn9EBb/JUlYTINSRpZShjw2E4pMAl
 CB9tYGf9TYk8xL2tRAdd+6UpUfs/OSMN2BQaJSN7XWeRKUU02ZYb3tXeuMUPGYMFUWB7
 2btdRhwvIEzzUhcGFh0Bq+cjbV78YEd5ceTxsaG5YFrBIZpDb9f7byDmWpFfYcPaViDr
 FsLQ==
X-Gm-Message-State: AOJu0YykXFL61mWqLgfURi8hD+r8+I7IckbAeKl2yl1RtbBdxqUfcqLm
 c+uzH7D9vXI9KjfPG3nDqITM4r0661suW2hePsrjayteI0pI4ikDwHcwvoM/yDUiRXzY//vhL6X
 5VGKExO5NBuasH5aIwMpZuJoVX6IeEO/JvPB833h2ujg=
X-Received: by 2002:ac2:5588:0:b0:50e:69dd:e50b with SMTP id
 v8-20020ac25588000000b0050e69dde50bmr1589612lfg.61.1705250100424; 
 Sun, 14 Jan 2024 08:35:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEIl5uCbThz0WLz7YOKUIOuNhxgL2ymPZ4CGKN01WvHnxqufpWYX5B4lJRcmWU8OeE8Jg3pdg==
X-Received: by 2002:ac2:5588:0:b0:50e:69dd:e50b with SMTP id
 v8-20020ac25588000000b0050e69dde50bmr1589600lfg.61.1705250100096; 
 Sun, 14 Jan 2024 08:35:00 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 s1-20020a1709060d6100b00a2684d2e684sm4275019ejh.92.2024.01.14.08.34.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Jan 2024 08:34:59 -0800 (PST)
Message-ID: <3979bfb3-2cdc-4dce-a500-03c98c943eb7@redhat.com>
Date: Sun, 14 Jan 2024 17:34:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Matthew Garrett <mjg59@srcf.ucam.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?=
 <pali@kernel.org>, Perry Yuan <Perry.Yuan@dell.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <dc5c0a33-ad25-4dac-828c-88dc78da0c9c@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <dc5c0a33-ad25-4dac-828c-88dc78da0c9c@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Heiner On 1/13/24 18:03, Heiner Kallweit wrote: > Since
 64f67b5240db ("leds: trigger: audio: Add an activate callback to > ensure
 the initial brightness is set") the audio triggers have an > activate callbac
 [...] Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rP3S1-0002bu-9d
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: remove obsolete calls to
 ledtrig_audio_get
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

Hi Heiner

On 1/13/24 18:03, Heiner Kallweit wrote:
> Since 64f67b5240db ("leds: trigger: audio: Add an activate callback to
> ensure the initial brightness is set") the audio triggers have an
> activate callback which sets the LED brightness as soon as the
> (default) trigger is bound to the LED device. So we can remove the
> call to ledtrig_audio_get.
> 
> Positive side effect: There's no code dependency to ledtrig-audio any
> longer.

Thank you for your patch since these drivers now no longer
depend on the ledtrig-audio module can you please remove the:

        select LEDS_TRIGGERS
        select LEDS_TRIGGER_AUDIO

lines from the Kconfig bits for the modified drivers?

Regards,

Hans



> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  drivers/platform/x86/asus-wmi.c              | 1 -
>  drivers/platform/x86/dell/dell-laptop.c      | 2 --
>  drivers/platform/x86/dell/dell-wmi-privacy.c | 1 -
>  drivers/platform/x86/huawei-wmi.c            | 1 -
>  drivers/platform/x86/thinkpad_acpi.c         | 1 -
>  5 files changed, 6 deletions(-)
> 
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
