Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 373D67AEA11
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 26 Sep 2023 12:12:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ql52T-0007dZ-Ly;
	Tue, 26 Sep 2023 10:11:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ql52S-0007dT-6c
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 26 Sep 2023 10:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6HDo01TkaoeQ/nKb+m9TpBeIQ9htrGbC6iNDoVvDu3A=; b=OlvG3tkvkKgnwAbLnPrXHlls0S
 JkWiqLspJgBxpgZbZ8W8PsLqAhaGDwrDijR+K9ZAyYflfgpt0xaeXlqMy6N/gKIRju151AtcIUIJ0
 AwgNAcMA7alYOjtvjbmHpFr2yCRkMBHtOximXghMa2sFJ1KU7J4I8vtN80mrc+jM7SLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6HDo01TkaoeQ/nKb+m9TpBeIQ9htrGbC6iNDoVvDu3A=; b=SpzXiYw51CSgo1x9/gy53BbKzc
 WagHXRvJEyUfWnyqhfvolCsK5H3/JJamtKc6l9RYuX+MxLeymGa6MdVndYfW/56xypt0GEv06DQLn
 LqNAaDrSEpXxB6Iw9P6l0KyoA/na6xRqAF3eU3j8vUK0/b8xignHia4Iun2dDxIgQUQo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ql52P-0078Xg-U8 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 26 Sep 2023 10:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695723083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6HDo01TkaoeQ/nKb+m9TpBeIQ9htrGbC6iNDoVvDu3A=;
 b=UWzXU//EBQqhot/82b+OISJneUSj4pssI2+ZL6UjHcsVAFEyICaM7yXTLNGlnjoRj3TnIZ
 mjIOJmy606PT2ObYfC0kh0lVfAr6rwpNceu8llikxb7nJIRy1+5DKSoNGsEIJT9n2d4rbJ
 wgXkFrdOHk9qLxuVTMpIyTAIVgzcm+o=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-147-d-OlUXGtOJi-YFhvq8ziOA-1; Tue, 26 Sep 2023 06:11:22 -0400
X-MC-Unique: d-OlUXGtOJi-YFhvq8ziOA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-993c2d9e496so694586366b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 26 Sep 2023 03:11:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695723080; x=1696327880;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6HDo01TkaoeQ/nKb+m9TpBeIQ9htrGbC6iNDoVvDu3A=;
 b=j/aT3W9ycLqc5UBbYQvD6BZXQFhMFGcKI2KJGyLAzsNQBEQxFsXTwLnIepbZmffrI9
 OegSuHoBSAgXrQSySBxRN7juQC54X5vETezaTCu/PYHMoKDylAuTZQPokAGSGCqJPMOE
 GuCAISF6RrexHUr6/mdocU0mq2ObE4zNT1QS7jde8yjE1WuqPZxB+S5leF5Oup3U9tJ/
 fnOgOcfXWjH75J/j/dZk7fNiO83Vx6yl42oSRxmg3Z92sEnPtHmwZU4o/LjjGwC9VqeM
 hLpdehbZeCnNT5aAzsS5HNnuLBYKqnT8l9Ieye0kn6NewHahEfayzxNhMW6u37OFRpog
 YD3Q==
X-Gm-Message-State: AOJu0YygqiYjxtyB9/9xfWF4NgQPb4PwVCLUxg9QmdqI2vVrX/L1RpSC
 hgfuOFDAOqKKWLAuWL/mCOLZf+Xj0G3Dr2MtH6N71DKAWF9gN4aHel9hurkG1QXJKE0qzisPMbj
 PuMKt6yeX0wpr3EcsNjCrBnfYaaPd0vTPBOI=
X-Received: by 2002:a17:907:2709:b0:9a1:f21e:cdff with SMTP id
 w9-20020a170907270900b009a1f21ecdffmr8325792ejk.23.1695723080532; 
 Tue, 26 Sep 2023 03:11:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEbMgfypCifz4bZIXRkDJ/urgBdwhoZJZfcgXhgqJFOSEABIqgQsOcDN2+Bcmij0Vs1hAqug==
