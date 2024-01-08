Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EE98270DA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Jan 2024 15:18:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rMqRt-0006Ua-Ub;
	Mon, 08 Jan 2024 14:17:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rMqRs-0006UT-E3
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Jan 2024 14:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWV7TmKtEXA9zYm1N9j1OaLQBEmrZS0nRWjgG5yrwzw=; b=Iv18+2Gsna6EFGfCqE9OPMsIf/
 0Jyt+Uepov4Qk6997tu9bcQblvg0uNn38jUgWdj0otnn0ZI1237qUKusmDTUdAeXG/C3kiGCtyB3S
 PLnS2CaSMUtL7nwWJFW+JyEgLYJqzM21SyyLaxuF9Qh23GLPr3NFtoO6tMrnU5vFbEeQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JWV7TmKtEXA9zYm1N9j1OaLQBEmrZS0nRWjgG5yrwzw=; b=cWWR4c3HR90C7YNo0BTcAeOY8f
 i4HwqxiieGovjrAYFNPj7p8r21zRhV/Ghhb+JTOsAXG6oIzFVSPAizMlb425InTGwcBIE7zeQvKFT
 z64nlt5tL633ONLR7X81P0k9fHwpaT5zlj2QuNXMMqXExtCKOGzWJPiHrBX5IlJM6dts=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rMqRn-00067v-Pc for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Jan 2024 14:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1704723456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JWV7TmKtEXA9zYm1N9j1OaLQBEmrZS0nRWjgG5yrwzw=;
 b=IrBajnKHchvZHXtjTGqgppv8O2R+H3S7EoPPVP+mspDTSn9SGboQjlNkX7YdABxuWv+Dyk
 yhy9PXsqi1Q9qbOaazuFw21TG0G24Q+onJkBaKA+CqykkpM+c7cKldXQ2fSVVg8K3qF640
 817pJQFlGsru+ptjzspbEOTYm8TpE2E=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-bbPMTq5TMk6tmQx9ziqUMQ-1; Mon, 08 Jan 2024 09:17:35 -0500
X-MC-Unique: bbPMTq5TMk6tmQx9ziqUMQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-556c3940061so998921a12.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Jan 2024 06:17:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704723454; x=1705328254;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JWV7TmKtEXA9zYm1N9j1OaLQBEmrZS0nRWjgG5yrwzw=;
 b=EKBWdWyE03lWfCwtfRdxeyTQ63cxqGgWau0d73FvFc4d687kP/swgrbgvPxEoW+C2T
 P7KtUFF3OBB0BBWOIphcVf4C2Q9jWn+klcOhXhUB/ILx4zI6hjeOFdNZta0AniqawjMT
 v7AYH67lJZ1rZfj3k4oVsD8mRuxYo0h+N9+bQyyR+YAjbGYKAOonMInh++YEdSgVUm/d
 lwvQ9+9FDzQwsQJwQyTRzMAtXOanKtje33jm53953JYSyjp2BAYulsT1iMqXOWyW9aS9
 SKbRmrWZI9Nxl4pI4r8RABjlvewPbyd8j7rVMItcNPi3iH9amP6M2EQlTmptcbvN0Ubc
 Nztg==
X-Gm-Message-State: AOJu0Yyjyjavn4+CEp8Kw/DmTJsHV8s6+omkRecD7XPMlZO+ghoUQKRR
 HY22PYYRYi3f8isdtHaobWPlW/SpSq3wQACHKSgRiKFmgLdcbfTHH5+jHhpUCrH2vmnVGwvEsDV
 V38BNM1RTjksS5qmJZM/VSYnigaJpV7RP3g0n58hGNOA=
X-Received: by 2002:a50:cd8c:0:b0:557:1792:6e95 with SMTP id
 p12-20020a50cd8c000000b0055717926e95mr2163970edi.41.1704723453704; 
 Mon, 08 Jan 2024 06:17:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7yvwZ2Nm3kGexO6oof1ZEmNcShrcWdCq+RC7L87VPc5uOLt5kv11MmQC/5KGp3L18+VdSMw==
X-Received: by 2002:a50:cd8c:0:b0:557:1792:6e95 with SMTP id
 p12-20020a50cd8c000000b0055717926e95mr2163950edi.41.1704723453077; 
 Mon, 08 Jan 2024 06:17:33 -0800 (PST)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 d20-20020aa7c1d4000000b00554d6b46a3dsm4291361edp.46.2024.01.08.06.17.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jan 2024 06:17:32 -0800 (PST)
