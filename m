Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D976497CD3
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Jan 2022 11:15:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nBwMu-0000yc-F5; Mon, 24 Jan 2022 10:14:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1nBwMs-0000yE-PX
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Jan 2022 10:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFgGOWrMCsiwvX0Gq9eyXG7AAOSCR/S9BqptCmgvn9E=; b=MmRrz7hkOtFRJBremqFBhp9IkX
 d8RlEPszkMZd1dTsO2AFZfGwnclQnDTZbBZl11KKO67R7V10cIKtf2/8aCCdfiy7n4xjWeFpifNlQ
 ++vDuSzt9rs9i0Ae9+uddauJ5y420z1U8yZlY/Up17DRyXglgGuTAECOLQuYdZOwtmx4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NFgGOWrMCsiwvX0Gq9eyXG7AAOSCR/S9BqptCmgvn9E=; b=HvoN9Fav/HfSDrRtsr0M38K+vK
 2DAFdP6hcFalF3MGCL/roMXKGX5DVg/NK6+qACo9vzA/jkqk7cLyxghD5VGLqSEcRh4YINS+H8too
 3u1XlpqTnjTHS6jbIqnm3LEKNajZIn4Bd0FgbYSljnEktuEBhhjlnTfpgoo3IS1u4RNg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBwMp-0001Ve-Jz
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Jan 2022 10:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643019265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NFgGOWrMCsiwvX0Gq9eyXG7AAOSCR/S9BqptCmgvn9E=;
 b=THDt53/6U7I62ZKXchcGE/Y6vsYm8skfJTHOg4OojfhwwHXivhkq74yV6e8uMM7zEAQwwW
 8ESJ6Awp/mR8rJ9GYNGKkwkGQI6X6G5bzksTElyG2zW8Xrkgt7TY0T0n2VAO8o4dBgM+Tp
 RuaafgQVY09xWuLBjH1RjzyeQ4Bv/fE=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-Uwo6afjwNRqigbNBYkPXUw-1; Mon, 24 Jan 2022 05:14:24 -0500
X-MC-Unique: Uwo6afjwNRqigbNBYkPXUw-1
Received: by mail-ed1-f71.google.com with SMTP id
 w3-20020a50c443000000b0040696821132so5821872edf.22
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Jan 2022 02:14:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=NFgGOWrMCsiwvX0Gq9eyXG7AAOSCR/S9BqptCmgvn9E=;
 b=qGgRne1hmAGG7iQljRvd3d/WtDAh1JJyUei6OKQK3KqTGVfX3u0y73OfdWRo225Dva
 0hM+ljMLyUQoykMhKoivAFbQ0k9an8vE7MA+599jniQ1Y5ar/1rqsQCoG4jPEpmdmPJv
 O0J2fal/DnKu+eCAabNr+JqJoHlWGKxWCHVfN09kmVezeOiFi73E7OjLrmh9g8leDa+L
 uh/VDXT9kS7sp3mL7AjfPwiqLnNwQAp7E4kAsALohGJeKb9osFPKqcP/p+YOOUL09BLm
 ieJ8dcAcKciYvOcSwZ5uL5qo0DTXhmfeC0MKLSiY32McCnbs+spkC3dL3NnSbgFMiXfX
 OJIg==
X-Gm-Message-State: AOAM530oOOY594HKMk5lnTso7UuCB2OgLLsychV5bCD/FV4CNQP4m50K
 YZKNd3ZnBhLsAtMExl2j8v5qwSDa3Qwn9yN9GZRh6/tjmeYVsNhGnpCrw2IA4ISt8qwdzJHa3fh
 bYo3t1SHUcdkexBfH7sF+nICq3l23OPfgi1I=
X-Received: by 2002:a05:6402:27d3:: with SMTP id
 c19mr9241155ede.397.1643019261756; 
 Mon, 24 Jan 2022 02:14:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwgEUvrFOdIY8NoH2FzWKpfLTQB2FiLKXn0DJqRGG/E9Pa5GXxMw6SwHK+qao6vxJzf9fp7CQ==
