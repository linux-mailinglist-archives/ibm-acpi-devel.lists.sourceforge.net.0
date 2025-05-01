Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE82AA5D93
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  1 May 2025 13:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QeeyinRFqCcA/HRYnbhfM2sYgMj+ARBRK69X6Es5fbs=; b=bzSnCMbMd1qilLYSheiScVkATI
	hC+5PWSKdnu/9rrYhZN90J3nAq39n8MPFvMq2JShlA0vPmqeJyJG47OtuZAeuOlLSj9HGRPedQ1US
	V2SUhnatVZbZqjnP6Rd5FwXQirXKaKArNusVWIR5yTzQ2Yc/ox7mhKo/VQg+nE/+3lFU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uARiZ-0000Cx-NL;
	Thu, 01 May 2025 11:04:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1uARiU-0000Cn-Mc
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 01 May 2025 11:04:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mz0vmjJwisUmluXzsGrk3z7j5pBRTnIIjtSZr4C3XOE=; b=bKibK37vfwjQIGuOCGKEMQjwor
 cRt8OlyYp9yazrCsrZmS2yp7GDHytf1slE4RvuKgYBZ8IAnjarrRgPNA9hxuft69T90v67kZTtq8X
 YDHs0n+jpBjVe7+AxnVASRZE2xmhnjTwinqmLHXvZfEJYx//DxqoiG/fLH8o9lFo4d2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mz0vmjJwisUmluXzsGrk3z7j5pBRTnIIjtSZr4C3XOE=; b=LRTgjwtAITdXYFD7e6LhOxWZgt
 ZGH36/vonuW8zCqCI+IeopLgLeooHkARXhcthFAh8+VxTctn384JnQxuUN3YWeQYByvI/8TZKSCCK
 4v9tdO0zchyXhCXRJy2QEhu8/CUliJM5WXHQNxIB7ZuZaWn2hMbxqnfkCfH/J/9AI0gc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uARiE-0006Cw-Lm for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 01 May 2025 11:04:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1746097447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mz0vmjJwisUmluXzsGrk3z7j5pBRTnIIjtSZr4C3XOE=;
 b=i5kc4+xPf4QsMwXkxE5+zGcJt2b3rS/YfNciKApx62I+zsM6etc+GIp3cUFWElTjCCANKY
 ZB5Wd0neb/rAwbePlOv9I2Ivgcx1+BHoVwzpewBfqOwqKSLppIjQHHDgSFu45Mstw0sfp1
 QMZXmbfSDkhAQnUtbQUjQ7xdePHAsMQ=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-gI6EaJAePvu4g46y1XoM_Q-1; Thu, 01 May 2025 07:04:06 -0400
X-MC-Unique: gI6EaJAePvu4g46y1XoM_Q-1
X-Mimecast-MFC-AGG-ID: gI6EaJAePvu4g46y1XoM_Q_1746097445
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-5f92fc82c39so189776a12.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 01 May 2025 04:04:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746097445; x=1746702245;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mz0vmjJwisUmluXzsGrk3z7j5pBRTnIIjtSZr4C3XOE=;
 b=XNqEZmKHcs330y3aYzTf4FfPuZznsUVZd+EHhvkeRm74wpDsjaRoiFpVY8FsggL+UO
 TcUHWEApGYSDK6YYMvsa3GsKUE/G0Fwmlfxvc2RghQsZyJDaFVaopSi1CiDhKuw6S4sO
 EFYjBIaWDYI9Rbuw+V3g5iwFpI/xHBmd3XqrXR2IslQo5HghE5ik896On6lF8z7mRnQL
 YgKIxJ4Z+c2wC496vCiCFufh5dW0khbTrlxUrmeWuZoLA6/60Q0pHLHAR6rBOYIDML/8
 vr3qSfWnlVyebb1Pa2+fIOxvKvwR9WMcaSSQh4Tawa98yHm1GSX1p5XnRKxv1NxsnGgb
 95ig==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgctguKWiIp2KQ3daygk9NGPMuYnGYUtPuJKYQEY7RxtoWPD4z4cjwgViK/P2UFkwx0mnCQzJ0CtOwUHfjxA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx+dW0PlfVSk3f+IWOUPgFV4gBe840saMwtLb5hWrXvhpoT8znv
 c6TTZigcNp/2Uta1Q5xBIZKRCKbWcTscqI0+K1sIoZy2W9jRO91BnIi3/gkuWIVkpcAuo2pdkux
 ONFqtbXxVXhYpajArnCaqjZcNEJmxkmobWRaDEonx5SpkEWcVMLb+lg3Vv6UX8HkFtgquwLizHB
 Vv91AA
X-Gm-Gg: ASbGncs3SGmapEYrJPwTeFrEu+PMmka0PlcLBQnObG3EyoaOyfzHBnUUiYMrfOqV00W
 pZWE+Ve41xlw4p0kJ2z+v4trTKezEsqTAK3DwHyDFk9tmKGzCXac9bUlAG9hSyo5sG1yJ8xKTKM
 YOTQ/QlTPqWXPwdo0xoKvU6Yxq5U+B2/TB0oMcO9fdQ4MNCeXtcEhiAHz54Fc3kFxnaO8ccBC12
 N3tnifQkd3r1lzq6jHGz7B/mbrZRrBFyk46jE7Fgm5BrhjgUlOFRnBHvPRpdMZHYRrtQmYpr+0f
 VibsBLutlIAYA5MnAb7D00wp8suB+vS8H7VUiuc1ECs/xOm9qdGaB6QGcSgbbCgm4wnLS1urBlf
 Y8ZCSIqDrmBhHRRm1RNvMqrCbcQBftMyRJ03mzlvNlJ/irNYUsg4OiiluvCUlQQ==