Message-ID: <063131aa-1945-45bd-ba35-e47ff6ea7820@redhat.com>
Date: Mon, 8 Jan 2024 15:17:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240104003726.21277-1-mpearson-lenovo@squebb.ca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240104003726.21277-1-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 1/4/24 01:37, Mark Pearson wrote: > Looking for
 feedback if this is a good idea or not,
 and if I've missed > anything important.
 > > Over the holidays it was raining and I was bored so I was toying [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rMqRn-00067v-Pc
Subject: Re: [ibm-acpi-devel] [PATCH RFC] platform/x86: Lenovo sub directory
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
Cc: ike.pan@canonical.com, linux-doc@vger.kernel.org, corbet@lwn.net,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 markgross@kernel.org, ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 1/4/24 01:37, Mark Pearson wrote:
> Looking for feedback if this is a good idea or not, and if I've missed
> anything important.
> 
> Over the holidays it was raining and I was bored so I was toying with the
> idea of moving some of the thinkpad_acpi functionality out of the file
> into their own modules - the file is a bit of a beast. I'd like to try and
> get any commonality between thinkpad, ideapad, etc where possible.
> My plan was to first look at pulling out the platform_profile pieces and
> then extend to other pieces (fans, temp, sensors, etc).
> 
> Doing this will, potentially, create a number of lenovo_xxx files and so it
> seemed nice to put lenovo stuff in it's own subdirectory (in a similar way
> to other vendors) before starting the exercise.
> 
> This was my attempt to see if it was easy - and it was.
> 
> Please let me know:
> 
> 1) Is this OK to do, or does it cause any problems?

Moving the lenovo drivers and especially removing the duplicate
functionality sounds good to me.

> 2) Have I missed anything important?

I have a few small remarks below, other then that this looks good
to me.

> 3) I don't want to tread on any toes - so if there is protocol to follow
> with moving files please let me know :) (Or a preferred way to do such an
> exercise)

No special protocol for moving files.

> 4) I don't have any ideapads to test with. I think this is low risk, but
> if anybody is able to confirm nothing breaks please let me know.

The moving should definitely be safe. For the refactoring planned on top
would be good if you can test on some actual hw.

> I will see if I can scrounge some HW from somewhere in the meantime.
> 
> I will need to rebase before proposing this officially, so please ignore
> the fact that this is based off 6.7-rc1 and therefore a bit out of date.
> 
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> ---
>  .../admin-guide/laptops/thinkpad-acpi.rst     |   3 +-
>  MAINTAINERS                                   |   6 +-
>  drivers/platform/x86/Kconfig                  | 196 +---------------
>  drivers/platform/x86/Makefile                 |  10 +-
>  drivers/platform/x86/lenovo/Kconfig           | 211 ++++++++++++++++++
>  drivers/platform/x86/lenovo/Makefile          |  13 ++
>  .../x86/{ => lenovo}/ideapad-laptop.c         |   0
>  .../x86/{ => lenovo}/ideapad-laptop.h         |   0
>  .../platform/x86/{ => lenovo}/lenovo-ymc.c    |   0
>  .../x86/{ => lenovo}/lenovo-yogabook.c        |   0
>  drivers/platform/x86/{ => lenovo}/think-lmi.c |   2 +-
>  drivers/platform/x86/{ => lenovo}/think-lmi.h |   0
>  .../platform/x86/{ => lenovo}/thinkpad_acpi.c |   2 +-
>  13 files changed, 238 insertions(+), 205 deletions(-)
>  create mode 100644 drivers/platform/x86/lenovo/Kconfig
>  create mode 100644 drivers/platform/x86/lenovo/Makefile
>  rename drivers/platform/x86/{ => lenovo}/ideapad-laptop.c (100%)
>  rename drivers/platform/x86/{ => lenovo}/ideapad-laptop.h (100%)
>  rename drivers/platform/x86/{ => lenovo}/lenovo-ymc.c (100%)
>  rename drivers/platform/x86/{ => lenovo}/lenovo-yogabook.c (100%)
>  rename drivers/platform/x86/{ => lenovo}/think-lmi.c (99%)
>  rename drivers/platform/x86/{ => lenovo}/think-lmi.h (100%)
>  rename drivers/platform/x86/{ => lenovo}/thinkpad_acpi.c (99%)
> 
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 98d304010170..55b79ee2bb26 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -20,7 +20,8 @@ This driver used to be named ibm-acpi until kernel 2.6.21 and release
>  0.13-20070314.  It used to be in the drivers/acpi tree, but it was
>  moved to the drivers/misc tree and renamed to thinkpad-acpi for kernel
>  2.6.22, and release 0.14.  It was moved to drivers/platform/x86 for
> -kernel 2.6.29 and release 0.22.
> +kernel 2.6.29 and release 0.22. It was moved to drivers/platform/x86/lenovo
> +for kernel 6.8.

