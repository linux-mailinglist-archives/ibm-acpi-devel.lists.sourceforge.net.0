Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6957AFE25
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 27 Sep 2023 10:21:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qlPmf-0005mJ-3A;
	Wed, 27 Sep 2023 08:20:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qlPmX-0005m3-PO
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 27 Sep 2023 08:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nh0BWH1XX7JQsmjVNfOjalMhaCob29LiZjHUox/R18A=; b=HwNplOonp3rcCxJtBO05bB8yG8
 5e3xwAf4sxkivj2uVllL1cnhkdIMDtDj8TA6rKYxO0EYnbsrgmdy/htVCbcq8t7rPRY9G/YYK1fpv
 xc0JPOiJ4bDSZIYqtxYV5enKJmBVM883k5f4aRV05N96xBFEM37BTOOXUlNUlU4N7aq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nh0BWH1XX7JQsmjVNfOjalMhaCob29LiZjHUox/R18A=; b=IIKZoelqM37KBXmEqoxORHvjrD
 ELkXLP1Un4x5KE9UBn07dCTsE4ynFBSWdu/97l0BaCe3fDf4blMDux94LO7dc0WpenHcGlMFI9AdT
 lBujgn4bO3U+Z4lNt3ArqK5Q/33xBemj9ZQPMJosZXXDDMeqbp/dfElBLSZjbmi4RTaU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlPmU-0002oD-Pn for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 27 Sep 2023 08:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695802820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nh0BWH1XX7JQsmjVNfOjalMhaCob29LiZjHUox/R18A=;
 b=f8euQfTYF3BST2jSyly8G7JKzyJYQl3Xchn11yJxxefoCzv6LXSePBA0eDiP5d+o7Nk1av
 aqyxdseYY6XaoHidbVAzqZIeYU6hCYFCzxoEo5/AJYXABD1PYLO4ORjCaLIpNPrnA6Vo3X
 EsmHkV5++T2rlxaHCZ5Qfn6U5iQ3wT4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-543-UttJ1Y2IOLuqbE9QFuFs4A-1; Wed, 27 Sep 2023 04:20:19 -0400
X-MC-Unique: UttJ1Y2IOLuqbE9QFuFs4A-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-993c2d9e496so894698266b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 27 Sep 2023 01:20:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695802818; x=1696407618;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nh0BWH1XX7JQsmjVNfOjalMhaCob29LiZjHUox/R18A=;
 b=tKOgQxvj0Cv8m0qnM/tidFg5QAKMt9QHfspt60T3M5tyyr93QVpN5h/0WUitRIWPyB
 Vgk3ACl6jGUnCuKZaUJomPrzL/ySwaAoCPhAeCUXcs8vxm7y8PG6MTspCWbCggR1h9G1
 FsepVJ01Ujl9IXDpkuEjgIiA1zgdfgMuhXCQCgQD9UIcdT54Snw/qWw6LCNMBYlLY0ir
 h3BUGrNPWnCEaIkP9X0vn7ItZVU9skNn9c9R/sDRXdKe0lrl3ggWMNb7pJeHI40bjlqn
 DRkmZ1mTiYV7mPnUOQl9LC2elN+H64kqKLKPSfaZVMIGhwbNHyMjWZp98lF8rjpTHtQ0
 odHA==
X-Gm-Message-State: AOJu0YwiFAqt6UzJkQg2BGQzIxbwF0GFISSVyVlCJ0nhKTVdnfptP69G
 TaFcB/y7wns9GtWvruxP4B223dpvaRdvAa3EuZJS87kn6zh9EQu1ZM5clvlnAGHIrj/rQivTrH1
 r2NSMdDGuAGHHXgdE0ham7H3IIEoeaHKib/A=
