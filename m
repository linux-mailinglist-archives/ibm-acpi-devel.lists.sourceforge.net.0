Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D5654A026
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Jun 2022 22:51:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o0r1V-0006iv-PU; Mon, 13 Jun 2022 20:50:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1o0r1U-0006ip-QP
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jun 2022 20:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uHh1Mc7ZpYll3jkRg/4I2vZLEod4WMai9S1oJy78FZg=; b=k5EzNG22OJIRy8HLqK/avzYXd7
 bIwo4shN49+ouXreHIqSGcNEON+jD8KDjCQs7ZnIluh9LyDYprQzEiExeUEdzSmvX733865HufnWI
 ddJZ/HEeoL+AHB61v1/kxi32KPxKDiyydvwOIx0z+WSN0P8WTv1GTnJaf0PskTkRls4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uHh1Mc7ZpYll3jkRg/4I2vZLEod4WMai9S1oJy78FZg=; b=XJHYEmMQcOXgDQ/1Xjk0uJ+qHy
 qXt2L3lIoRzrNtGAtqJPOr+25fc/nmZf7zOVVGMw0kQruEPqYo5OVaY5hLlYGhXE/eKjtDkMlQNxy
 Ik2G8QwXKCkury0B/fZxUAd9tVHVoOq3dqTE9Hl2B1p95KOlnvs9el8Dpv2+9q/ZSJBE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0r1T-000Xoc-Mf
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jun 2022 20:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655153449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uHh1Mc7ZpYll3jkRg/4I2vZLEod4WMai9S1oJy78FZg=;
 b=HaFtrNhqDdyXicP9yPhPOcblhPU24z6gvNzZX+e2ITvmr6JvvVlJWGx1EXngtCyzMzcQRy
 EfSGqOa9sJcm2aCmFOJ8mXRrW75jAHsV7wornbSadQEGQksLodg+6vstswjSaSHi8cYu2f
 aoeq0ymFDJ9SYhXd071uhpEEBr/dF4U=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-627-b-PZjWA6OHaY557fLTpo6g-1; Mon, 13 Jun 2022 16:50:48 -0400
X-MC-Unique: b-PZjWA6OHaY557fLTpo6g-1
Received: by mail-ej1-f71.google.com with SMTP id
 gh36-20020a1709073c2400b0070759e390fbso2180705ejc.13
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 13 Jun 2022 13:50:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uHh1Mc7ZpYll3jkRg/4I2vZLEod4WMai9S1oJy78FZg=;
 b=b8iApl/xxX/9iOTl3/N2HEUBQcloD897V92jTm9wRfcBvvlJyd59NWSeFQv0A4JE3Q
 7xXqKqZFoGaARh7f5BN81vhuFKYRqCWLRLhpkjD+o4z4qwBy2Qp4xTf+SskTNcVApkux
 TC0Vx0U3tHyL4jz4yro0qUtCjtdPNyrbXFD4v1OBpqyf0Jai4KwPRnFf/OlLcSeBj0FT
 INMQkzv4IFDsBFs/q8lVtQ2XZJ/ao1f/WC8KbvqEx6gHnircywSnhlUyTokGxnvMQX9b
 p9YbBhQOmHUZ5A00toN5lzjOxefE85CtUsqJ/U3CpjbZwnDWrbi9uVfgZIReClHhkg+B
 xOzA==
X-Gm-Message-State: AJIora9jy7e1SfBhQNQG8AicgmfhCoDweAVp27wZaU3/RSwK2yi3N7/0
 nFeUsAQ62uzBdpEZfPzI9fPW7QOc5jrOR5udo6gF5eCcjNh7gZKqOC9Dl7tYhjLZkCkbCG3scFK
 JorivomBR3B1CcQEyJwwtG5vLM79jPi7S76M=
X-Received: by 2002:a17:907:160c:b0:711:3b56:dc7 with SMTP id
 hb12-20020a170907160c00b007113b560dc7mr1377168ejc.587.1655153446904; 
 Mon, 13 Jun 2022 13:50:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLiEiFvejpV3bRXy2k4g93sSKykLlmNzgB4sMsx4IWkixW2j3DGJCzho0mbCSzEtPT4MlbBg==
X-Received: by 2002:a17:907:160c:b0:711:3b56:dc7 with SMTP id
 hb12-20020a170907160c00b007113b560dc7mr1377157ejc.587.1655153446669; 
 Mon, 13 Jun 2022 13:50:46 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 za14-20020a170906878e00b00706c1327f4bsm4243279ejb.23.2022.06.13.13.50.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jun 2022 13:50:46 -0700 (PDT)
