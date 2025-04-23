Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAA4A98BCA
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 23 Apr 2025 15:48:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u7aSi-0005yD-1O;
	Wed, 23 Apr 2025 13:48:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1u7aSg-0005y3-FX
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 23 Apr 2025 13:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pEh8oqHI4NLy6ofA3ZhONsfHcZpJeelP6XBNrh5dM0o=; b=ZSskxxvYiZU/45OsVG9Ctubpuq
 YbJhMvW334FIdKRAcR4RJ+rcXrQ7zrAAlRSDPAXheuEjOJdYdBHZjWtrNMLXOQMfGEGu3bC3GY71x
 yMB6URPrsnPoCGOxAf1GlnCRPAj8xvNkDx6aFd1zz0oCcqk1X1OjZY4m1gOJEcM+oOqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pEh8oqHI4NLy6ofA3ZhONsfHcZpJeelP6XBNrh5dM0o=; b=G+ssc9N28SyIlASFQZI4uCt8Ai
 ssEryJl30b3QBzQtTLM3SMcl4EpoWizCR134/RNGxfcz3EJFjwyPo/cwlpwFvAA2Civ6Dg//uNDx2
 ky6sGFHmLhUhKXE2ypA9JwI/wt/oDwIQnb1pLzv1JP9uJmiiiAEIiqfhKYsP7Q5qjChc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u7aSN-0004YP-Qy for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 23 Apr 2025 13:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745416066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pEh8oqHI4NLy6ofA3ZhONsfHcZpJeelP6XBNrh5dM0o=;
 b=XP8rrXgG/wUEXvewKIUjgWngDPD+ZLZGbuiMr2PvysQ3hzVg7QpOiyuuS4ghiaNJpQZRm3
 VAtYiwRn2gmVyGVwgySPBQsvvPbwxtZQXd0S2XUP1lmWmteQjKADCygMdsfdgBORALHY7c
 AnsITNBWdgggvBv+7voJ5PFmwWWEE9U=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-157-2a-zRpAnOs2ir2E23FUHFA-1; Wed, 23 Apr 2025 09:47:45 -0400
X-MC-Unique: 2a-zRpAnOs2ir2E23FUHFA-1
X-Mimecast-MFC-AGG-ID: 2a-zRpAnOs2ir2E23FUHFA_1745416064
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-ac37ed2b99fso447575166b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 23 Apr 2025 06:47:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745416064; x=1746020864;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pEh8oqHI4NLy6ofA3ZhONsfHcZpJeelP6XBNrh5dM0o=;
 b=SCN/cmwrLz3Pxf/HldOCvbEXtUT/bLwNpVFmDufPfmWfDHX5bMiiasARjTQ4FhQky1
 eRWoMzengmjIJtrkjwtFifGhl6/ldd/nvpULtN4Th2SYFOQCV2Ug7jmmIqNJwcxZxvUf
 WsYufnx7qkruiXUheEUw4TtV+L+ecdGZCZtEA3TwIRS1mzkL5tejAFBp7H5ZxQidQK14
 JyvPQ4bE9ELKchyVxJM0jO512CBVN9ubYmeGhjMzbhW+9Ox1AL4HTN8v3aRKCGUWER9J
 KNBJtkRv5HwAi8ThiaPzNGX1vXx3FpbjaixOU045AKQH0zPEM92pT8a6ybSTbJypdJUl
 uYfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVExeveJoZJBt/EXLTRMCvitZny6XWD4Ms3d6Ei1TQtLHFUm1rdy2gmPOTugswQ3NIMc9uYzqi6+EVbVMnx+A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzhGKHsFEcDw13TmiKe3qZQkC+HTIkwP1gjhmjwRkbkLbUHZf4t
 56V2mSa9Nl9I+DCR00kzNArEMCxtVNvypksfF6ozUfsQiANFmR4GGto6KWk2B8zSX3ALIvzoXr+
 MPzqT6+h5Eybw1FA4bYt1BVKh0loSlMeOMxtH62tUJsjiV8tFJzVh3AcXsbNG2rMPj+AFC2ld