The 6.8 merge window just opened so this is only going to land in the
next cycle which will be 6.9 .

>  
>  The driver is named "thinkpad-acpi".  In some places, like module
>  names and log messages, "thinkpad_acpi" is used because of userspace
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 97f51d5ec1cf..c83ed9a51a44 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10243,7 +10243,7 @@ M:	Ike Panhc <ike.pan@canonical.com>
>  L:	platform-driver-x86@vger.kernel.org
>  S:	Maintained
>  W:	http://launchpad.net/ideapad-laptop
> -F:	drivers/platform/x86/ideapad-laptop.c
> +F:	drivers/platform/x86/lenovo/ideapad-laptop.c
>  
>  IDEAPAD LAPTOP SLIDEBAR DRIVER
>  M:	Andrey Moiseev <o2g.org.ru@gmail.com>
> @@ -21637,14 +21637,14 @@ S:	Maintained
>  W:	http://ibm-acpi.sourceforge.net
>  W:	http://thinkwiki.org/wiki/Ibm-acpi
>  T:	git git://repo.or.cz/linux-2.6/linux-acpi-2.6/ibm-acpi-2.6.git
> -F:	drivers/platform/x86/thinkpad_acpi.c
> +F:	drivers/platform/x86/lenovo/thinkpad_acpi.c
>  
>  THINKPAD LMI DRIVER
>  M:	Mark Pearson <markpearson@lenovo.com>
>  L:	platform-driver-x86@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/ABI/testing/sysfs-class-firmware-attributes
> -F:	drivers/platform/x86/think-lmi.?
> +F:	drivers/platform/x86/lenovo/think-lmi.?
>  
>  THUNDERBOLT DMA TRAFFIC TEST DRIVER
>  M:	Isaac Hazan <isaac.hazan@intel.com>
> diff --git a/drivers/platform/x86/Kconfig b/drivers/platform/x86/Kconfig
> index 7e69fdaccdd5..842ced89bd82 100644
> --- a/drivers/platform/x86/Kconfig
> +++ b/drivers/platform/x86/Kconfig
> @@ -121,20 +121,6 @@ config GIGABYTE_WMI
>  	  To compile this driver as a module, choose M here: the module will
>  	  be called gigabyte-wmi.
>  
> -config YOGABOOK
> -	tristate "Lenovo Yoga Book tablet key driver"
> -	depends on ACPI_WMI
> -	depends on INPUT
> -	depends on I2C
> -	select LEDS_CLASS
> -	select NEW_LEDS
> -	help
> -	  Say Y here if you want to support the 'Pen' key and keyboard backlight
> -	  control on the Lenovo Yoga Book tablets.
> -
> -	  To compile this driver as a module, choose M here: the module will
> -	  be called lenovo-yogabook.
> -
>  config ACERHDF
>  	tristate "Acer Aspire One temperature and fan driver"
>  	depends on ACPI && THERMAL
> @@ -430,6 +416,7 @@ config WIRELESS_HOTKEY
>  	 To compile this driver as a module, choose M here: the module will
>  	 be called wireless-hotkey.
>  
> +
>  config IBM_RTL
>  	tristate "Device driver to enable PRTL support"
>  	depends on PCI

stray blank line insertion, please drop this.


