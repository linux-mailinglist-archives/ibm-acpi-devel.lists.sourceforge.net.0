Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C87A2A98A30
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 23 Apr 2025 14:58:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u7Zfe-0006RV-6e;
	Wed, 23 Apr 2025 12:57:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1u7Zfb-0006Qm-N0
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 23 Apr 2025 12:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=12B1PA9yEjf0DLZx8TkvEXffVCSElLdrcmHq6YCB56o=; b=BigKqYN6tSOX5dxPqKe2sfupT3
 LdgdtlhZ3xqL5v4+zZKceAIXpw9vkMiWyqSj418NxbG2qMCg2nJyUJPZe158TzWpVQT+CitQNBm4i
 dYfCO+CgOniuH9/J47DLU6dZyfVRx0Ta8PsnXE+ve8kWDLJKjKqL9+IS/2GOnaD76zpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=12B1PA9yEjf0DLZx8TkvEXffVCSElLdrcmHq6YCB56o=; b=JvfR1PpLpbK9+L1xHw2qZTmxaC
 thnC0W1DIPF0p85rMHPscLK5zyMOnI6BTjyQPD6mzrLjMgr/XF9ruIB/0wHBucItYpNyvgXJpGcil
 EwZ+94IK+yDT/WheGzCcectvw/4od3iJF077943gDALFHGtfQZa5orb44DZViBEY2zCM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u7ZfM-0001KR-0h for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 23 Apr 2025 12:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745413026;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=12B1PA9yEjf0DLZx8TkvEXffVCSElLdrcmHq6YCB56o=;
 b=NnZi4fleRpVSIqmb3zcwf6mliBpi3VTQiqdOGo4nEoca8/+cKSLxzqQoJF7znkxarXhYdU
 nxvJV5Ak9vIW7COKnsEJOaaHfC+na3Y7JZ9jdihJj/1C9leCZt05Ddw40UClidp80Gwia+
 dCISs4/XBs+QFHa9PJyv/clo2ql4HsU=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-7Kl52902ObClmyQm5Eu9mg-1; Wed, 23 Apr 2025 08:57:05 -0400
X-MC-Unique: 7Kl52902ObClmyQm5Eu9mg-1
X-Mimecast-MFC-AGG-ID: 7Kl52902ObClmyQm5Eu9mg_1745413024
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-acb66d17be4so421400766b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 23 Apr 2025 05:57:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745413023; x=1746017823;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=12B1PA9yEjf0DLZx8TkvEXffVCSElLdrcmHq6YCB56o=;
 b=RGUUpxvCmk1tdPhOtXOyPaxEUlr2GulqhiKm2t97SehFct6vMRtbb/Uo3MS2aNfQ4+
 kZXRLXdlsCryeJbYl9z5DH+rHUpJYbnofRhVVzFCDYjxDrTHo2LWj0pePb1t1AsX+NTL
 iFMqWUfkjf/CsD8XoF1Q48/5wydMNoBBFdZi+lUF61E04NKDXUKOcZyz7R0Rn2fbZWyI
 M3OmA+KYQ57L+DTonjdRpP2etJpJoopJBxEhsxYpA9p61PDpWTqnOwbcz73jBWYIjIXk
 F+1U+NEKOOs9n2tt8/OBbV6vyL7NnHDDhxPfFaBt1xk3UBYKYCam/GNRKRJLIeNPk3dO
 4xRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCURWDhM1QZ95UidXADnpWp0dBlMW0EIhBnAbqqmoYcdA/KLuPrQ+J7YK6ebJgpcAYQ1G16sOojsS3q1cAzVaw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzSy4+qRTdUEsuaw417Nc0SyynxROYRr7AJGXh2DwQ2LGPIZbsY
 kfS7ojUkEL/4Y1DHLGsn6D5MbZcV3ZhoVsfyV0n4H30kn2Wim1iRro2Rf9d7biItvK/rRZ2Q2Yf
 w245+W3YuuBQkyvGMgGY7DGGKnos6SoS/mMbE/f8jXGb6fjZKlMnG9JU6fKYV8NgqJXcUbcmqnE
 oZEL0uxvY=
X-Gm-Gg: ASbGnctz0aRiGBJviK+VoVosvsExANteNT7caSUblf5H5MzzIDNim1+J48Nwd4trDFT
 dH/TdlTZXI9bO6Zge0cEEEsdbCqW/fANxmr7NjWhwyrW3BKi6wI2mHC2Qu3LXGgoX3zK6/riXqP
 MVS/O3VX130HXForQM2qDbuvnEwHNDYnEerOGxQE25f50YUsXzVU9aKJJZBc+rM3PFp918qrWpL
 so2abx4uusgxhDUehtZKTrxTBkF42C3KsL7JN4noG3Ds+dKU8q/vMX8UpJ+VCRLP5fP9/JIaFcv
 GL6Zb0XOY1H4E43zuWwASONomn/Q6cjdZ5JJK3vDLUeuwhkl+HIhePBT62nRGT/MbqX+2kR2OB+
 RRzAssy8HIMPZqbu/+nLRmjkluVqD8cROPKPyBPzVrioP4dPMHqD8HuGKBF57cA==
