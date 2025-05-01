Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0FFAA5E8D
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  1 May 2025 14:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ezk/2ZjVNANVrYLNaoUIg/OaLXutOUdDn77X2MROPuI=; b=KnAknU7IsrGZsCILkZ5HAH87g8
	b3/KJwAUbZx09jeO8KgZp6tmcB2T0DQJoJLq4yWMTnCteog6qrWcxc/+6FdKsPaWyoQxC5i/nGRqq
	hfk8nFXQYfUVI3i7w+TnHw/c+693xQFjwN3JyyH3ehOV+3UJUblbg8vBGwkiodx+Gw3M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uATBG-0002h9-HX;
	Thu, 01 May 2025 12:38:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1uATBF-0002go-He
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 01 May 2025 12:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y3Ks4DT30E1yxp3D2avf9OjDJolabKXfaKyi564PEJk=; b=IOZ33AmlvqiqW83u+9369akFQX
 XaiOMXI3CuxTd4sfxXbSTSLpqG53ipf513fAA5wcwvd39K/I9WOIh+mFgBj6Gq+4FRGQ7/fxgY+zj
 RdILxazgpUQAOGdW2o3Ys5PJN4xB6ZoFz9Pr3fLDpEItpgEpFhe4HDQQFK5hVuaLp4Ks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y3Ks4DT30E1yxp3D2avf9OjDJolabKXfaKyi564PEJk=; b=UzoCOlGoM85RfbffWWU6kUo6JY
 53BrInH+y/CyNS8Uz/AGdDwOeblGbQvfnESDjx1PSQbfYhStkEXkRTX9CU1uDJfnylNhuEZY2yn+c
 opIOkq/rsOXt85jZcpN0yzeMUpOghxNukpD3+NkJ6C22+ztUtE2FyYLTwARvj/NTTjDM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uATAz-0003pq-J2 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 01 May 2025 12:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1746103074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y3Ks4DT30E1yxp3D2avf9OjDJolabKXfaKyi564PEJk=;
 b=DrVA2EKqh9z8yeQupfb3z553rYIc+FmBBfa68DccpH7+37+H7dC+gYZXEzJkkDseW4K/4/
 LRUWGy/8ri2gbG/WJVID38jpeiaZHUw5wvU9SQWz316f2F/cTJnUr48Pt0HNo1OybwY6m3
 HoCBPVexa/l9lTMm1YrgR4CD4JWWQuk=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-50-mrScKkzGO-ObCk6HMKPigA-1; Thu, 01 May 2025 08:37:53 -0400
X-MC-Unique: mrScKkzGO-ObCk6HMKPigA-1
X-Mimecast-MFC-AGG-ID: mrScKkzGO-ObCk6HMKPigA_1746103072
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-5f05d36993aso825167a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 01 May 2025 05:37:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746103072; x=1746707872;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=y3Ks4DT30E1yxp3D2avf9OjDJolabKXfaKyi564PEJk=;
 b=MA/cmZ5x0AqRq76hlpC4Znl1qRVsdmCTwX+/F653f684lM03WDNkQQN1LDQjXiSzjV
 3995daxevNEBgWQsYrG19Dh6V7c/67XUXqOGNw5gDpZxZqpwVuf4O4ecCD1d0xau6tIj
 Gx1KXaP1cp3OikOVz5aKgf6S7tCxInIOTgW0k6AiaTuzT62VQ0/a4zBA3bKUf16LF7Jr
 Ko1h3NbqxABfvyMoQeo8917v1S5b5RPKgEEjtZTD5XLTVLrDZsOLH4Sewdh7yYo2C3s2
 XKdr6V4ITYbrYbapfHC1lrxZZrWTcfAZz5vAMJw6hBFkigz3/s9+FQ6wGmY6DYUyhMSd
 R3hg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGRASm2QDiYrvOXe+Th3mJ0hB5CX2JNvjW66gyjTsYpNpOfgi+d88yAy1WzVhcb+tgSzTHApXHNE/O/O1h9w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx2ShtsGYbtxJ8AyzyOaYfs6AND3S426J8aYSVtZTgJ3/OR91J1
 yOVsYOGg8qh9Y//qjcbKoirNb5oy6K+f0zl9H1WcrrcNwXChA9TCL6Y6vc+WqWeimgQJR1jt+KX
 ilsh5riZxPWIEGj8MzcSnH2fAE2+nH08UFRM/7js0eoBr0R+F2tyBcv4ueaFJKlA15jMtuoCi
