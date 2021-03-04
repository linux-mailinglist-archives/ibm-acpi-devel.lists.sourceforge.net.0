Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D3932D1F6
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  4 Mar 2021 12:45:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lHmP1-0004rc-WB; Thu, 04 Mar 2021 11:44:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lHmP0-0004rS-SV
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 04 Mar 2021 11:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n/Xz1Rs141ybX9shL9KT2HQsbT8r54QE9mDCehC25ys=; b=WUS+KCytArEHRefy0WpIUbJVBb
 j3XcssFVBWmLVvtJO929JTug1zWgZSPw0/PheAMsoTCIn29EOa/q47ZYNXE+xSaJwy5L7mrgrWSVF
 +vu4qEPjm3x2lQmwZztsR/pEynXCKDU8LOmPbYbtUBPbDZkAvduZA4NUH7QB3MzU2Rk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n/Xz1Rs141ybX9shL9KT2HQsbT8r54QE9mDCehC25ys=; b=MUjpteskx37uqMLxyNC/3N5OFb
 +CxRnXH6pXmlSJ+wr5BEg4rm9cCrz2txqUVVCYHnHBXzFsJhhw6dBmLC2MTGb0LV4lajV/2bekxxm
 wwsZNgnW1JvpsHq6QkBXt7eEhVM051fJSq6z+Gy5fNT8z0iB77EbuJGqm8Puaj2x3ieo=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lHmOr-00Dj8R-A5
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 04 Mar 2021 11:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614858243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n/Xz1Rs141ybX9shL9KT2HQsbT8r54QE9mDCehC25ys=;
 b=Q+Sv2yXcvl9WIt6+noGUYhxa9uHt4j20Za4EqYj7A4V0dGms6uaAi8hnDC60T6pLEzVtBm
 LZfMNY+X8tvxgWLfO2qdzej0NDP2T7i+9CyoIjAQ2e549rmppDyQMedhfQsMCGsoJBRTWk
 z82sg3o0FRQLsZNCxYszOE1tcDWOQyw=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-rgF6zpR2M-CKNHR1VNr5Yw-1; Thu, 04 Mar 2021 06:44:01 -0500
X-MC-Unique: rgF6zpR2M-CKNHR1VNr5Yw-1
Received: by mail-ej1-f71.google.com with SMTP id di5so3484034ejc.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 04 Mar 2021 03:44:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n/Xz1Rs141ybX9shL9KT2HQsbT8r54QE9mDCehC25ys=;
 b=S/ok+Tu3VGIA8z+j1kdrtWPUhqC1d70IWFJE0PuCwOnqilb9VCjx/QhZPiW+5rMwxn
 frCfYwixg8Wn8yPa7vNzOQu7lIhMMDCF2nq2AmqEOVysv/TytG0ArL2P6+4rF2tA08hY
 FHLd5V7dhGASpNMfCzqJU65jLN6W9ez9AxMx7bIH9mok9ALfMtLGEY/U9VMbn0OoeO2o
 s8G+mCrRdX4/V/Rk4ueaHYDWx2uErUcqatQgwqYsZMMl8bnnr2T8JwilGQIAdXNta+Lo
 Re876mlgxE7GgofUSfHoixSzwf3Y9A+SHSJwyb2Q7QVIyII3wnkVGrVrhkmlKz9wJbkP
 xFhA==
X-Gm-Message-State: AOAM532AESW6UaSx0UAmXpG6n5x7H+uf2damk6b9qC5ZiNckZGiNA+Y8
 UV3FaWGTqcXPKAZfwfFtbtE5kqosVhR1SepK+noxRR+Y+kN6n/0NKhRkAs6bKtpOMg/k9q5wMq1
 H8PrKF/unU+DeAJxqkIUu5vdjm4aqAegz0Y0=
X-Received: by 2002:a17:906:b6cc:: with SMTP id
 ec12mr3754773ejb.520.1614858240043; 
 Thu, 04 Mar 2021 03:44:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzihy9Ul5Dn5wLYI9rYOZZEunC1pSigM5p/DnE/qJBRvawHiMHwNdZbIKJqw1kEL3fFsh/TBA==
X-Received: by 2002:a17:906:b6cc:: with SMTP id
 ec12mr3754762ejb.520.1614858239846; 
 Thu, 04 Mar 2021 03:43:59 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id e18sm22996271eji.111.2021.03.04.03.43.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Mar 2021 03:43:59 -0800 (PST)