X-Received: by 2002:a05:6402:27d3:: with SMTP id
 c19mr9241122ede.397.1643019261367; 
 Mon, 24 Jan 2022 02:14:21 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id i17sm4691144ejp.60.2022.01.24.02.14.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Jan 2022 02:14:20 -0800 (PST)
Message-ID: <055616f1-587e-107e-24db-0e30788fca56@redhat.com>
Date: Mon, 24 Jan 2022 11:14:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Luiz Sampaio <sampaio.ime@gmail.com>, "Lee, Chun-Yi" <jlee@suse.com>,
 Mark Gross <markgross@kernel.org>, Corentin Chary
 <corentin.chary@gmail.com>, =?UTF-8?Q?Jo=c3=a3o_Paulo_Rechi_Vita?=
 <jprvita@gmail.com>, Matthew Garrett <mjg59@srcf.ucam.org>,
 =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
 Jonathan Woithe <jwoithe@just42.net>, Matan Ziv-Av <matan@svgalib.org>,
 Jeremy Soller <jeremy@system76.com>,
 System76 Product Development <productdev@system76.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Herton Ronaldo Krzesinski <herton@canonical.com>,
 Azael Avalos <coproscefalo@gmail.com>
References: <20220121165436.30956-1-sampaio.ime@gmail.com>
 <20220121165436.30956-21-sampaio.ime@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220121165436.30956-21-sampaio.ime@gmail.com>
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
 Content preview:  Hi, On 1/21/22 17:54,
 Luiz Sampaio wrote: > The enum led_brightness, 
 which contains the declaration of LED_OFF, > LED_ON, LED_HALF and LED_FULL
 is obsolete, as the led class now supports > max_brightness. 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1nBwMp-0001Ve-Jz
Subject: Re: [ibm-acpi-devel] [PATCH 20/31] platform: x86: changing LED_*
 from enum led_brightness to actual value
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
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 1/21/22 17:54, Luiz Sampaio wrote:
> The enum led_brightness, which contains the declaration of LED_OFF,
> LED_ON, LED_HALF and LED_FULL is obsolete, as the led class now supports
> max_brightness.

This change is fine with me. I assume that this depends on earlier
changes in this series (1), so that it is best to merge the entire
series through the LED tree, here is my ack for merging the
drivers/platform/x86 bits through the LED tree:

Acked-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

1) next time please send the entire series to
the platform-driver-x86@vger.kernel.org list and not just one patch
of a series.


