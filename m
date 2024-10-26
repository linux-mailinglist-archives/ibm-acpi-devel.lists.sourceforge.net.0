Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0669B16E1
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:07:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4dhU-00042H-Gn;
	Sat, 26 Oct 2024 10:07:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4dhS-000428-Gn
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/f46nXkqUvA/6x0RaCqyiuYSQxfxcwYkp5yUsnCKJ8U=; b=UV/hWWlAWxdhuJmrNwA8DKw6jB
 6J3W9YFY50JxOjiI5U7CW6XpurzwkiZaBZs7YKp1bXshH/GBgK6Z3Myh0WCgTmWonsMJKh+45xWqj
 AdwKYM9IdzwIE+wxkamvObvYB2yVqStshFmbPiSt5PaV4ssvkqRINNERiW4MbigoeGlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/f46nXkqUvA/6x0RaCqyiuYSQxfxcwYkp5yUsnCKJ8U=; b=ZDEVd6+KMGQ26EXr19iddiFHwj
 K4Ysr+M+iAo+z7MTEstJDat+ocnVamseFHUF/2/8iB+CFrToT8IGXpNHIMzbBOGdqaWg4NFm4/TSj
 aMj+zDj/gluDzMt8Nd2kH+WALTFlbu96YW/ahFHMOUAS6DkKz0pwijUaTnryqV6BuwlU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4dhQ-00019M-5H for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729937221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/f46nXkqUvA/6x0RaCqyiuYSQxfxcwYkp5yUsnCKJ8U=;
 b=YvEKHBXyrYR+yz5HHBtxn09wd+Ya1HcRS2jcwmcIe9nETbQGAVsBIEhsF1o0WOE8pXU6jp
 E+XD/aQ/ziS0fA87v+8enUBm48eo3vEawPoj6rJrzh+majV7ogvvtYU8nY2UIQjWLTvcHG
 9q/a8dQkjC3ekEqerNQTMIHV4Kc0sDs=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-TwpxToZHMnqe3G5o3XD-3Q-1; Sat, 26 Oct 2024 06:06:59 -0400
X-MC-Unique: TwpxToZHMnqe3G5o3XD-3Q-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a9a0c259715so185907366b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729937218; x=1730542018;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/f46nXkqUvA/6x0RaCqyiuYSQxfxcwYkp5yUsnCKJ8U=;
 b=fQAb7w+XbR3OOg1/JC54DKtKvTPfLfriQAeUd3y7Pn3lZax/zkebAQkGTBdLul91xx
 FCzRUiF9alOA5XJKpX5v2XAQiibWvxarl8fHMxCTmjQYmNuONl6jO0yEBEsSZeS2TLtL
 ymdONx7tQ9IGkmAknrt0EThs7wrPQaJa7XXI2MGKNaS+BEwQZKu1rl+gk00CXEFPzbOY
 kJqamsLWyzxd7HHZoVeZOxF+vcC8mtPtZaRWbd5MoAwF4eecGpSdDbMmvtOxW5j4GjvZ
 QH+OjkkBmXKvVruBe2GAPVXDfdG1dhx9IJPmTSZwiNMymH2z3JELluI1YCcv/sSMbJ9q
 nyxg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWX69rOkm4vCuVUjd4mhNUAeytC0PuwJFe6dtalIaNm7s/RCPdJdG+O9+CcOmFi3vyCPMTsWngLCIGgcU1slA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy6eeNlSPO1djZgjcfD8Nxtb+yHgq5wZCvZ2yjqpG7Q3z9Aayqo
 eUhOEjSOc082xm0QFfQj9NuAGrLj3WtMtFuJEZR6/+dY+46PrkQPADotkHWgz7hF58l2REQ1r3g
 a84Ptw9HTKdgGgndiSV7lRBf96WagkM+KxNUisyIE0Cz0lJSJnK6M3QQltmuhAKItkjphzEoF
X-Received: by 2002:a17:907:9495:b0:a9a:5d15:26c2 with SMTP id
 a640c23a62f3a-a9de619c888mr155002066b.45.1729937217911; 
 Sat, 26 Oct 2024 03:06:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYMCrnHwyTvN8DPXvX36EqqcDSeIpa76Zk1xpz15ECT52CeCo+y+8lODC9roJOeWDkY6qDIQ==
X-Received: by 2002:a17:907:9495:b0:a9a:5d15:26c2 with SMTP id
 a640c23a62f3a-a9de619c888mr154999366b.45.1729937217426; 
 Sat, 26 Oct 2024 03:06:57 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b3a08477bsm158255366b.201.2024.10.26.03.06.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:06:56 -0700 (PDT)
Message-ID: <4350a4f0-fa9d-43a6-bec5-68f752d1395c@redhat.com>
Date: Sat, 26 Oct 2024 12:06:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-3-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-3-mario.limonciello@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 25-Oct-24 9:30 PM, Mario Limonciello wrote: > To be
 able to reference the platform handler in remove, add > a pointer to `struct
 ssam_device`. > > Tested-by: Matthew Schwartz <matthew.schwartz@linu [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t4dhQ-00019M-5H
Subject: Re: [ibm-acpi-devel] [PATCH 2/8] platform/surface: aggregator: Add
 platform handler pointer to device
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 25-Oct-24 9:30 PM, Mario Limonciello wrote:
> To be able to reference the platform handler in remove, add
> a pointer to `struct ssam_device`.
> 
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/platform/surface/surface_platform_profile.c | 1 +
>  include/linux/surface_aggregator/device.h           | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/platform/surface/surface_platform_profile.c b/drivers/platform/surface/surface_platform_profile.c
> index 61aa488a80eb5..958afd7bce223 100644
> --- a/drivers/platform/surface/surface_platform_profile.c
> +++ b/drivers/platform/surface/surface_platform_profile.c
> @@ -210,6 +210,7 @@ static int surface_platform_profile_probe(struct ssam_device *sdev)
>  		return -ENOMEM;
>  
>  	tpd->sdev = sdev;
> +	sdev->tpd = tpd;
>  
>  	tpd->handler.name = "Surface Platform Profile";
>  	tpd->handler.profile_get = ssam_platform_profile_get;
> diff --git a/include/linux/surface_aggregator/device.h b/include/linux/surface_aggregator/device.h
> index 8cd8c38cf3f30..6a72b5bdc8782 100644
> --- a/include/linux/surface_aggregator/device.h
> +++ b/include/linux/surface_aggregator/device.h
> @@ -164,6 +164,7 @@ enum ssam_device_flags {
>   * @dev:   Driver model representation of the device.
>   * @ctrl:  SSAM controller managing this device.
>   * @uid:   UID identifying the device.
> + * @tpd:   Platform profile device data.
>   * @flags: Device state flags, see &enum ssam_device_flags.
>   */
>  struct ssam_device {
> @@ -171,6 +172,7 @@ struct ssam_device {
>  	struct ssam_controller *ctrl;
>  
>  	struct ssam_device_uid uid;
> +	struct ssam_platform_profile_device *tpd;
>  
>  	unsigned long flags;
>  };



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
