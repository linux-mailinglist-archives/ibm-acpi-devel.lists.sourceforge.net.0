Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 602AD7AEA48
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 26 Sep 2023 12:24:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ql5E4-00030N-Ve;
	Tue, 26 Sep 2023 10:23:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ql5E2-00030A-L6
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 26 Sep 2023 10:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Ek1UrdMEHLq9FGXHe8r4i40LEX2oqVQ5arQmDYvfZY=; b=GfzDHonefxI9AJoD0M0wsVse9I
 jcG43pz2auLVl3P6PPR8ZkJ0XfbCYeIM/IUU0zogQfd4+6Olgub1jE/nYpyxFa9nm3w/WDSoP8ubP
 K/W9vRK61iqn5mTAzWAKDUm83cHR9DAE+0IrWXhkp2zruutBZ524d14aCb3IJ8ZKz3Ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Ek1UrdMEHLq9FGXHe8r4i40LEX2oqVQ5arQmDYvfZY=; b=TbLFpZsr0zgxg0hz8rBBg+fHA+
 6OpN8mykxMbNDS7rM15oI5FnBaI7VpEsZNF3pjNTeAVLI6IOBr+uT0hj6z6TyqaeDUgJte+nI1OH+
 BRpJpQpf7yeIfB4M5TJJf/TfR6SX8y4Q19qFY2WssV9nhBVXKFVtb83fwCe8q67nTGeA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ql5E0-0003GQ-RC for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 26 Sep 2023 10:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695723803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1Ek1UrdMEHLq9FGXHe8r4i40LEX2oqVQ5arQmDYvfZY=;
 b=TBYgAPfa4/EYN9gAdZHXpTV5qFtt252Z8n4S86IqszsDH64zvmUPlwRgqKBb/rpul0IVkX
 GpucOIFhLFVagca4KPQS/BvYV3nu2kLxgih+T4DT4n4O6THoEvwnnEIxVJeLDmj2cL1fEW
 nDPdZ7Z8cRMeADLjMj+bTExkAhTwOfc=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-B2u4-ZxfOI-Y-uxx92OeIA-1; Tue, 26 Sep 2023 06:23:19 -0400
X-MC-Unique: B2u4-ZxfOI-Y-uxx92OeIA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-9a9f282713fso680312966b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 26 Sep 2023 03:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695723798; x=1696328598;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1Ek1UrdMEHLq9FGXHe8r4i40LEX2oqVQ5arQmDYvfZY=;
 b=Vy3iI5ormr8o8b+J0xEJYozCnva6WzHTS+/BNem5OvNZ+Wa6PsEJ3rE3doi+WXaSQ2
 adma62GoW1LKdeGYRXSV3wEB9ouQyOaRxSD6a1HegY3TWQZpCbocXhuWM5N82pSX/Q53
 p06SZfeF2gCHNl9a9LZUGXO1u7G1dYaky0OGQUsDWHrFikIzrWJa86Fd+b6nhhN2XAhX
 93509ywIZM9p8QA+M/N/zXY381AK1a5t5Q/WPAWWu+m0YgyO4FODfKvW6lMPt0S4kV+A
 tBzxQm4mJ8I4XXBWriMeFLwPbje4LXQ216umCEZDbEY7YN6MoKUtAdJodxEISHU/u4dA
 zTjw==
X-Gm-Message-State: AOJu0YylJtWzR174eOeXZDd1kWFbZmgbvUd/FR5nLFZjPGa6utyBaXLV
 uwQJceCRIT7JcANoXk88x73+dUmSMmkVWJZQryesVee/exqMIliV8J3CqEROfnZy/xes89+zj2n
 592xXe3MeTiK8CcjgRnLI5mh9QJaI1R2iDbM=
X-Received: by 2002:a17:906:cc5c:b0:9aa:e08:9fb7 with SMTP id
 mm28-20020a170906cc5c00b009aa0e089fb7mr7681064ejb.76.1695723798584; 
 Tue, 26 Sep 2023 03:23:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEACRNW5o33/C8Rkd8qlQfKI/z+daxeWJvvC/dnzrR9NDEqxWdDVb07c1V5wvprP9U+ywKq5w==
