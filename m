Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B523060A353
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Oct 2022 13:54:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1omw1F-0006X3-QT;
	Mon, 24 Oct 2022 11:53:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1omw1D-0006Wv-Uf
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 11:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sa227/HWN+mg/M9GF8z0s+pXLCfMWbPNsK+iHgKq07I=; b=adgx4t8dgudDVetsEpGqefXKx7
 OUzDXICmMvraI9p+HibHea02TbLKLPzPpHmWDF02h9MWRo0A+EtT3/zYPxg1oGEBXpCiY+cBNfkB6
 3C1ilayYA0WashIxOI7ddzbXLA2JrbpXJ7dyKDZPyhzApZLCLDLBysDdutFmbLTml1+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sa227/HWN+mg/M9GF8z0s+pXLCfMWbPNsK+iHgKq07I=; b=GOGAQbyOrWPhYFZSuDFQYuodhY
 ET13tBEOvjEy9N88sOokL+ESEeu6aB9wEOqKaLaw6afIHrGB71OS5XZT0f4utwj51vRkGknw8wrqQ
 Su9aX411KXzfl+bj5Qt1J4KN3tNDpT/wRQmCSweEGyfHRXuxtqJp/bfmsY1gTjJ80Gzg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omw18-0003IX-64 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 11:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666612391;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Sa227/HWN+mg/M9GF8z0s+pXLCfMWbPNsK+iHgKq07I=;
 b=i+hvIPShrMAZqO8+6hLP0Y3EbDTdgDrQkACOICtKuuYOF+oEKRvy50LejNjWcCmUsFGzAN
 M4qdMjqi4Q5DXkGYbc49kppZvKrKShg7DkgJziha64WGtCf4wkjGue9szInCEPhsmqgTkX
 F1T/QV/TNO8A1X1NHA12dEWWevUlL2Q=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-111-_3SK47jxP3u3SnJDYFpSyw-1; Mon, 24 Oct 2022 07:53:08 -0400
X-MC-Unique: _3SK47jxP3u3SnJDYFpSyw-1
Received: by mail-ed1-f71.google.com with SMTP id
 w17-20020a056402269100b00461e28a75ccso1642519edd.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Oct 2022 04:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Sa227/HWN+mg/M9GF8z0s+pXLCfMWbPNsK+iHgKq07I=;
 b=m6rg+8XQ3mRjssQu0lUPzDsUljWruRteO2ehcOXQtSmeFMqfhiygC/qNXL6Olqm7uq
 m22bCajfcnxPA2sYjSEsq/XJTA1EjJbZqARlidE8aKBBoelQQteu5C9LaXrpypsYgDhC
 OoJyo4hZRHpjTFnZ1Jk3fEQPVV70u/H1HIsW9DzLv+Fwei6k2xA16e/QQ419PV/sicAP
 TrPDLOCQiv1MfwAj+zU3W3Fqz05soq2JhizYsGx+nhPFzySZO1eyvKAA/K8bwrClTjoT
 wC5iAM0lYJVF0r/fg8Wr7hydAt6+PHBYn0R48++DWZNI16QooARjsvpdwtHvqrH1zBRR
 u2gA==
X-Gm-Message-State: ACrzQf0RqXLhvK+MQotcokkS+GXU5is61cepSdoeiY9LnPRD9qnTI+xe
 n6CIAQsYLg/ru657Lp3JeqcS/YThVz2XL5vj+ivS6R7b17r/eIvFipEAGNBm5WWTn3iXdziTIER
 CLdSDjPXDArUZRLxPg3xYCR5qymZOHxKoJtE=
X-Received: by 2002:a17:907:608f:b0:78e:1b60:60e2 with SMTP id
 ht15-20020a170907608f00b0078e1b6060e2mr27603502ejc.382.1666612387301; 
 Mon, 24 Oct 2022 04:53:07 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6rKjf9vFNIG71zIVFmhWoGUssYXpRCR0TKoudwiSS8QTCTafqY38Nm8/FfK1Fy5krk9VAMgg==
X-Received: by 2002:a17:907:608f:b0:78e:1b60:60e2 with SMTP id
 ht15-20020a170907608f00b0078e1b6060e2mr27603473ejc.382.1666612387069; 
 Mon, 24 Oct 2022 04:53:07 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 h3-20020a1709070b0300b007ab2d744801sm17394ejl.190.2022.10.24.04.53.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 04:53:06 -0700 (PDT)
Message-ID: <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
Date: Mon, 24 Oct 2022 13:53:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Akihiko, On 10/24/22 13:34, Akihiko Odaki wrote: > Commit
 2600bfa3df99 ("ACPI: video: Add acpi_video_backlight_use_native() > helper")
 and following commits made native backlight unavailable if > CONFIG_ACPI_V
 [...] Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1omw18-0003IX-64
