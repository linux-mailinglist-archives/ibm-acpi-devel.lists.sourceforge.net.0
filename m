Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CAC8A8C45
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Apr 2024 21:40:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxB8a-0007cv-16;
	Wed, 17 Apr 2024 19:40:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rxB8X-0007cm-Tg
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 19:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nHsW1ltpsGcr7bHagE1y1YeI6tL7m/bl+evkY3i/aDw=; b=jevQ5mD7l2mGybjfLRvD7rmXqS
 YIZwJXGydYH3jsOReXHdDXD1rEbsvo13fyIGA4wFKmwZhMDa4aiE34M+0cUHCqDgswaJ+IGmq6Nj1
 GS5Cee25rKDcU+RnOwvkwAUdeTgLHLoAhaxNl80SVl8t1zkOxRs0yEmy0OSq4dPfwJF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nHsW1ltpsGcr7bHagE1y1YeI6tL7m/bl+evkY3i/aDw=; b=mxNIAk8FAJnVfy+lZbUFo2M7lL
 +VYPNSd63O0Ie6oMQtM9ElQ/wDPgTH7zHSy0r0yZgCr6brpKcz9x3Aic7X+Tly94fgQm6avHJW2oA
 wIa2br+ZbqTIXJlQxFdwpi8xySXqwp5WHiN/EvXgSzgzbmbMLlTRe2wtrPMOni2IQR80=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxB8X-0006ty-Ee for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 19:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713382799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nHsW1ltpsGcr7bHagE1y1YeI6tL7m/bl+evkY3i/aDw=;
 b=R4NiMgSyTi4r1OpbM9vQi/AtWyNSkG4pImvkLJ2/QE02LNkxeftDZ8BfJgrAqk8c4Zxs6/
 Dqs6VQ/2+RuzqtVl9RbPn3Rjn2cceGxV8ImExm/aROe9eaPJzqmmdvidogKuwpSHYDRCRA
 /PFlNgU/wOvrcUv7TNb5fRLwfyCaESw=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-355-RWEMTFRpMq-jYQhqdZCqkw-1; Wed, 17 Apr 2024 15:39:57 -0400
X-MC-Unique: RWEMTFRpMq-jYQhqdZCqkw-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-519696567f4so23713e87.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 17 Apr 2024 12:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713382796; x=1713987596;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nHsW1ltpsGcr7bHagE1y1YeI6tL7m/bl+evkY3i/aDw=;
 b=pld5rthEAl2BHY1NAb+rjo2oA6GMhiRuYuHfhe/gIgZ/dOPHKr6881QQy2OA1pxejP
 mCyISeCa8x0XcRLA+r0e3LICjUmSVPJyjulGMn0fEiPN1uOYayynYabwwxPQB79HS90/
 wH7/aFaH9mBBFE30UtgE1A7PUc+q1cYDS10HPByiS7dqeKQHYKI5u/ppT1SfVl5bEzNE
 /k0A5VOnlSK9tgrr5dJaoiJHXjFeEjptmK29tZIBIIEAaqPH4BhsCeYIexX9x6PDSqm9
 tPTARInj0q1LvCIFfwjHw0gcEYu6OAwl711pXVApwuDTbuMw/MJLTucGvmYi4mMOO5po
 bjXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7XMw5pCmOdclPxqKlsCgCKCkxjg5Z7BMYp2Cov2F7KYKdH4GRrty8ZggcCwMNTAH2wOG/0P7zyL7bwiS6lwCa9I6Epj2sdwzMW/NZVNA7uwNX4lc=
X-Gm-Message-State: AOJu0YxrcJw75eaXW0i6uBDw+1B7e2Xwo5whVIrKjWQ1AzFPR328duLc
 gszQ0blWfuViRk+p0T6mwa64+l9khtr60UNRtFMxujQbFgv71gV8/IZxWmtTZr/JU+PztWjQP40
 4LLXPITMk66Rzq1TrpccjTM+Cdq7z+guwggfFEPy76GD5oMMnPmcbrdIXu2/H/Yk6fLsX5oO+