Message-ID: <81a7cbe7-068a-d9ab-74b1-b6891f5a6f10@redhat.com>
Date: Mon, 13 Jun 2022 22:50:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux ACPI <linux-acpi@vger.kernel.org>
References: <1843211.tdWV9SEqCh@kreacher> <2653857.mvXUDI8C0e@kreacher>
 <2091400.OBFZWjSADL@kreacher>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <2091400.OBFZWjSADL@kreacher>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 6/13/22 20:30, Rafael J. Wysocki wrote: > From: Rafael
 J. Wysocki <rafael.j.wysocki@intel.com> > > Instead of walking the list of
 children of an ACPI device directly, > use acpi_dev_for_each_child( [...]
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o0r1T-000Xoc-Mf
Subject: Re: [ibm-acpi-devel] [PATCH v2 12/16] platform/x86/thinkpad_acpi:
 Use acpi_dev_for_each_child()
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
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/13/22 20:30, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Instead of walking the list of children of an ACPI device directly,
> use acpi_dev_for_each_child() to carry out an action for all of
> the given ACPI device's children.
> 
> This will help to eliminate the children list head from struct
> acpi_device as it is redundant and it is used in questionable ways
> in some places (in particular, locking is needed for walking the
> list pointed to it safely, but it is often missing).
> 
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Rafael, feel free to take this upstream through the apci tree.

Regards,

Hans




> ---
> 
> v1 -> v2:
>    * Eliminate unnecessary branch (Andy).
> 
> ---
>  drivers/platform/x86/thinkpad_acpi.c |   53 +++++++++++++++++------------------
>  1 file changed, 27 insertions(+), 26 deletions(-)
> 
> Index: linux-pm/drivers/platform/x86/thinkpad_acpi.c
> ===================================================================
> --- linux-pm.orig/drivers/platform/x86/thinkpad_acpi.c
> +++ linux-pm/drivers/platform/x86/thinkpad_acpi.c
> @@ -6841,6 +6841,31 @@ static const struct backlight_ops ibm_ba
>  
>  /* --------------------------------------------------------------------- */
>  
> +static int __init tpacpi_evaluate_bcl(struct acpi_device *adev, void *not_used)
> +{
> +	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
> +	union acpi_object *obj;
> +	acpi_status status;
> +	int rc;
> +
> +	status = acpi_evaluate_object(adev->handle, "_BCL", NULL, &buffer);
> +	if (ACPI_FAILURE(status))
> +		return 0;
> +
> +	obj = buffer.pointer;
> +	if (!obj || obj->type != ACPI_TYPE_PACKAGE) {
> +		acpi_handle_info(adev->handle,
> +				 "Unknown _BCL data, please report this to %s\n",
> +				 TPACPI_MAIL);
> +		rc = 0;
> +	} else {
> +		rc = obj->package.count;
> +	}
> +	kfree(obj);
> +
> +	return rc;
> +}
> +
>  /*
>   * Call _BCL method of video device.  On some ThinkPads this will
>   * switch the firmware to the ACPI brightness control mode.
> @@ -6848,37 +6873,13 @@ static const struct backlight_ops ibm_ba
>  
>  static int __init tpacpi_query_bcl_levels(acpi_handle handle)
>  {
> -	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
> -	union acpi_object *obj;
> -	struct acpi_device *device, *child;
> -	int rc;
> +	struct acpi_device *device;
>  
>  	device = acpi_fetch_acpi_dev(handle);
>  	if (!device)
>  		return 0;
>  
> -	rc = 0;
> -	list_for_each_entry(child, &device->children, node) {
> -		acpi_status status = acpi_evaluate_object(child->handle, "_BCL",
> -							  NULL, &buffer);
> -		if (ACPI_FAILURE(status)) {
> -			buffer.length = ACPI_ALLOCATE_BUFFER;
> -			continue;
> -		}
> -
> -		obj = (union acpi_object *)buffer.pointer;
> -		if (!obj || (obj->type != ACPI_TYPE_PACKAGE)) {
> -			pr_err("Unknown _BCL data, please report this to %s\n",
> -				TPACPI_MAIL);
> -			rc = 0;
> -		} else {
> -			rc = obj->package.count;
> -		}
> -		break;
> -	}
> -
> -	kfree(buffer.pointer);
> -	return rc;
> +	return acpi_dev_for_each_child(device, tpacpi_evaluate_bcl, NULL);
>  }
>  
>  
> 
> 
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
