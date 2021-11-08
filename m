Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB734481B5
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Nov 2021 15:27:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mk5bs-00088w-R8; Mon, 08 Nov 2021 14:26:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mk5br-00088q-2m
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 14:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TmYTQxwT/uLwbv0q8rRo6e+fpvLFaDQTknjBCvvxAUA=; b=i6oQpUNmeaO3pC6VVmIn06Og/U
 R3fmDd8s6vvqL8ZTWyTfWkp2ULiPKiFopwEJOAwRbHb7T7HmJ0Z6fVI9bMAESye8RFpDe2Yf2uDk4
 TC9wXNXqZZmPxdhSXRGqHXAo4vJfIzaWC017yv88yMI4cJ56S/HPUA0WnkfynW0ooG3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TmYTQxwT/uLwbv0q8rRo6e+fpvLFaDQTknjBCvvxAUA=; b=jLG6C+Pqzkk4X5MSpguJpIYJwF
 NQfo4tnR/vbcUZAoH4fTohRFmaP/10FUi0YPoLPJoAHq4HI+Foxnipbxekwm7BSilFzZ6qzFiSg5a
 COznhjyVWUVX0HKNNDtTwEvxonfUIPFwFXk80yxrqfC/yjPrTxwI/mwMuw/tjQ13sx9M=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk5bi-0069rR-Kr
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 14:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636381600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TmYTQxwT/uLwbv0q8rRo6e+fpvLFaDQTknjBCvvxAUA=;
 b=TW0qufgeL/u+z5iozTyEfbUd8TT2AxKMhm8X0bUHGssv+ySOT1sxS54tWnuMccD1FJk97Y
 WYJUArEcYufTUPGWQbX5EuOpCchAHVuL//wNjnY2XhEk6TZv9nbusFUpg9jT6iSbtoHFle
 SNoJ1ZYhNjKFe2DwUh0OIDV9lqDYJZI=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-hDK7UKChN2mmQBlonSa9mA-1; Mon, 08 Nov 2021 09:26:39 -0500
X-MC-Unique: hDK7UKChN2mmQBlonSa9mA-1
Received: by mail-ed1-f72.google.com with SMTP id
 z21-20020a05640240d500b003e3340a215aso4094631edb.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Nov 2021 06:26:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=TmYTQxwT/uLwbv0q8rRo6e+fpvLFaDQTknjBCvvxAUA=;
 b=zFkKSrlT1uiT54T4xvALe4To0B7IO6dm9JWuWzWp8lckfGMqSGN+tdr61Y6masrrOg
 kA1iqHo89e36oLbt/k5HG/vD1LJnyFjcdgEGTPurbhLs9lu6sJsqj053Gt4svVO8tXe4
 2FO7l1FCoZFGQjvGzeglDV5JjBBnvLNMXfRi1xrf6JnnsoYu+povOOTT/yuNte/FF85s
 miW1tk0HLiIpIL+a5j5xwBfNq3vUeEgm2wc1ANPi/il5taEP8acBNOttGgsWXoyhcui8
 CLQI8acd2V1I0BRQitWG7pv6sLnhD4kgCeRNS0GgqdhCsjvAeI+h8nuSmVcB4+gcZ1DV
 ZmhA==
X-Gm-Message-State: AOAM530ImJ4ZV7dFyUUlx8LgIIX2y4yIqZG9TpUDe7xZjmCfAhaBbMFW
 mqG0NZqaxt1HisgUkUQgsQYRlEAjOpf5eagwXtyouylmI4Y9FwfG11sUBuLYGxLeOHNMalJ2UYk
 s2yHYHc86iSOCyN/Li6BunruqaKmcG1QPBZw=
X-Received: by 2002:a17:907:3d9e:: with SMTP id
 he30mr261786ejc.177.1636381597549; 
 Mon, 08 Nov 2021 06:26:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwPEg06B61mICyDyImXsdS7//+3D8ooJOFq8qeEu3leaco89HWtMWv8M2GG/x9+y+61WHV6QA==
X-Received: by 2002:a17:907:3d9e:: with SMTP id
 he30mr261729ejc.177.1636381597146; 
 Mon, 08 Nov 2021 06:26:37 -0800 (PST)
Received: from [10.40.1.223] ([81.30.35.201])
 by smtp.gmail.com with ESMTPSA id p3sm8320242ejy.94.2021.11.08.06.26.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Nov 2021 06:26:36 -0800 (PST)
