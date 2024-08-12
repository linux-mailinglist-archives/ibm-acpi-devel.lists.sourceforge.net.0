Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 111BA94ED23
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 12 Aug 2024 14:34:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sdUFB-0006DL-Qn;
	Mon, 12 Aug 2024 12:33:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1sdUF2-0006Co-Th
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 12:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7bjWHOBJug9GKLxX1y4GcvC+tzINB11lDnF7fldSjCs=; b=OSexflKhh5RuSIVCZqQTeVZzYz
 rdWk+lTm7r1Fmpc9Hn8y5YWalCVeqrIQDtWB33OROE6VF7djIkc+JyIqMIrXYydq3Y2vc2jXl+BIq
 pO5SPqVpbZvfJ6zkG70eUDt8I++DCOb2rDlEz/pXW1XHFJU5URHzL3xea0gZI5qnEk8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7bjWHOBJug9GKLxX1y4GcvC+tzINB11lDnF7fldSjCs=; b=Oti1tgmM5Apr3cROOncDA98QWf
 lHaLzZYJoqiatleJBLJULYw1/oq0IhIJKM3yqmt7548wtt2SjMvQoDhcYX0Asn+vZYvb1EjELt0lS
 1RsurOhb8r0bGRn7VSSGdZi3K+3GLmpV85SnmkqY3hjbWI7FJx1xJN1WkSsT4v6DKLZU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdUEv-00011h-Dp for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 12:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1723466007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7bjWHOBJug9GKLxX1y4GcvC+tzINB11lDnF7fldSjCs=;
 b=WSwsNR3nEkZMksunfi7T+zTe0ubo2iYbFtAXin/ZS9nHn6puaFwh6q833azgaP8lcTL4Lj
 WISWLdGPYdmCNZ8is7SOPNqNuHQcJajarj4grQog88JgHI/so3Dzy2p6EW5YRHQnAecwc+
 OzREw2yOumJjN/kBfAWwGd9XhheO85c=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-141-ZGRFbmrnOZmtHQ2qby3PCQ-1; Mon, 12 Aug 2024 08:33:25 -0400
X-MC-Unique: ZGRFbmrnOZmtHQ2qby3PCQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5a7b5bd019cso3806496a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 12 Aug 2024 05:33:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723466005; x=1724070805;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7bjWHOBJug9GKLxX1y4GcvC+tzINB11lDnF7fldSjCs=;
 b=hM05v9Kz6eSRiRZJnlfCNjV3FwUXo5hmviZjJCiJvAn+705q9Ailj16ASBhHF0s4X7
 m+H6/IJkblTAg9CYI3wDWXevqLfMDsutWQ0tJFHE6tIzOzt9/y47GCTDlBdcMysfb8hs
 0FSTBLFlq+xZ/HrcKu3DMl4mIM7VlKkQkHQmosGekihHvUHuqjy2rPJwFw6fXDfIdR4i
 p4HOITnSfcgmq53AefX7vwnwyotUa/ArIdmPEdtGKBAcYdz6EtvTYSoQb4nyUkYvXgDH
 2yK53qvxEzTUY4CQPZrErHvDEiv8rUJH0FBQQ7vsnNZPOl2rLBd1IOSrYDrNQAGQiqu5
 YiGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6gZHAikRQRTBlQ238grNZJd6w60t3LzRPLEsB5G+wYnPKMtiB9d08YOkJApN/b59rJAI5kRNcKY0n3swNEph3xvBT851VcuxJQZoV5jXxzaPH+vc=
X-Gm-Message-State: AOJu0YyJHCkHZ+QKm7o1Novn9V2wqGgTAKtBKigPT4/y9iU/4emLZ8Kq
 fWRIQEhJZTQdu+3kUblSRW32gfHP1W0pgpExZQMAVdjE0JxXU9kxRsf/QXUA9aJfW+vbKbUerN6
 P/g4oJiomkSsue7dWEhlMMFqjoWH9xNR5/5Lx1Za+JWoBvXViZmolkLsSr46vmX8I/1GXRtWF
X-Received: by 2002:a50:8dc7:0:b0:595:71c7:39dd with SMTP id
 4fb4d7f45d1cf-5bd44c79eafmr68948a12.34.1723466004537; 
 Mon, 12 Aug 2024 05:33:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0kaEU81tGKxd+wuCFMSCCh/i9KV9sH3JP6NIbph1WALywiQJfqnm2uCmvavLD/x3AKWkgnA==
X-Received: by 2002:a50:8dc7:0:b0:595:71c7:39dd with SMTP id
 4fb4d7f45d1cf-5bd44c79eafmr68930a12.34.1723466003982; 
 Mon, 12 Aug 2024 05:33:23 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5bd187f4fe2sm2086869a12.9.2024.08.12.05.33.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Aug 2024 05:33:23 -0700 (PDT)