To: Nitin Joshi <nitjoshi@gmail.com>
References: <20210216073639.687703-1-njoshi1@lenovo.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d4427d59-7385-d41f-07a0-c27ce8d495bb@redhat.com>
Date: Thu, 4 Mar 2021 12:43:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210216073639.687703-1-njoshi1@lenovo.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lHmOr-00Dj8R-A5
Subject: Re: [ibm-acpi-devel] [PATCH v2 1/2] platorm/x86: thinkpad_acpi:
 sysfs interface to reduce wlan tx power
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
Cc: Mark Pearson <markpearson@lenovo.com>, ibm-acpi-devel@lists.sourceforge.net,
 Nitin Joshi <njoshi1@lenovo.com>, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 2/16/21 8:36 AM, Nitin Joshi wrote:
> Some newer Thinkpads have the WLAN antenna placed close to the WWAN
> antenna. In these cases FCC certification requires that when WWAN is
> active we reduce WLAN transmission power. A new Dynamic Power
> Reduction Control (DPRC) method is available from the BIOS on these
> platforms to reduce or restore WLAN Tx power.
> 
> This patch provides a sysfs interface that userspace can use to adjust the
> WLAN power appropriately.
> 
> Reviewed-by: Mark Pearson <markpearson@lenovo.com>
> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>

Thank you for your patches, I'm afraid that there are still a couple
of small issues which need to be fixed before I can apply these:

1. Both patches have "platform" misspelled in the patch Subject.
2. The patches don't apply cleanly because your kbdlang patch has
   been merged and these are based on a thinkpad_acpi version without
   these.