> @@ -446,31 +433,6 @@ config IBM_RTL
>  	 state = 0 (BIOS SMIs on)
>  	 state = 1 (BIOS SMIs off)
>  
> -config IDEAPAD_LAPTOP
> -	tristate "Lenovo IdeaPad Laptop Extras"
> -	depends on ACPI
> -	depends on RFKILL && INPUT
> -	depends on SERIO_I8042
> -	depends on BACKLIGHT_CLASS_DEVICE
> -	depends on ACPI_VIDEO || ACPI_VIDEO = n
> -	depends on ACPI_WMI || ACPI_WMI = n
> -	select ACPI_PLATFORM_PROFILE
> -	select INPUT_SPARSEKMAP
> -	select NEW_LEDS
> -	select LEDS_CLASS
> -	help
> -	  This is a driver for Lenovo IdeaPad netbooks contains drivers for
> -	  rfkill switch, hotkey, fan control and backlight control.
> -
> -config LENOVO_YMC
> -	tristate "Lenovo Yoga Tablet Mode Control"
> -	depends on ACPI_WMI
> -	depends on INPUT
> -	select INPUT_SPARSEKMAP
> -	help
> -	  This driver maps the Tablet Mode Control switch to SW_TABLET_MODE input
> -	  events for Lenovo Yoga notebooks.
> -
>  config SENSORS_HDAPS
>  	tristate "Thinkpad Hard Drive Active Protection System (hdaps)"
>  	depends on INPUT
> @@ -489,162 +451,10 @@ config SENSORS_HDAPS
>  	  Say Y here if you have an applicable laptop and want to experience
>  	  the awesome power of hdaps.
>  
> -config THINKPAD_ACPI
> -	tristate "ThinkPad ACPI Laptop Extras"
> -	depends on ACPI
> -	depends on ACPI_BATTERY
> -	depends on INPUT
> -	depends on RFKILL || RFKILL = n
> -	depends on ACPI_VIDEO || ACPI_VIDEO = n
> -	depends on BACKLIGHT_CLASS_DEVICE
> -	depends on I2C
> -	depends on DRM
> -	select ACPI_PLATFORM_PROFILE
> -	select DRM_PRIVACY_SCREEN
> -	select HWMON
> -	select NVRAM
> -	select NEW_LEDS
> -	select LEDS_CLASS
> -	select LEDS_TRIGGERS
> -	select LEDS_TRIGGER_AUDIO
> -	help
> -	  This is a driver for the IBM and Lenovo ThinkPad laptops. It adds
> -	  support for Fn-Fx key combinations, Bluetooth control, video
> -	  output switching, ThinkLight control, UltraBay eject and more.
> -	  For more information about this driver see
> -	  <file:Documentation/admin-guide/laptops/thinkpad-acpi.rst> and
> -	  <http://ibm-acpi.sf.net/> .
> -
> -	  This driver was formerly known as ibm-acpi.
> -
> -	  Extra functionality will be available if the rfkill (CONFIG_RFKILL)
> -	  and/or ALSA (CONFIG_SND) subsystems are available in the kernel.
> -	  Note that if you want ThinkPad-ACPI to be built-in instead of
> -	  modular, ALSA and rfkill will also have to be built-in.
> -
> -	  If you have an IBM or Lenovo ThinkPad laptop, say Y or M here.
> -
> -config THINKPAD_ACPI_ALSA_SUPPORT
> -	bool "Console audio control ALSA interface"
> -	depends on THINKPAD_ACPI
> -	depends on SND
> -	depends on SND = y || THINKPAD_ACPI = SND
> -	default y
> -	help
> -	  Enables monitoring of the built-in console audio output control
> -	  (headphone and speakers), which is operated by the mute and (in
> -	  some ThinkPad models) volume hotkeys.
> -
> -	  If this option is enabled, ThinkPad-ACPI will export an ALSA card
> -	  with a single read-only mixer control, which should be used for
> -	  on-screen-display feedback purposes by the Desktop Environment.
> -
> -	  Optionally, the driver will also allow software control (the
> -	  ALSA mixer will be made read-write).  Please refer to the driver
> -	  documentation for details.
> -
> -	  All IBM models have both volume and mute control.  Newer Lenovo
> -	  models only have mute control (the volume hotkeys are just normal
> -	  keys and volume control is done through the main HDA mixer).
> -
> -config THINKPAD_ACPI_DEBUGFACILITIES
> -	bool "Maintainer debug facilities"
> -	depends on THINKPAD_ACPI
> -	help
> -	  Enables extra stuff in the thinkpad-acpi which is completely useless
> -	  for normal use.  Read the driver source to find out what it does.
> -
> -	  Say N here, unless you were told by a kernel maintainer to do
> -	  otherwise.
> -
> -config THINKPAD_ACPI_DEBUG
> -	bool "Verbose debug mode"
> -	depends on THINKPAD_ACPI
> -	help
> -	  Enables extra debugging information, at the expense of a slightly
> -	  increase in driver size.
> -
> -	  If you are not sure, say N here.
> -
> -config THINKPAD_ACPI_UNSAFE_LEDS
> -	bool "Allow control of important LEDs (unsafe)"
> -	depends on THINKPAD_ACPI
> -	help
> -	  Overriding LED state on ThinkPads can mask important
> -	  firmware alerts (like critical battery condition), or misled
> -	  the user into damaging the hardware (undocking or ejecting
> -	  the bay while buses are still active), etc.
> -
> -	  LED control on the ThinkPad is write-only (with very few
> -	  exceptions on very ancient models), which makes it
> -	  impossible to know beforehand if important information will
> -	  be lost when one changes LED state.
> -
> -	  Users that know what they are doing can enable this option
> -	  and the driver will allow control of every LED, including
> -	  the ones on the dock stations.
> -
> -	  Never enable this option on a distribution kernel.
> -
> -	  Say N here, unless you are building a kernel for your own
> -	  use, and need to control the important firmware LEDs.
> -
> -config THINKPAD_ACPI_VIDEO
> -	bool "Video output control support"
> -	depends on THINKPAD_ACPI
> -	default y
> -	help
> -	  Allows the thinkpad_acpi driver to provide an interface to control
> -	  the various video output ports.
> -
> -	  This feature often won't work well, depending on ThinkPad model,
> -	  display state, video output devices in use, whether there is a X
> -	  server running, phase of the moon, and the current mood of
> -	  Schroedinger's cat.  If you can use X.org's RandR to control
> -	  your ThinkPad's video output ports instead of this feature,
> -	  don't think twice: do it and say N here to save memory and avoid
> -	  bad interactions with X.org.
> -
> -	  NOTE: access to this feature is limited to processes with the
> -	  CAP_SYS_ADMIN capability, to avoid local DoS issues in platforms
> -	  where it interacts badly with X.org.
> -
> -	  If you are not sure, say Y here but do try to check if you could
> -	  be using X.org RandR instead.
> -
> -config THINKPAD_ACPI_HOTKEY_POLL
> -	bool "Support NVRAM polling for hot keys"
> -	depends on THINKPAD_ACPI
> -	default y
> -	help
> -	  Some thinkpad models benefit from NVRAM polling to detect a few of
> -	  the hot key press events.  If you know your ThinkPad model does not
> -	  need to do NVRAM polling to support any of the hot keys you use,
> -	  unselecting this option will save about 1kB of memory.
> -
> -	  ThinkPads T40 and newer, R52 and newer, and X31 and newer are
> -	  unlikely to need NVRAM polling in their latest BIOS versions.
> -
> -	  NVRAM polling can detect at most the following keys: ThinkPad/Access
> -	  IBM, Zoom, Switch Display (fn+F7), ThinkLight, Volume up/down/mute,
> -	  Brightness up/down, Display Expand (fn+F8), Hibernate (fn+F12).
> -
> -	  If you are not sure, say Y here.  The driver enables polling only if
> -	  it is strictly necessary to do so.
> -
> -config THINKPAD_LMI
> -	tristate "Lenovo WMI-based systems management driver"
> -	depends on ACPI_WMI
> -	select FW_ATTR_CLASS
> -	help
> -	  This driver allows changing BIOS settings on Lenovo machines whose
> -	  BIOS support the WMI interface.
> -
> -	  To compile this driver as a module, choose M here: the module will
> -	  be called think-lmi.
> -
>  source "drivers/platform/x86/intel/Kconfig"
>  
> +source "drivers/platform/x86/lenovo/Kconfig"
> +
>  config MSI_EC
>  	tristate "MSI EC Extras"
>  	depends on ACPI