Subject: Re: [ibm-acpi-devel] [PATCH 00/22] Fallback to native backlight
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Azael Avalos <coproscefalo@gmail.com>,
 Mattia Dongili <malattia@linux.it>, Daniel Dadap <ddadap@nvidia.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, David Airlie <airlied@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Woithe <jwoithe@just42.net>, Jonathan Corbet <corbet@lwn.net>, "Lee,
 Chun-Yi" <jlee@suse.com>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Robert Moore <robert.moore@intel.com>,
 linux-acpi@vger.kernel.org, Cezary Jackiewicz <cezary.jackiewicz@gmail.com>,
 Len Brown <lenb@kernel.org>, Matthew Garrett <mjg59@srcf.ucam.org>,
 Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Mark Gross <markgross@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 platform-driver-x86@vger.kernel.org, devel@acpica.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, Jingoo Han <jingoohan1@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Akihiko,

On 10/24/22 13:34, Akihiko Odaki wrote:
> Commit 2600bfa3df99 ("ACPI: video: Add acpi_video_backlight_use_native()
> helper") and following commits made native backlight unavailable if
> CONFIG_ACPI_VIDEO is set and the backlight feature of ACPI video is
> unavailable, which broke the backlight functionality on Lenovo ThinkPad
> C13 Yoga Chromebook. Allow to fall back to native backlight in such
> cases.

I appreciate your work on this, but what this in essence does is
it allows 2 backlight drivers (vendor + native) to get registered
for the same panel again. While the whole goal of the backlight refactor
series landing in 6.1 was to make it so that there always is only
*1* backlight device registered instead of (possibly) registering
multiple and letting userspace figure it out. It is also important
to only always have 1 backlight device per panel for further
upcoming changes.

So nack for this solution, sorry.

I am aware that this breaks backlight control on some Chromebooks,
this was already reported and I wrote a long reply explaining why
things are done the way they are done now and also suggesting
2 possible (much simpler) fixes, see:
https://lore.kernel.org/linux-acpi/42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com/

Unfortunately the reported has not followed-up on this and
I don't have the hardware to test this myself.

Can you please try implementing 1 of the fixes suggested there
and then submit that upstream ?

Regards,

Hans









> 
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> 
> Akihiko Odaki (22):
>   drm/i915/opregion: Improve backlight request condition
>   ACPI: video: Introduce acpi_video_get_backlight_types()
>   LoongArch: Use acpi_video_get_backlight_types()
>   platform/x86: acer-wmi: Use acpi_video_get_backlight_types()
>   platform/x86: asus-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: asus-wmi: Use acpi_video_get_backlight_types()
>   platform/x86: compal-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: msi-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: msi-wmi: Use acpi_video_get_backlight_types()
>   platform/x86: nvidia-wmi-ec-backlight: Use
>     acpi_video_get_backlight_types()
>   platform/x86: panasonic-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: sony-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()
>   platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()
>   platform/x86: dell-laptop: Use acpi_video_get_backlight_types()
>   platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()
>   ACPI: video: Remove acpi_video_get_backlight_type()
>   ACPI: video: Fallback to native backlight
> 
>  Documentation/gpu/todo.rst                    |  8 +--
>  drivers/acpi/acpi_video.c                     |  2 +-
>  drivers/acpi/video_detect.c                   | 54 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_opregion.c |  3 +-
>  drivers/platform/loongarch/loongson-laptop.c  |  4 +-
>  drivers/platform/x86/acer-wmi.c               |  2 +-
>  drivers/platform/x86/asus-laptop.c            |  2 +-
>  drivers/platform/x86/asus-wmi.c               |  4 +-
>  drivers/platform/x86/compal-laptop.c          |  2 +-
>  drivers/platform/x86/dell/dell-laptop.c       |  2 +-
>  drivers/platform/x86/eeepc-laptop.c           |  2 +-
>  drivers/platform/x86/fujitsu-laptop.c         |  4 +-
>  drivers/platform/x86/ideapad-laptop.c         |  2 +-
>  drivers/platform/x86/intel/oaktrail.c         |  2 +-
>  drivers/platform/x86/msi-laptop.c             |  2 +-
>  drivers/platform/x86/msi-wmi.c                |  2 +-
>  .../platform/x86/nvidia-wmi-ec-backlight.c    |  2 +-
>  drivers/platform/x86/panasonic-laptop.c       |  2 +-
>  drivers/platform/x86/samsung-laptop.c         |  2 +-
>  drivers/platform/x86/sony-laptop.c            |  2 +-
>  drivers/platform/x86/thinkpad_acpi.c          |  4 +-
>  drivers/platform/x86/toshiba_acpi.c           |  2 +-
>  drivers/video/backlight/backlight.c           | 18 +++++++
>  include/acpi/video.h                          | 21 ++++----
>  include/linux/backlight.h                     |  1 +
>  25 files changed, 85 insertions(+), 66 deletions(-)
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
