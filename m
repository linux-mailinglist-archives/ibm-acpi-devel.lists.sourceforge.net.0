Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4598ACEC4
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 22 Apr 2024 15:53:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryu60-0008G4-9t;
	Mon, 22 Apr 2024 13:52:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryu5z-0008Fw-9S
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 13:52:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cd+Zh4MroQQGf1fldgK7+pNaRKrw6YjpnlrJmcLKlPA=; b=CWR/FA5XGb8sRSg7zylz03mSt9
 6pIYOayRlvgOFpXfPx6C/3qOmjjpJsMIeR+jr+1kstRxxar0OzPn7HAkxQ6PS/ZFh1ucyV3eLa70h
 X8GtojMGOaYDh4dfRk08G0Z8BpggeZwH+IFGl0itxcA4TElviFbqA8wCIzTV8LiRvb7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cd+Zh4MroQQGf1fldgK7+pNaRKrw6YjpnlrJmcLKlPA=; b=bnNm/FbS/1MLUljxmGx3MCz4tE
 mGkADfM/n6U/6zoog27EQ2onKuQLBdK1kIsC+Jxm+NUod4lLrtsW2A477HjUv7dUvuHre7yAnUmzg
 IDHkJEDy362k4PXMm9YYbdU7y0gqsHuMqbAHFqNmkk40TE4ojVhcYA9EpefHtce3wxqI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryu5y-0005CV-6L for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 13:52:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713793943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cd+Zh4MroQQGf1fldgK7+pNaRKrw6YjpnlrJmcLKlPA=;
 b=b+lmAfQFxvAGl+lvjZIpw2QTV/UE/PNjeD8rnNNvHMGrYXjzag3/QQO1hHWzBqva7Mtvqk
 3nZRhELjIqaFETjxKMdiQ/9My+ANzI+MLsVa+gt/heZJnBxgZ/JTP0nzN7pkmpOfr8EdCU
 NO17XEB2lgdwzuRJlh5RPm7lT07l090=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-scM1jdAZO7u5VeF5ZXPObw-1; Mon, 22 Apr 2024 09:52:22 -0400
X-MC-Unique: scM1jdAZO7u5VeF5ZXPObw-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a524b774e39so496984966b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 22 Apr 2024 06:52:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713793941; x=1714398741;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cd+Zh4MroQQGf1fldgK7+pNaRKrw6YjpnlrJmcLKlPA=;
 b=C9sHd1eXU+92WWEBuQ3kpHTgRNUyq8aFiEsV/tjz7LY9hdyZITETmkIAa2kxM/B0ZX
 sGAEvp+iF3m2paOXIv0RB2d6dhTJUJunsV54PdekmPB4luN55xibLeni2I4XpJaWXYVD
 dSrdnV91ti9LrKiSHGzXF9SHWSLOQlDK5I9YIeh8UZssXz4JyyYO7kBdsnawIEZrNcRz
 5RlGtx60kN4XbpcU5Ij9Jfixj57mP64k8jnzqtnKWf2s9fAzpqooYt/+f/XdpzydNeMs
 Jw43BWzQsr81bJtMNDZWd3uJHw6Gc+MYQf8QNAbYxQAt2jiJ6iaFa3u4Z+hAAMzQPZ6h
 7xPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXUS9LiCI8j9ZAKlW9kqPKkYcrwyEptiP76ythwbxEchlSbxNa55q5Sx+U4u1NfqXyMiROCGovp6YaDi3wBJ8jp6Ik0+h7ydmor4glNQAuDGIk3URE=
X-Gm-Message-State: AOJu0YyCwYy0sp+dERTrb1AtL5NKmxa//KzyyRk30e3sI73I8t2GtTgq
 ifa9jhGuiatfdJ57k7G0zaefIJoFhAtQ9ckQ86j6oS2pa7DWxyE7itsdgMjn+0G6e8FA7UTWspy
 6N70m7XgH2NLo36JOK1T/m9nwhvMKoNIm3LqVGLWuvLG8RDs76W9PBKVEvPEkngwnD3GpVReb
