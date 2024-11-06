Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 607AE9BE6A2
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Nov 2024 13:03:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t8ekK-0007Ug-5W;
	Wed, 06 Nov 2024 12:02:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t8ekI-0007UU-NG
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Nov 2024 12:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wHFUrZJG3IhctJbo9qudNI74wu1wMhSAFpJ8ifZ89rY=; b=IXKNy3/X0W6YfWmLGoCzml0ggg
 GVI6+mbyeS9zgQ0aFeovNcMFDekgP9CR0UJRFI4X65va6Pb1ORSgWJEzUw7AE0yn4RI9IeGZyrKp+
 CTpkcAyQgarlws7e8BgQGPRxftj+9WN/V+RqkI8iCwoNKm+At2QyR0xcsPI2YRKsC3Jo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wHFUrZJG3IhctJbo9qudNI74wu1wMhSAFpJ8ifZ89rY=; b=B9/ek7RzA026FhCwSczf3YNLfy
 qOUbV9cLR6PS3iXcpAB1Fmk8xMz89x1uQxTs8OkzVY+sDDH7JmnzafGhpT4V6A2ESzcVdS7e+Gw0Y
 McmLKabYsuo3ndBdt1C96hvWBbkeFj4j8OEECfO1AB5fkCckvBr2Ju8do52SkyojD4mA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t8ekE-00038Q-Ng for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Nov 2024 12:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1730894550;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wHFUrZJG3IhctJbo9qudNI74wu1wMhSAFpJ8ifZ89rY=;
 b=ZelFw1s2x/GVx9COVsKOUILg4zK2n/rD5QyF2MdVfqtsJxQ9z8ij2Rtv/8Jc2D0OKK5eRJ
 73LufhfhxtDVF/l1lNbQCMv3ZELIn33AcMZhWHfSQ11Hf6SKPT6Z+JNib0XVlG9GUwoLiC
 oZ248s9Tua+oYnyv5QHK3+zrMT7bixY=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-609-msULdq-mMl2btgnCz0gbvA-1; Wed, 06 Nov 2024 07:02:29 -0500
X-MC-Unique: msULdq-mMl2btgnCz0gbvA-1
X-Mimecast-MFC-AGG-ID: msULdq-mMl2btgnCz0gbvA
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-5c934295846so4630466a12.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 06 Nov 2024 04:02:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730894548; x=1731499348;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wHFUrZJG3IhctJbo9qudNI74wu1wMhSAFpJ8ifZ89rY=;
 b=OEOa6hVmR/deoczPJrXZRMEUY+ig/h3D3Fm6euRxs3AkKjaI4qyYlqtjlOnw/gKKKN
 ODSWGC/VOb22nJinJjISLcLKc0XWzw0ptsJmcKrn4gixoHQq2HRpuNzRU+4HNwoDhL1i
 v3TdU6pOAFr4Vk/F/lwYeIzPlchsJZkdm0eAU2C9d9vmZ2tgVEZpGBWWxxYSP9l00GnJ
 FMOkHhIpMICTMv1fZQe2oV5IGYynTNTBFG7QkMfB2xqWe5HNRcl0hf+vrbDXr+gaiDZF
 rD11Y3qz1OXhP8nreXQONO4KdPAPeTG5I8YjuL5I0YfsSCpJr2dO3sm+7fiH8n6sNCnA
 WlcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXXdSF/Opj4uR66KGS4O1+xQjcBNJ2aabb6Ldy7bDWjvSjI9h9SLcrNb0yYS7ahCZXYw4Uy8lxRQNbji6xr9w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyCF8odMYltBDUCvr9mnNMVS6x5O4zXw58xk40fhp3FUc1B5FsL
 vRMAHGA2u4P1+iHMGwb6wlZxT5pbkArdEWcZKkjI4KhgrKLp1ad1UmYEGCWXG+1e1PRXraqW4i1
 3Mc2uZpPDUFAXJP4lAKLSbhkOykwzTCQ08Rv3PNuqpR7ZxHO0LSmJKAhvZ/7XRoEH2CYJEYIhHk
 MChH4H
X-Received: by 2002:a17:907:7e90:b0:a9d:e1d6:42a1 with SMTP id
 a640c23a62f3a-a9e655aa36amr1859338466b.30.1730894547928; 
 Wed, 06 Nov 2024 04:02:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFNJE0pGbd+J391fMlx8hWRHnGKZWnQKHUov4H3doeDcVwFWy91F0V80/t9gtBCJAkPyjoYjg==
X-Received: by 2002:a17:907:7e90:b0:a9d:e1d6:42a1 with SMTP id
 a640c23a62f3a-a9e655aa36amr1859335466b.30.1730894547546; 
 Wed, 06 Nov 2024 04:02:27 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9eb16a1440sm269817566b.31.2024.11.06.04.02.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2024 04:02:27 -0800 (PST)