X-Received: by 2002:a17:907:2709:b0:9a1:f21e:cdff with SMTP id
 w9-20020a170907270900b009a1f21ecdffmr8325775ejk.23.1695723080178; 
 Tue, 26 Sep 2023 03:11:20 -0700 (PDT)
Received: from [192.168.1.217] ([109.37.154.108])
 by smtp.gmail.com with ESMTPSA id
 kt22-20020a170906aad600b0099cf9bf4c98sm7520711ejb.8.2023.09.26.03.11.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Sep 2023 03:11:19 -0700 (PDT)
Message-ID: <5755a77f-dc99-e297-b926-5651977b6525@redhat.com>
Date: Tue, 26 Sep 2023 12:11:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Fernando Eckhardt Valle <fevalle@ipt.br>, mpearson-lenovo@squebb.ca,
 corbet@lwn.net, hmh@hmh.eng.br, markgross@kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
References: <20230921143622.72387-1-fevalle@ipt.br>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230921143622.72387-1-fevalle@ipt.br>
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
 Content preview:  Hi, On 9/21/23 16:36, Fernando Eckhardt Valle wrote: > Newer
 Thinkpads have a feature called MAC Address Pass-through. > This patch
 provides
 a sysfs interface that userspace can use > to get this auxiliar [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1ql52P-0078Xg-U8
Subject: Re: [ibm-acpi-devel] [PATCH v4] platform/x86: thinkpad_acpi: sysfs
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

On 9/21/23 16:36, Fernando Eckhardt Valle wrote:
> Newer Thinkpads have a feature called MAC Address Pass-through.
> This patch provides a sysfs interface that userspace can use
> to get this auxiliary mac address.
> 
> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>
> ---
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
>  drivers/platform/x86/thinkpad_acpi.c          | 79 +++++++++++++++++++
>  2 files changed, 99 insertions(+)
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
> index d70c89d32..f430cc9ed 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10785,6 +10785,80 @@ static struct ibm_struct dprc_driver_data = {
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
> +
> +	obj = buffer.pointer;
> +
> +	if (obj->type != ACPI_TYPE_STRING || obj->string.length != AUXMAC_STRLEN) {
> +		pr_info("Invalid buffer for MAC address pass-through.\n");
> +		strscpy(auxmac, "unavailable", AUXMAC_LEN);

Please use sizeof(auxmac) as last parameter to strscpy() here.

> +		goto auxmacinvalid;
> +	}
> +
> +	if (obj->string.pointer[AUXMAC_BEGIN_MARKER] != '#' ||
> +	    obj->string.pointer[AUXMAC_END_MARKER] != '#') {
> +		pr_info("Invalid header for MAC address pass-through.\n");
> +		strscpy(auxmac, "unavailable", AUXMAC_LEN);

Please use sizeof(auxmac) as last parameter to strscpy() here.


> +		goto auxmacinvalid;
> +	}
> +
> +	if (strncmp(obj->string.pointer + AUXMAC_START, "XXXXXXXXXXXX", AUXMAC_LEN) != 0)
> +		strscpy(auxmac, obj->string.pointer + AUXMAC_START, AUXMAC_LEN + 1);

Please use sizeof(auxmac) as last parameter to strscpy() here.

> +	else
> +		strscpy(auxmac, "disabled", AUXMAC_START);

Please use sizeof(auxmac) as last parameter to strscpy() here.

(using AUXMAC_START here really makes no sense at all)

Regards,

Hans



> +
> +auxmacinvalid:
> +	kfree(obj);
> +	return 0;
> +}
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
> @@ -10843,6 +10917,7 @@ static const struct attribute_group *tpacpi_groups[] = {
>  	&proxsensor_attr_group,
>  	&kbdlang_attr_group,
>  	&dprc_attr_group,
> +	&auxmac_attr_group,
>  	NULL,
>  };
>  
> @@ -11414,6 +11489,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
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
