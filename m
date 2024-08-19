Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 061E8956D6A
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 19 Aug 2024 16:34:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sg3SY-0007HS-Gc;
	Mon, 19 Aug 2024 14:34:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1sg3SW-0007HD-Nq
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 19 Aug 2024 14:34:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XI1wxLhmaHPph0EHltEz1b+0HPnXw9pYN3u2v6zCAB0=; b=W7uywjRJu7JrHq2fwtur6XiDJU
 CoaMDSScCZv0oRw9ymoRHOBE7xCs/A2HpzSreOJZ627UFbtVIT9YAUm5SsXaPiwd0WmIsFtdwq6Om
 ghx41hCh+ACjPg8um2Mr/14t5LyG9BpEPH6cEwg72g/1/VuVcDJVsmc3nKeAW52sEiPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XI1wxLhmaHPph0EHltEz1b+0HPnXw9pYN3u2v6zCAB0=; b=QC+7i6nkXHVffz3Q/rOXlB3aWH
 tk6jT911sPdKnaJe/0P64kSJiDYNxKQkDulIiTWqRK5NQsmWDsqb5BOOO7jA3Z7//sCvZkvRIMQx3
 kudstvHcy78S52BrVYlZ7UiTBb4XC2vFxJbuhSuCfUFNGxmrrE/ViflKchpzXLaFyzDo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg3SV-0007rf-O3 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 19 Aug 2024 14:34:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724078045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XI1wxLhmaHPph0EHltEz1b+0HPnXw9pYN3u2v6zCAB0=;
 b=izvnsMPb1PeF9ZhRUo+fwerAoy0hQcyg3DiYjNMyuuAgXSya66L5K78jxH3rZicQoyPFWe
 3DYok7viAWo6hJl4BkVNm+cj3OLMNSgkUifFTI0nIlIRoDR4n9Xl0JrCmc/sbKs36ajOPz
 fWDxR3Ca5Nr8qEPtpjhQjPSLh6eVWEw=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-597-JKhdbyj_M1-iIYAethv3hg-1; Mon, 19 Aug 2024 10:34:04 -0400
X-MC-Unique: JKhdbyj_M1-iIYAethv3hg-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a7ab81eea72so347969466b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 19 Aug 2024 07:34:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724078043; x=1724682843;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XI1wxLhmaHPph0EHltEz1b+0HPnXw9pYN3u2v6zCAB0=;
 b=bzQZQZ6tWP/pByn3N8dtsRDkpDRXUUY/WAhhyreYp3KTtFil4AfeR53gCuAgJQX+18
 rcxvmsW05Qn275mqOaUC6HPl/WW6xp1o0cbP2tsjK9JlOsA5B4CDF9tZt3Y5Jzw+VSb1
 MZ179PCDPu1pWML17douuY7CYqZ/nAPZKJElMKNqhaixK5Q6eRCIT9Edd9EhCGSwpZpN
 8ER2TSXRMuvlBLloWQquIRh4kI9RU3Kpsy2vqHd9Iz6y5OUEwcQo+DOkTEAK7b7v/XrA
 ue5NB06i1YP8YKBs+ei3c+YXIvM3xZqHkjX7XSMuOrUOVotbjkvtwxjt2OXg4o5QqLIJ
 5YXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzsosLcuuqZFh2N7UsepEwCp6wSiAgHTqYCnpMV0CWPK+In3tmFk0AAty4hTxf5TkVDh1QgM1Sos+qjLSIEDwJiw+0tVRBMdjqF0PkR80bSbHvZzU=
X-Gm-Message-State: AOJu0YwOHw+CsGc2KQGWfF4sQRt+lAs4eKGTOBuq2xM++kp65JsHZYxl
 FxWd4ZiOZej5O5kc+eMAVv+KeLfNx6c9yO9h+/smmqo6v/GwnzxesGU5CP2rmFawLJEzO9JbvBL
 2dx1xaluxIlo1SCYU5lgoTOHKgmFLdpJFaP+oZM12iJ2qEJnJmvayMc5mzEOzNeD8vV7kz1gq
X-Received: by 2002:a17:907:7e92:b0:a7d:34fd:6cd0 with SMTP id
 a640c23a62f3a-a8392a498a7mr795749466b.66.1724078042816; 
 Mon, 19 Aug 2024 07:34:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhKOiQkV0PWV7tBvHyFsRImuKBEhItJhUHuQavjrNvTRc1gUnRhUkoj+WHUcUcgG7bRgKzsA==
