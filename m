Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C42079EDC9
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 13 Sep 2023 17:58:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qgSFp-0005IM-Nr;
	Wed, 13 Sep 2023 15:58:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qgSFo-0005IG-Ge
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 13 Sep 2023 15:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8oFlWNsBoPiP27e6QLLTn7WyeRku9K4oycwIoawQoLA=; b=HT74hLkz9B85tLIDrK5Asthe33
 jliU9osVedP00XEj9diXuNcbdTX7HqFBEqlVtIQxk1g76EwpVqWn3sCbX59brXny1g0M1ZU0oKn/6
 jdFFkLK0R/xwMcgvFd8gEDqJCIO2GSb8pxSQFnWnVQfvuRekRqyi4GIew1ycYfp465DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8oFlWNsBoPiP27e6QLLTn7WyeRku9K4oycwIoawQoLA=; b=ZQwaH+UQ1O35UzUUsER+QhRvvz
 FKj+PI6uJY//pHDcmRSmLouu4ec/vuBu4jwLRQWEFdlkokWKq2arnQ3KprG8YO9sqNP0vTdT8WY2q
 iGiK4AhOK9z/C8R8B+CXmHGvO4Ptas0Fow+eOjJSYSP+G468Kz8h3700RSs5oXJBnuvI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qgSFn-003uuJ-K7 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 13 Sep 2023 15:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694620685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8oFlWNsBoPiP27e6QLLTn7WyeRku9K4oycwIoawQoLA=;
 b=gZ1Qjuo2rcmLWcbNoUVTVfrYy+1YmwNyl6A2+VnGJeHeUVPUzxpaaVFrA5shGh4pdh3Jh7
 9yFbKkvGmrUg9PYkuVGF0pK8vDCzftvf89aCPSNC703yzdFSWB+DfLfZBuMC2qiH4X6dTd
 CVaCgxpchY2PZaoNzlU3oPi4ElyPBmw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-SbSTjZinPWumFSNL11L6fA-1; Wed, 13 Sep 2023 11:58:04 -0400
X-MC-Unique: SbSTjZinPWumFSNL11L6fA-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-52c03bb5327so4669995a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 13 Sep 2023 08:58:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694620683; x=1695225483;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8oFlWNsBoPiP27e6QLLTn7WyeRku9K4oycwIoawQoLA=;
 b=N9/s58ygP+FiDtP3JewBzEtCsiuNEy+HGmZBpEE/+/Vkn1dQ1q63yYS6wj46SqDjkk
 cEUJJaiJ7XUhVn6ypeXRqkri5cjyPGOqVN6aOqwitNPzUEnnLoIBofbNCs8ghzALQ8dC
 q4+47V8JIakDiPGhdXZX9BlViujdpD2WgrgE4nQ3bgzIWZqj7A25y+M//OuQQkyKKkMu
 Atfzb2NbHWC/Ed1kx6zKOa1JqvpcwgVD8cCNmewVXeqPh3abXqY+8jWwZmOJ0mzYfaZI
 oh0wKzoFQLC0Fqq+0behAD36dOyQnKbsrUvU0Mz+D8YlfhUiCtg3HcUW4ZsIEPBCZgWF
 iRPA==
X-Gm-Message-State: AOJu0YzsvSUa4cjDfAkNKPnGsvgiGSwCIQhYemsQCC0KmCXMKIcvy/t+
 VM8hX6Z6XuDhC68dpl7QkOHQOrQMJdOoBw2TgB09NoRswfTun0D/2abxCrktg9SURWUGC2ypsxr
 CabcsF5crxbrYfXQiLacUK6aCDOfmPpQAE24=
X-Received: by 2002:a05:6402:1484:b0:52f:b00a:99be with SMTP id
 e4-20020a056402148400b0052fb00a99bemr2638852edv.33.1694620683027; 
 Wed, 13 Sep 2023 08:58:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWdV0KLFyUcrOIrlW9A4stCQfGP5LxWC94fX/K6+RReONlj26k4SqNBtFWTgx5SelVrWKEsg==
