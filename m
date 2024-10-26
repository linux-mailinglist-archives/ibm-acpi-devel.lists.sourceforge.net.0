Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF8C9B16E2
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:07:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4dhb-0001oY-K6;
	Sat, 26 Oct 2024 10:07:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4dhZ-0001oI-Vn
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RMNuE59JmqK6i5X+rh8qjVYOKDitaozUbQbEJSiekN8=; b=dkr3vlaaEnMQaUjjAvjY7e+ujL
 lwN7F8ni0J/XU2XsUGggb8sZ8hceAFbslMADhtBhBKgkTlPD9Zk2DU8N/C2IPOfk3wDMmGQYi/o0o
 3z7Eh5keDEO7hV5nnRs7UtBmCYDLonIIh5IwVIFFcpEQRePi3wyLOWH82bdEKRax7BUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RMNuE59JmqK6i5X+rh8qjVYOKDitaozUbQbEJSiekN8=; b=mFE4IwN3f3OfxOXqZgXDJj29ZH
 L8fGNXWIdtUCGMsi1jI6cvmKCisxaW/hI41IXHKgiZ/DDUj6jyN+l5pMS4q/LntqB5jPaSw/C/xHl
 J3rsU0Z3YZz7amhhqQ0DxMQdIyqrQ9CflkdCkZgSUEr3TQfIJM46TI5aFl54feBoEmmY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4dhY-00019j-U9 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729937230;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RMNuE59JmqK6i5X+rh8qjVYOKDitaozUbQbEJSiekN8=;
 b=io3x9+VZD/epuYl0C+nDPAk0QY3XTK2y2ZTEvK3z8sD85/UmSGGDhsEw1ZvmF/67J/R+Zs
 sLT3fQS0nX7a8umpjrv6sklB/THMluQePfRpWOEU94rWo/4hyWPYubYpK0p8PXX0sqz1+E
 +Lz/KDwGdoVheTLTVLzV5tOeOxZG+t8=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-aQ377x-HNLKdTAjDAAGgxg-1; Sat, 26 Oct 2024 06:07:08 -0400
X-MC-Unique: aQ377x-HNLKdTAjDAAGgxg-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a99fff1ad9cso208239466b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729937228; x=1730542028;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RMNuE59JmqK6i5X+rh8qjVYOKDitaozUbQbEJSiekN8=;
 b=vVRkP6O4grq3gDL1COJ8Nl13PzGeLbhjmjsPoSVSSzzxUF+6yVUuLb2R1oE3m16znU
 YejxDuJmDPT64FAb06qWKij/KSTlD2sjD8N2PrGCDKVrw108gzR5yfjIGWQKS9veW8vh
 oJ2Trk0ybszBzSzngCMNDkCmDrZ8iTUURmiWr521hikCFG55eSks+jgv3esVHqXFW7Al
 A4dBwRimNRCAh0SuJMJqtPxsxIte1mlrSnOcs/yokUmw7IZLc1LRs7G6+GdGa+VaqRJU
 7lWKBcYsFm+KwoZKpez7kw4xg4pOAd87xBDrLKc2EnGDj1T6YcdJxbUxXpTIZvY1V5Ac
 oPVQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5gDJDBgDYTFHNxsU8eGw88mXP0LnDPREz4SK6FsrIoEDwoMAQ2K8lGoCkb/nkIBELuL3AbzR8iILzVd1AeA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx32aEzZmO8r9uNOtNnCr/PbTD/G/Ugms51Un20trUd/Ch0xw3s
 vIpQSBa/QH85AE4RuVhEVu/xjlOR9ED2wEXx592NScLecSmJ2kFvF5y4SRFe9Nj0pPaQLc/BTqj
 L4gySO+IQ7Y+qxqSlu+Ii1cc6X9NFtaYcLrlFUNKVxsRzF+jhfWSfMeUWyqd9LUeduO5mNzia
X-Received: by 2002:a17:907:94c7:b0:a9a:4f78:c3 with SMTP id
 a640c23a62f3a-a9de5ce2538mr173309966b.21.1729937227488; 
 Sat, 26 Oct 2024 03:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYxEdi2Gh+VM9LosfHrDuUA5oGbguIFd+1UdystNEmcdRJcScApcCIvWidRJOLAVdVEJ2X2g==