X-Gm-Gg: ASbGncu/yJcZ4s+e/RHqwou79PrwM1Q48FDwB4DQKkCJZ94/9Asr4CjdkPFx/hHcbag
 tYaomevYsveYLajVFNDqMfY1OsRB6guY/8XYmAHGiLE1Wyb/MAD8K+S8UuNS6CGV+dJxzf2xNDt
 koA0Ukrxzd7BkI1KLyaf11118TkO0Isut0z7bC3sgF1fHQ3q3/Gp7ovklgmsqHHKJE/+2+DRbwr
 92lU3AruLchepI7HSJVYuMk45WMRqPz05IFxv4HoyPyy+NLdpO7WW6yV9lAlMMSxpZsJS87tv0h
 lNsCG2WcJ3PFyK0CfSsf7yG0twpXrvHfVNlmvqdn7LKHrALGegF8nJausSs40sjYbZuSiqY7Klu
 U41cZDFZwIS5IQ/S44JdokK4RQ4NjytOQv0VkWUpBeos6sFilzS3SlSV7By7wyw==
X-Received: by 2002:a17:907:868a:b0:ace:3ede:9d23 with SMTP id
 a640c23a62f3a-ace3ede9ef6mr294555166b.34.1745416064110; 
 Wed, 23 Apr 2025 06:47:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZwCd4q8Iokzw2yZU81DNOMfOSrFMtikCSA7cLDSXiPQczujmjm2QDHuxC93G+YzH5mjtTGg==
X-Received: by 2002:a17:907:868a:b0:ace:3ede:9d23 with SMTP id
 a640c23a62f3a-ace3ede9ef6mr294552766b.34.1745416063693; 
 Wed, 23 Apr 2025 06:47:43 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-acb6efaa976sm803547466b.180.2025.04.23.06.47.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Apr 2025 06:47:43 -0700 (PDT)
Message-ID: <045d37f5-259c-4553-8257-51ab6fc43534@redhat.com>
Date: Wed, 23 Apr 2025 15:47:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, ilpo.jarvinen@linux.intel.com
References: <20250423133912.16334-1-nitjoshi@gmail.com>
In-Reply-To: <20250423133912.16334-1-nitjoshi@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: b6gvykuvatVBWh9j94TYwEJIvozx6qMhO-yQ--z5h9I_1745416064
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 23-Apr-25 3:39 PM, Nitin Joshi wrote: > New Lenovo
 Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1' > has new shortcut
 on F9 key i.e to switch camera shutter and it > send a new 0x131b hke [...]
 Content analysis details:   (-0.5 points, 6.0 required)
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
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7aSN-0004YP-Qy
Subject: Re: [ibm-acpi-devel] [PATCH v3] platform/x86: thinkpad-acpi: Add
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

On 23-Apr-25 3:39 PM, Nitin Joshi wrote:
> New Lenovo Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1'
> has new shortcut on F9 key i.e to switch camera shutter and it
> send a new 0x131b hkey event when F9 key is pressed.
> 
> This commit adds support for new hkey 0x131b.
> 
> Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Nitin Joshi <nitjoshi@gmail.com>
> ---
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
> index 5790095c175e..0b011dcfc626 100644
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
> +#define GCES_METHOD_ERR BIT(31)

Does this bit really indicate an error ? From other vendors
this often is a device-not-present bit and the bit being set
would mean in this case that there is no camera-shutter on
the laptop we're running on.

This also matches with the -ENODEV return.

If this indeed is a device-not-present bit then this define
should be renamed to match that.


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
> +	if (output & GCES_METHOD_ERR)
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
>  	return tpacpi_input_send_key(hkey, send_acpi_ev);
>  }
>  

Otherwise this looks good to me now.

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