X-Gm-Gg: ASbGncsVq11/TN2XEsDQ2yuQQdzc4y9XbH3kBA4MlGGwxfve9PJ8RY+QUAehsu7SctV
 GiNw/ASo40KhaA1n3cXfZIGHyXJR+ub4Fa+PYsWDk+d5ETp7Rr/8qdOmmk28G3Tvu+/gTSbkrQF
 IYERM3DbSCFg+QWPAEU9ict/bgPJUSFKv2C/Tpb0eheKRspb4awYjx8axdwbTZgSAdLweokFQfK
 F3cO5qy2xhSrwaQsrrFbWgEOI+QssBc6r7Vpa2t5fod5Qdoh7DOLUxvGEBaxmLXOoAch4FfcZeA
 5j28mPw2vIjKt254/KDdOzYiSZTD0Lk/6yEkGS3AYPgBRSTXuqv0ttSjqfX7owjyVH1klY0v0rj
 TrxmbtL2fZhXQSIxyRpNgPPu5hCoEdL9k7hSN2zdRQ5JRVi8QoRiSYtkyPjawyQ==
X-Received: by 2002:a05:6402:5cb:b0:5f6:d1f8:98c9 with SMTP id
 4fb4d7f45d1cf-5f91391d709mr2135600a12.33.1746103072071; 
 Thu, 01 May 2025 05:37:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8B9p+CQZD4zy7SWY7Kb6u5DMFr7hw8r+TZRfri5zwbYxrrNNB6IGCfGSQNW7BsObMVmSqFA==
X-Received: by 2002:a05:6402:5cb:b0:5f6:d1f8:98c9 with SMTP id
 4fb4d7f45d1cf-5f91391d709mr2135585a12.33.1746103071609; 
 Thu, 01 May 2025 05:37:51 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5f92febd437sm366699a12.54.2025.05.01.05.37.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 May 2025 05:37:50 -0700 (PDT)
