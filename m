Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54370433A17
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 19 Oct 2021 17:21:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mcquf-0007cl-Ts; Tue, 19 Oct 2021 15:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1mcquf-0007cb-3h
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 19 Oct 2021 15:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5d7XX9n8ZgdxiKKh0FWrEJA9GYvrClWhY3/nKP9NYF4=; b=Oj9cABb1TZbSphmaiSrJrNFayO
 C39pU6uu83lKSKN36t+66O5zYsEnVKP0nMdQq0NOAB40oIlWdOYUJUZSLmw31iB1q+/lvbpd7drw5
 gFBLRrrlq1EMW0e+aC2otHAOoU9uuMxqeG9px9WTPsScyLwkrY+5XCZ+i9aDPLML832U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5d7XX9n8ZgdxiKKh0FWrEJA9GYvrClWhY3/nKP9NYF4=; b=QNr3yyyyl8Gtu/hI3dPjOexuAa
 uIYG0Fa2PJu40rgZlfzsKdu8Xqf8pJanhKuD9U7MAguqNI9XErIWGk1/Es58V0RFm4Uk40BKcpZbt
 BJJCnsFEApn3QlcqN3cNvo3HTARGQdsQfgUKmiZzQ6JG8utNMaG4QW/m7tnq4UtmJVfI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcqud-006CSu-Cw
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 19 Oct 2021 15:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634656817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5d7XX9n8ZgdxiKKh0FWrEJA9GYvrClWhY3/nKP9NYF4=;
 b=eXLFAIpw13bXIvNdgmNd6ZjEze+/Ui8J3wTXx+mGMV2b7boCSKzw3rdTXLHdTqo/ROkZFX
 9nkqIR7jBzj8MhmozXdwY+9fq3QyqI12e3cm5dLC5nCyS7Hwm1ECOHQ95aCft4o500nE2d
 1fR6YmBR/OIVeRkWyn7eOKmh+0BRFjc=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-zAOguFRwNfya3X9vM503Vg-1; Tue, 19 Oct 2021 11:20:15 -0400
X-MC-Unique: zAOguFRwNfya3X9vM503Vg-1
Received: by mail-ed1-f71.google.com with SMTP id
 t18-20020a056402021200b003db9e6b0e57so17936859edv.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 19 Oct 2021 08:20:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5d7XX9n8ZgdxiKKh0FWrEJA9GYvrClWhY3/nKP9NYF4=;
 b=fh+cBU5VuvHDMiYbJJb99qvNf0mTnZS19D0P6MuV9a+3aI/7LRGcu1obl70XrLK+z1
 qWTkFNuX9qz0mu2MU5KLQ1OPn6QOgJbvsoEAVDT+5X8YK0iaB/Ht0Mvbjz99Nf9nJog1
 BA9eXK4aC3eqqaMGc0LPlUcfnoUN8P37U6vXe1YPqLmQ0j8RTrKyHYjF023+B881cZHP
 5oW/MgXZqZT0nW5Fkz9cyGZVTvqsogtnJ2PyOD6jqbjbyiWitdt29l0UaIZYYjBiB1uU
 G7R6EVma1/TVMdAbstZb9YAxarwQQLLDtqz5+TfxU+vDUj8qHytRRTTaxfayNzKHsM4v
 qJvA==
X-Gm-Message-State: AOAM533KqLE7w3NdxuI56oGATDdZCOD84v5DFMgN2ZuM0A5ds+Or/L8t
 N0z6/UuJVos/fhgDrT6fJPJ9JFvPDnI1/I+sqO3cWs1vLI69VlExgiEUe5pklWpoDQfeIsB1db+
 qHfDAW71d89xL+CnhLUSsaSky1+/UJRLh8kM=
X-Received: by 2002:a05:6402:1e88:: with SMTP id
 f8mr56528847edf.346.1634656814059; 
 Tue, 19 Oct 2021 08:20:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy0yfuPE/x+YbhG6fmP76kAMa51GlvesgpP7pIvx5TOJsVSB9otcxFooIJ2/22M3NY92ypcPw==
