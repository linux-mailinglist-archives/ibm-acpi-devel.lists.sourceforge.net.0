Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 131E889C003
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 15:05:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtofy-0007vD-P6;
	Mon, 08 Apr 2024 13:04:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rtofx-0007v6-H8
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 13:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eYsEbh/lFBGC7LmhffRxYV+mBnuUn8I4RfVy+AtiIJ0=; b=G2XgpVxLMTSbPBJvVutBcHfU15
 DD/b951PHhGZqukH+9IBVY7w/AZRqD9vYa3eHyaRBHLji+gzpIVbNUHqzdHg2TmnhJPyoTfJpXvZF
 xT/BlKKUTZX05mJc1+rnHpj9VQJayzXNZIF06bj8EIZsyTxxH16/2g0xVkpF9E/AkKtw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eYsEbh/lFBGC7LmhffRxYV+mBnuUn8I4RfVy+AtiIJ0=; b=F3bxCi9WPR5S3Iw0fQ7aTJns50
 sUF4N7i2X0nzz0aaenXPcnG4yUWaq5/o3IH7Uhkoq4tY5np9famCYLJI0+k7Lz94VM4fMGKjOizs5
 A0U699uDMzpb4fP1aGCzcD8Eu8bSY+V7d1IlK3LCFIgV0pzGCSfjkLbks0iEbevAmvUo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtofu-0002yO-5Q for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 13:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712581466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eYsEbh/lFBGC7LmhffRxYV+mBnuUn8I4RfVy+AtiIJ0=;
 b=e4F/VKth0B3f2BA4XCcymNSYwPgNZonVsfBurjauLjFdepwFBE2yaI7slejy3s13GiTFEe
 Sy48NxnZn1mn4esdm0TvV77Eny/Xo3t1m1lcVvBHQvGQQkxgtI7WhPueQX4rcT3WvKdSqM
 eH1aB/NLIxJ70DkLfzpoc7Tc7bdXcl0=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-STvaTBJPO12fPSX5VVg95w-1; Mon, 08 Apr 2024 09:04:24 -0400
X-MC-Unique: STvaTBJPO12fPSX5VVg95w-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-516ce32c90aso3174160e87.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 06:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712581463; x=1713186263;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eYsEbh/lFBGC7LmhffRxYV+mBnuUn8I4RfVy+AtiIJ0=;
 b=qAQLW0Q1HhuS71gl1+/0eR2E6DeQ0mPwYC1ACsrh/ivP9cmeLLNGPrTAwFAob4PMkr
 K7pkuywyGhYzC9MvR+hbtzwV1ZlBin7KOERw286eiKUxh8d8ikdCqi12vIRNyHMa5X94
 jk1Ece/pK23yvl1HzLvo7e31hX0cu+jSkhGV/vb7gWqqJS7UmIuztxlMOlmRexbShSep
 jfkmvu9OR0Y0ZIvaHMe6+Z0uYzxbjx/Fc4DKJkxCDa6ULKokli4WO29AcjrxNUnamDuP
 u5tub8WWE5XBqpYT731EyCQdIVJ7FeYqluBVeq9qYJ/q8hqsQNXBzPUrMXr9S52ZdL3a
 +J0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUJHabIxWl7CAMCaxD531kcqOlncWpG969yk8ksWhw/jiWOpbuD/nhFakerKaJZ+UqsHCg0e/TruSm3VDQBrUyV5S2PdKv2ocZR5sJKWMtb0OQeNc=
X-Gm-Message-State: AOJu0YxZJB3Sfv6HUpMR4tGLj5r4jCu+7hDD3hyRewXXRbabSwnRVpbZ
 cN80pKiIbTti3Fxrio53QbIaLgzzwq0HEbm0YzceB6lvzUlQI1DCXh7FxOx5TZ7YNU6Tn+OMdgH
 Ix8yhX7BS+2MPU9/DuOEworsinHrJtGXvk2iqXCvjYLFiq3OUV9Fr9r6HTWMuPdlsvugzAeMh