Message-ID: <fa2b8e85-1286-478c-857f-5db05ba0c22d@redhat.com>
Date: Thu, 1 May 2025 14:37:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, ilpo.jarvinen@linux.intel.com
References: <20250501123607.14171-1-nitjoshi@gmail.com>
In-Reply-To: <20250501123607.14171-1-nitjoshi@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -utFTVE4XGYzTpN9I36Ee-VVqTtJOjqgaES5pamMAMg_1746103072
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 1-May-25 2:36 PM,
 Nitin Joshi wrote: > New Lenovo Thinkpad
 models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1' > has new shortcut on F9
 key i.e to switch camera shutter and it > send a new 0x131b hkey [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uATAz-0003pq-J2
Subject: Re: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad-acpi: Add
 support for new hotkey for camera shutter switch
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
From: Hans de Goede via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Hans de Goede <hdegoede@redhat.com>
Cc: Mark Pearson <mpearson-lenovo@squebb.ca>,
 ibm-acpi-devel@lists.sourceforge.net, njoshi1@lenovo.com,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 1-May-25 2:36 PM, Nitin Joshi wrote:
> New Lenovo Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1'
> has new shortcut on F9 key i.e to switch camera shutter and it
> send a new 0x131b hkey event when F9 key is pressed.
> 
> This commit adds support for new hkey 0x131b.
> 
> Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Nitin Joshi <nitjoshi@gmail.com>
> ---
> Changes in v5:
> * Incorporated review comments for consistency.

Thanks, this version looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans




> Changes in v4:
> * Renamed macro from METHOD_ERR to GCES_NO_SHUTTER_DEVICE.
> Changes in v3:
> * Avoid wasteful get_camera_shutter() calls and Minor changes based on review comments to make
>   code more readable.
> Changes in v2:
> * Added ASL method to get camera shutter status and send it to userspace.
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 43 +++++++++++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 5790095c175e..3c75161667cf 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -182,6 +182,7 @@ enum tpacpi_hkey_event_t {
>  						   * directly in the sparse-keymap.
>  						   */
>  	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
> +	TP_HKEY_EV_CAMERASHUTTER_TOGGLE = 0x131b, /* Toggle Camera Shutter */
>  	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap on/off */
>  	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile in 2024 systems */
>  	TP_HKEY_EV_PROFILE_TOGGLE2	= 0x1401, /* Toggle platform profile in 2025 + systems */
> @@ -2250,6 +2251,25 @@ static void tpacpi_input_send_tabletsw(void)
>  	}
>  }
>  
> +#define GCES_NO_SHUTTER_DEVICE BIT(31)
> +
> +static int get_camera_shutter(void)
> +{
> +	acpi_handle gces_handle;
> +	int output;
> +
> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GCES", &gces_handle)))
> +		return -ENODEV;
> +
> +	if (!acpi_evalf(gces_handle, &output, NULL, "dd", 0))
> +		return -EIO;
> +
> +	if (output & GCES_NO_SHUTTER_DEVICE)
> +		return -ENODEV;
> +
> +	return output;
> +}
> +
>  static bool tpacpi_input_send_key(const u32 hkey, bool *send_acpi_ev)
>  {
>  	bool known_ev;
> @@ -3303,7 +3323,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  	const struct key_entry *keymap;
>  	bool radiosw_state  = false;
>  	bool tabletsw_state = false;
> -	int hkeyv, res, status;
> +	int hkeyv, res, status, camera_shutter_state;
>  
>  	vdbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>  			"initializing hotkey subdriver\n");
> @@ -3467,6 +3487,12 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  	if (res)
>  		return res;
>  
> +	camera_shutter_state = get_camera_shutter();
> +	if (camera_shutter_state >= 0) {
> +		input_set_capability(tpacpi_inputdev, EV_SW, SW_CAMERA_LENS_COVER);
> +		input_report_switch(tpacpi_inputdev, SW_CAMERA_LENS_COVER, camera_shutter_state);
> +	}
> +
>  	if (tp_features.hotkey_wlsw) {
>  		input_set_capability(tpacpi_inputdev, EV_SW, SW_RFKILL_ALL);
>  		input_report_switch(tpacpi_inputdev,
> @@ -11236,6 +11262,21 @@ static bool tpacpi_driver_event(const unsigned int hkey_event)
>  		else
>  			dytc_control_amt(!dytc_amt_active);
>  
> +		return true;
> +	case TP_HKEY_EV_CAMERASHUTTER_TOGGLE:
> +		int camera_shutter_state;
> +
> +		camera_shutter_state = get_camera_shutter();
> +		if (camera_shutter_state < 0) {
> +			pr_err("Error retrieving camera shutter state after shutter event\n");
> +			return true;
> +		}
> +		mutex_lock(&tpacpi_inputdev_send_mutex);
> +
> +		input_report_switch(tpacpi_inputdev, SW_CAMERA_LENS_COVER, camera_shutter_state);
> +		input_sync(tpacpi_inputdev);
> +
> +		mutex_unlock(&tpacpi_inputdev_send_mutex);
>  		return true;
>  	case TP_HKEY_EV_DOUBLETAP_TOGGLE:
>  		tp_features.trackpoint_doubletap = !tp_features.trackpoint_doubletap;



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
