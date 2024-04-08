Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAF589C0DA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 15:13:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtooP-0001EF-U4;
	Mon, 08 Apr 2024 13:13:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rtooN-0001E1-Ux
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 13:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ck6h7oGqY5cwfuLDZYTXRLzHj6mfJjTZhLoQldbd3c=; b=mV/g188h9CxEiq+cgXZmGklwDY
 Xuu0zma3dTfr6Vlm9n4HrviEvmTyl7+cVFYlIXdg6CiOaYLijVlrYKjSAZVu9PBABN2Wxh7m1AgQp
 d9L6QPH8j5vrX5TypbV410tdd8TldY78npOw/GqSlnJrzPtKp0affWyoPRJWhH3hfSq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7ck6h7oGqY5cwfuLDZYTXRLzHj6mfJjTZhLoQldbd3c=; b=JFQ/FGjIwXKquMPyZwuyNaZptc
 SzilkaLFOAyzaN6XsM1FjolGOZMQ+kV40xiFtPm/NihawsF8aWnx4cx2M2l8R53Jj7OcDuPrA8e0j
 Qz1Z/oEpwoA0o3iZyU6W4ZbOlgu3m65yg4ThTrtW5P+tjOemhCdMFBkzipddetcFhRUA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtooK-0003Sw-A8 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 13:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712581989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7ck6h7oGqY5cwfuLDZYTXRLzHj6mfJjTZhLoQldbd3c=;
 b=dXP7Fm4EVnnj6wLFF4IktP47reD9TWMKB0UYyKLkJJjydydrHpAY+afSQUANpaLEYn1GcV
 9GpB8gYFdem0e06004NhAkAU8VQjmOTkIQobpduwx+sHCyYpD3IaLoslH2wakvanwE8eNK
 4PL8NM47THeokW5JuyPo0SluVcKhnjM=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-158-ZSNqjCfBPBa2zGF6Yzv-1w-1; Mon, 08 Apr 2024 09:13:08 -0400
X-MC-Unique: ZSNqjCfBPBa2zGF6Yzv-1w-1
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-78d6005b2d0so204935885a.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 06:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712581988; x=1713186788;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7ck6h7oGqY5cwfuLDZYTXRLzHj6mfJjTZhLoQldbd3c=;
 b=bhJicIX1KCqzFOzgg8WHyiZozhNla4rmhFR+nbOUlTySoBPgcNJF9l1SCINfuhNt4T
 ZkiyTfuFDFisHRT6RyFo0VZaS5klGtsomfbgX9wkamf9MQ+FKCOTiGBW72XAJfS1psGP
 bqAFvzP6CGAVDUte9HTXGwr6vaPCp14CJC4SywwFBgArAtIeOnUmWUwgd4bhFX2dIKIf
 Z9sp1WbgTlQ2XFAoYS7otHMrHR5XBuEkHhEGyZXlN1AeBUwN7G4jYIWBmkzwTD7qIrMu
 4v3H5Y6P382Q57FYvEuz7s9FKCNLMpJ8vromV+Y9DG5ZWSkTxFLxH0wyW2ZynjPt7hiF
 93rw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZ7U6noxzs1yTdhuGY01fxaGCmgf/SVRNXQtT5bzDE38DkHggOhIKqmn3lXc8rSFLtsCuHpx0iDVcVfGo5aHR2jH79VZY9xBJkKf+EWR/LColyl1w=
X-Gm-Message-State: AOJu0Yy3aD/2PuTNQNYFPj4bRL9e839hu1l2n7dpEp08yQ2FGMZiuYow
 o+uJRPTQF9af04kmxtP424Kx29g6BzRXOny64XQqyqosb953gVK78Deb4ueNNLJdtzwnCDR4N5f
 qRlDGwNdeILyldKk40RJOwrqqx6zvKqztOIfFefRQnQ3c5AGlE96iusspOV/bzQG3OyMyX3iP
X-Received: by 2002:a05:620a:4d14:b0:78d:6b3d:9a34 with SMTP id
 wa20-20020a05620a4d1400b0078d6b3d9a34mr314389qkn.43.1712581987918; 
 Mon, 08 Apr 2024 06:13:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaaNdf0+aehQaiEaOUOB91zwM2iwnImBi5etNoZRMALgRd/jitUy/yEBySE/LqXxJmVF3lrQ==