X-Received: by 2002:a05:6402:1e88:: with SMTP id
 f8mr56528790edf.346.1634656813697; 
 Tue, 19 Oct 2021 08:20:13 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id b2sm10326406ejz.119.2021.10.19.08.20.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 08:20:13 -0700 (PDT)
Message-ID: <361ccfeb-1a02-2eb9-32cd-d59abbf2b295@redhat.com>
Date: Tue, 19 Oct 2021 17:20:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: Ye Guojin <cgel.zte@gmail.com>, hmh@hmh.eng.br
References: <20211018091750.858826-1-ye.guojin@zte.com.cn>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211018091750.858826-1-ye.guojin@zte.com.cn>
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
 Content preview:  Hi, On 10/18/21 11:17,
 Ye Guojin wrote: > coccicheck complains
 about the use of snprintf() in sysfs show > functions: > > WARNING use
 scnprintf
 or sprintf > > Use sysfs_emit instead of scnprintf or sprint [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcqud-006CSu-Cw
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: fix
 coccinelle warnings
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
Cc: zealci@zte.com.cn, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, markgross@kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Ye Guojin <ye.guojin@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 10/18/21 11:17, Ye Guojin wrote:
> coccicheck complains about the use of snprintf() in sysfs show
> functions:
> 
> WARNING  use scnprintf or sprintf
> 
> Use sysfs_emit instead of scnprintf or sprintf makes more sense.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Ye Guojin <ye.guojin@zte.com.cn>

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
>  drivers/platform/x86/thinkpad_acpi.c | 54 ++++++++++++++--------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 882e994658f1..338a848d6dd0 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -1277,7 +1277,7 @@ static ssize_t tpacpi_rfk_sysfs_enable_show(const enum tpacpi_rfk_id id,
>  			return status;
>  	}
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n",
> +	return sysfs_emit(buf, "%d\n",
>  			(status == TPACPI_RFK_RADIO_ON) ? 1 : 0);
>  }
>  
> @@ -1370,14 +1370,14 @@ static int tpacpi_rfk_procfs_write(const enum tpacpi_rfk_id id, char *buf)
>  /* interface_version --------------------------------------------------- */
>  static ssize_t interface_version_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n", TPACPI_SYSFS_VERSION);
> +	return sysfs_emit(buf, "0x%08x\n", TPACPI_SYSFS_VERSION);
>  }
>  static DRIVER_ATTR_RO(interface_version);
>  
>  /* debug_level --------------------------------------------------------- */
>  static ssize_t debug_level_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%04x\n", dbg_level);
> +	return sysfs_emit(buf, "0x%04x\n", dbg_level);
>  }
>  
>  static ssize_t debug_level_store(struct device_driver *drv, const char *buf,
> @@ -1397,7 +1397,7 @@ static DRIVER_ATTR_RW(debug_level);
>  /* version ------------------------------------------------------------- */
>  static ssize_t version_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%s v%s\n",
> +	return sysfs_emit(buf, "%s v%s\n",
>  			TPACPI_DESC, TPACPI_VERSION);
>  }
>  static DRIVER_ATTR_RO(version);
> @@ -1409,7 +1409,7 @@ static DRIVER_ATTR_RO(version);
>  /* wlsw_emulstate ------------------------------------------------------ */
>  static ssize_t wlsw_emulstate_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", !!tpacpi_wlsw_emulstate);
> +	return sysfs_emit(buf, "%d\n", !!tpacpi_wlsw_emulstate);
>  }
>  
>  static ssize_t wlsw_emulstate_store(struct device_driver *drv, const char *buf,
> @@ -1432,7 +1432,7 @@ static DRIVER_ATTR_RW(wlsw_emulstate);
>  /* bluetooth_emulstate ------------------------------------------------- */
>  static ssize_t bluetooth_emulstate_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", !!tpacpi_bluetooth_emulstate);
> +	return sysfs_emit(buf, "%d\n", !!tpacpi_bluetooth_emulstate);
>  }
>  
>  static ssize_t bluetooth_emulstate_store(struct device_driver *drv,
> @@ -1452,7 +1452,7 @@ static DRIVER_ATTR_RW(bluetooth_emulstate);
>  /* wwan_emulstate ------------------------------------------------- */
>  static ssize_t wwan_emulstate_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", !!tpacpi_wwan_emulstate);
> +	return sysfs_emit(buf, "%d\n", !!tpacpi_wwan_emulstate);
>  }
>  
>  static ssize_t wwan_emulstate_store(struct device_driver *drv, const char *buf,
> @@ -1472,7 +1472,7 @@ static DRIVER_ATTR_RW(wwan_emulstate);
>  /* uwb_emulstate ------------------------------------------------- */
>  static ssize_t uwb_emulstate_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", !!tpacpi_uwb_emulstate);
> +	return sysfs_emit(buf, "%d\n", !!tpacpi_uwb_emulstate);
>  }
>  
>  static ssize_t uwb_emulstate_store(struct device_driver *drv, const char *buf,
> @@ -2680,7 +2680,7 @@ static ssize_t hotkey_enable_show(struct device *dev,
>  	if (res)
>  		return res;
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n", status);
> +	return sysfs_emit(buf, "%d\n", status);
>  }
>  
>  static ssize_t hotkey_enable_store(struct device *dev,
> @@ -2708,7 +2708,7 @@ static ssize_t hotkey_mask_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n", hotkey_user_mask);
> +	return sysfs_emit(buf, "0x%08x\n", hotkey_user_mask);
>  }
>  
>  static ssize_t hotkey_mask_store(struct device *dev,
> @@ -2756,7 +2756,7 @@ static ssize_t hotkey_bios_mask_show(struct device *dev,
>  {
>  	printk_deprecated_attribute("hotkey_bios_mask",
>  			"This attribute is useless.");
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n", hotkey_orig_mask);
> +	return sysfs_emit(buf, "0x%08x\n", hotkey_orig_mask);
>  }
>  
>  static DEVICE_ATTR_RO(hotkey_bios_mask);
> @@ -2766,7 +2766,7 @@ static ssize_t hotkey_all_mask_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n",
> +	return sysfs_emit(buf, "0x%08x\n",
>  				hotkey_all_mask | hotkey_source_mask);
>  }
>  
> @@ -2777,7 +2777,7 @@ static ssize_t hotkey_adaptive_all_mask_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n",
> +	return sysfs_emit(buf, "0x%08x\n",
>  			hotkey_adaptive_all_mask | hotkey_source_mask);
>  }
>  
> @@ -2788,7 +2788,7 @@ static ssize_t hotkey_recommended_mask_show(struct device *dev,
>  					    struct device_attribute *attr,
>  					    char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n",
> +	return sysfs_emit(buf, "0x%08x\n",
>  			(hotkey_all_mask | hotkey_source_mask)
>  			& ~hotkey_reserved_mask);
>  }
> @@ -2802,7 +2802,7 @@ static ssize_t hotkey_source_mask_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "0x%08x\n", hotkey_source_mask);
> +	return sysfs_emit(buf, "0x%08x\n", hotkey_source_mask);
>  }
>  
>  static ssize_t hotkey_source_mask_store(struct device *dev,
> @@ -2853,7 +2853,7 @@ static ssize_t hotkey_poll_freq_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", hotkey_poll_freq);
> +	return sysfs_emit(buf, "%d\n", hotkey_poll_freq);
>  }
>  
>  static ssize_t hotkey_poll_freq_store(struct device *dev,
> @@ -2895,7 +2895,7 @@ static ssize_t hotkey_radio_sw_show(struct device *dev,
>  	/* Opportunistic update */
>  	tpacpi_rfk_update_hwblock_state((res == TPACPI_RFK_RADIO_OFF));
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n",
> +	return sysfs_emit(buf, "%d\n",
>  			(res == TPACPI_RFK_RADIO_OFF) ? 0 : 1);
>  }
>  
> @@ -2918,7 +2918,7 @@ static ssize_t hotkey_tablet_mode_show(struct device *dev,
>  	if (res < 0)
>  		return res;
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n", !!s);
> +	return sysfs_emit(buf, "%d\n", !!s);
>  }
>  
>  static DEVICE_ATTR_RO(hotkey_tablet_mode);
> @@ -2935,7 +2935,7 @@ static ssize_t hotkey_wakeup_reason_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", hotkey_wakeup_reason);
> +	return sysfs_emit(buf, "%d\n", hotkey_wakeup_reason);
>  }
>  
>  static DEVICE_ATTR(wakeup_reason, S_IRUGO, hotkey_wakeup_reason_show, NULL);
> @@ -2951,7 +2951,7 @@ static ssize_t hotkey_wakeup_hotunplug_complete_show(struct device *dev,
>  			   struct device_attribute *attr,
>  			   char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%d\n", hotkey_autosleep_ack);
> +	return sysfs_emit(buf, "%d\n", hotkey_autosleep_ack);
>  }
>  
>  static DEVICE_ATTR(wakeup_hotunplug_complete, S_IRUGO,
> @@ -2986,7 +2986,7 @@ static ssize_t adaptive_kbd_mode_show(struct device *dev,
>  	if (current_mode < 0)
>  		return current_mode;
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n", current_mode);
> +	return sysfs_emit(buf, "%d\n", current_mode);
>  }
>  
>  static ssize_t adaptive_kbd_mode_store(struct device *dev,
> @@ -6350,7 +6350,7 @@ static ssize_t thermal_temp_input_show(struct device *dev,
>  	if (value == TPACPI_THERMAL_SENSOR_NA)
>  		return -ENXIO;
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n", value);
> +	return sysfs_emit(buf, "%d\n", value);
>  }
>  
>  #define THERMAL_SENSOR_ATTR_TEMP(_idxA, _idxB) \
> @@ -8583,7 +8583,7 @@ static ssize_t fan_pwm1_enable_show(struct device *dev,
>  	} else
>  		mode = 1;
>  
> -	return snprintf(buf, PAGE_SIZE, "%d\n", mode);
> +	return sysfs_emit(buf, "%d\n", mode);
>  }
>  
>  static ssize_t fan_pwm1_enable_store(struct device *dev,
> @@ -8649,7 +8649,7 @@ static ssize_t fan_pwm1_show(struct device *dev,
>  	if (status > 7)
>  		status = 7;
>  
> -	return snprintf(buf, PAGE_SIZE, "%u\n", (status * 255) / 7);
> +	return sysfs_emit(buf, "%u\n", (status * 255) / 7);
>  }
>  
>  static ssize_t fan_pwm1_store(struct device *dev,
> @@ -8702,7 +8702,7 @@ static ssize_t fan_fan1_input_show(struct device *dev,
>  	if (res < 0)
>  		return res;
>  
> -	return snprintf(buf, PAGE_SIZE, "%u\n", speed);
> +	return sysfs_emit(buf, "%u\n", speed);
>  }
>  
>  static DEVICE_ATTR(fan1_input, S_IRUGO, fan_fan1_input_show, NULL);
> @@ -8719,7 +8719,7 @@ static ssize_t fan_fan2_input_show(struct device *dev,
>  	if (res < 0)
>  		return res;
>  
> -	return snprintf(buf, PAGE_SIZE, "%u\n", speed);
> +	return sysfs_emit(buf, "%u\n", speed);
>  }
>  
>  static DEVICE_ATTR(fan2_input, S_IRUGO, fan_fan2_input_show, NULL);
> @@ -8727,7 +8727,7 @@ static DEVICE_ATTR(fan2_input, S_IRUGO, fan_fan2_input_show, NULL);
>  /* sysfs fan fan_watchdog (hwmon driver) ------------------------------- */
>  static ssize_t fan_watchdog_show(struct device_driver *drv, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%u\n", fan_watchdog_maxinterval);
> +	return sysfs_emit(buf, "%u\n", fan_watchdog_maxinterval);
>  }
>  
>  static ssize_t fan_watchdog_store(struct device_driver *drv, const char *buf,
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