Message-ID: <967e0277-cc96-a9af-86ac-78eb1129305e@redhat.com>
Date: Mon, 8 Nov 2021 15:26:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Len Baker <len.baker@gmx.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
References: <20211023154036.6800-1-len.baker@gmx.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211023154036.6800-1-len.baker@gmx.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
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
 Content preview:  Hi, On 10/23/21 17:40, Len Baker wrote: > Platform drivers
 have the option of having the platform core create and > remove any needed
 sysfs attribute files. So take advantage of that and > refactor the at [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mk5bi-0069rR-Kr
Subject: Re: [ibm-acpi-devel] [PATCH v2][next] platform/x86: thinkpad_acpi:
 Convert platform driver to use dev_groups
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
Cc: ibm-acpi-devel@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 10/23/21 17:40, Len Baker wrote:
> Platform drivers have the option of having the platform core create and
> remove any needed sysfs attribute files. So take advantage of that and
> refactor the attributes management to avoid to register them "by hand".
> 
> Also, due to some attributes are optionals, refactor the code and move
> the logic inside the "is_visible" callbacks of the attribute_group
> structures.
> 
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Len Baker <len.baker@gmx.com>
> ---
> Changelog v1 -> v2
> - Add the "Acked-by" tag.
> - Refactor the "fan_attr_is_visible" function to use the same code
>   pattern used in all the "*_is_visible" functions (Hans de Goede).
> - Keep the proxsensor_driver_data struct and the dprc_driver_data
>   struct (Hans de Goede).
> - Keep "kbdlang_init" function and set a new flag inside it. Then,
>   use this flag inside the "kbdlang_attr_is_visible" function (Hans
>   de Goede).
> 
> The previous version can be found here [1]
> 
> [1] https://lore.kernel.org/platform-driver-x86/20211003091949.7339-1-len.baker@gmx.com/

Thank you this new version looks good to me. I did notice 2
small issues (one spotted by "kernel test robot <lkp@intel.com>"),
so I will squash in this fix while merging this :

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index d7ac0a43d19e..8f07fb32cb0c 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -10517,6 +10517,7 @@ static const struct attribute_group *tpacpi_groups[] = {
 	&hotkey_attr_group,
 	&bluetooth_attr_group,
 	&wan_attr_group,
+	&cmos_attr_group,
 	&proxsensor_attr_group,
 	&kbdlang_attr_group,
 	&dprc_attr_group,
@@ -10528,7 +10529,6 @@ static const struct attribute_group *tpacpi_hwmon_groups[] = {
 	&thermal_attr_group,
 	&temp_label_attr_group,
 	&fan_attr_group,
-	&tpacpi_attr_group,
 	NULL,
 };
 

This fixes cmos_attr_group not being listed anywhere, as well as 
tpacpi_attr_group being listed in both tpacpi_groups[] and
tpacpi_hwmon_groups[], while it only belongs in the former.

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> 
>  drivers/platform/x86/thinkpad_acpi.c | 526 +++++++++++++--------------
>  1 file changed, 243 insertions(+), 283 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index b39dbc2fe45b..87dc7c802219 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -334,12 +334,11 @@ static struct {
>  	u32 battery_force_primary:1;
>  	u32 input_device_registered:1;
>  	u32 platform_drv_registered:1;
> -	u32 platform_drv_attrs_registered:1;
>  	u32 sensors_pdrv_registered:1;
> -	u32 sensors_pdrv_attrs_registered:1;
>  	u32 sensors_pdev_attrs_registered:1;
>  	u32 hotkey_poll_active:1;
>  	u32 has_adaptive_kbd:1;
> +	u32 kbd_lang:1;
>  } tp_features;
> 
>  static struct {
> @@ -985,20 +984,6 @@ static void tpacpi_shutdown_handler(struct platform_device *pdev)
>  	}
>  }
> 
> -static struct platform_driver tpacpi_pdriver = {
> -	.driver = {
> -		.name = TPACPI_DRVR_NAME,
> -		.pm = &tpacpi_pm,
> -	},
> -	.shutdown = tpacpi_shutdown_handler,
> -};
> -
> -static struct platform_driver tpacpi_hwmon_pdriver = {
> -	.driver = {
> -		.name = TPACPI_HWMON_DRVR_NAME,
> -	},
> -};
> -
>  /*************************************************************************
>   * sysfs support helpers
>   */
> @@ -1490,53 +1475,6 @@ static ssize_t uwb_emulstate_store(struct device_driver *drv, const char *buf,
>  static DRIVER_ATTR_RW(uwb_emulstate);
>  #endif
> 
> -/* --------------------------------------------------------------------- */
> -
> -static struct driver_attribute *tpacpi_driver_attributes[] = {
> -	&driver_attr_debug_level, &driver_attr_version,
> -	&driver_attr_interface_version,
> -};
> -
> -static int __init tpacpi_create_driver_attributes(struct device_driver *drv)
> -{
> -	int i, res;
> -
> -	i = 0;
> -	res = 0;
> -	while (!res && i < ARRAY_SIZE(tpacpi_driver_attributes)) {
> -		res = driver_create_file(drv, tpacpi_driver_attributes[i]);
> -		i++;
> -	}
> -
> -#ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
> -	if (!res && dbg_wlswemul)
> -		res = driver_create_file(drv, &driver_attr_wlsw_emulstate);
> -	if (!res && dbg_bluetoothemul)
> -		res = driver_create_file(drv, &driver_attr_bluetooth_emulstate);
> -	if (!res && dbg_wwanemul)
> -		res = driver_create_file(drv, &driver_attr_wwan_emulstate);
> -	if (!res && dbg_uwbemul)
> -		res = driver_create_file(drv, &driver_attr_uwb_emulstate);
> -#endif
> -
> -	return res;
> -}
> -
> -static void tpacpi_remove_driver_attributes(struct device_driver *drv)
> -{
> -	int i;
> -
> -	for (i = 0; i < ARRAY_SIZE(tpacpi_driver_attributes); i++)
> -		driver_remove_file(drv, tpacpi_driver_attributes[i]);
> -
> -#ifdef THINKPAD_ACPI_DEBUGFACILITIES
> -	driver_remove_file(drv, &driver_attr_wlsw_emulstate);
> -	driver_remove_file(drv, &driver_attr_bluetooth_emulstate);
> -	driver_remove_file(drv, &driver_attr_wwan_emulstate);
> -	driver_remove_file(drv, &driver_attr_uwb_emulstate);
> -#endif
> -}
> -
>  /*************************************************************************
>   * Firmware Data
>   */
> @@ -3010,7 +2948,14 @@ static struct attribute *adaptive_kbd_attributes[] = {
>  	NULL
>  };
> 
> +static umode_t hadaptive_kbd_attr_is_visible(struct kobject *kobj,
> +					     struct attribute *attr, int n)
> +{
> +	return tp_features.has_adaptive_kbd ? attr->mode : 0;
> +}
> +
>  static const struct attribute_group adaptive_kbd_attr_group = {
> +	.is_visible = hadaptive_kbd_attr_is_visible,
>  	.attrs = adaptive_kbd_attributes,
>  };
> 
> @@ -3108,8 +3053,6 @@ static void hotkey_exit(void)
>  	hotkey_poll_stop_sync();
>  	mutex_unlock(&hotkey_mutex);
>  #endif
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);
> -
>  	dbg_printk(TPACPI_DBG_EXIT | TPACPI_DBG_HKEY,
>  		   "restoring original HKEY status and mask\n");
>  	/* yes, there is a bitwise or below, we want the
> @@ -3504,14 +3447,8 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  			 */
>  			if (acpi_evalf(hkey_handle, &hotkey_adaptive_all_mask,
>  				       "MHKA", "dd", 2)) {
> -				if (hotkey_adaptive_all_mask != 0) {
> +				if (hotkey_adaptive_all_mask != 0)
>  					tp_features.has_adaptive_kbd = true;
> -					res = sysfs_create_group(
> -						&tpacpi_pdev->dev.kobj,
> -						&adaptive_kbd_attr_group);
> -					if (res)
> -						goto err_exit;
> -				}
>  			} else {
>  				tp_features.has_adaptive_kbd = false;
>  				hotkey_adaptive_all_mask = 0x0U;
> @@ -3565,9 +3502,6 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  	}
> 
>  	tabletsw_state = hotkey_init_tablet_mode();
> -	res = sysfs_create_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);
> -	if (res)
> -		goto err_exit;
> 
>  	/* Set up key map */
>  	keymap_id = tpacpi_check_quirks(tpacpi_keymap_qtable,
> @@ -3664,9 +3598,6 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  	return 0;
> 
>  err_exit:
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &adaptive_kbd_attr_group);
> -
>  	return (res < 0) ? res : 1;
>  }
> 
> @@ -4412,7 +4343,14 @@ static struct attribute *bluetooth_attributes[] = {
>  	NULL
>  };
> 
> +static umode_t bluetooth_attr_is_visible(struct kobject *kobj,
> +					 struct attribute *attr, int n)
> +{
> +	return tp_features.bluetooth ? attr->mode : 0;
> +}
> +
>  static const struct attribute_group bluetooth_attr_group = {
> +	.is_visible = bluetooth_attr_is_visible,
>  	.attrs = bluetooth_attributes,
>  };
> 
> @@ -4434,11 +4372,7 @@ static void bluetooth_shutdown(void)
> 
>  static void bluetooth_exit(void)
>  {
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj,
> -			&bluetooth_attr_group);
> -
>  	tpacpi_destroy_rfkill(TPACPI_RFK_BLUETOOTH_SW_ID);
> -
>  	bluetooth_shutdown();
>  }
> 
> @@ -4552,17 +4486,7 @@ static int __init bluetooth_init(struct ibm_init_struct *iibm)
>  				RFKILL_TYPE_BLUETOOTH,
>  				TPACPI_RFK_BLUETOOTH_SW_NAME,
>  				true);
> -	if (res)
> -		return res;
> -
> -	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
> -				&bluetooth_attr_group);
> -	if (res) {
> -		tpacpi_destroy_rfkill(TPACPI_RFK_BLUETOOTH_SW_ID);
> -		return res;
> -	}
> -
> -	return 0;
> +	return res;
>  }
> 
>  /* procfs -------------------------------------------------------------- */
> @@ -4669,7 +4593,14 @@ static struct attribute *wan_attributes[] = {
>  	NULL
>  };
> 
> +static umode_t wan_attr_is_visible(struct kobject *kobj, struct attribute *attr,
> +				   int n)
> +{
> +	return tp_features.wan ? attr->mode : 0;
> +}
> +
>  static const struct attribute_group wan_attr_group = {
> +	.is_visible = wan_attr_is_visible,
>  	.attrs = wan_attributes,
>  };
> 
> @@ -4691,11 +4622,7 @@ static void wan_shutdown(void)
> 
>  static void wan_exit(void)
>  {
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj,
> -		&wan_attr_group);
> -
>  	tpacpi_destroy_rfkill(TPACPI_RFK_WWAN_SW_ID);
> -
>  	wan_shutdown();
>  }
> 
> @@ -4739,18 +4666,7 @@ static int __init wan_init(struct ibm_init_struct *iibm)
>  				RFKILL_TYPE_WWAN,
>  				TPACPI_RFK_WWAN_SW_NAME,
>  				true);
> -	if (res)
> -		return res;
> -
> -	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
> -				&wan_attr_group);
> -
> -	if (res) {
> -		tpacpi_destroy_rfkill(TPACPI_RFK_WWAN_SW_ID);
> -		return res;
> -	}
> -
> -	return 0;
> +	return res;
>  }
> 
>  /* procfs -------------------------------------------------------------- */
> @@ -5651,30 +5567,35 @@ static ssize_t cmos_command_store(struct device *dev,
> 
>  static DEVICE_ATTR_WO(cmos_command);
> 
> +static struct attribute *cmos_attributes[] = {
> +	&dev_attr_cmos_command.attr,
> +	NULL
> +};
> +
> +static umode_t cmos_attr_is_visible(struct kobject *kobj,
> +				    struct attribute *attr, int n)
> +{
> +	return cmos_handle ? attr->mode : 0;
> +}
> +
> +static const struct attribute_group cmos_attr_group = {
> +	.is_visible = cmos_attr_is_visible,
> +	.attrs = cmos_attributes,
> +};
> +
>  /* --------------------------------------------------------------------- */
> 
>  static int __init cmos_init(struct ibm_init_struct *iibm)
>  {
> -	int res;
> -
>  	vdbg_printk(TPACPI_DBG_INIT,
> -		"initializing cmos commands subdriver\n");
> +		    "initializing cmos commands subdriver\n");
> 
>  	TPACPI_ACPIHANDLE_INIT(cmos);
> 
>  	vdbg_printk(TPACPI_DBG_INIT, "cmos commands are %s\n",
> -		str_supported(cmos_handle != NULL));
> +		    str_supported(cmos_handle != NULL));
> 
> -	res = device_create_file(&tpacpi_pdev->dev, &dev_attr_cmos_command);
> -	if (res)
> -		return res;
> -
> -	return (cmos_handle) ? 0 : 1;
> -}
> -
> -static void cmos_exit(void)
> -{
> -	device_remove_file(&tpacpi_pdev->dev, &dev_attr_cmos_command);
> +	return cmos_handle ? 0 : 1;
>  }
> 
>  static int cmos_read(struct seq_file *m)
> @@ -5715,7 +5636,6 @@ static struct ibm_struct cmos_driver_data = {
>  	.name = "cmos",
>  	.read = cmos_read,
>  	.write = cmos_write,
> -	.exit = cmos_exit,
>  };
> 
>  /*************************************************************************
> @@ -6226,7 +6146,6 @@ struct ibm_thermal_sensors_struct {
>  };
> 
>  static enum thermal_access_mode thermal_read_mode;
> -static const struct attribute_group *thermal_attr_group;
>  static bool thermal_use_labels;
> 
>  /* idx is zero-based */
> @@ -6399,12 +6318,26 @@ static struct attribute *thermal_temp_input_attr[] = {
>  	NULL
>  };
> 
> -static const struct attribute_group thermal_temp_input16_group = {
> -	.attrs = thermal_temp_input_attr
> -};
> +static umode_t thermal_attr_is_visible(struct kobject *kobj,
> +				       struct attribute *attr, int n)
> +{
> +	if (thermal_read_mode == TPACPI_THERMAL_NONE)
> +		return 0;
> 
> -static const struct attribute_group thermal_temp_input8_group = {
> -	.attrs = &thermal_temp_input_attr[8]
> +	if (attr == THERMAL_ATTRS(8) || attr == THERMAL_ATTRS(9) ||
> +	    attr == THERMAL_ATTRS(10) || attr == THERMAL_ATTRS(11) ||
> +	    attr == THERMAL_ATTRS(12) || attr == THERMAL_ATTRS(13) ||
> +	    attr == THERMAL_ATTRS(14) || attr == THERMAL_ATTRS(15)) {
> +		if (thermal_read_mode != TPACPI_THERMAL_TPEC_16)
> +			return 0;
> +	}
> +
> +	return attr->mode;
> +}
> +
> +static const struct attribute_group thermal_attr_group = {
> +	.is_visible = thermal_attr_is_visible,
> +	.attrs = thermal_temp_input_attr,
>  };
> 
>  #undef THERMAL_SENSOR_ATTR_TEMP
> @@ -6428,7 +6361,14 @@ static struct attribute *temp_label_attributes[] = {
>  	NULL
>  };
> 
> +static umode_t temp_label_attr_is_visible(struct kobject *kobj,
> +					  struct attribute *attr, int n)
> +{
> +	return thermal_use_labels ? attr->mode : 0;
> +}
> +
>  static const struct attribute_group temp_label_attr_group = {
> +	.is_visible = temp_label_attr_is_visible,
>  	.attrs = temp_label_attributes,
>  };
> 
> @@ -6439,7 +6379,6 @@ static int __init thermal_init(struct ibm_init_struct *iibm)
>  	u8 t, ta1, ta2, ver = 0;
>  	int i;
>  	int acpi_tmp7;
> -	int res;
> 
>  	vdbg_printk(TPACPI_DBG_INIT, "initializing thermal subdriver\n");
> 
> @@ -6514,42 +6453,7 @@ static int __init thermal_init(struct ibm_init_struct *iibm)
>  		str_supported(thermal_read_mode != TPACPI_THERMAL_NONE),
>  		thermal_read_mode);
> 
> -	switch (thermal_read_mode) {
> -	case TPACPI_THERMAL_TPEC_16:
> -		thermal_attr_group = &thermal_temp_input16_group;
> -		break;
> -	case TPACPI_THERMAL_TPEC_8:
> -	case TPACPI_THERMAL_ACPI_TMP07:
> -	case TPACPI_THERMAL_ACPI_UPDT:
> -		thermal_attr_group = &thermal_temp_input8_group;
> -		break;
> -	case TPACPI_THERMAL_NONE:
> -	default:
> -		return 1;
> -	}
> -
> -	res = sysfs_create_group(&tpacpi_hwmon->kobj, thermal_attr_group);
> -	if (res)
> -		return res;
> -
> -	if (thermal_use_labels) {
> -		res = sysfs_create_group(&tpacpi_hwmon->kobj, &temp_label_attr_group);
> -		if (res) {
> -			sysfs_remove_group(&tpacpi_hwmon->kobj, thermal_attr_group);
> -			return res;
> -		}
> -	}
> -
> -	return 0;
> -}
> -
> -static void thermal_exit(void)
> -{
> -	if (thermal_attr_group)
> -		sysfs_remove_group(&tpacpi_hwmon->kobj, thermal_attr_group);
> -
> -	if (thermal_use_labels)
> -		sysfs_remove_group(&tpacpi_hwmon->kobj, &temp_label_attr_group);
> +	return thermal_read_mode == TPACPI_THERMAL_NONE ? 1 : 0;
>  }
> 
>  static int thermal_read(struct seq_file *m)
> @@ -6576,7 +6480,6 @@ static int thermal_read(struct seq_file *m)
>  static struct ibm_struct thermal_driver_data = {
>  	.name = "thermal",
>  	.read = thermal_read,
> -	.exit = thermal_exit,
>  };
> 
>  /*************************************************************************
> @@ -8751,14 +8654,33 @@ static ssize_t fan_watchdog_store(struct device_driver *drv, const char *buf,
>  static DRIVER_ATTR_RW(fan_watchdog);
> 
>  /* --------------------------------------------------------------------- */
> +
>  static struct attribute *fan_attributes[] = {
> -	&dev_attr_pwm1_enable.attr, &dev_attr_pwm1.attr,
> +	&dev_attr_pwm1_enable.attr,
> +	&dev_attr_pwm1.attr,
>  	&dev_attr_fan1_input.attr,
> -	NULL, /* for fan2_input */
> +	&dev_attr_fan2_input.attr,
> +	&driver_attr_fan_watchdog.attr,
>  	NULL
>  };
> 
> +static umode_t fan_attr_is_visible(struct kobject *kobj, struct attribute *attr,
> +				   int n)
> +{
> +	if (fan_status_access_mode == TPACPI_FAN_NONE &&
> +	    fan_control_access_mode == TPACPI_FAN_WR_NONE)
> +		return 0;
> +
> +	if (attr == &dev_attr_fan2_input.attr) {
> +		if (!tp_features.second_fan)
> +			return 0;
> +	}
> +
> +	return attr->mode;
> +}
> +
>  static const struct attribute_group fan_attr_group = {
> +	.is_visible = fan_attr_is_visible,
>  	.attrs = fan_attributes,
>  };
> 
> @@ -8788,7 +8710,6 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
> 
>  static int __init fan_init(struct ibm_init_struct *iibm)
>  {
> -	int rc;
>  	unsigned long quirks;
> 
>  	vdbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_FAN,
> @@ -8885,27 +8806,10 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  		fan_get_status_safe(NULL);
> 
>  	if (fan_status_access_mode != TPACPI_FAN_NONE ||
> -	    fan_control_access_mode != TPACPI_FAN_WR_NONE) {
> -		if (tp_features.second_fan) {
> -			/* attach second fan tachometer */
> -			fan_attributes[ARRAY_SIZE(fan_attributes)-2] =
> -					&dev_attr_fan2_input.attr;
> -		}
> -		rc = sysfs_create_group(&tpacpi_hwmon->kobj,
> -					 &fan_attr_group);
> -		if (rc < 0)
> -			return rc;
> -
> -		rc = driver_create_file(&tpacpi_hwmon_pdriver.driver,
> -					&driver_attr_fan_watchdog);
> -		if (rc < 0) {
> -			sysfs_remove_group(&tpacpi_hwmon->kobj,
> -					&fan_attr_group);
> -			return rc;
> -		}
> +	    fan_control_access_mode != TPACPI_FAN_WR_NONE)
>  		return 0;
> -	} else
> -		return 1;
> +
> +	return 1;
>  }
> 
>  static void fan_exit(void)
> @@ -8913,11 +8817,6 @@ static void fan_exit(void)
>  	vdbg_printk(TPACPI_DBG_EXIT | TPACPI_DBG_FAN,
>  		    "cancelling any pending fan watchdog tasks\n");
> 
> -	/* FIXME: can we really do this unconditionally? */
> -	sysfs_remove_group(&tpacpi_hwmon->kobj, &fan_attr_group);
> -	driver_remove_file(&tpacpi_hwmon_pdriver.driver,
> -			   &driver_attr_fan_watchdog);
> -
>  	cancel_delayed_work(&fan_watchdog_task);
>  	flush_workqueue(tpacpi_wq);
>  }
> @@ -10002,6 +9901,35 @@ static ssize_t palmsensor_show(struct device *dev,
>  }
>  static DEVICE_ATTR_RO(palmsensor);
> 
> +static struct attribute *proxsensor_attributes[] = {
> +	&dev_attr_dytc_lapmode.attr,
> +	&dev_attr_palmsensor.attr,
> +	NULL
> +};
> +
> +static umode_t proxsensor_attr_is_visible(struct kobject *kobj,
> +					  struct attribute *attr, int n)
> +{
> +	if (attr == &dev_attr_dytc_lapmode.attr) {
> +		/*
> +		 * Platforms before DYTC version 5 claim to have a lap sensor,
> +		 * but it doesn't work, so we ignore them.
> +		 */
> +		if (!has_lapsensor ||  dytc_version < 5)
> +			return 0;
> +	} else if (attr == &dev_attr_palmsensor.attr) {
> +		if (!has_palmsensor)
> +			return 0;
> +	}
> +
> +	return attr->mode;
> +}
> +
> +static const struct attribute_group proxsensor_attr_group = {
> +	.is_visible = proxsensor_attr_is_visible,
> +	.attrs = proxsensor_attributes,
> +};
> +
>  static int tpacpi_proxsensor_init(struct ibm_init_struct *iibm)
>  {
>  	int palm_err, lap_err, err;
> @@ -10020,41 +9948,18 @@ static int tpacpi_proxsensor_init(struct ibm_init_struct *iibm)
>  	if (lap_err && (lap_err != -ENODEV))
>  		return lap_err;
> 
> -	if (has_palmsensor) {
> -		err = sysfs_create_file(&tpacpi_pdev->dev.kobj, &dev_attr_palmsensor.attr);
> -		if (err)
> -			return err;
> -	}
> -
>  	/* Check if we know the DYTC version, if we don't then get it */
>  	if (!dytc_version) {
>  		err = dytc_get_version();
>  		if (err)
>  			return err;
>  	}
> -	/*
> -	 * Platforms before DYTC version 5 claim to have a lap sensor, but it doesn't work, so we
> -	 * ignore them
> -	 */
> -	if (has_lapsensor && (dytc_version >= 5)) {
> -		err = sysfs_create_file(&tpacpi_pdev->dev.kobj, &dev_attr_dytc_lapmode.attr);
> -		if (err)
> -			return err;
> -	}
> -	return 0;
> -}
> 
> -static void proxsensor_exit(void)
> -{
> -	if (has_lapsensor)
> -		sysfs_remove_file(&tpacpi_pdev->dev.kobj, &dev_attr_dytc_lapmode.attr);
> -	if (has_palmsensor)
> -		sysfs_remove_file(&tpacpi_pdev->dev.kobj, &dev_attr_palmsensor.attr);
> +	return 0;
>  }
> 
>  static struct ibm_struct proxsensor_driver_data = {
>  	.name = "proximity-sensor",
> -	.exit = proxsensor_exit,
>  };
> 
>  /*************************************************************************
> @@ -10471,7 +10376,14 @@ static struct attribute *kbdlang_attributes[] = {
>  	NULL
>  };
> 
> +static umode_t kbdlang_attr_is_visible(struct kobject *kobj,
> +				       struct attribute *attr, int n)
> +{
> +	return tp_features.kbd_lang ? attr->mode : 0;
> +}
> +
>  static const struct attribute_group kbdlang_attr_group = {
> +	.is_visible = kbdlang_attr_is_visible,
>  	.attrs = kbdlang_attributes,
>  };
> 
> @@ -10480,28 +10392,12 @@ static int tpacpi_kbdlang_init(struct ibm_init_struct *iibm)
>  	int err, output;
> 
>  	err = get_keyboard_lang(&output);
> -	/*
> -	 * If support isn't available (ENODEV) then don't return an error
> -	 * just don't create the sysfs group.
> -	 */
> -	if (err == -ENODEV)
> -		return 0;
> -
> -	if (err)
> -		return err;
> -
> -	/* Platform supports this feature - create the sysfs file */
> -	return sysfs_create_group(&tpacpi_pdev->dev.kobj, &kbdlang_attr_group);
> -}
> -
> -static void kbdlang_exit(void)
> -{
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &kbdlang_attr_group);
> +	tp_features.kbd_lang = !err;
> +	return err;
>  }
> 
>  static struct ibm_struct kbdlang_driver_data = {
>  	.name = "kbdlang",
> -	.exit = kbdlang_exit,
>  };
> 
>  /*************************************************************************
> @@ -10572,41 +10468,131 @@ static ssize_t wwan_antenna_type_show(struct device *dev,
>  }
>  static DEVICE_ATTR_RO(wwan_antenna_type);
> 
> +static struct attribute *dprc_attributes[] = {
> +	&dev_attr_wwan_antenna_type.attr,
> +	NULL
> +};
> +
> +static umode_t dprc_attr_is_visible(struct kobject *kobj,
> +				    struct attribute *attr, int n)
> +{
> +	return has_antennatype ? attr->mode : 0;
> +}
> +
> +static const struct attribute_group dprc_attr_group = {
> +	.is_visible = dprc_attr_is_visible,
> +	.attrs = dprc_attributes,
> +};
> +
>  static int tpacpi_dprc_init(struct ibm_init_struct *iibm)
>  {
> -	int wwanantenna_err, err;
> +	int err = get_wwan_antenna(&wwan_antennatype);
> 
> -	wwanantenna_err = get_wwan_antenna(&wwan_antennatype);
>  	/*
>  	 * If support isn't available (ENODEV) then quit, but don't
>  	 * return an error.
>  	 */
> -	if (wwanantenna_err == -ENODEV)
> +	if (err == -ENODEV)
>  		return 0;
> 
> -	/* if there was an error return it */
> -	if (wwanantenna_err && (wwanantenna_err != -ENODEV))
> -		return wwanantenna_err;
> -	else if (!wwanantenna_err)
> -		has_antennatype = true;
> +	/* If there was an error return it */
> +	if (err)
> +		return err;
> 
> -	if (has_antennatype) {
> -		err = sysfs_create_file(&tpacpi_pdev->dev.kobj, &dev_attr_wwan_antenna_type.attr);
> -		if (err)
> -			return err;
> -	}
> +	has_antennatype = true;
>  	return 0;
>  }
> 
> -static void dprc_exit(void)
> +static struct ibm_struct dprc_driver_data = {
> +	.name = "dprc",
> +};
> +
> +/* --------------------------------------------------------------------- */
> +
> +static struct attribute *tpacpi_attributes[] = {
> +	&driver_attr_debug_level.attr,
> +	&driver_attr_version.attr,
> +	&driver_attr_interface_version.attr,
> +#ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
> +	&driver_attr_wlsw_emulstate.attr,
> +	&driver_attr_bluetooth_emulstate.attr,
> +	&driver_attr_wwan_emulstate.attr,
> +	&driver_attr_uwb_emulstate.attr,
> +#endif
> +	NULL
> +};
> +
> +#ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
> +static umode_t tpacpi_attr_is_visible(struct kobject *kobj,
> +				      struct attribute *attr, int n)
>  {
> -	if (has_antennatype)
> -		sysfs_remove_file(&tpacpi_pdev->dev.kobj, &dev_attr_wwan_antenna_type.attr);
> +	if (attr == &driver_attr_wlsw_emulstate.attr) {
> +		if (!dbg_wlswemul)
> +			return 0;
> +	} else if (attr == &driver_attr_bluetooth_emulstate.attr) {
> +		if (!dbg_bluetoothemul)
> +			return 0;
> +	} else if (attr == &driver_attr_wwan_emulstate.attr) {
> +		if (!dbg_wwanemul)
> +			return 0;
> +	} else if (attr == &driver_attr_uwb_emulstate.attr) {
> +		if (!dbg_uwbemul)
> +			return 0;
> +	}
> +
> +	return attr->mode;
>  }
> +#endif
> 
> -static struct ibm_struct dprc_driver_data = {
> -	.name = "dprc",
> -	.exit = dprc_exit,
> +static const struct attribute_group tpacpi_attr_group = {
> +#ifdef CONFIG_THINKPAD_ACPI_DEBUGFACILITIES
> +	.is_visible = tpacpi_attr_is_visible,
> +#endif
> +	.attrs = tpacpi_attributes,
> +};
> +
> +static const struct attribute_group *tpacpi_groups[] = {
> +	&adaptive_kbd_attr_group,
> +	&hotkey_attr_group,
> +	&bluetooth_attr_group,
> +	&wan_attr_group,
> +	&proxsensor_attr_group,
> +	&kbdlang_attr_group,
> +	&dprc_attr_group,
> +	&tpacpi_attr_group,
> +	NULL,
> +};
> +
> +static const struct attribute_group *tpacpi_hwmon_groups[] = {
> +	&thermal_attr_group,
> +	&temp_label_attr_group,
> +	&fan_attr_group,
> +	&tpacpi_attr_group,
> +	NULL,
> +};
> +
> +/****************************************************************************
> + ****************************************************************************
> + *
> + * Platform drivers
> + *
> + ****************************************************************************
> + ****************************************************************************/
> +
> +static struct platform_driver tpacpi_pdriver = {
> +	.driver = {
> +		.name = TPACPI_DRVR_NAME,
> +		.pm = &tpacpi_pm,
> +		.dev_groups = tpacpi_groups,
> +	},
> +	.shutdown = tpacpi_shutdown_handler,
> +};
> +
> +static struct platform_driver tpacpi_hwmon_pdriver = {
> +	.driver = {
> +		.name = TPACPI_HWMON_DRVR_NAME,
> +		.dev_groups = tpacpi_hwmon_groups,
> +	},
>  };
> 
>  /****************************************************************************
> @@ -11143,8 +11129,6 @@ static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
> 
>  	for (i = 0; i < ARRAY_SIZE(ibms_init); i++) {
>  		ibm = ibms_init[i].data;
> -		WARN_ON(ibm == NULL);
> -
>  		if (!ibm || !ibm->name)
>  			continue;
> 
> @@ -11274,26 +11258,16 @@ static void thinkpad_acpi_module_exit(void)
> 
>  	if (tpacpi_hwmon)
>  		hwmon_device_unregister(tpacpi_hwmon);
> -
>  	if (tpacpi_sensors_pdev)
>  		platform_device_unregister(tpacpi_sensors_pdev);
>  	if (tpacpi_pdev)
>  		platform_device_unregister(tpacpi_pdev);
> -
> -	if (tp_features.sensors_pdrv_attrs_registered)
> -		tpacpi_remove_driver_attributes(&tpacpi_hwmon_pdriver.driver);
> -	if (tp_features.platform_drv_attrs_registered)
> -		tpacpi_remove_driver_attributes(&tpacpi_pdriver.driver);
> -
>  	if (tp_features.sensors_pdrv_registered)
>  		platform_driver_unregister(&tpacpi_hwmon_pdriver);
> -
>  	if (tp_features.platform_drv_registered)
>  		platform_driver_unregister(&tpacpi_pdriver);
> -
>  	if (proc_dir)
>  		remove_proc_entry(TPACPI_PROC_DIR, acpi_root_dir);
> -
>  	if (tpacpi_wq)
>  		destroy_workqueue(tpacpi_wq);
> 
> @@ -11361,20 +11335,6 @@ static int __init thinkpad_acpi_module_init(void)
>  	}
>  	tp_features.sensors_pdrv_registered = 1;
> 
> -	ret = tpacpi_create_driver_attributes(&tpacpi_pdriver.driver);
> -	if (!ret) {
> -		tp_features.platform_drv_attrs_registered = 1;
> -		ret = tpacpi_create_driver_attributes(
> -					&tpacpi_hwmon_pdriver.driver);
> -	}
> -	if (ret) {
> -		pr_err("unable to create sysfs driver attributes\n");
> -		thinkpad_acpi_module_exit();
> -		return ret;
> -	}
> -	tp_features.sensors_pdrv_attrs_registered = 1;
> -
> -
>  	/* Device initialization */
>  	tpacpi_pdev = platform_device_register_simple(TPACPI_DRVR_NAME, -1,
>  							NULL, 0);
> --
> 2.25.1
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