Random remark: it would certainly be good if we can reduce the number
of THINKPAD_ACPI related Kconfig symbols ...

> diff --git a/drivers/platform/x86/Makefile b/drivers/platform/x86/Makefile
> index c7a18e95ad8c..ccf3610cb34b 100644
> --- a/drivers/platform/x86/Makefile
> +++ b/drivers/platform/x86/Makefile
> @@ -58,18 +58,16 @@ obj-$(CONFIG_X86_PLATFORM_DRIVERS_HP)	+= hp/
>  # Hewlett Packard Enterprise
>  obj-$(CONFIG_UV_SYSFS)       += uv_sysfs.o
>  
> -# IBM Thinkpad and Lenovo
> +# IBM Thinkpad
>  obj-$(CONFIG_IBM_RTL)		+= ibm_rtl.o
> -obj-$(CONFIG_IDEAPAD_LAPTOP)	+= ideapad-laptop.o
> -obj-$(CONFIG_LENOVO_YMC)	+= lenovo-ymc.o
>  obj-$(CONFIG_SENSORS_HDAPS)	+= hdaps.o
> -obj-$(CONFIG_THINKPAD_ACPI)	+= thinkpad_acpi.o
> -obj-$(CONFIG_THINKPAD_LMI)	+= think-lmi.o
> -obj-$(CONFIG_YOGABOOK)		+= lenovo-yogabook.o
>  
>  # Intel
>  obj-y				+= intel/
>  
> +# Lenovo
> +obj-$(CONFIG_X86_PLATFORM_DRIVERS_LENOVO) += lenovo/
> +
>  # MSI
>  obj-$(CONFIG_MSI_EC)		+= msi-ec.o
>  obj-$(CONFIG_MSI_LAPTOP)	+= msi-laptop.o
> diff --git a/drivers/platform/x86/lenovo/Kconfig b/drivers/platform/x86/lenovo/Kconfig
> new file mode 100644
> index 000000000000..a4de6f5b841d
> --- /dev/null
> +++ b/drivers/platform/x86/lenovo/Kconfig
> @@ -0,0 +1,211 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Lenovo X86 Platform Specific Drivers
> +#
> +
> +menuconfig X86_PLATFORM_DRIVERS_LENOVO
> +	bool "Lenovo X86 Platform Specific Device Drivers"
> +	default y
> +	help
> +	  Say Y here to get to see options for device drivers for various
> +	  Lenovo x86 platforms, including vendor-specific laptop extension drivers.
> +	  This option alone does not add any kernel code.
> +
> +	  If you say N, all options in this submenu will be skipped and disabled.
> +
> +if X86_PLATFORM_DRIVERS_LENOVO
> +
> +config YOGABOOK
> +	tristate "Lenovo Yoga Book tablet key driver"
> +	depends on ACPI_WMI
> +	depends on INPUT
> +	depends on I2C
> +	select LEDS_CLASS
> +	select NEW_LEDS
> +	help
> +	  Say Y here if you want to support the 'Pen' key and keyboard backlight
> +	  control on the Lenovo Yoga Book tablets.
> +
> +	  To compile this driver as a module, choose M here: the module will
> +	  be called lenovo-yogabook.
> +
> +config IDEAPAD_LAPTOP
> +	tristate "Lenovo IdeaPad Laptop Extras"
> +	depends on ACPI
> +	depends on RFKILL && INPUT
> +	depends on SERIO_I8042
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	depends on ACPI_VIDEO || ACPI_VIDEO = n
> +	depends on ACPI_WMI || ACPI_WMI = n
> +	select ACPI_PLATFORM_PROFILE
> +	select INPUT_SPARSEKMAP
> +	select NEW_LEDS
> +	select LEDS_CLASS
> +	help
> +	  This is a driver for Lenovo IdeaPad netbooks contains drivers for
> +	  rfkill switch, hotkey, fan control and backlight control.
> +
> +config LENOVO_YMC
> +	tristate "Lenovo Yoga Tablet Mode Control"
> +	depends on ACPI_WMI
> +	depends on INPUT
> +	select INPUT_SPARSEKMAP
> +	help
> +	  This driver maps the Tablet Mode Control switch to SW_TABLET_MODE input
> +	  events for Lenovo Yoga notebooks.
> +
> +config THINKPAD_ACPI
> +	tristate "ThinkPad ACPI Laptop Extras"
> +	depends on ACPI
> +	depends on ACPI_BATTERY
> +	depends on INPUT
> +	depends on RFKILL || RFKILL = n
> +	depends on ACPI_VIDEO || ACPI_VIDEO = n
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	depends on I2C
> +	depends on DRM
> +	select ACPI_PLATFORM_PROFILE
> +	select DRM_PRIVACY_SCREEN
> +	select HWMON
> +	select NVRAM
> +	select NEW_LEDS
> +	select LEDS_CLASS
> +	select LEDS_TRIGGERS
> +	select LEDS_TRIGGER_AUDIO
> +	help
> +	  This is a driver for the IBM and Lenovo ThinkPad laptops. It adds
> +	  support for Fn-Fx key combinations, Bluetooth control, video
> +	  output switching, ThinkLight control, UltraBay eject and more.
> +	  For more information about this driver see
> +	  <file:Documentation/admin-guide/laptops/thinkpad-acpi.rst> and
> +	  <http://ibm-acpi.sf.net/> .
> +
> +	  This driver was formerly known as ibm-acpi.
> +
> +	  Extra functionality will be available if the rfkill (CONFIG_RFKILL)
> +	  and/or ALSA (CONFIG_SND) subsystems are available in the kernel.
> +	  Note that if you want ThinkPad-ACPI to be built-in instead of
> +	  modular, ALSA and rfkill will also have to be built-in.
> +
> +	  If you have an IBM or Lenovo ThinkPad laptop, say Y or M here.
> +
> +config THINKPAD_ACPI_ALSA_SUPPORT
> +	bool "Console audio control ALSA interface"
> +	depends on THINKPAD_ACPI
> +	depends on SND
> +	depends on SND = y || THINKPAD_ACPI = SND
> +	default y
> +	help
> +	  Enables monitoring of the built-in console audio output control
> +	  (headphone and speakers), which is operated by the mute and (in
> +	  some ThinkPad models) volume hotkeys.
> +
> +	  If this option is enabled, ThinkPad-ACPI will export an ALSA card
> +	  with a single read-only mixer control, which should be used for
> +	  on-screen-display feedback purposes by the Desktop Environment.
> +
> +	  Optionally, the driver will also allow software control (the
> +	  ALSA mixer will be made read-write).  Please refer to the driver
> +	  documentation for details.
> +
> +	  All IBM models have both volume and mute control.  Newer Lenovo
> +	  models only have mute control (the volume hotkeys are just normal
> +	  keys and volume control is done through the main HDA mixer).
> +
> +config THINKPAD_ACPI_DEBUGFACILITIES
> +	bool "Maintainer debug facilities"
> +	depends on THINKPAD_ACPI
> +	help
> +	  Enables extra stuff in the thinkpad-acpi which is completely useless
> +	  for normal use.  Read the driver source to find out what it does.
> +
> +	  Say N here, unless you were told by a kernel maintainer to do
> +	  otherwise.
> +
> +config THINKPAD_ACPI_DEBUG
> +	bool "Verbose debug mode"
> +	depends on THINKPAD_ACPI
> +	help
> +	  Enables extra debugging information, at the expense of a slightly
> +	  increase in driver size.
> +
> +	  If you are not sure, say N here.
> +
> +config THINKPAD_ACPI_UNSAFE_LEDS
> +	bool "Allow control of important LEDs (unsafe)"
> +	depends on THINKPAD_ACPI
> +	help
> +	  Overriding LED state on ThinkPads can mask important
> +	  firmware alerts (like critical battery condition), or misled
> +	  the user into damaging the hardware (undocking or ejecting
> +	  the bay while buses are still active), etc.
> +
> +	  LED control on the ThinkPad is write-only (with very few
> +	  exceptions on very ancient models), which makes it
> +	  impossible to know beforehand if important information will
> +	  be lost when one changes LED state.
> +
> +	  Users that know what they are doing can enable this option
> +	  and the driver will allow control of every LED, including
> +	  the ones on the dock stations.
> +
> +	  Never enable this option on a distribution kernel.
> +
> +	  Say N here, unless you are building a kernel for your own
> +	  use, and need to control the important firmware LEDs.
> +
> +config THINKPAD_ACPI_VIDEO
> +	bool "Video output control support"
> +	depends on THINKPAD_ACPI
> +	default y
> +	help
> +	  Allows the thinkpad_acpi driver to provide an interface to control
> +	  the various video output ports.
> +
> +	  This feature often won't work well, depending on ThinkPad model,
> +	  display state, video output devices in use, whether there is a X
> +	  server running, phase of the moon, and the current mood of
> +	  Schroedinger's cat.  If you can use X.org's RandR to control
> +	  your ThinkPad's video output ports instead of this feature,
> +	  don't think twice: do it and say N here to save memory and avoid
> +	  bad interactions with X.org.
> +
> +	  NOTE: access to this feature is limited to processes with the
> +	  CAP_SYS_ADMIN capability, to avoid local DoS issues in platforms
> +	  where it interacts badly with X.org.
> +
> +	  If you are not sure, say Y here but do try to check if you could
> +	  be using X.org RandR instead.
> +
> +config THINKPAD_ACPI_HOTKEY_POLL
> +	bool "Support NVRAM polling for hot keys"
> +	depends on THINKPAD_ACPI
> +	default y
> +	help
> +	  Some thinkpad models benefit from NVRAM polling to detect a few of
> +	  the hot key press events.  If you know your ThinkPad model does not
> +	  need to do NVRAM polling to support any of the hot keys you use,
> +	  unselecting this option will save about 1kB of memory.
> +
> +	  ThinkPads T40 and newer, R52 and newer, and X31 and newer are
> +	  unlikely to need NVRAM polling in their latest BIOS versions.
> +
> +	  NVRAM polling can detect at most the following keys: ThinkPad/Access
> +	  IBM, Zoom, Switch Display (fn+F7), ThinkLight, Volume up/down/mute,
> +	  Brightness up/down, Display Expand (fn+F8), Hibernate (fn+F12).
> +
> +	  If you are not sure, say Y here.  The driver enables polling only if
> +	  it is strictly necessary to do so.
> +
> +config THINKPAD_LMI
> +	tristate "Lenovo WMI-based systems management driver"
> +	depends on ACPI_WMI
> +	select FW_ATTR_CLASS
> +	help
> +	  This driver allows changing BIOS settings on Lenovo machines whose
> +	  BIOS support the WMI interface.
> +
> +	  To compile this driver as a module, choose M here: the module will
> +	  be called think-lmi.
> +
> +endif # X86_PLATFORM_DRIVERS_LENOVO