3. I've some review remarks about this patch, see my inline comments below.
   Note some of these remarks apply to patch 2/2 too
   (I've indicated when this is the case).

> ---
>  .../admin-guide/laptops/thinkpad-acpi.rst     |  18 +++
>  drivers/platform/x86/thinkpad_acpi.c          | 130 ++++++++++++++++++
>  2 files changed, 148 insertions(+)
> 
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 5fe1ade88c17..10410811b990 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -51,6 +51,7 @@ detailed description):
>  	- UWB enable and disable
>  	- LCD Shadow (PrivacyGuard) enable and disable
>  	- Lap mode sensor
> +	- WLAN transmission power control
>  
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1447,6 +1448,23 @@ they differ between desk and lap mode.
>  The property is read-only. If the platform doesn't have support the sysfs
>  class is not created.
>  
> +WLAN transmission power control
> +--------------------------------
> +
> +sysfs: wlan_tx_strength_reduce
> +
> +Some newer Thinkpads have the WLAN antenna placed close to the WWAN antenna.
> +This interface will be used by userspace to reduce the WLAN Tx power strength
> +when WWAN is active, as is required for FCC certification.
> +
> +The available commands are::
> +
> +        echo '0' > /sys/devices/platform/thinkpad_acpi/wlan_tx_strength_reduce
> +        echo '1' > /sys/devices/platform/thinkpad_acpi/wlan_tx_strength_reduce
> +
> +The first command restores the wlan transmission power and the latter one
> +reduces wlan transmission power.
> +
>  EXPERIMENTAL: UWB
>  -----------------
>  
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index f3e8eca8d86d..af90251d79d7 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9983,6 +9983,132 @@ static struct ibm_struct proxsensor_driver_data = {
>  	.exit = proxsensor_exit,
>  };
>  
> +/*************************************************************************
> + * DPRC(Dynamic Power Reduction Control) subdriver, for the Lenovo WWAN
> + * and WLAN feature.
> + */
> +#define DPRC_GET_WLAN_STATE             0x20000
> +#define DPRC_SET_WLAN_POWER_REDUCE      0x00030010
> +#define DPRC_SET_WLAN_POWER_FULL        0x00030100
> +#define DPRC_WLAN_POWER_REDUCE_BIT      BIT(4)
> +#define DPRC_WLAN_POWER_FULL_BIT        BIT(8)
> +static bool has_wlantxreduce;
> +static int wlan_txreduce;
> +
> +static int dprc_command(int command, int *output)
> +{
> +	acpi_handle dprc_handle;
> +
> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DPRC", &dprc_handle))) {
> +		/* Platform doesn't support DPRC */
> +		return -ENODEV;
> +	}
> +
> +	if (!acpi_evalf(dprc_handle, output, NULL, "dd", command))
> +		return -EIO;
> +
> +	/*
> +	 * METHOD_ERR gets returned on devices where few commands are not supported
> +	 * for example WLAN power reduce command is not supported on some devices.
> +	 */
> +	if (*output & METHOD_ERR)
> +		return -ENODEV;
> +
> +	return 0;
> +}
> +
> +static int get_wlan_state(int *wlan_txreduce)
> +{
> +	int output, err;
> +
> +	/* Get current WLAN Power Transmission state */
> +	err = dprc_command(DPRC_GET_WLAN_STATE, &output);
> +	if (err)
> +		return err;
> +
> +	if (output & DPRC_WLAN_POWER_REDUCE_BIT)
> +		*wlan_txreduce = 1;
> +	else if (output & DPRC_WLAN_POWER_FULL_BIT)
> +		*wlan_txreduce = 0;
> +	else
> +		return -ENODATA;

If you return -ENODEV here, then the error handling in tpacpi_dprc_init()
becomes a lot simpler / easier to read.

Note this remark applies to patch 2/2 too.

> +
> +	return 0;
> +}
> +
> +/* sysfs wlan entry */
> +static ssize_t wlan_tx_strength_reduce_show(struct device *dev,
> +						struct device_attribute *attr,
> +						char *buf)
> +{
> +	int err;
> +
> +	err = get_wlan_state(&wlan_txreduce);
> +	if (err)
> +		return err;

Is it necessary to re-query the setting here? Can't you just query it
from tpacpi_dprc_init() once and store the updated value in
wlan_tx_strength_reduce_store() on success?


> +
> +	return sysfs_emit(buf, "%d\n", wlan_txreduce);
> +}
> +
> +static ssize_t wlan_tx_strength_reduce_store(struct device *dev,
> +						struct device_attribute *attr,
> +						const char *buf, size_t count)
> +{
> +	int output, err, ret;

Please use just err here, there is no need to have both err and ret.

> +	bool state;
> +
> +	ret = kstrtobool(buf, &state);
> +	if (ret)
> +		return ret;

So change to using err here.

> +
> +	if (state)
> +		err = dprc_command(DPRC_SET_WLAN_POWER_REDUCE, &output);
> +	else
> +		err = dprc_command(DPRC_SET_WLAN_POWER_FULL, &output);


You are not doing anything with err here, shouldn't this have a:

	if (err)
		return err;

here ?

Regards,

Hans


> +
> +	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "wlan_tx_strength_reduce");
> +
> +	return count;
> +}
> +static DEVICE_ATTR_RW(wlan_tx_strength_reduce);
> +
> +static int tpacpi_dprc_init(struct ibm_init_struct *iibm)
> +{
> +	int wlantx_err, err;
> +
> +	wlantx_err = get_wlan_state(&wlan_txreduce);
> +	/*
> +	 * If support isn't available (ENODEV) for both devices then quit, but
> +	 * don't return an error.
> +	 */
> +	if ((wlantx_err == -ENODEV) || (wlantx_err == -ENODATA))
> +		return 0;
> +	/* Otherwise, if there was an error return it */
> +	if (wlantx_err && (wlantx_err != -ENODEV) && (wlantx_err != -ENODATA))
> +		return wlantx_err;
> +	else if (!wlantx_err)
> +		has_wlantxreduce = true;
> +
> +	if (has_wlantxreduce) {
> +		err = sysfs_create_file(&tpacpi_pdev->dev.kobj,
> +					&dev_attr_wlan_tx_strength_reduce.attr);
> +		if (err)
> +			return err;
> +	}
> +	return 0;
> +}
> +
> +static void dprc_exit(void)
> +{
> +	if (has_wlantxreduce)
> +		sysfs_remove_file(&tpacpi_pdev->dev.kobj, &dev_attr_wlan_tx_strength_reduce.attr);
> +}
> +
> +static struct ibm_struct dprc_driver_data = {
> +	.name = "dprc",
> +	.exit = dprc_exit,
> +};
> +
>  /****************************************************************************
>   ****************************************************************************
>   *
> @@ -10475,6 +10601,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>  		.init = tpacpi_proxsensor_init,
>  		.data = &proxsensor_driver_data,
>  	},
> +	{
> +		.init = tpacpi_dprc_init,
> +		.data = &dprc_driver_data,
> +	},
>  };
>  
>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