X-Received: by 2002:a17:906:c146:b0:99c:f47a:2354 with SMTP id
 dp6-20020a170906c14600b0099cf47a2354mr1654129ejc.70.1695802818418; 
 Wed, 27 Sep 2023 01:20:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRaX85SW7v6jhyJbH1wJL8pktImvOz6Hwr6M7Pe/t0MYC/z282lBUQYLjuZtY3mowLCltWLQ==
X-Received: by 2002:a17:906:c146:b0:99c:f47a:2354 with SMTP id
 dp6-20020a170906c14600b0099cf47a2354mr1654105ejc.70.1695802818095; 
 Wed, 27 Sep 2023 01:20:18 -0700 (PDT)
Received: from [192.168.1.217] ([109.36.155.235])
 by smtp.gmail.com with ESMTPSA id
 jx14-20020a170906ca4e00b0099caf5bed64sm8916651ejb.57.2023.09.27.01.20.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Sep 2023 01:20:17 -0700 (PDT)
Message-ID: <28e32f47-76c6-c28c-5da8-37e2202c2594@redhat.com>
Date: Wed, 27 Sep 2023 10:20:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Fernando Eckhardt Valle <fevalle@ipt.br>, ilpo.jarvinen@linux.intel.com,
 mpearson-lenovo@squebb.ca, corbet@lwn.net, hmh@hmh.eng.br,
 markgross@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20230926202144.5906-1-fevalle@ipt.br>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230926202144.5906-1-fevalle@ipt.br>
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
 Content preview:  Hi, On 9/26/23 22:21, Fernando Eckhardt Valle wrote: > Newer
 Thinkpads have a feature called MAC Address Pass-through. > This patch
 provides
 a sysfs interface that userspace can use > to get this auxiliar [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Headers-End: 1qlPmU-0002oD-Pn
Subject: Re: [ibm-acpi-devel] [PATCH v6] platform/x86: thinkpad_acpi: sysfs
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

On 9/26/23 22:21, Fernando Eckhardt Valle wrote:
> Newer Thinkpads have a feature called MAC Address Pass-through.
> This patch provides a sysfs interface that userspace can use
> to get this auxiliary mac address.
> 
> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>
> ---
> Changes in v6:
> - New adjustment to the strcpy() offset.
> - Added is_visible attribute.
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

Thanks, this looks good to me now:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  .../admin-guide/laptops/thinkpad-acpi.rst     | 20 +++++
>  drivers/platform/x86/thinkpad_acpi.c          | 88 +++++++++++++++++++
>  2 files changed, 108 insertions(+)
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
> index d70c89d32..9c19624a7 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10785,6 +10785,89 @@ static struct ibm_struct dprc_driver_data = {
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
> +		strscpy(auxmac, obj->string.pointer + AUXMAC_START, sizeof(auxmac));
> +	else
> +		strscpy(auxmac, "disabled", sizeof(auxmac));
> +
> +free:
> +	kfree(obj);
> +	return 0;
> +
> +auxmacinvalid:
> +	strscpy(auxmac, "unavailable", sizeof(auxmac));
> +	goto free;
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
> +static umode_t auxmac_attr_is_visible(struct kobject *kobj,
> +				      struct attribute *attr, int n)
> +{
> +	return auxmac[0] == 0 ? 0 : attr->mode;
> +}
> +
> +static struct attribute *auxmac_attributes[] = {
> +	&dev_attr_auxmac.attr,
> +	NULL
> +};
> +
> +static const struct attribute_group auxmac_attr_group = {
> +	.is_visible = auxmac_attr_is_visible,
> +	.attrs = auxmac_attributes,
> +};
> +
>  /* --------------------------------------------------------------------- */
>  
>  static struct attribute *tpacpi_driver_attributes[] = {
> @@ -10843,6 +10926,7 @@ static const struct attribute_group *tpacpi_groups[] = {
>  	&proxsensor_attr_group,
>  	&kbdlang_attr_group,
>  	&dprc_attr_group,
> +	&auxmac_attr_group,
>  	NULL,
>  };
>  
> @@ -11414,6 +11498,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
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