Maybe sort the entries alphabetically, putting the 2 yoga drivers at the end ?

I assume all these entries are just moved and no changes wrt
depends / selects have been made ?

> diff --git a/drivers/platform/x86/lenovo/Makefile b/drivers/platform/x86/lenovo/Makefile
> new file mode 100644
> index 000000000000..4f8d6ed369b8
> --- /dev/null
> +++ b/drivers/platform/x86/lenovo/Makefile
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Makefile for linux/drivers/platform/x86/lenovo
> +# Lenovo x86 Platform-Specific Drivers
> +#
> +
> +obj-$(CONFIG_IBM_RTL)		+= ibm_rtl.o

This looks wrong, since you are keeping this in the main
drivers/platform/x86/Makefile and Kconfig

> +obj-$(CONFIG_IDEAPAD_LAPTOP)	+= ideapad-laptop.o
> +obj-$(CONFIG_LENOVO_YMC)	+= lenovo-ymc.o
> +obj-$(CONFIG_SENSORS_HDAPS)	+= hdaps.o

same remark for the hdaps driver.

> +obj-$(CONFIG_THINKPAD_ACPI)	+= thinkpad_acpi.o
> +obj-$(CONFIG_THINKPAD_LMI)	+= think-lmi.o
> +obj-$(CONFIG_YOGABOOK)		+= lenovo-yogabook.o
> diff --git a/drivers/platform/x86/ideapad-laptop.c b/drivers/platform/x86/lenovo/ideapad-laptop.c
> similarity index 100%
> rename from drivers/platform/x86/ideapad-laptop.c
> rename to drivers/platform/x86/lenovo/ideapad-laptop.c
> diff --git a/drivers/platform/x86/ideapad-laptop.h b/drivers/platform/x86/lenovo/ideapad-laptop.h
> similarity index 100%
> rename from drivers/platform/x86/ideapad-laptop.h
> rename to drivers/platform/x86/lenovo/ideapad-laptop.h
> diff --git a/drivers/platform/x86/lenovo-ymc.c b/drivers/platform/x86/lenovo/lenovo-ymc.c
> similarity index 100%
> rename from drivers/platform/x86/lenovo-ymc.c
> rename to drivers/platform/x86/lenovo/lenovo-ymc.c
> diff --git a/drivers/platform/x86/lenovo-yogabook.c b/drivers/platform/x86/lenovo/lenovo-yogabook.c
> similarity index 100%
> rename from drivers/platform/x86/lenovo-yogabook.c
> rename to drivers/platform/x86/lenovo/lenovo-yogabook.c
> diff --git a/drivers/platform/x86/think-lmi.c b/drivers/platform/x86/lenovo/think-lmi.c
> similarity index 99%
> rename from drivers/platform/x86/think-lmi.c
> rename to drivers/platform/x86/lenovo/think-lmi.c
> index 3a396b763c49..bf688df50856 100644
> --- a/drivers/platform/x86/think-lmi.c
> +++ b/drivers/platform/x86/lenovo/think-lmi.c
> @@ -19,7 +19,7 @@
>  #include <linux/types.h>
>  #include <linux/dmi.h>
>  #include <linux/wmi.h>
> -#include "firmware_attributes_class.h"
> +#include "../firmware_attributes_class.h"
>  #include "think-lmi.h"
>  
>  static bool debug_support;
> diff --git a/drivers/platform/x86/think-lmi.h b/drivers/platform/x86/lenovo/think-lmi.h
> similarity index 100%
> rename from drivers/platform/x86/think-lmi.h
> rename to drivers/platform/x86/lenovo/think-lmi.h
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/lenovo/thinkpad_acpi.c
> similarity index 99%
> rename from drivers/platform/x86/thinkpad_acpi.c
> rename to drivers/platform/x86/lenovo/thinkpad_acpi.c
> index d0b5fd4137bc..7d085d4e02ee 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/lenovo/thinkpad_acpi.c
> @@ -80,7 +80,7 @@
>  #include <sound/core.h>
>  #include <sound/initval.h>
>  
> -#include "dual_accel_detect.h"
> +#include "../dual_accel_detect.h"
>  
>  /* ThinkPad CMOS commands */
>  #define TP_CMOS_VOLUME_DOWN	0

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
