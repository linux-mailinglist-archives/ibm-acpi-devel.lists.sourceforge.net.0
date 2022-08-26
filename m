Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 920905A2545
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 26 Aug 2022 12:02:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oRW9k-00040D-SA;
	Fri, 26 Aug 2022 10:01:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1oRW9b-0003z4-Af
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 26 Aug 2022 10:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NuQxKCRACYMuhvoslJjsX82dVs3K5Bc7MVUK4nimAtA=; b=UGn5FSWvTcG6vpEi78Rc7IKWbk
 C5cTg8392KllQZzDQRQP/i94r/T6DU05Y90cgWD8pazE6FOH+BLFnZwVivp+jgcTeglb++3EBSjp5
 EulbF2L0ZIclLYakMdVJ7nEYFiQxw6KqVmEAKuQwTj5g74gBXaEDZ4PnCa7S1kY7c6Cs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NuQxKCRACYMuhvoslJjsX82dVs3K5Bc7MVUK4nimAtA=; b=I9RelSiLN4SeJ1vn7uzLrfTeU3
 fsq2JwnTJHIOYN93ldLtyLOuStzRyq7w1o3j4V2mTUyzInXqbHiCl63rPP4blykXGb7NX8OkG5n0f
 PzFMNHHNW7/Sq1UC3JmQasVAUxMxvl0XzM3c/aR7WUHHX+/gb6NCshs9SN7aKvKukVLE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRW9a-00044y-GJ for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 26 Aug 2022 10:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661508082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NuQxKCRACYMuhvoslJjsX82dVs3K5Bc7MVUK4nimAtA=;
 b=PwHeXnIv4+z/dvM7yI90iHu0tc+sINTBhYO2C07ES0c1KpuRlw/4zoa9cohZnPOkKE3DWu
 VI4jAcoJQzPwfYilo8bxBwFzEYT+hcTLnKVUk44vFw/QiQ/XPYPHZEoYdQNEiAz/ZEiFB8
 YBunRG/2FYZMYJBSf2iNZdU3aFxPO/4=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-481-AVQ_TZfHPq25edQL3zwTLw-1; Fri, 26 Aug 2022 06:01:21 -0400
X-MC-Unique: AVQ_TZfHPq25edQL3zwTLw-1
Received: by mail-ed1-f69.google.com with SMTP id
 y20-20020a056402359400b00447a871c48fso851502edc.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 26 Aug 2022 03:01:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=NuQxKCRACYMuhvoslJjsX82dVs3K5Bc7MVUK4nimAtA=;
 b=hG0R/9fHnZdQORLtBETY/ruhb9eihhP1HQXeHf1JBoRBK43dfd6Va+z/iBM9Di1FE/
 HqHh/vaNyGyIiMeualf97aB+G1PMBRZBZrKJHFzTxWawqB4VMOHaDXHNXBvoB+1rx6yh
 c4ZB9f0ElMj9CAQazZQLnfTBGDzg01cGhp1klo0bWTesC0UHdkEUQtxLjm2mDLoNifWz
 w4EqVBmiyF3eZYYxGQD7gScRNI2b600HKIvb2CLLgOhu1w7ETFJrvkSNjQVfANIWtzue
 B5MABdHBw2fnnxGFUCDxOawpRteUilzLCdJuGGuN/jlN2Ri1DrIyMzaFl4uOARAlaOdv
 eD6g==
X-Gm-Message-State: ACgBeo0V8iV+UFo8AC+yb7Yf81C9aC0z6UXmO4HFfd8iraSQ5hcyejuo
 vpF9aMieMv3tf4okdvxuVcUmnbMUbqkBiOZOvz2DDU2/jz/ANUZFrHrVJmUpgIy3qIp5L/rZarP
 rRP0i81X6kbMs6STGcxnIEg/q8ed1iHXjqX8=
X-Received: by 2002:a17:907:d08:b0:72f:b107:c07a with SMTP id
 gn8-20020a1709070d0800b0072fb107c07amr5080409ejc.340.1661508080120; 
 Fri, 26 Aug 2022 03:01:20 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5rLpuvk4e9zX9oMu00zx556BESJ4F7cOoQCb3jzdcWsWsHCzorutO71yjsgkCLPN8rdpHPMQ==
X-Received: by 2002:a17:907:d08:b0:72f:b107:c07a with SMTP id
 gn8-20020a1709070d0800b0072fb107c07amr5080384ejc.340.1661508079855; 
 Fri, 26 Aug 2022 03:01:19 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 6-20020a170906310600b0073c10031dc9sm208866ejx.80.2022.08.26.03.01.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Aug 2022 03:01:19 -0700 (PDT)