X-Received: by 2002:a17:907:7e92:b0:a7d:34fd:6cd0 with SMTP id
 a640c23a62f3a-a8392a498a7mr795746066b.66.1724078042190; 
 Mon, 19 Aug 2024 07:34:02 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a8383935a8bsm639967866b.103.2024.08.19.07.33.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Aug 2024 07:34:01 -0700 (PDT)
Message-ID: <de008820-8b75-4a81-ae8c-fb0d3634feaf@redhat.com>
Date: Mon, 19 Aug 2024 16:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthias Fetzer <kontakt@matthias-fetzer.de>, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org
References: <e1fe661c-281d-9d59-be53-968f7a0bc18a@linux.intel.com>
 <20240816141228.134529-1-kontakt@matthias-fetzer.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240816141228.134529-1-kontakt@matthias-fetzer.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 8/16/24 4:12 PM, Matthias Fetzer wrote: > Fan control
 on the E531 is done using the ACPI methods FANG and > FANW. The correct
 parameters
 and register values were found by > analyzing EC firmware as [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-trusted.bondedsender.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sg3SV-0007rf-O3
Subject: Re: [ibm-acpi-devel] [PATCH v4] platform/x86: thinkpad_acpi: Add
 Thinkpad Edge E531 fan support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 8/16/24 4:12 PM, Matthias Fetzer wrote:
> Fan control on the E531 is done using the ACPI methods FANG and
> FANW. The correct parameters and register values were found by
> analyzing EC firmware as well as DSDT. This has been tested on
> my Thinkpad Edge E531 (6885CTO, BIOS HEET52WW 1.33).
> 
> Signed-off-by: Matthias Fetzer <kontakt@matthias-fetzer.de>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans



> ---
> 
> Changes in v4:
>     - Remove unnecessary variable
> Changes in v3:
>     - Add missing newline
>     - Remove redundant code
> Changes in v2:
>     - Fix typo in EC memory description
>     - Split plausibilty check for better readability
> 
>  drivers/platform/x86/thinkpad_acpi.c | 143 ++++++++++++++++++++++++++-
>  1 file changed, 142 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 397b409064c9..96c58bc59018 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -7751,6 +7751,28 @@ static struct ibm_struct volume_driver_data = {
>   * 	EC 0x2f (HFSP) might be available *for reading*, but do not use
>   * 	it for writing.
>   *
> + * TPACPI_FAN_RD_ACPI_FANG:
> + * 	ACPI FANG method: returns fan control register
> + *
> + *	Takes one parameter which is 0x8100 plus the offset to EC memory
> + *	address 0xf500 and returns the byte at this address.
> + *
> + *	0xf500:
> + *		When the value is less than 9 automatic mode is enabled
> + *	0xf502:
> + *		Contains the current fan speed from 0-100%
> + *	0xf506:
> + *		Bit 7 has to be set in order to enable manual control by
> + *		writing a value >= 9 to 0xf500
> + *
> + * TPACPI_FAN_WR_ACPI_FANW:
> + * 	ACPI FANG method: sets fan control registers
> + *
> + * 	Takes 0x8100 plus the offset to EC memory address 0xf500 and the
> + * 	value to be written there as parameters.
> + *
> + *	see TPACPI_FAN_RD_ACPI_FANG
> + *
>   * TPACPI_FAN_WR_TPEC:
>   * 	ThinkPad EC register 0x2f (HFSP): fan control loop mode
>   * 	Supported on almost all ThinkPads
> @@ -7884,6 +7906,7 @@ enum {					/* Fan control constants */
>  enum fan_status_access_mode {
>  	TPACPI_FAN_NONE = 0,		/* No fan status or control */
>  	TPACPI_FAN_RD_ACPI_GFAN,	/* Use ACPI GFAN */
> +	TPACPI_FAN_RD_ACPI_FANG,	/* Use ACPI FANG */
>  	TPACPI_FAN_RD_TPEC,		/* Use ACPI EC regs 0x2f, 0x84-0x85 */
>  	TPACPI_FAN_RD_TPEC_NS,		/* Use non-standard ACPI EC regs (eg: L13 Yoga gen2 etc.) */
>  };
> @@ -7891,6 +7914,7 @@ enum fan_status_access_mode {
>  enum fan_control_access_mode {
>  	TPACPI_FAN_WR_NONE = 0,		/* No fan control */
>  	TPACPI_FAN_WR_ACPI_SFAN,	/* Use ACPI SFAN */
> +	TPACPI_FAN_WR_ACPI_FANW,	/* Use ACPI FANW */
>  	TPACPI_FAN_WR_TPEC,		/* Use ACPI EC reg 0x2f */
>  	TPACPI_FAN_WR_ACPI_FANS,	/* Use ACPI FANS and EC reg 0x2f */
>  };
> @@ -7924,9 +7948,13 @@ TPACPI_HANDLE(fans, ec, "FANS");	/* X31, X40, X41 */
>  TPACPI_HANDLE(gfan, ec, "GFAN",	/* 570 */
>  	   "\\FSPD",		/* 600e/x, 770e, 770x */
>  	   );			/* all others */
> +TPACPI_HANDLE(fang, ec, "FANG",	/* E531 */
> +	   );			/* all others */
>  TPACPI_HANDLE(sfan, ec, "SFAN",	/* 570 */
>  	   "JFNS",		/* 770x-JL */
>  	   );			/* all others */
> +TPACPI_HANDLE(fanw, ec, "FANW",	/* E531 */
> +	   );			/* all others */
>  
>  /*
>   * Unitialized HFSP quirk: ACPI DSDT and EC fail to initialize the
> @@ -8033,6 +8061,23 @@ static int fan_get_status(u8 *status)
>  
>  		break;
>  	}
> +	case TPACPI_FAN_RD_ACPI_FANG: {
> +		/* E531 */
> +		int mode, speed;
> +
> +		if (unlikely(!acpi_evalf(fang_handle, &mode, NULL, "dd", 0x8100)))
> +			return -EIO;
> +		if (unlikely(!acpi_evalf(fang_handle, &speed, NULL, "dd", 0x8102)))
> +			return -EIO;
> +
> +		if (likely(status)) {
> +			*status = speed * 7 / 100;
> +			if (mode < 9)
> +				*status |= TP_EC_FAN_AUTO;
> +		}
> +
> +		break;
> +	}
>  	case TPACPI_FAN_RD_TPEC:
>  		/* all except 570, 600e/x, 770e, 770x */
>  		if (unlikely(!acpi_ec_read(fan_status_offset, &s)))
> @@ -8147,6 +8192,17 @@ static int fan2_get_speed(unsigned int *speed)
>  		if (speed)
>  			*speed = lo ? FAN_RPM_CAL_CONST / lo : 0;
>  		break;
> +	case TPACPI_FAN_RD_ACPI_FANG: {
> +		/* E531 */
> +		int speed_tmp;
> +
> +		if (unlikely(!acpi_evalf(fang_handle, &speed_tmp, NULL, "dd", 0x8102)))
> +			return -EIO;
> +
> +		if (likely(speed))
> +			*speed =  speed_tmp * 65535 / 100;
> +		break;
> +	}
>  
>  	default:
>  		return -ENXIO;
> @@ -8206,6 +8262,32 @@ static int fan_set_level(int level)
>  			tp_features.fan_ctrl_status_undef = 0;
>  		break;
>  
> +	case TPACPI_FAN_WR_ACPI_FANW:
> +		if (!(level & TP_EC_FAN_AUTO) && (level < 0 || level > 7))
> +			return -EINVAL;
> +		if (level & TP_EC_FAN_FULLSPEED)
> +			return -EINVAL;
> +
> +		if (level & TP_EC_FAN_AUTO) {
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x05)) {
> +				return -EIO;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0x00)) {
> +				return -EIO;
> +			}
> +		} else {
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x45)) {
> +				return -EIO;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0xff)) {
> +				return -EIO;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8102, level * 100 / 7)) {
> +				return -EIO;
> +			}
> +		}
> +		break;
> +
>  	default:
>  		return -ENXIO;
>  	}
> @@ -8284,6 +8366,19 @@ static int fan_set_enable(void)
>  			rc = 0;
>  		break;
>  
> +	case TPACPI_FAN_WR_ACPI_FANW:
> +		if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x05)) {
> +			rc = -EIO;
> +			break;
> +		}
> +		if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0x00)) {
> +			rc = -EIO;
> +			break;
> +		}
> +
> +		rc = 0;
> +		break;
> +
>  	default:
>  		rc = -ENXIO;
>  	}
> @@ -8326,6 +8421,22 @@ static int fan_set_disable(void)
>  			fan_control_desired_level = 0;
>  		break;
>  
> +	case TPACPI_FAN_WR_ACPI_FANW:
> +		if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x45)) {
> +			rc = -EIO;
> +			break;
> +		}
> +		if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0xff)) {
> +			rc = -EIO;
> +			break;
> +		}
> +		if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8102, 0x00)) {
> +			rc = -EIO;
> +			break;
> +		}
> +		rc = 0;
> +		break;
> +
>  	default:
>  		rc = -ENXIO;
>  	}
> @@ -8359,6 +8470,23 @@ static int fan_set_speed(int speed)
>  			rc = -EINVAL;
>  		break;
>  
> +	case TPACPI_FAN_WR_ACPI_FANW:
> +		if (speed >= 0 && speed <= 65535) {
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x45)) {
> +				rc = -EIO;
> +				break;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0xff)) {
> +				rc = -EIO;
> +				break;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd",
> +					0x8102, speed * 100 / 65535))
> +				rc = -EIO;
> +		} else
> +			rc = -EINVAL;
> +		break;
> +
>  	default:
>  		rc = -ENXIO;
>  	}
> @@ -8701,6 +8829,10 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  		TPACPI_ACPIHANDLE_INIT(gfan);
>  		TPACPI_ACPIHANDLE_INIT(sfan);
>  	}
> +	if (tpacpi_is_lenovo()) {
> +		TPACPI_ACPIHANDLE_INIT(fang);
> +		TPACPI_ACPIHANDLE_INIT(fanw);
> +	}
>  
>  	quirks = tpacpi_check_quirks(fan_quirk_table,
>  				     ARRAY_SIZE(fan_quirk_table));
> @@ -8720,6 +8852,9 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  	if (gfan_handle) {
>  		/* 570, 600e/x, 770e, 770x */
>  		fan_status_access_mode = TPACPI_FAN_RD_ACPI_GFAN;
> +	} else if (fang_handle) {
> +		/* E531 */
> +		fan_status_access_mode = TPACPI_FAN_RD_ACPI_FANG;
>  	} else {
>  		/* all other ThinkPads: note that even old-style
>  		 * ThinkPad ECs supports the fan control register */
> @@ -8766,6 +8901,11 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  		fan_control_access_mode = TPACPI_FAN_WR_ACPI_SFAN;
>  		fan_control_commands |=
>  		    TPACPI_FAN_CMD_LEVEL | TPACPI_FAN_CMD_ENABLE;
> +	} else if (fanw_handle) {
> +		/* E531 */
> +		fan_control_access_mode = TPACPI_FAN_WR_ACPI_FANW;
> +		fan_control_commands |=
> +		    TPACPI_FAN_CMD_LEVEL | TPACPI_FAN_CMD_SPEED | TPACPI_FAN_CMD_ENABLE;
>  	} else {
>  		if (!gfan_handle) {
>  			/* gfan without sfan means no fan control */
> @@ -8917,6 +9057,7 @@ static int fan_read(struct seq_file *m)
>  
>  	case TPACPI_FAN_RD_TPEC_NS:
>  	case TPACPI_FAN_RD_TPEC:
> +	case TPACPI_FAN_RD_ACPI_FANG:
>  		/* all except 570, 600e/x, 770e, 770x */
>  		rc = fan_get_status_safe(&status);
>  		if (rc)
> @@ -8937,7 +9078,7 @@ static int fan_read(struct seq_file *m)
>  			 * No other levels settings available
>  			 */
>  			seq_printf(m, "level:\t\t%s\n", status & FAN_NS_CTRL ? "unknown" : "auto");
> -		} else {
> +		} else if (fan_status_access_mode == TPACPI_FAN_RD_TPEC) {
>  			if (status & TP_EC_FAN_FULLSPEED)
>  				/* Disengaged mode takes precedence */
>  				seq_printf(m, "level:\t\tdisengaged\n");



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