X-Received: by 2002:a17:907:9408:b0:ace:6f8e:e857 with SMTP id
 a640c23a62f3a-acef38eb40cmr234280066b.0.1746097444736; 
 Thu, 01 May 2025 04:04:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQgmqRgjG5XFVL27u4BEJ0c9uqGJhvZNUWRf5tL2nXObw1fLArolAaIpPxwX6S5m4G4tLOoQ==
X-Received: by 2002:a17:907:9408:b0:ace:6f8e:e857 with SMTP id
 a640c23a62f3a-acef38eb40cmr234278366b.0.1746097444353; 
 Thu, 01 May 2025 04:04:04 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ad0c71214b8sm24896166b.81.2025.05.01.04.04.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 May 2025 04:04:03 -0700 (PDT)
Message-ID: <c8883178-3ccb-435d-a7c3-a0cbdbb53181@redhat.com>
Date: Thu, 1 May 2025 13:04:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, ilpo.jarvinen@linux.intel.com
References: <20250501054951.8442-1-nitjoshi@gmail.com>
In-Reply-To: <20250501054951.8442-1-nitjoshi@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -4Z22z3KgGFnUzQwwReofuoj9ssm2GmAWDUuX5cOXuI_1746097445
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, On 1-May-25 7:49 AM,
 Nitin Joshi wrote: > New Lenovo
 Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1' > has new shortcut
 on F9 key i.e to switch camera shutter and it > send a new 0x131b hkey [...]
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1uARiE-0006Cw-Lm
Subject: Re: [ibm-acpi-devel] [PATCH v4] platform/x86: thinkpad-acpi: Add
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

Hi Nitin,

On 1-May-25 7:49 AM, Nitin Joshi wrote:
> New Lenovo Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1'
> has new shortcut on F9 key i.e to switch camera shutter and it
> send a new 0x131b hkey event when F9 key is pressed.
> 
> This commit adds support for new hkey 0x131b.
> 
> Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Nitin Joshi <nitjoshi@gmail.com>
> ---
> Changes in v4:
> * Renamed macro from METHOD_ERR to GCES_NO_SHUTTER_DEVICE.

Thank you for the new version, unfortunately I've spotted
a few issues which I missed before, sorry about that.

See my remarks inline.

> Changes in v3:
> * Avoid wasteful get_camera_shutter() calls and Minor changes based on review comments to make
>   code more readable.
> Changes in v2:
> * Added ASL method to get camera shutter status and send it to userspace.
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 46 +++++++++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 5790095c175e..6c6b9d4e613e 100644
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
> @@ -3272,6 +3292,7 @@ static const struct key_entry keymap_lenovo[] __initconst = {
>  	 * after switching to sparse keymap support. The mappings above use translated
>  	 * scancodes to preserve uAPI compatibility, see tpacpi_input_send_key().
>  	 */
> +	{ KE_KEY, TP_HKEY_EV_CAMERASHUTTER_TOGGLE, { KEY_CAMERA_ACCESS_TOGGLE } },

other keys where are handled fully in the driver, like
TP_HKEY_EV_PRIVACYGUARD_TOGGLE / TP_HKEY_EV_AMT_TOGGLE / TP_HKEY_EV_PROFILE_TOGGLE*
don't have an entry in the keymap. For consistency please drop the unnecessary
(will never be used) adding of this entry.

>  	{ KE_KEY, 0x131d, { KEY_VENDOR } }, /* System debug info, similar to old ThinkPad key */
>  	{ KE_KEY, 0x1320, { KEY_LINK_PHONE } },
>  	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
> @@ -3303,7 +3324,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  	const struct key_entry *keymap;
>  	bool radiosw_state  = false;
>  	bool tabletsw_state = false;
> -	int hkeyv, res, status;
> +	int hkeyv, res, status, camera_shutter_state;
>  
>  	vdbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
>  			"initializing hotkey subdriver\n");
> @@ -3467,6 +3488,12 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
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
> @@ -3633,6 +3660,8 @@ static void adaptive_keyboard_s_quickview_row(void)
>  /* 0x1000-0x1FFF: key presses */
>  static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
>  {
> +	int camera_shutter_state;
> +
>  	/* Never send ACPI netlink events for original hotkeys (hkey: 0x1001 - 0x1020) */
>  	if (hkey >= TP_HKEY_EV_ORIG_KEY_START && hkey <= TP_HKEY_EV_ORIG_KEY_END) {
>  		*send_acpi_ev = false;
> @@ -3643,6 +3672,21 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
>  			return true;
>  	}
>  
> +	if (hkey == TP_HKEY_EV_CAMERASHUTTER_TOGGLE) {
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
> +		return true;
> +	}
> +

I think it would be better to have this code inside tpacpi_driver_event(),
where all the other special keypresses are handled.

Regards,

Hans




>  	return tpacpi_input_send_key(hkey, send_acpi_ev);
>  }
>  



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