Message-ID: <f3a50d1a-aa0c-4cf5-9138-a1da4ebdc671@redhat.com>
Date: Wed, 6 Nov 2024 13:02:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vishnu Sankar <vishnuocv@gmail.com>, ilpo.jarvinen@linux.intel.com,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241105235505.8493-1-vishnuocv@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241105235505.8493-1-vishnuocv@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uEzYevQzvk-12HDKJ359W2Oc2vGCOAgMMXvq_gkWJ6Q_1730894548
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 6-Nov-24 12:55 AM,
 Vishnu Sankar wrote: > Fix for Thinkpad's
 with ECFW showing incorrect fan speed. > Some models use decimal instead
 of hexadecimal for the fan speed stored > in the EC registers. [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t8ekE-00038Q-Ng
Subject: Re: [ibm-acpi-devel] [PATCH] Thinkpad_acpi: Fix for ThinkPad's with
 ECFW showing incorrect fan speed
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
Cc: Vishnu Sankar <vsankar@lenovo.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6-Nov-24 12:55 AM, Vishnu Sankar wrote:
> Fix for Thinkpad's with ECFW showing incorrect fan speed.
> Some models use decimal instead of hexadecimal for the fan speed stored
> in the EC registers.
> for eg: the rpm register will have 0x4200 instead of 0x1068.
> Here the actual RPM is "4200" in decimal.
> 
> A quirk added to handle this.

Thank you for your patch/series, I've applied this patch
(series) to my review-hans branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
> Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>

Note I have dropped this second duplicate Signed-off-by,
I have kept the first one since that matches the From: 
from this email / the git commit author field.

I will include this patch in my next fixes pull-req to Linus
for the current kernel development cycle.

Regards,

Hans





> Suggested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 28 +++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 4c1b0553f872..6371a9f765c1 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -7936,6 +7936,7 @@ static u8 fan_control_resume_level;
>  static int fan_watchdog_maxinterval;
>  
>  static bool fan_with_ns_addr;
> +static bool ecfw_with_fan_dec_rpm;
>  
>  static struct mutex fan_mutex;
>  
> @@ -8682,7 +8683,11 @@ static ssize_t fan_fan1_input_show(struct device *dev,
>  	if (res < 0)
>  		return res;
>  
> -	return sysfs_emit(buf, "%u\n", speed);
> +	/* Check for fan speeds displayed in hexadecimal */
> +	if (!ecfw_with_fan_dec_rpm)
> +		return sysfs_emit(buf, "%u\n", speed);
> +	else
> +		return sysfs_emit(buf, "%x\n", speed);
>  }
>  
>  static DEVICE_ATTR(fan1_input, S_IRUGO, fan_fan1_input_show, NULL);
> @@ -8699,7 +8704,11 @@ static ssize_t fan_fan2_input_show(struct device *dev,
>  	if (res < 0)
>  		return res;
>  
> -	return sysfs_emit(buf, "%u\n", speed);
> +	/* Check for fan speeds displayed in hexadecimal */
> +	if (!ecfw_with_fan_dec_rpm)
> +		return sysfs_emit(buf, "%u\n", speed);
> +	else
> +		return sysfs_emit(buf, "%x\n", speed);
>  }
>  
>  static DEVICE_ATTR(fan2_input, S_IRUGO, fan_fan2_input_show, NULL);
> @@ -8775,6 +8784,7 @@ static const struct attribute_group fan_driver_attr_group = {
>  #define TPACPI_FAN_2CTL		0x0004		/* selects fan2 control */
>  #define TPACPI_FAN_NOFAN	0x0008		/* no fan available */
>  #define TPACPI_FAN_NS		0x0010		/* For EC with non-Standard register addresses */
> +#define TPACPI_FAN_DECRPM	0x0020		/* For ECFW's with RPM in register as decimal */
>  
>  static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_QEC_IBM('1', 'Y', TPACPI_FAN_Q1),
> @@ -8803,6 +8813,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('R', '1', 'D', TPACPI_FAN_NS),	/* 11e Gen5 GL-R */
>  	TPACPI_Q_LNV3('R', '0', 'V', TPACPI_FAN_NS),	/* 11e Gen5 KL-Y */
>  	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) */
> +	TPACPI_Q_LNV3('R', '0', 'Q', TPACPI_FAN_DECRPM),/* L480 */
>  };
>  
>  static int __init fan_init(struct ibm_init_struct *iibm)
> @@ -8847,6 +8858,13 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  		tp_features.fan_ctrl_status_undef = 1;
>  	}
>  
> +	/* Check for the EC/BIOS with RPM reported in decimal*/
> +	if (quirks & TPACPI_FAN_DECRPM) {
> +		pr_info("ECFW with fan RPM as decimal in EC register\n");
> +		ecfw_with_fan_dec_rpm = 1;
> +		tp_features.fan_ctrl_status_undef = 1;
> +	}
> +
>  	if (gfan_handle) {
>  		/* 570, 600e/x, 770e, 770x */
>  		fan_status_access_mode = TPACPI_FAN_RD_ACPI_GFAN;
> @@ -9067,7 +9085,11 @@ static int fan_read(struct seq_file *m)
>  		if (rc < 0)
>  			return rc;
>  
> -		seq_printf(m, "speed:\t\t%d\n", speed);
> +		/* Check for fan speeds displayed in hexadecimal */
> +		if (!ecfw_with_fan_dec_rpm)
> +			seq_printf(m, "speed:\t\t%d\n", speed);
> +		else
> +			seq_printf(m, "speed:\t\t%x\n", speed);
>  
>  		if (fan_status_access_mode == TPACPI_FAN_RD_TPEC_NS) {
>  			/*



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