> ---
>  drivers/platform/x86/acer-wmi.c          |  6 ++---
>  drivers/platform/x86/asus-wireless.c     |  6 ++---
>  drivers/platform/x86/dell/dell-laptop.c  |  2 +-
>  drivers/platform/x86/dell/dell-wmi-led.c |  4 ++--
>  drivers/platform/x86/fujitsu-laptop.c    | 28 ++++++++++++------------
>  drivers/platform/x86/lg-laptop.c         | 18 +++++++--------
>  drivers/platform/x86/system76_acpi.c     |  4 ++--
>  drivers/platform/x86/thinkpad_acpi.c     | 14 ++++++------
>  drivers/platform/x86/topstar-laptop.c    |  4 ++--
>  drivers/platform/x86/toshiba_acpi.c      | 24 ++++++++++----------
>  10 files changed, 55 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/platform/x86/acer-wmi.c b/drivers/platform/x86/acer-wmi.c
> index 9c6943e401a6..ce960164a397 100644
> --- a/drivers/platform/x86/acer-wmi.c
> +++ b/drivers/platform/x86/acer-wmi.c
> @@ -1597,7 +1597,7 @@ static int acer_led_init(struct device *dev)
>  
>  static void acer_led_exit(void)
>  {
> -	set_u32(LED_OFF, ACER_CAP_MAILLED);
> +	set_u32(0, ACER_CAP_MAILLED);
>  	led_classdev_unregister(&mail_led);
>  }
>  
> @@ -2332,7 +2332,7 @@ static int acer_suspend(struct device *dev)
>  
>  	if (has_cap(ACER_CAP_MAILLED)) {
>  		get_u32(&value, ACER_CAP_MAILLED);
> -		set_u32(LED_OFF, ACER_CAP_MAILLED);
> +		set_u32(0, ACER_CAP_MAILLED);
>  		data->mailled = value;
>  	}
>  
> @@ -2377,7 +2377,7 @@ static void acer_platform_shutdown(struct platform_device *device)
>  		return;
>  
>  	if (has_cap(ACER_CAP_MAILLED))
> -		set_u32(LED_OFF, ACER_CAP_MAILLED);
> +		set_u32(0, ACER_CAP_MAILLED);
>  }
>  
>  static struct platform_driver acer_platform_driver = {
> diff --git a/drivers/platform/x86/asus-wireless.c b/drivers/platform/x86/asus-wireless.c
> index d3e7171928e5..139257bf71ea 100644
> --- a/drivers/platform/x86/asus-wireless.c
> +++ b/drivers/platform/x86/asus-wireless.c
> @@ -84,8 +84,8 @@ static enum led_brightness led_state_get(struct led_classdev *led)
>  	s = asus_wireless_method(acpi_device_handle(data->adev), "HSWC",
>  				 data->hswc_params->status, &ret);
>  	if (ACPI_SUCCESS(s) && ret == data->hswc_params->on)
> -		return LED_FULL;
> -	return LED_OFF;
> +		return 255;
> +	return 0;
>  }
>  
>  static void led_state_update(struct work_struct *work)
> @@ -103,7 +103,7 @@ static void led_state_set(struct led_classdev *led, enum led_brightness value)
>  	struct asus_wireless_data *data;
>  
>  	data = container_of(led, struct asus_wireless_data, led);
> -	data->led_state = value == LED_OFF ? data->hswc_params->off :
> +	data->led_state = value == 0 ? data->hswc_params->off :
>  					     data->hswc_params->on;
>  	queue_work(data->wq, &data->led_work);
>  }
> diff --git a/drivers/platform/x86/dell/dell-laptop.c b/drivers/platform/x86/dell/dell-laptop.c
> index 8230e7a68a5e..4dd530e3b47b 100644
> --- a/drivers/platform/x86/dell/dell-laptop.c
> +++ b/drivers/platform/x86/dell/dell-laptop.c
> @@ -2141,7 +2141,7 @@ static int micmute_led_set(struct led_classdev *led_cdev,
>  {
>  	struct calling_interface_buffer buffer;
>  	struct calling_interface_token *token;
> -	int state = brightness != LED_OFF;
> +	int state = brightness != 0;
>  
>  	if (state == 0)
>  		token = dell_smbios_find_token(GLOBAL_MIC_MUTE_DISABLE);
> diff --git a/drivers/platform/x86/dell/dell-wmi-led.c b/drivers/platform/x86/dell/dell-wmi-led.c
> index 5bedaf7f0633..fcfd6dd60583 100644
> --- a/drivers/platform/x86/dell/dell-wmi-led.c
> +++ b/drivers/platform/x86/dell/dell-wmi-led.c
> @@ -122,7 +122,7 @@ static int led_blink(unsigned char on_eighths, unsigned char off_eighths)
>  static void dell_led_set(struct led_classdev *led_cdev,
>  			 enum led_brightness value)
>  {
> -	if (value == LED_OFF)
> +	if (value == 0)
>  		led_off();
>  	else
>  		led_on();
> @@ -154,7 +154,7 @@ static int dell_led_blink(struct led_classdev *led_cdev,
>  
>  static struct led_classdev dell_led = {
>  	.name		= "dell::lid",
> -	.brightness	= LED_OFF,
> +	.brightness	= 0,
>  	.max_brightness = 1,
>  	.brightness_set = dell_led_set,
>  	.blink_set	= dell_led_blink,
> diff --git a/drivers/platform/x86/fujitsu-laptop.c b/drivers/platform/x86/fujitsu-laptop.c
> index 80929380ec7e..6ebfda771209 100644
> --- a/drivers/platform/x86/fujitsu-laptop.c
> +++ b/drivers/platform/x86/fujitsu-laptop.c
> @@ -584,10 +584,10 @@ static int logolamp_set(struct led_classdev *cdev,
>  	int poweron = FUNC_LED_ON, always = FUNC_LED_ON;
>  	int ret;
>  
> -	if (brightness < LED_HALF)
> +	if (brightness < 127)
>  		poweron = FUNC_LED_OFF;
>  
> -	if (brightness < LED_FULL)
> +	if (brightness < 255)
>  		always = FUNC_LED_OFF;
>  
>  	ret = call_fext_func(device, FUNC_LEDS, 0x1, LOGOLAMP_POWERON, poweron);
> @@ -604,13 +604,13 @@ static enum led_brightness logolamp_get(struct led_classdev *cdev)
>  
>  	ret = call_fext_func(device, FUNC_LEDS, 0x2, LOGOLAMP_ALWAYS, 0x0);
>  	if (ret == FUNC_LED_ON)
> -		return LED_FULL;
> +		return 255;
>  
>  	ret = call_fext_func(device, FUNC_LEDS, 0x2, LOGOLAMP_POWERON, 0x0);
>  	if (ret == FUNC_LED_ON)
> -		return LED_HALF;
> +		return 127;
>  
> -	return LED_OFF;
> +	return 0;
>  }
>  
>  static int kblamps_set(struct led_classdev *cdev,
> @@ -618,7 +618,7 @@ static int kblamps_set(struct led_classdev *cdev,
>  {
>  	struct acpi_device *device = to_acpi_device(cdev->dev->parent);
>  
> -	if (brightness >= LED_FULL)
> +	if (brightness >= 255)
>  		return call_fext_func(device, FUNC_LEDS, 0x1, KEYBOARD_LAMPS,
>  				      FUNC_LED_ON);
>  	else
> @@ -629,11 +629,11 @@ static int kblamps_set(struct led_classdev *cdev,
>  static enum led_brightness kblamps_get(struct led_classdev *cdev)
>  {
>  	struct acpi_device *device = to_acpi_device(cdev->dev->parent);
> -	enum led_brightness brightness = LED_OFF;
> +	unsigned int brightness = 0;
>  
>  	if (call_fext_func(device,
>  			   FUNC_LEDS, 0x2, KEYBOARD_LAMPS, 0x0) == FUNC_LED_ON)
> -		brightness = LED_FULL;
> +		brightness = 255;
>  
>  	return brightness;
>  }
> @@ -643,7 +643,7 @@ static int radio_led_set(struct led_classdev *cdev,
>  {
>  	struct acpi_device *device = to_acpi_device(cdev->dev->parent);
>  
> -	if (brightness >= LED_FULL)
> +	if (brightness >= 255)
>  		return call_fext_func(device, FUNC_FLAGS, 0x5, RADIO_LED_ON,
>  				      RADIO_LED_ON);
>  	else
> @@ -654,10 +654,10 @@ static int radio_led_set(struct led_classdev *cdev,
>  static enum led_brightness radio_led_get(struct led_classdev *cdev)
>  {
>  	struct acpi_device *device = to_acpi_device(cdev->dev->parent);
> -	enum led_brightness brightness = LED_OFF;
> +	unsigned int brightness = 0;
>  
>  	if (call_fext_func(device, FUNC_FLAGS, 0x4, 0x0, 0x0) & RADIO_LED_ON)
> -		brightness = LED_FULL;
> +		brightness = 255;
>  
>  	return brightness;
>  }
> @@ -669,7 +669,7 @@ static int eco_led_set(struct led_classdev *cdev,
>  	int curr;
>  
>  	curr = call_fext_func(device, FUNC_LEDS, 0x2, ECO_LED, 0x0);
> -	if (brightness >= LED_FULL)
> +	if (brightness >= 255)
>  		return call_fext_func(device, FUNC_LEDS, 0x1, ECO_LED,
>  				      curr | ECO_LED_ON);
>  	else
> @@ -680,10 +680,10 @@ static int eco_led_set(struct led_classdev *cdev,
>  static enum led_brightness eco_led_get(struct led_classdev *cdev)
>  {
>  	struct acpi_device *device = to_acpi_device(cdev->dev->parent);
> -	enum led_brightness brightness = LED_OFF;
> +	unsigned int brightness = 0;
>  
>  	if (call_fext_func(device, FUNC_LEDS, 0x2, ECO_LED, 0x0) & ECO_LED_ON)
> -		brightness = LED_FULL;
> +		brightness = 255;
>  
>  	return brightness;
>  }
> diff --git a/drivers/platform/x86/lg-laptop.c b/drivers/platform/x86/lg-laptop.c
> index a91847a551a7..cbcc945c2d9d 100644
> --- a/drivers/platform/x86/lg-laptop.c
> +++ b/drivers/platform/x86/lg-laptop.c
> @@ -547,13 +547,13 @@ static void tpad_led_set(struct led_classdev *cdev,
>  {
>  	union acpi_object *r;
>  
> -	r = lg_wmab(WM_TLED, WM_SET, brightness > LED_OFF);
> +	r = lg_wmab(WM_TLED, WM_SET, brightness > 0);
>  	kfree(r);
>  }
>  
>  static enum led_brightness tpad_led_get(struct led_classdev *cdev)
>  {
> -	return ggov(GOV_TLED) > 0 ? LED_ON : LED_OFF;
> +	return ggov(GOV_TLED) > 0 ? 1 : 0;
>  }
>  
>  static LED_DEVICE(tpad_led, 1, 0);
> @@ -565,9 +565,9 @@ static void kbd_backlight_set(struct led_classdev *cdev,
>  	union acpi_object *r;
>  
>  	val = 0x22;
> -	if (brightness <= LED_OFF)
> +	if (brightness <= 0)
>  		val = 0;
> -	if (brightness >= LED_FULL)
> +	if (brightness >= 255)
>  		val = 0x24;
>  	r = lg_wmab(WM_KEY_LIGHT, WM_SET, val);
>  	kfree(r);
> @@ -581,22 +581,22 @@ static enum led_brightness get_kbd_backlight_level(void)
>  	r = lg_wmab(WM_KEY_LIGHT, WM_GET, 0);
>  
>  	if (!r)
> -		return LED_OFF;
> +		return 0;
>  
>  	if (r->type != ACPI_TYPE_BUFFER || r->buffer.pointer[1] != 0x05) {
>  		kfree(r);
> -		return LED_OFF;
> +		return 0;
>  	}
>  
>  	switch (r->buffer.pointer[0] & 0x27) {
>  	case 0x24:
> -		val = LED_FULL;
> +		val = 255;
>  		break;
>  	case 0x22:
> -		val = LED_HALF;
> +		val = 127;
>  		break;
>  	default:
> -		val = LED_OFF;
> +		val = 0;
>  	}
>  
>  	kfree(r);
> diff --git a/drivers/platform/x86/system76_acpi.c b/drivers/platform/x86/system76_acpi.c
> index 7299ad08c838..9f2b11a0e02f 100644
> --- a/drivers/platform/x86/system76_acpi.c
> +++ b/drivers/platform/x86/system76_acpi.c
> @@ -299,7 +299,7 @@ static enum led_brightness ap_led_get(struct led_classdev *led)
>  	if (value > 0)
>  		return (enum led_brightness)value;
>  	else
> -		return LED_OFF;
> +		return 0;
>  }
>  
>  // Set the airplane mode LED brightness
> @@ -308,7 +308,7 @@ static int ap_led_set(struct led_classdev *led, enum led_brightness value)
>  	struct system76_data *data;
>  
>  	data = container_of(led, struct system76_data, ap_led);
> -	return system76_set(data, "SAPL", value == LED_OFF ? 0 : 1);
> +	return system76_set(data, "SAPL", value == 0 ? 0 : 1);
>  }
>  
>  // Get the last set keyboard LED brightness
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 82fa6148216c..01fe0a2995fd 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -5421,13 +5421,13 @@ static int light_set_status(int status)
>  static int light_sysfs_set(struct led_classdev *led_cdev,
>  			enum led_brightness brightness)
>  {
> -	return light_set_status((brightness != LED_OFF) ?
> +	return light_set_status((brightness != 0) ?
>  				TPACPI_LED_ON : TPACPI_LED_OFF);
>  }
>  
>  static enum led_brightness light_sysfs_get(struct led_classdev *led_cdev)
>  {
> -	return (light_get_status() == 1) ? LED_FULL : LED_OFF;
> +	return (light_get_status() == 1) ? 255 : 0;
>  }
>  
>  static struct tpacpi_led_classdev tpacpi_led_thinklight = {
> @@ -5759,7 +5759,7 @@ static int led_sysfs_set(struct led_classdev *led_cdev,
>  			     struct tpacpi_led_classdev, led_classdev);
>  	enum led_status_t new_state;
>  
> -	if (brightness == LED_OFF)
> +	if (brightness == 0)
>  		new_state = TPACPI_LED_OFF;
>  	else if (tpacpi_led_state_cache[data->led] != TPACPI_LED_BLINK)
>  		new_state = TPACPI_LED_ON;
> @@ -5796,9 +5796,9 @@ static enum led_brightness led_sysfs_get(struct led_classdev *led_cdev)
>  	rc = led_get_status(data->led);
>  
>  	if (rc == TPACPI_LED_OFF || rc < 0)
> -		rc = LED_OFF;	/* no error handling in led class :( */
> +		rc = 0;	/* no error handling in led class :( */
>  	else
> -		rc = LED_FULL;
> +		rc = 255;
>  
>  	return rc;
>  }
> @@ -9145,13 +9145,13 @@ static int tpacpi_led_set(int whichled, bool on)
>  static int tpacpi_led_mute_set(struct led_classdev *led_cdev,
>  			       enum led_brightness brightness)
>  {
> -	return tpacpi_led_set(LED_AUDIO_MUTE, brightness != LED_OFF);
> +	return tpacpi_led_set(LED_AUDIO_MUTE, brightness != 0);
>  }
>  
>  static int tpacpi_led_micmute_set(struct led_classdev *led_cdev,
>  				  enum led_brightness brightness)
>  {
> -	return tpacpi_led_set(LED_AUDIO_MICMUTE, brightness != LED_OFF);
> +	return tpacpi_led_set(LED_AUDIO_MICMUTE, brightness != 0);
>  }
>  
>  static struct led_classdev mute_led_cdev[TPACPI_LED_MAX] = {
> diff --git a/drivers/platform/x86/topstar-laptop.c b/drivers/platform/x86/topstar-laptop.c
> index f7761d98c0fd..1382b91c2860 100644
> --- a/drivers/platform/x86/topstar-laptop.c
> +++ b/drivers/platform/x86/topstar-laptop.c
> @@ -71,8 +71,8 @@ static int topstar_led_set(struct led_classdev *led,
>  	 * it seems to be faulty on some models like the Topstar U931
>  	 * Notebook).
>  	 */
> -	if ((ret == 0x30001 && state == LED_OFF)
> -			|| (ret == 0x30000 && state != LED_OFF)) {
> +	if ((ret == 0x30001 && state == 0)
> +			|| (ret == 0x30000 && state != 0)) {
>  		status = acpi_execute_simple_method(topstar->device->handle,
>  				"FNCX", 0x83);
>  		if (ACPI_FAILURE(status))
> diff --git a/drivers/platform/x86/toshiba_acpi.c b/drivers/platform/x86/toshiba_acpi.c
> index 352508d30467..641c6766febe 100644
> --- a/drivers/platform/x86/toshiba_acpi.c
> +++ b/drivers/platform/x86/toshiba_acpi.c
> @@ -501,19 +501,19 @@ static enum led_brightness toshiba_illumination_get(struct led_classdev *cdev)
>  
>  	/* First request : initialize communication. */
>  	if (!sci_open(dev))
> -		return LED_OFF;
> +		return 0;
>  
>  	/* Check the illumination */
>  	result = sci_read(dev, SCI_ILLUMINATION, &state);
>  	sci_close(dev);
>  	if (result == TOS_FAILURE) {
>  		pr_err("ACPI call for illumination failed\n");
> -		return LED_OFF;
> +		return 0;
>  	} else if (result != TOS_SUCCESS) {
> -		return LED_OFF;
> +		return 0;
>  	}
>  
> -	return state ? LED_FULL : LED_OFF;
> +	return state ? 255 : 0;
>  }
>  
>  /* KBD Illumination */
> @@ -602,12 +602,12 @@ static enum led_brightness toshiba_kbd_backlight_get(struct led_classdev *cdev)
>  	result = hci_read(dev, HCI_KBD_ILLUMINATION, &state);
>  	if (result == TOS_FAILURE) {
>  		pr_err("ACPI call to get the keyboard backlight failed\n");
> -		return LED_OFF;
> +		return 0;
>  	} else if (result != TOS_SUCCESS) {
> -		return LED_OFF;
> +		return 0;
>  	}
>  
> -	return state ? LED_FULL : LED_OFF;
> +	return state ? 255 : 0;
>  }
>  
>  static void toshiba_kbd_backlight_set(struct led_classdev *cdev,
> @@ -711,13 +711,13 @@ toshiba_eco_mode_get_status(struct led_classdev *cdev)
>  	status = tci_raw(dev, in, out);
>  	if (ACPI_FAILURE(status)) {
>  		pr_err("ACPI call to get ECO led failed\n");
> -		return LED_OFF;
> +		return 0;
>  	}
>  
>  	if (out[0] != TOS_SUCCESS)
> -		return LED_OFF;
> +		return 0;
>  
> -	return out[2] ? LED_FULL : LED_OFF;
> +	return out[2] ? 255 : 0;
>  }
>  
>  static void toshiba_eco_mode_set_status(struct led_classdev *cdev,
> @@ -2402,7 +2402,7 @@ static void toshiba_acpi_kbd_bl_work(struct work_struct *work)
>  	    toshiba_acpi->kbd_mode != SCI_KBD_MODE_AUTO)
>  		led_classdev_notify_brightness_hw_changed(&toshiba_acpi->kbd_led,
>  				(toshiba_acpi->kbd_mode == SCI_KBD_MODE_ON) ?
> -				LED_FULL : LED_OFF);
> +				255 : 0);
>  
>  	/* Emulate the keyboard backlight event */
>  	acpi_bus_generate_netlink_event(toshiba_acpi->acpi_dev->pnp.device_class,
> @@ -3225,7 +3225,7 @@ static void toshiba_acpi_notify(struct acpi_device *acpi_dev, u32 event)
>  		if (dev->kbd_type == 2 && dev->kbd_mode != SCI_KBD_MODE_AUTO)
>  			led_classdev_notify_brightness_hw_changed(&dev->kbd_led,
>  					(dev->kbd_mode == SCI_KBD_MODE_ON) ?
> -					LED_FULL : LED_OFF);
> +					255 : 0);
>  		break;
>  	case 0x85: /* Unknown */
>  	case 0x8d: /* Unknown */
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