X-Received: by 2002:a17:906:f58e:b0:ac7:ed56:8a34 with SMTP id
 a640c23a62f3a-acb74b38ba7mr1275528966b.21.1745413023437; 
 Wed, 23 Apr 2025 05:57:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcgYy5tLoCSouhG5GrAwJ191lCJmSl2bY21h12SJe30vu8KQiBBanEpoiW5zb7psxiio+7eQ==
X-Received: by 2002:a17:906:f58e:b0:ac7:ed56:8a34 with SMTP id
 a640c23a62f3a-acb74b38ba7mr1275527666b.21.1745413023026; 
 Wed, 23 Apr 2025 05:57:03 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-acb8cca2323sm644457766b.181.2025.04.23.05.57.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Apr 2025 05:57:02 -0700 (PDT)
Message-ID: <191aad89-689c-4d34-ac8c-274e13fd6936@redhat.com>
Date: Wed, 23 Apr 2025 14:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, ilpo.jarvinen@linux.intel.com
References: <20250423055130.9146-1-nitjoshi@gmail.com>
In-Reply-To: <20250423055130.9146-1-nitjoshi@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ynjh7CvfbQtP1bvkD-GldV5AA1yFoEfMM2urXirVgfw_1745413024
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, On 23-Apr-25 7:51 AM,
 Nitin Joshi wrote: > New Lenovo
 Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1' > has new shortcut
 on F9 key i.e to switch camera shutter and it > send a new 0x131b hke [...]
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1u7ZfM-0001KR-0h
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad-acpi: Add
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

On 23-Apr-25 7:51 AM, Nitin Joshi wrote:
> New Lenovo Thinkpad models, e.g. the 'X9-14 Gen 1' and 'X9-15 Gen 1'
> has new shortcut on F9 key i.e to switch camera shutter and it
> send a new 0x131b hkey event when F9 key is pressed.
> 
> This commit adds support for new hkey 0x131b.
> 
> Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Nitin Joshi <nitjoshi@gmail.com>
> ---
> Changes in v2:
> 
> * Added ASL method to get camera shutter status and send it to userspace.

Thank you for the new version, overall this looks good,
one small remark below.


> ---
>  drivers/platform/x86/thinkpad_acpi.c | 43 +++++++++++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 5790095c175e..80b02e8538e8 100644
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
> +static int get_camera_shutter(void)
> +{
> +	acpi_handle gces_handle;
> +	int output;
> +
> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GCES", &gces_handle))) {
> +		/* Platform doesn't support GCES */
> +		return -ENODEV;
> +	}
> +
> +	if (!acpi_evalf(gces_handle, &output, NULL, "dd", 0))
> +		return -EIO;
> +
> +	if (output & BIT(31))
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
> @@ -3467,6 +3488,13 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  	if (res)
>  		return res;
>  
> +	camera_shutter_state = get_camera_shutter();
> +	if (camera_shutter_state >= 0) {
> +		input_set_capability(tpacpi_inputdev, EV_SW, SW_CAMERA_LENS_COVER);
> +		input_report_switch(tpacpi_inputdev,
> +				SW_CAMERA_LENS_COVER, camera_shutter_state);
> +	}
> +
>  	if (tp_features.hotkey_wlsw) {
>  		input_set_capability(tpacpi_inputdev, EV_SW, SW_RFKILL_ALL);
>  		input_report_switch(tpacpi_inputdev,
> @@ -3633,6 +3661,8 @@ static void adaptive_keyboard_s_quickview_row(void)
>  /* 0x1000-0x1FFF: key presses */
>  static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
>  {
> +	int camera_shutter_state;
> +
>  	/* Never send ACPI netlink events for original hotkeys (hkey: 0x1001 - 0x1020) */
>  	if (hkey >= TP_HKEY_EV_ORIG_KEY_START && hkey <= TP_HKEY_EV_ORIG_KEY_END) {
>  		*send_acpi_ev = false;
> @@ -3643,6 +3673,17 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
>  			return true;
>  	}
>  
> +	camera_shutter_state = get_camera_shutter();

Doing this on every hotkey_notify_hotkey() seems wasteful /
inefficient. I suggest to move this inside the if, like this:

	if (hkey == TP_HKEY_EV_CAMERASHUTTER_TOGGLE) {
		camera_shutter_state = get_camera_shutter();
		if (camera_shutter_state < 0) {
			pr_err("Error retrieving camera shutter state after shutter event\n");
			return true;
		}

		mutex_lock(&tpacpi_inputdev_send_mutex);

		input_report_switch(tpacpi_inputdev,
		...

> +	if (hkey == TP_HKEY_EV_CAMERASHUTTER_TOGGLE && (camera_shutter_state >= 0)) {
> +		mutex_lock(&tpacpi_inputdev_send_mutex);
> +
> +		input_report_switch(tpacpi_inputdev,
> +			SW_CAMERA_LENS_COVER, camera_shutter_state);
> +		input_sync(tpacpi_inputdev);
> +
> +		mutex_unlock(&tpacpi_inputdev_send_mutex);


I believe you should add a "return true" after the unlock to avoid this
code from triggering later:

                if (!known_ev) {
                        pr_notice("unhandled HKEY event 0x%04x\n", hkey);
                        pr_notice("please report the conditions when this event happened to %s
                                  TPACPI_MAIL);
		}

and also to avoid needlessly going through hotkey_notify_hotkey();

> +	}
> +
>  	return tpacpi_input_send_key(hkey, send_acpi_ev);
>  }

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