X-Received: by 2002:a05:6512:238f:b0:519:63c1:6f2b with SMTP id
 c15-20020a056512238f00b0051963c16f2bmr217336lfv.54.1713382796127; 
 Wed, 17 Apr 2024 12:39:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQOr0vOl/amoQkG2c8TZZIA3fB3oHHu4NtMOLSJDUVCY8ogv8Z13fBBq9LV7wYICMDiPchjQ==
X-Received: by 2002:a05:6512:238f:b0:519:63c1:6f2b with SMTP id
 c15-20020a056512238f00b0051963c16f2bmr217322lfv.54.1713382795766; 
 Wed, 17 Apr 2024 12:39:55 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 he38-20020a1709073da600b00a51fa9f6d92sm8372953ejc.38.2024.04.17.12.39.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Apr 2024 12:39:55 -0700 (PDT)
Message-ID: <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
Date: Wed, 17 Apr 2024 21:39:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, Thank you for the new version of this series,
 overall
 this looks good, one small remark below. On 4/17/24 7:31 PM, Mark Pearson
 wrote: > Lenovo trackpoints are adding the ability to generate a doubletap
 event. > This handles the doubletap event and sends the KEY_PROG1 event to
 > userspace. > > [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rxB8X-0006ty-Ee
Subject: Re: [ibm-acpi-devel] [PATCH v2 2/4] platform/x86: thinkpad_acpi:
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
Cc: linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 vsankar@lenovo.com, ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 Vishnu Sankar <vishnuocv@gmail.com>, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

Thank you for the new version of this series, overall this looks good,
one small remark below.

On 4/17/24 7:31 PM, Mark Pearson wrote:
> Lenovo trackpoints are adding the ability to generate a doubletap event.
> This handles the doubletap event and sends the KEY_PROG1 event to
> userspace.
> 
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
> ---
> Changes in v2:
>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>    want new un-specific key codes added.
>  - Add doubletap to hotkey scan code table and use existing hotkey
>    functionality.
>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>    to launch an application.
> 
>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 3b48d893280f..6d04d45e8d45 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>  
>  	/* Misc */
>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
> +
> +	/* Misc2 */
> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>  };
>  
>  /****************************************************************************
> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,

I understand why you've done this but I think this needs a comment,
something like:

        /*
         * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
         * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
         * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
         * always be the last entry (after any 0x1300-0x13ff entries).
         */
+	TP_ACPI_HOTKEYSCAN_DOUBLETAP,

I see you got adding the new 0x13xx related hkeyscancodes right in the next
patch in this series but I think such a comment as above will be helpful
for future patches.

If you agree with adding this comment I can add this while merging, no need
to send a new version just for this.

Regards,

Hans





>  	/* Hotkey keymap size */
>  	TPACPI_HOTKEY_MAP_LEN
> @@ -3336,6 +3340,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  		KEY_NOTIFICATION_CENTER,	/* Notification Center */
>  		KEY_PICKUP_PHONE,		/* Answer incoming call */
>  		KEY_HANGUP_PHONE,		/* Decline incoming call */
> +		KEY_PROG1,                      /* Trackpoint doubletap */
>  		},
>  	};
>  
> @@ -3996,6 +4001,15 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>  	return true;
>  }
>  
> +static bool hotkey_notify_8xxx(const u32 hkey)
> +{
> +	if (hkey == TP_HKEY_EV_TRACK_DOUBLETAP) {
> +		tpacpi_input_send_key(TP_ACPI_HOTKEYSCAN_DOUBLETAP);
> +		return true;
> +	}
> +	return false;
> +}
> +
>  static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>  {
>  	u32 hkey;
> @@ -4079,6 +4093,10 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>  				known_ev = true;
>  			}
>  			break;
> +		case 8:
> +			/* 0x8000-0x8FFF: misc2 */
> +			known_ev = hotkey_notify_8xxx(hkey);
> +			break;
>  		}
>  		if (!known_ev) {
>  			pr_notice("unhandled HKEY event 0x%04x\n", hkey);



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