Message-ID: <187b6058-c41a-4767-af47-ba35451f2049@redhat.com>
Date: Mon, 12 Aug 2024 14:33:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthias Fetzer <kontakt@matthias-fetzer.de>, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240714165054.2261305-1-kontakt@matthias-fetzer.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240714165054.2261305-1-kontakt@matthias-fetzer.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthias, On 7/14/24 6:50 PM, Matthias Fetzer wrote: >
 Fan control on the E531 is done using the ACPI methods FANG and > FANW. The
 correct parameters and register values were found by > analyzing EC firmware
 as [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sdUEv-00011h-Dp
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
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

Hi Matthias,

On 7/14/24 6:50 PM, Matthias Fetzer wrote:
> Fan control on the E531 is done using the ACPI methods FANG and
> FANW. The correct parameters and register values were found by
> analyzing EC firmware as well as DSDT. This has been tested on
> my Thinkpad Edge E531 (6885CTO, BIOS HEET52WW 1.33).
> 
> Signed-off-by: Matthias Fetzer <kontakt@matthias-fetzer.de>

Thank you for your patch.

With Ilpo's remarks addressed this patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

(for v2 with remarks addressed).

Please submit a v2 with Ilpo's remarks addressed.

Regards,

Hans




> ---
>  drivers/platform/x86/thinkpad_acpi.c | 159 +++++++++++++++++++++++++++
>  1 file changed, 159 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 397b409064c9..a171a2b39ac9 100644
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
> + *	0xf504:
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
> @@ -8157,6 +8213,7 @@ static int fan2_get_speed(unsigned int *speed)
>  
>  static int fan_set_level(int level)
>  {
> +	int rc;
>  	if (!fan_control_allowed)
>  		return -EPERM;
>  
> @@ -8206,6 +8263,36 @@ static int fan_set_level(int level)
>  			tp_features.fan_ctrl_status_undef = 0;
>  		break;
>  
> +	case TPACPI_FAN_WR_ACPI_FANW:
> +		if ((!(level & TP_EC_FAN_AUTO) &&
> +		    ((level < 0) || (level > 7))) ||
> +		    (level & TP_EC_FAN_FULLSPEED))
> +			return -EINVAL;
> +		if (level & TP_EC_FAN_AUTO) {
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x05)) {
> +				rc = -EIO;
> +				break;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0x00)) {
> +				rc = -EIO;
> +				break;
> +			}
> +		} else {
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x45)) {
> +				rc = -EIO;
> +				break;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0xff)) {
> +				rc = -EIO;
> +				break;
> +			}
> +			if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8102, level * 100 / 7)) {
> +				rc = -EIO;
> +				break;
> +			}
> +		}
> +		break;
> +
>  	default:
>  		return -ENXIO;
>  	}
> @@ -8284,6 +8371,19 @@ static int fan_set_enable(void)
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
> @@ -8326,6 +8426,22 @@ static int fan_set_disable(void)
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
> @@ -8359,6 +8475,23 @@ static int fan_set_speed(int speed)
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
> @@ -8701,6 +8834,10 @@ static int __init fan_init(struct ibm_init_struct *iibm)
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
> @@ -8720,6 +8857,9 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  	if (gfan_handle) {
>  		/* 570, 600e/x, 770e, 770x */
>  		fan_status_access_mode = TPACPI_FAN_RD_ACPI_GFAN;
> +	} else if (fang_handle) {
> +		/* E531 */
> +		fan_status_access_mode = TPACPI_FAN_RD_ACPI_FANG;
>  	} else {
>  		/* all other ThinkPads: note that even old-style
>  		 * ThinkPad ECs supports the fan control register */
> @@ -8766,6 +8906,11 @@ static int __init fan_init(struct ibm_init_struct *iibm)
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
> @@ -8915,6 +9060,20 @@ static int fan_read(struct seq_file *m)
>  			       str_enabled_disabled(status), status);
>  		break;
>  
> +	case TPACPI_FAN_RD_ACPI_FANG:
> +		/* E531 */
> +		rc = fan_get_status_safe(&status);
> +		if (rc)
> +			return rc;
> +
> +		seq_printf(m, "status:\t\t%s\n", str_enabled_disabled(status));
> +
> +		rc = fan_get_speed(&speed);
> +		if (rc < 0)
> +			return rc;
> +		seq_printf(m, "speed:\t\t%d\n", speed);
> +		break;
> +
>  	case TPACPI_FAN_RD_TPEC_NS:
>  	case TPACPI_FAN_RD_TPEC:
>  		/* all except 570, 600e/x, 770e, 770x */



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