X-Received: by 2002:a05:620a:4d14:b0:78d:6b3d:9a34 with SMTP id
 wa20-20020a05620a4d1400b0078d6b3d9a34mr314361qkn.43.1712581987632; 
 Mon, 08 Apr 2024 06:13:07 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 y27-20020a05620a09db00b0078d623428c5sm1471784qky.88.2024.04.08.06.13.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Apr 2024 06:13:07 -0700 (PDT)
Message-ID: <3f49d41e-649d-4a07-9a1a-301a2f52613c@redhat.com>
Date: Mon, 8 Apr 2024 15:13:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-5-mpearson-lenovo@squebb.ca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240324210817.192033-5-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 3/24/24 10:08 PM, Mark Pearson wrote: > The hotkey
 combination FN+G can be used to disable the trackpoint > doubletap feature
 on Windows. > Add matching functionality for Linux. > > Signed-off-by: [...]
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rtooK-0003Sw-A8
Subject: Re: [ibm-acpi-devel] [PATCH 4/4] platform/x86: thinkpad_acpi:
 Support hotkey to disable trackpoint doubletap
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
Cc: dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 3/24/24 10:08 PM, Mark Pearson wrote:
> The hotkey combination FN+G can be used to disable the trackpoint
> doubletap feature on Windows.
> Add matching functionality for Linux.
> 
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 854ce971bde2..21756aa3d28d 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -167,6 +167,7 @@ enum tpacpi_hkey_event_t {
>  	TP_HKEY_EV_VOL_MUTE		= 0x1017, /* Mixer output mute */
>  	TP_HKEY_EV_PRIVACYGUARD_TOGGLE	= 0x130f, /* Toggle priv.guard on/off */
>  	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
> +	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap on/off */
>  	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile */
>  
>  	/* Reasons for waking up from S3/S4 */
> @@ -354,6 +355,7 @@ static struct {
>  	u32 hotkey_poll_active:1;
>  	u32 has_adaptive_kbd:1;
>  	u32 kbd_lang:1;
> +	u32 trackpoint_doubletap:1;
>  	struct quirk_entry *quirks;
>  } tp_features;
>  
> @@ -3598,6 +3600,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  
>  	hotkey_poll_setup_safe(true);
>  
> +	/* Enable doubletap by default */
> +	tp_features.trackpoint_doubletap = 1;
> +
>  	return 0;
>  }
>  
> @@ -3739,6 +3744,7 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
>  	case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
>  	case TP_HKEY_EV_AMT_TOGGLE:
>  	case TP_HKEY_EV_PROFILE_TOGGLE:
> +	case TP_HKEY_EV_DOUBLETAP_TOGGLE:
>  		tpacpi_driver_event(hkey);
>  		return true;
>  	}
> @@ -4092,13 +4098,15 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>  				send_acpi_ev = true;
>  				ignore_acpi_ev = false;
>  				known_ev = true;
> -				/* Send to user space */
> -				mutex_lock(&tpacpi_inputdev_send_mutex);
> -				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
> -				input_sync(tpacpi_inputdev);
> -				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
> -				input_sync(tpacpi_inputdev);
> -				mutex_unlock(&tpacpi_inputdev_send_mutex);
> +				if (tp_features.trackpoint_doubletap) {
> +					/* Send to user space */
> +					mutex_lock(&tpacpi_inputdev_send_mutex);
> +					input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
> +					input_sync(tpacpi_inputdev);
> +					input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
> +					input_sync(tpacpi_inputdev);
> +					mutex_unlock(&tpacpi_inputdev_send_mutex);
> +				}
>  				break;
>  			}
>  			fallthrough;	/* to default */

This chunk will need to change after incorporating my review comments into
patch 2/4. With that said this looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> @@ -11228,6 +11236,8 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
>  		/* Notify user space the profile changed */
>  		platform_profile_notify();
>  	}
> +	if (hkey_event == TP_HKEY_EV_DOUBLETAP_TOGGLE)
> +		tp_features.trackpoint_doubletap = !tp_features.trackpoint_doubletap;
>  }
>  
>  static void hotkey_driver_event(const unsigned int scancode)



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