X-Received: by 2002:a17:906:cc5c:b0:9aa:e08:9fb7 with SMTP id
 mm28-20020a170906cc5c00b009aa0e089fb7mr7681055ejb.76.1695723798244; 
 Tue, 26 Sep 2023 03:23:18 -0700 (PDT)
Received: from [192.168.1.217] ([109.37.154.108])
 by smtp.gmail.com with ESMTPSA id
 kv11-20020a17090778cb00b009ad8ba6976bsm3643715ejc.9.2023.09.26.03.23.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Sep 2023 03:23:17 -0700 (PDT)
Message-ID: <0efd719a-802d-1401-7cee-d3918b47441d@redhat.com>
Date: Tue, 26 Sep 2023 12:23:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Fernando Eckhardt Valle <fevalle@ipt.br>, ilpo.jarvinen@linux.intel.com,
 mpearson-lenovo@squebb.ca, corbet@lwn.net, hmh@hmh.eng.br,
 markgross@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20230925184133.6735-1-fevalle@ipt.br>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230925184133.6735-1-fevalle@ipt.br>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, It looks like I just reviewed an old version, reviewing
 this version now ... On 9/25/23 20:41, Fernando Eckhardt Valle wrote: > Newer
 Thinkpads have a feature called MAC Address Pass-through. > This patch
 provides
 a sysfs interface that userspace can use > to get this auxiliar [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ql5E0-0003GQ-RC
Subject: Re: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad_acpi: sysfs
 interface to auxmac
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

It looks like I just reviewed an old version, reviewing this version now ...

On 9/25/23 20:41, Fernando Eckhardt Valle wrote:
> Newer Thinkpads have a feature called MAC Address Pass-through.
> This patch provides a sysfs interface that userspace can use
> to get this auxiliary mac address.
> 
> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>
> ---
> Changes in v5:
> - Repeated code deleted.
> - Adjusted offset of a strscpy().
> Changes in v4:
> - strscpy() in all string copies.
> Changes in v3:
> - Added null terminator to auxmac string when copying auxiliary
> mac address value.
> Changes in v2:
> - Added documentation.
> - All handling of the auxmac value is done in the _init function.
> ---
>  .../admin-guide/laptops/thinkpad-acpi.rst     | 20 +++++
>  drivers/platform/x86/thinkpad_acpi.c          | 81 +++++++++++++++++++
>  2 files changed, 101 insertions(+)
> 
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index e27a1c3f6..98d304010 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -53,6 +53,7 @@ detailed description):
>  	- Lap mode sensor
>  	- Setting keyboard language
>  	- WWAN Antenna type
> +	- Auxmac
>  
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1511,6 +1512,25 @@ Currently 2 antenna types are supported as mentioned below:
>  The property is read-only. If the platform doesn't have support the sysfs
>  class is not created.
>  
> +Auxmac
> +------
> +
> +sysfs: auxmac
> +
> +Some newer Thinkpads have a feature called MAC Address Pass-through. This
> +feature is implemented by the system firmware to provide a system unique MAC,
> +that can override a dock or USB ethernet dongle MAC, when connected to a
> +network. This property enables user-space to easily determine the MAC address
> +if the feature is enabled.
> +
> +The values of this auxiliary MAC are:
> +
> +        cat /sys/devices/platform/thinkpad_acpi/auxmac
> +
> +If the feature is disabled, the value will be 'disabled'.
> +
> +This property is read-only.
> +
>  Adaptive keyboard
>  -----------------
>  
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index d70c89d32..2324ebb46 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10785,6 +10785,82 @@ static struct ibm_struct dprc_driver_data = {
>  	.name = "dprc",
>  };
>  
> +/*
> + * Auxmac
> + *
> + * This auxiliary mac address is enabled in the bios through the
> + * MAC Address Pass-through feature. In most cases, there are three
> + * possibilities: Internal Mac, Second Mac, and disabled.
> + *
> + */
> +
> +#define AUXMAC_LEN 12
> +#define AUXMAC_START 9
> +#define AUXMAC_STRLEN 22
> +#define AUXMAC_BEGIN_MARKER 8
> +#define AUXMAC_END_MARKER 21
> +
> +static char auxmac[AUXMAC_LEN + 1];
> +
> +static int auxmac_init(struct ibm_init_struct *iibm)
> +{
> +	acpi_status status;
> +	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
> +	union acpi_object *obj;
> +
> +	status = acpi_evaluate_object(NULL, "\\MACA", NULL, &buffer);
> +
> +	if (ACPI_FAILURE(status))
> +		return -ENODEV;

In this code path you don't initialize the "auxmac" buffer at all,
but your auxmac_attr_group does not have an is_visible callback,
so the auxmax sysfs attr will still show up.

Please add an is_visible callback and retuern 0 (not visible)
when auxmac[0] == 0; See existing is_visible code for some
examples.

> +
> +	obj = buffer.pointer;
> +
> +	if (obj->type != ACPI_TYPE_STRING || obj->string.length != AUXMAC_STRLEN) {
> +		pr_info("Invalid buffer for MAC address pass-through.\n");
> +		goto auxmacinvalid;
> +	}
> +
> +	if (obj->string.pointer[AUXMAC_BEGIN_MARKER] != '#' ||
> +	    obj->string.pointer[AUXMAC_END_MARKER] != '#') {
> +		pr_info("Invalid header for MAC address pass-through.\n");
> +		goto auxmacinvalid;
> +	}
> +
> +	if (strncmp(obj->string.pointer + AUXMAC_START, "XXXXXXXXXXXX", AUXMAC_LEN) != 0)
> +		strscpy(auxmac, obj->string.pointer + AUXMAC_START, AUXMAC_LEN + 1);

Please use sizeof(auxmac) as last parameter to strscpy() here.

> +	else
> +		strscpy(auxmac, "disabled", AUXMAC_LEN);

Please use sizeof(auxmac) as last parameter to strscpy() here.

Also note how you pass 2 different dest-sizes for the same dest buffer before,
which looks weird ...


> +
> +free:
> +	kfree(obj);
> +	return 0;
> +
> +auxmacinvalid:
> +	strscpy(auxmac, "unavailable", AUXMAC_LEN);
> +	goto free;
> +}