X-Received: by 2002:a17:907:94c7:b0:a9a:4f78:c3 with SMTP id
 a640c23a62f3a-a9de5ce2538mr173307266b.21.1729937226845; 
 Sat, 26 Oct 2024 03:07:06 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b1e0b2400sm159362666b.45.2024.10.26.03.07.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:07:06 -0700 (PDT)
Message-ID: <9ee054fa-44c4-4808-ba1f-dd22b265e6f1@redhat.com>
Date: Sat, 26 Oct 2024 12:07:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-4-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-4-mario.limonciello@amd.com>
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
 Content preview:  Hi, On 25-Oct-24 9:30 PM, Mario Limonciello wrote: > To allow
 registering and unregistering multiple platform handlers calls > to
 platform_profile_remove()
 will need to know which handler is to be > remov [...] 
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
X-Headers-End: 1t4dhY-00019j-U9
Subject: Re: [ibm-acpi-devel] [PATCH 3/8] ACPI: platform_profile: Add
 platform handler argument to platform_profile_remove()
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
> To allow registering and unregistering multiple platform handlers calls
> to platform_profile_remove() will need to know which handler is to be
> removed.  Add an argument for this.
> 
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/acpi/platform_profile.c                     | 2 +-
>  drivers/platform/surface/surface_platform_profile.c | 2 +-
>  drivers/platform/x86/acer-wmi.c                     | 4 ++--
>  drivers/platform/x86/amd/pmf/sps.c                  | 2 +-
>  drivers/platform/x86/asus-wmi.c                     | 4 ++--
>  drivers/platform/x86/dell/dell-pc.c                 | 2 +-
>  drivers/platform/x86/hp/hp-wmi.c                    | 2 +-
>  drivers/platform/x86/ideapad-laptop.c               | 2 +-
>  drivers/platform/x86/inspur_platform_profile.c      | 4 +++-
>  drivers/platform/x86/thinkpad_acpi.c                | 2 +-
>  include/linux/platform_profile.h                    | 2 +-
>  11 files changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index d2f7fd7743a13..c24744da20916 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -205,7 +205,7 @@ int platform_profile_register(struct platform_profile_handler *pprof)
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_register);
>  
> -int platform_profile_remove(void)
> +int platform_profile_remove(struct platform_profile_handler *pprof)
>  {
>  	sysfs_remove_group(acpi_kobj, &platform_profile_group);
>  
> diff --git a/drivers/platform/surface/surface_platform_profile.c b/drivers/platform/surface/surface_platform_profile.c
> index 958afd7bce223..0879b739c5e8b 100644
> --- a/drivers/platform/surface/surface_platform_profile.c
> +++ b/drivers/platform/surface/surface_platform_profile.c
> @@ -228,7 +228,7 @@ static int surface_platform_profile_probe(struct ssam_device *sdev)
>  
>  static void surface_platform_profile_remove(struct ssam_device *sdev)
>  {
> -	platform_profile_remove();
> +	platform_profile_remove(&sdev->tpd->handler);
>  }
>  
>  static const struct ssam_device_id ssam_platform_profile_match[] = {
> diff --git a/drivers/platform/x86/acer-wmi.c b/drivers/platform/x86/acer-wmi.c
> index 53fbc9b4d3df7..71761d4220c26 100644
> --- a/drivers/platform/x86/acer-wmi.c
> +++ b/drivers/platform/x86/acer-wmi.c
> @@ -2546,7 +2546,7 @@ static int acer_platform_probe(struct platform_device *device)
>  
>  error_hwmon:
>  	if (platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&platform_profile_handler);
>  error_platform_profile:
>  	acer_rfkill_exit();
>  error_rfkill:
> @@ -2569,7 +2569,7 @@ static void acer_platform_remove(struct platform_device *device)
>  	acer_rfkill_exit();
>  
>  	if (platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&platform_profile_handler);
>  }
>  
>  #ifdef CONFIG_PM_SLEEP
> diff --git a/drivers/platform/x86/amd/pmf/sps.c b/drivers/platform/x86/amd/pmf/sps.c
> index e2d0cc92c4396..cfa88c0c9e594 100644
> --- a/drivers/platform/x86/amd/pmf/sps.c
> +++ b/drivers/platform/x86/amd/pmf/sps.c
> @@ -425,5 +425,5 @@ int amd_pmf_init_sps(struct amd_pmf_dev *dev)
>  
>  void amd_pmf_deinit_sps(struct amd_pmf_dev *dev)
>  {
> -	platform_profile_remove();
> +	platform_profile_remove(&dev->pprof);
>  }
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index c7c104c65a85a..f5f8cda7fd19c 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -4885,7 +4885,7 @@ static int asus_wmi_add(struct platform_device *pdev)
>  fail_custom_fan_curve:
>  fail_platform_profile_setup:
>  	if (asus->platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&asus->platform_profile_handler);
>  fail_fan_boost_mode:
>  fail_platform:
>  	kfree(asus);
> @@ -4912,7 +4912,7 @@ static void asus_wmi_remove(struct platform_device *device)
>  	asus_wmi_battery_exit(asus);
>  
>  	if (asus->platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&asus->platform_profile_handler);
>  
>  	kfree(asus);
>  }
> diff --git a/drivers/platform/x86/dell/dell-pc.c b/drivers/platform/x86/dell/dell-pc.c
> index 3cf79e55e3129..4196154cc37d9 100644
> --- a/drivers/platform/x86/dell/dell-pc.c
> +++ b/drivers/platform/x86/dell/dell-pc.c
> @@ -273,7 +273,7 @@ static int thermal_init(void)
>  static void thermal_cleanup(void)
>  {
>  	if (thermal_handler) {
> -		platform_profile_remove();
> +		platform_profile_remove(thermal_handler);
>  		kfree(thermal_handler);
>  	}
>  }
> diff --git a/drivers/platform/x86/hp/hp-wmi.c b/drivers/platform/x86/hp/hp-wmi.c
> index 26cac73caf2b9..bb8771d8b5cd8 100644
> --- a/drivers/platform/x86/hp/hp-wmi.c
> +++ b/drivers/platform/x86/hp/hp-wmi.c
> @@ -1692,7 +1692,7 @@ static void __exit hp_wmi_bios_remove(struct platform_device *device)
>  	}
>  
>  	if (platform_profile_support)
> -		platform_profile_remove();
> +		platform_profile_remove(&platform_profile_handler);
>  }
>  
>  static int hp_wmi_resume_handler(struct device *device)
> diff --git a/drivers/platform/x86/ideapad-laptop.c b/drivers/platform/x86/ideapad-laptop.c
> index 1f94c14c3b832..50819ac919e87 100644
> --- a/drivers/platform/x86/ideapad-laptop.c
> +++ b/drivers/platform/x86/ideapad-laptop.c
> @@ -1135,7 +1135,7 @@ static void ideapad_dytc_profile_exit(struct ideapad_private *priv)
>  	if (!priv->dytc)
>  		return;
>  
> -	platform_profile_remove();
> +	platform_profile_remove(&priv->dytc->pprof);
>  	mutex_destroy(&priv->dytc->mutex);
>  	kfree(priv->dytc);
>  
> diff --git a/drivers/platform/x86/inspur_platform_profile.c b/drivers/platform/x86/inspur_platform_profile.c
> index 03da2c8cf6789..f6bc5ca9da91d 100644
> --- a/drivers/platform/x86/inspur_platform_profile.c
> +++ b/drivers/platform/x86/inspur_platform_profile.c
> @@ -190,7 +190,9 @@ static int inspur_wmi_probe(struct wmi_device *wdev, const void *context)
>  
>  static void inspur_wmi_remove(struct wmi_device *wdev)
>  {
> -	platform_profile_remove();
> +	struct inspur_wmi_priv *priv;
> +	priv = dev_get_drvdata(&wdev->dev);
> +	platform_profile_remove(&priv->handler);
>  }
>  
>  static const struct wmi_device_id inspur_wmi_id_table[] = {
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c8c316b8507a5..619a4db74e5f3 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10637,7 +10637,7 @@ static int tpacpi_dytc_profile_init(struct ibm_init_struct *iibm)
>  
>  static void dytc_profile_exit(void)
>  {
> -	platform_profile_remove();
> +	platform_profile_remove(&dytc_profile);
>  }
>  
>  static struct ibm_struct  dytc_profile_driver_data = {
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index 6fa988e417428..58279b76d740e 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -36,7 +36,7 @@ struct platform_profile_handler {
>  };
>  
>  int platform_profile_register(struct platform_profile_handler *pprof);
> -int platform_profile_remove(void);
> +int platform_profile_remove(struct platform_profile_handler *pprof);
>  int platform_profile_cycle(void);
>  void platform_profile_notify(void);
>  



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