X-Received: by 2002:a17:906:2483:b0:a55:43e5:3372 with SMTP id
 e3-20020a170906248300b00a5543e53372mr8471715ejb.20.1713793941458; 
 Mon, 22 Apr 2024 06:52:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiZk3mFG75ufXLKEhhDw5rc0tULPtZ+TRMneAsil91/y6Wt+Qk6NmO1XoTBW8+/jog+lS1cA==
X-Received: by 2002:a17:906:2483:b0:a55:43e5:3372 with SMTP id
 e3-20020a170906248300b00a5543e53372mr8471690ejb.20.1713793941000; 
 Mon, 22 Apr 2024 06:52:21 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 lf17-20020a170906ae5100b00a526fd6362asm5821732ejb.117.2024.04.22.06.52.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Apr 2024 06:52:20 -0700 (PDT)
Message-ID: <929da79e-444d-4107-9cce-1fb7c2b391ce@redhat.com>
Date: Mon, 22 Apr 2024 15:52:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
References: <cover.1713608122.git.lukas@wunner.de>
 <3ae8c9a73fbb291c1c863777af175c657a2a10e9.1713608122.git.lukas@wunner.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <3ae8c9a73fbb291c1c863777af175c657a2a10e9.1713608122.git.lukas@wunner.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/20/24 10:00 PM, Lukas Wunner wrote: > Deduplicate
 sysfs ->show() callbacks which expose a string at a static > memory location.
 Use the newly introduced device_show_string() helper > in the drive [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ryu5y-0005CV-6L
Subject: Re: [ibm-acpi-devel] [PATCH 5/6] platform/x86: Use
 device_show_string() helper for sysfs attributes
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
Cc: Corentin Chary <corentin.chary@gmail.com>,
 "Luke D. Jones" <luke@ljones.dev>, Azael Avalos <coproscefalo@gmail.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Ilpo Jaervinen <ilpo.jarvinen@linux.intel.com>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/20/24 10:00 PM, Lukas Wunner wrote:
> Deduplicate sysfs ->show() callbacks which expose a string at a static
> memory location.  Use the newly introduced device_show_string() helper
> in the driver core instead by declaring those sysfs attributes with
> DEVICE_STRING_ATTR_RO().
> 
> No functional change intended.
> 
> Signed-off-by: Lukas Wunner <lukas@wunner.de>

Thanks, patch looks good to me:

Acked-by: Hans de Goede <hdegoede@redhat.com>

Feel free to upstream this though whatever git tree is convenient.

Regards,

Hans



> ---
>  drivers/platform/x86/asus-wmi.c      | 62 +++++++---------------------
>  drivers/platform/x86/thinkpad_acpi.c | 10 +----
>  drivers/platform/x86/toshiba_acpi.c  |  9 +---
>  3 files changed, 20 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index 3f07bbf809ef..78d7579b2fdd 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -915,17 +915,12 @@ static ssize_t kbd_rgb_mode_store(struct device *dev,
>  }
>  static DEVICE_ATTR_WO(kbd_rgb_mode);
>  
> -static ssize_t kbd_rgb_mode_index_show(struct device *device,
> -						 struct device_attribute *attr,
> -						 char *buf)
> -{
> -	return sysfs_emit(buf, "%s\n", "cmd mode red green blue speed");
> -}
> -static DEVICE_ATTR_RO(kbd_rgb_mode_index);
> +static DEVICE_STRING_ATTR_RO(kbd_rgb_mode_index, 0444,
> +			     "cmd mode red green blue speed");
>  
>  static struct attribute *kbd_rgb_mode_attrs[] = {
>  	&dev_attr_kbd_rgb_mode.attr,
> -	&dev_attr_kbd_rgb_mode_index.attr,
> +	&dev_attr_kbd_rgb_mode_index.attr.attr,
>  	NULL,
>  };
>  
> @@ -967,17 +962,12 @@ static ssize_t kbd_rgb_state_store(struct device *dev,
>  }
>  static DEVICE_ATTR_WO(kbd_rgb_state);
>  
> -static ssize_t kbd_rgb_state_index_show(struct device *device,
> -						 struct device_attribute *attr,
> -						 char *buf)
> -{
> -	return sysfs_emit(buf, "%s\n", "cmd boot awake sleep keyboard");
> -}
> -static DEVICE_ATTR_RO(kbd_rgb_state_index);
> +static DEVICE_STRING_ATTR_RO(kbd_rgb_state_index, 0444,
> +			     "cmd boot awake sleep keyboard");
>  
>  static struct attribute *kbd_rgb_state_attrs[] = {
>  	&dev_attr_kbd_rgb_state.attr,
> -	&dev_attr_kbd_rgb_state_index.attr,
> +	&dev_attr_kbd_rgb_state_index.attr.attr,
>  	NULL,
>  };
>  
> @@ -2493,13 +2483,6 @@ static ssize_t pwm1_enable_store(struct device *dev,
>  	return count;
>  }
>  
> -static ssize_t fan1_label_show(struct device *dev,
> -					  struct device_attribute *attr,
> -					  char *buf)
> -{
> -	return sysfs_emit(buf, "%s\n", ASUS_FAN_DESC);
> -}
> -
>  static ssize_t asus_hwmon_temp1(struct device *dev,
>  				struct device_attribute *attr,
>  				char *buf)
> @@ -2534,13 +2517,6 @@ static ssize_t fan2_input_show(struct device *dev,
>  	return sysfs_emit(buf, "%d\n", value * 100);
>  }
>  
> -static ssize_t fan2_label_show(struct device *dev,
> -					  struct device_attribute *attr,
> -					  char *buf)
> -{
> -	return sysfs_emit(buf, "%s\n", ASUS_GPU_FAN_DESC);
> -}
> -
>  /* Middle/Center fan on modern ROG laptops */
>  static ssize_t fan3_input_show(struct device *dev,
>  					struct device_attribute *attr,
> @@ -2559,13 +2535,6 @@ static ssize_t fan3_input_show(struct device *dev,
>  	return sysfs_emit(buf, "%d\n", value * 100);
>  }
>  
> -static ssize_t fan3_label_show(struct device *dev,
> -					  struct device_attribute *attr,
> -					  char *buf)
> -{
> -	return sysfs_emit(buf, "%s\n", ASUS_MID_FAN_DESC);
> -}
> -
>  static ssize_t pwm2_enable_show(struct device *dev,
>  				struct device_attribute *attr,
>  				char *buf)
> @@ -2662,15 +2631,16 @@ static ssize_t pwm3_enable_store(struct device *dev,
>  static DEVICE_ATTR_RW(pwm1);
>  static DEVICE_ATTR_RW(pwm1_enable);
>  static DEVICE_ATTR_RO(fan1_input);
> -static DEVICE_ATTR_RO(fan1_label);
> +static DEVICE_STRING_ATTR_RO(fan1_label, 0444, ASUS_FAN_DESC);
> +
>  /* Fan2 - GPU fan */
>  static DEVICE_ATTR_RW(pwm2_enable);
>  static DEVICE_ATTR_RO(fan2_input);
> -static DEVICE_ATTR_RO(fan2_label);
> +static DEVICE_STRING_ATTR_RO(fan2_label, 0444, ASUS_GPU_FAN_DESC);
>  /* Fan3 - Middle/center fan */
>  static DEVICE_ATTR_RW(pwm3_enable);
>  static DEVICE_ATTR_RO(fan3_input);
> -static DEVICE_ATTR_RO(fan3_label);
> +static DEVICE_STRING_ATTR_RO(fan3_label, 0444, ASUS_MID_FAN_DESC);
>  
>  /* Temperature */
>  static DEVICE_ATTR(temp1_input, S_IRUGO, asus_hwmon_temp1, NULL);
> @@ -2681,11 +2651,11 @@ static struct attribute *hwmon_attributes[] = {
>  	&dev_attr_pwm2_enable.attr,
>  	&dev_attr_pwm3_enable.attr,
>  	&dev_attr_fan1_input.attr,
> -	&dev_attr_fan1_label.attr,
> +	&dev_attr_fan1_label.attr.attr,
>  	&dev_attr_fan2_input.attr,
> -	&dev_attr_fan2_label.attr,
> +	&dev_attr_fan2_label.attr.attr,
>  	&dev_attr_fan3_input.attr,
> -	&dev_attr_fan3_label.attr,
> +	&dev_attr_fan3_label.attr.attr,
>  
>  	&dev_attr_temp1_input.attr,
>  	NULL
> @@ -2702,17 +2672,17 @@ static umode_t asus_hwmon_sysfs_is_visible(struct kobject *kobj,
>  		if (asus->fan_type != FAN_TYPE_AGFN)
>  			return 0;
>  	} else if (attr == &dev_attr_fan1_input.attr
> -	    || attr == &dev_attr_fan1_label.attr
> +	    || attr == &dev_attr_fan1_label.attr.attr
>  	    || attr == &dev_attr_pwm1_enable.attr) {
>  		if (asus->fan_type == FAN_TYPE_NONE)
>  			return 0;
>  	} else if (attr == &dev_attr_fan2_input.attr
> -	    || attr == &dev_attr_fan2_label.attr
> +	    || attr == &dev_attr_fan2_label.attr.attr
>  	    || attr == &dev_attr_pwm2_enable.attr) {
>  		if (asus->gpu_fan_type == FAN_TYPE_NONE)
>  			return 0;
>  	} else if (attr == &dev_attr_fan3_input.attr
> -	    || attr == &dev_attr_fan3_label.attr
> +	    || attr == &dev_attr_fan3_label.attr.attr
>  	    || attr == &dev_attr_pwm3_enable.attr) {
>  		if (asus->mid_fan_type == FAN_TYPE_NONE)
>  			return 0;
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 82429e59999d..47a64a213d14 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10991,13 +10991,7 @@ static struct ibm_struct auxmac_data = {
>  	.name = "auxmac",
>  };
>  
> -static ssize_t auxmac_show(struct device *dev,
> -			   struct device_attribute *attr,
> -			   char *buf)
> -{
> -	return sysfs_emit(buf, "%s\n", auxmac);
> -}
> -static DEVICE_ATTR_RO(auxmac);
> +static DEVICE_STRING_ATTR_RO(auxmac, 0444, auxmac);
>  
>  static umode_t auxmac_attr_is_visible(struct kobject *kobj,
>  				      struct attribute *attr, int n)
> @@ -11006,7 +11000,7 @@ static umode_t auxmac_attr_is_visible(struct kobject *kobj,
>  }
>  
>  static struct attribute *auxmac_attributes[] = {
> -	&dev_attr_auxmac.attr,
> +	&dev_attr_auxmac.attr.attr,
>  	NULL
>  };
>  
> diff --git a/drivers/platform/x86/toshiba_acpi.c b/drivers/platform/x86/toshiba_acpi.c
> index 291f14ef6702..01cf60a015bf 100644
> --- a/drivers/platform/x86/toshiba_acpi.c
> +++ b/drivers/platform/x86/toshiba_acpi.c
> @@ -1814,12 +1814,7 @@ static DECLARE_WORK(kbd_bl_work, toshiba_acpi_kbd_bl_work);
>  /*
>   * Sysfs files
>   */
> -static ssize_t version_show(struct device *dev,
> -			    struct device_attribute *attr, char *buf)
> -{
> -	return sprintf(buf, "%s\n", TOSHIBA_ACPI_VERSION);
> -}
> -static DEVICE_ATTR_RO(version);
> +static DEVICE_STRING_ATTR_RO(version, 0444, TOSHIBA_ACPI_VERSION);
>  
>  static ssize_t fan_store(struct device *dev,
>  			 struct device_attribute *attr,
> @@ -2428,7 +2423,7 @@ static ssize_t cooling_method_store(struct device *dev,
>  static DEVICE_ATTR_RW(cooling_method);
>  
>  static struct attribute *toshiba_attributes[] = {
> -	&dev_attr_version.attr,
> +	&dev_attr_version.attr.attr,
>  	&dev_attr_fan.attr,
>  	&dev_attr_kbd_backlight_mode.attr,
>  	&dev_attr_kbd_type.attr,



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