I'm not liking the goto dance here, I would prefer:

	kfree(obj);
	return 0;

auxmacinvalid:
	strscpy(auxmac, "unavailable", AUXMAC_LEN);
	kfree(obj);
	return 0;

It is quite normal for an error-exit path to repeat a kfree().

Note this is just a preference you keen keep this as is
if you want, but to me the goto free which jumps up looks
pretty weird.

Regards,

Hans



> +
> +static struct ibm_struct auxmac_data = {
> +	.name = "auxmac",
> +};
> +
> +static ssize_t auxmac_show(struct device *dev,
> +			   struct device_attribute *attr,
> +			   char *buf)
> +{
> +	return sysfs_emit(buf, "%s\n", auxmac);
> +}
> +static DEVICE_ATTR_RO(auxmac);
> +
> +static struct attribute *auxmac_attributes[] = {
> +	&dev_attr_auxmac.attr,
> +	NULL
> +};
> +
> +static const struct attribute_group auxmac_attr_group = {
> +	.attrs = auxmac_attributes,
> +};
> +
>  /* --------------------------------------------------------------------- */
>  
>  static struct attribute *tpacpi_driver_attributes[] = {
> @@ -10843,6 +10919,7 @@ static const struct attribute_group *tpacpi_groups[] = {
>  	&proxsensor_attr_group,
>  	&kbdlang_attr_group,
>  	&dprc_attr_group,
> +	&auxmac_attr_group,
>  	NULL,
>  };
>  
> @@ -11414,6 +11491,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>  		.init = tpacpi_dprc_init,
>  		.data = &dprc_driver_data,
>  	},
> +	{
> +		.init = auxmac_init,
> +		.data = &auxmac_data,
> +	},
>  };
>  
>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