X-Received: by 2002:a05:6512:285:b0:516:d18b:eaea with SMTP id
 j5-20020a056512028500b00516d18beaeamr5852667lfp.33.1712581463103; 
 Mon, 08 Apr 2024 06:04:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVbN23MbRWpoFmVMF8qzJBUpAHXZlNsgr5ChUftbP9Us3ZW5wqEVHzzpFcU5atACDir8I7+g==
X-Received: by 2002:a05:6512:285:b0:516:d18b:eaea with SMTP id
 j5-20020a056512028500b00516d18beaeamr5852651lfp.33.1712581462739; 
 Mon, 08 Apr 2024 06:04:22 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 di19-20020a056402319300b0056b7ed75a46sm4178873edb.27.2024.04.08.06.04.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Apr 2024 06:04:16 -0700 (PDT)
Message-ID: <e1ccf281-5c77-4447-a6c7-5b0b008c7c56@redhat.com>
Date: Mon, 8 Apr 2024 15:04:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-3-mpearson-lenovo@squebb.ca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240324210817.192033-3-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 3/24/24 10:07 PM, Mark Pearson wrote: > Lenovo
 trackpoints are adding the ability to generate a doubletap event. > This
 handles the doubletap event and sends the KEY_DOUBLECLICK event to > userspac
 [...] Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rtofu-0002yO-5Q
Subject: Re: [ibm-acpi-devel] [PATCH 2/4] platform/x86: thinkpad_acpi:
 Support for trackpoint doubletap
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

Hi Mark,

On 3/24/24 10:07 PM, Mark Pearson wrote:
> Lenovo trackpoints are adding the ability to generate a doubletap event.
> This handles the doubletap event and sends the KEY_DOUBLECLICK event to
> userspace.
> 
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 82429e59999d..2bbb32c898e9 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -232,6 +232,7 @@ enum tpacpi_hkey_event_t {
>  
>  	/* Misc */
>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
> +	TP_HKEY_EV_TRACKPOINT_DOUBLETAP = 0x8036, /* doubletap on Trackpoint*/
>  };
>  
>  /****************************************************************************
> @@ -4081,6 +4082,22 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>  				break;
>  			}
>  			fallthrough;	/* to default */

This now no longer fallsthrough to default. IMHO the best thing to do
here is add a new preparation patch which initializes known_ev to false
inside the while before the switch-case (together with the send_acpi_ev
and ignore_acpi_ev init). and then change this fallthrough to a break
in the preparation patch. You can then also remove the default case
altogether in this prep patch.

> +		case 8:
> +			/* 0x8036: Trackpoint doubletaps */
> +			if (hkey == TP_HKEY_EV_TRACKPOINT_DOUBLETAP) {
> +				send_acpi_ev = true;
> +				ignore_acpi_ev = false;

These 2 values are set as the default above the switch-case, please
drop these 2 lines.

> +				known_ev = true;
> +				/* Send to user space */
> +				mutex_lock(&tpacpi_inputdev_send_mutex);
> +				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
> +				input_sync(tpacpi_inputdev);
> +				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
> +				input_sync(tpacpi_inputdev);
> +				mutex_unlock(&tpacpi_inputdev_send_mutex);

This code duplicates tpacpi_input_send_key(), what you want to do here
is define a hotkey_keycode_map scancode range for new 0x8xxx codes like how this
was done when extended scancodes where added to deal with the new 0x13xx hotkey
event codes for the 2017+ models.

See commit 696c6523ec8f ("platform/x86: thinkpad_acpi: add mapping for new hotkeys")

Despite re-using tpacpi_input_send_key() there are 2 reasons why we want
scancodes for these new "keys".

1. By adding the keys to the hotkey_keycode_map they automatically
also get input_set_capability(tpacpi_inputdev, EV_KEY, hotkey_keycode_map[i]);
called on them advertising to userspace that tpacpi_inputdev can actually
generate these keypresses. Something which is currently lacking from your
patch. Related to this did you test this with evtest? I think that the input
core will suppress the events when you do not set the capability ?

2. This allows remapping scancodes to different KEY_foo values with hwdb
entries.

Regards,

Hans








> +				break;
> +			}
> +			fallthrough;	/* to default */
>  		default:
>  			known_ev = false;
>  		}



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