Message-ID: <b0d54cbc-ea5d-4cad-5017-c4afd4462942@redhat.com>
Date: Fri, 26 Aug 2022 12:01:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-kernel@vger.kernel.org
References: <20220818210058.7229-1-wsa+renesas@sang-engineering.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220818210058.7229-1-wsa+renesas@sang-engineering.com>
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
 Content preview:  Hi, On 8/18/22 23:00, Wolfram Sang wrote: > Follow the advice
 of the below link and prefer 'strscpy' in this > subsystem. Conversion is
 1:1 because the return value is not used. > Generated by a coccinell [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oRW9a-00044y-GJ
Subject: Re: [ibm-acpi-devel] [PATCH] platform: move from strlcpy with
 unused retval to strscpy
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
Cc: Dell.Client.Kernel@dell.com, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Prasanth Ksr <prasanth.ksr@dell.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Divya Bharathi <divya.bharathi@dell.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 8/18/22 23:00, Wolfram Sang wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

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
>  drivers/platform/surface/surface3_power.c          | 2 +-
>  drivers/platform/x86/dell/dell-wmi-sysman/sysman.c | 2 +-
>  drivers/platform/x86/intel/chtwc_int33fe.c         | 6 +++---
>  drivers/platform/x86/thinkpad_acpi.c               | 4 ++--
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/platform/surface/surface3_power.c b/drivers/platform/surface/surface3_power.c
> index 444ec81ba02d..4c53d116d59b 100644
> --- a/drivers/platform/surface/surface3_power.c
> +++ b/drivers/platform/surface/surface3_power.c
> @@ -519,7 +519,7 @@ static int mshw0011_probe(struct i2c_client *client)
>  	i2c_set_clientdata(client, data);
>  
>  	memset(&board_info, 0, sizeof(board_info));
> -	strlcpy(board_info.type, "MSHW0011-bat0", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "MSHW0011-bat0", I2C_NAME_SIZE);
>  
>  	bat0 = i2c_acpi_new_device(dev, 1, &board_info);
>  	if (IS_ERR(bat0))
> diff --git a/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c b/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c
> index 636bdfa83284..0a6411a8a104 100644
> --- a/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c
> +++ b/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c
> @@ -270,7 +270,7 @@ void strlcpy_attr(char *dest, char *src)
>  	size_t len = strlen(src) + 1;
>  
>  	if (len > 1 && len <= MAX_BUFF)
> -		strlcpy(dest, src, len);
> +		strscpy(dest, src, len);
>  
>  	/*len can be zero because any property not-applicable to attribute can
>  	 * be empty so check only for too long buffers and log error
> diff --git a/drivers/platform/x86/intel/chtwc_int33fe.c b/drivers/platform/x86/intel/chtwc_int33fe.c
> index c52ac23e2331..1ea989df513c 100644
> --- a/drivers/platform/x86/intel/chtwc_int33fe.c
> +++ b/drivers/platform/x86/intel/chtwc_int33fe.c
> @@ -270,7 +270,7 @@ cht_int33fe_register_max17047(struct device *dev, struct cht_int33fe_data *data)
>  	}
>  
>  	memset(&board_info, 0, sizeof(board_info));
> -	strlcpy(board_info.type, "max17047", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "max17047", I2C_NAME_SIZE);
>  	board_info.dev_name = "max17047";
>  	board_info.fwnode = fwnode;
>  	data->battery_fg = i2c_acpi_new_device(dev, 1, &board_info);
> @@ -361,7 +361,7 @@ static int cht_int33fe_typec_probe(struct platform_device *pdev)
>  	}
>  
>  	memset(&board_info, 0, sizeof(board_info));
> -	strlcpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
>  	board_info.dev_name = "fusb302";
>  	board_info.fwnode = fwnode;
>  	board_info.irq = fusb302_irq;
> @@ -381,7 +381,7 @@ static int cht_int33fe_typec_probe(struct platform_device *pdev)
>  	memset(&board_info, 0, sizeof(board_info));
>  	board_info.dev_name = "pi3usb30532";
>  	board_info.fwnode = fwnode;
> -	strlcpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);
> +	strscpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);
>  
>  	data->pi3usb30532 = i2c_acpi_new_device(dev, 3, &board_info);
>  	if (IS_ERR(data->pi3usb30532)) {
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 22d4e8633e30..8dad0428a83c 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -7623,9 +7623,9 @@ static int __init volume_create_alsa_mixer(void)
>  	data = card->private_data;
>  	data->card = card;
>  
> -	strlcpy(card->driver, TPACPI_ALSA_DRVNAME,
> +	strscpy(card->driver, TPACPI_ALSA_DRVNAME,
>  		sizeof(card->driver));
> -	strlcpy(card->shortname, TPACPI_ALSA_SHRTNAME,
> +	strscpy(card->shortname, TPACPI_ALSA_SHRTNAME,
>  		sizeof(card->shortname));
>  	snprintf(card->mixername, sizeof(card->mixername), "ThinkPad EC %s",
>  		 (thinkpad_id.ec_version_str) ?



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