X-Received: by 2002:a05:6402:1484:b0:52f:b00a:99be with SMTP id
 e4-20020a056402148400b0052fb00a99bemr2638832edv.33.1694620682667; 
 Wed, 13 Sep 2023 08:58:02 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 o1-20020a056402444100b0052ff9bae873sm336955edb.5.2023.09.13.08.58.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Sep 2023 08:58:02 -0700 (PDT)
Message-ID: <d26d4b15-765b-a444-b740-97f95f2db58d@redhat.com>
Date: Wed, 13 Sep 2023 17:58:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Fernando Eckhardt Valle <fevalle@ipt.br>, hmh@hmh.eng.br,
 markgross@kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 mpearson-lenovo@squebb.ca
References: <20230906195204.4478-1-fevalle@ipt.br>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230906195204.4478-1-fevalle@ipt.br>
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
 Content preview:  Hi Fernando, On 9/6/23 21:52, Fernando Eckhardt Valle wrote:
 > Newer Thinkpads have a feature called Mac Address Passthrough. > This patch
 provides a sysfs interface that userspace can use > to get this auxiliary
 [...] Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qgSFn-003uuJ-K7
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: sysfs
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

Hi Fernando,

On 9/6/23 21:52, Fernando Eckhardt Valle wrote:
> Newer Thinkpads have a feature called Mac Address Passthrough.
> This patch provides a sysfs interface that userspace can use
> to get this auxiliary mac address.
> 
> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>

Thank you for your patch. 

At a minimum for this patch to be accepted you will need
to document the new sysfs interface in:

Documentation/admin-guide/laptops/thinkpad-acpi.rst

But I wonder if we should export this information to
userspace in this way ?

The reason why I'm wondering is because mac-address passthrough
in case of using e.g. Lenovo Thunderbolt docks is already
supported by the kernel by code for this in drivers/net/usb/r8152.c :

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/usb/r8152.c#n1613

So I'm wondering if we really need this, is there a planned
userspace API consumer of the new sysfs interface ?

Or is this only intended as a way for a user to query this, iow
is this purely intended for informational purposes ?

Regards,

Hans






> ---
>  drivers/platform/x86/thinkpad_acpi.c | 77 ++++++++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index d70c89d32..0b1c36b0d 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10785,6 +10785,78 @@ static struct ibm_struct dprc_driver_data = {
>  	.name = "dprc",
>  };
>  
> +/*
> + * Auxmac
> + *
> + * This auxiliary mac address is enabled in the bios through the
> + * Mac Address Passthrough feature. In most cases, there are three
> + * possibilities: Internal Mac, Second Mac, and disabled.
> + *
> + */
> +
> +#define AUXMAC_LEN 12
> +#define AUXMAC_START 9
> +#define AUXMAC_STRLEN 22
> +static char auxmac[AUXMAC_LEN];
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
> +	obj = (union acpi_object *)buffer.pointer;
> +
> +	if (obj->type != ACPI_TYPE_STRING || obj->string.length != AUXMAC_STRLEN) {
> +		pr_info("Invalid buffer for mac addr passthrough.\n");
> +		goto auxmacinvalid;
> +	}
> +
> +	if (strncmp(obj->string.pointer + 0x8, "#", 1) != 0 ||
> +	    strncmp(obj->string.pointer + 0x15, "#", 1) != 0) {
> +		pr_info("Invalid header for mac addr passthrough.\n");
> +		goto auxmacinvalid;
> +	}
> +
> +	memcpy(auxmac, obj->string.pointer + AUXMAC_START, AUXMAC_LEN);
> +	kfree(obj);
> +	return 0;
> +
> +auxmacinvalid:
> +	kfree(obj);
> +	memcpy(auxmac, "unavailable", 11);
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
> +	if (strncmp(auxmac, "XXXXXXXXXXXX", AUXMAC_LEN) == 0)
> +		memcpy(auxmac, "disabled", 9);
> +
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
> @@ -10843,6 +10915,7 @@ static const struct attribute_group *tpacpi_groups[] = {
>  	&proxsensor_attr_group,
>  	&kbdlang_attr_group,
>  	&dprc_attr_group,
> +	&auxmac_attr_group,
>  	NULL,
>  };
>  
> @@ -11414,6 +11487,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
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
