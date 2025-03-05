Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF48A4FDD2
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  5 Mar 2025 12:38:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tpn4T-0007F8-KT;
	Wed, 05 Mar 2025 11:37:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1tpn4R-0007F2-ER
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 05 Mar 2025 11:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YpWTzpxBLEnQJns4RP/LsZzHqEk4J0vD1x4Ly1ln6+U=; b=NgtE58gvzT/NI1fvxT4+J+dlij
 OFhBFJ4HLcqoQMTzgbEss0AzeB7RZ1M8YfZM4LkGkeRQDww0cOq8A36SbTCRIl1SS2RygG6D2rUtM
 pRRzrRCN0AU0A0dPJ5N8zNd0oZz/kKwCL4mBBg4ia4G7X/TLa1Fy/tZA+1PdIPYAkUmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YpWTzpxBLEnQJns4RP/LsZzHqEk4J0vD1x4Ly1ln6+U=; b=Rv38aanj0FrzOjbuZve7LOI4Vm
 Emu32Ujz0hj7Kcsm9nDVlm3ehIz31tBjNvQjfkHYtraRS4j5mHFIObBHnvtxCRHvkl/2rzzr61zyp
 UCF3onY/DVzxOlxs+JSrl6wFkA0YYfNv71y+gY2Ix0kZM2BzN166ZFGjNQ5PgrFHVJ6w=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tpn4K-0005a7-VC for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 05 Mar 2025 11:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1741174653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YpWTzpxBLEnQJns4RP/LsZzHqEk4J0vD1x4Ly1ln6+U=;
 b=Y38MHY1Qsjh2y/AV462LcnsS4DCCxvPnsUcWvAIQFaUIdbLu9GENzGFEispY2Q5AUkdBi6
 JhWzrkkpuZJWA95Vk2FuLG8FVJQBA1iXXgPT3din+DeemkEBPFq6mknr2unSmqtFPijr6k
 zlroyvq+9mfifffjqptbESQtrEnfTqc=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-22-AUJB5RroOHSumO7KExTYrA-1; Wed, 05 Mar 2025 06:37:26 -0500
X-MC-Unique: AUJB5RroOHSumO7KExTYrA-1
X-Mimecast-MFC-AGG-ID: AUJB5RroOHSumO7KExTYrA_1741174646
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-ac21873859aso59347366b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 05 Mar 2025 03:37:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741174645; x=1741779445;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YpWTzpxBLEnQJns4RP/LsZzHqEk4J0vD1x4Ly1ln6+U=;
 b=Y1AC3CHcpjhjvEQjj5ri+4y8GMDObUssl0DdebSVw9RW2IgBH7/HeTP9ExXWroVnhF
 wEYDIaYDIJpjwItfqQOJY1scyhLFHm0etrwJjl/xsWj0u0WqOPMGQ/iH7l14x5TETxXs
 Et3lZThQcF33X1aHTZwMgKZ2Q3wpMzv2LUWm+rJw3nqOKrjGpPGvYvd6gUupGWwUXemX
 2neougby69PJBtbJ5vH+dB3uRAGn41mxK62VzZHQS0fmbts1kwCdURR2ydc8Z1AkjzR7
 bpYe1S9iE2BUixNgBIT1Ju2OhTH3wI63l6AmTDHSi9k89it0zqg3EwYzmrGPNXlds3g3
 VptA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXP53LMQro8N6EVNco+FAynozjXMJ/BdUVMk34eNiMKu8KdsJZ2Ib1M4cf66SVxFCUYteY+bI1ugbU8iGY37Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwrKwHok2prwDLFk+Tv6iCOnIP6PS5He8Jz48oBOt/8ve2gch6s
 Rihvfc2CVfiIRwTe3WzSTyxWsmRnpiPU0mYL3WwGLMJF2qde+sysHMdit3qjdcgadnx7WXtMXf3
 fDQOSz0WM2nSDVkt5kiBpvmYliATBkcol759VcYc1CmWfh2eUaBJlPO+9IjYw7uJBrOV8VmsQbP
 1fONDE
X-Gm-Gg: ASbGnct/U8jqcniWihtuH/AYGe2xsxqK0Si3HxKHmF4/6z/HERnsKDOhvvVyS1F6OQD
 OubVrGa48uOg0UpF4HdWIyxTd8Bo7I/WlFH9J8hX8X6e8w7ykjUa539LLe8EE0dOQYdbVnu03KE
 AZrv2bmiyI8LQHYcFDCyOpeL26RhoM/qa5AoZpjh8LFdEYTJ7eQ6vZd0Si7+CVnL2hKUbX0hv7B
 4vseoXHvhWUjSMto8vQpOgmzwKSXCj1dsYS5w9anvTB3FxUQ8wbSazfm8rpPXStlK6xcWSaUrc9
 q/p7k6/pWvdf1+fvWS8+NCPt3DkvnAy9e9B1Lu96HTZmq/cgEh88L1/5nM5erhUwLQenOpRQKW1
 GIEXDgrYF1IbM05gFhmyQ1oTHkPjYzo3F/9zF4JiFFL/i51kHGmkMdKFiLcYCOwHsQQ==
X-Received: by 2002:a17:907:2d21:b0:ac1:de84:dea1 with SMTP id
 a640c23a62f3a-ac20da878e7mr288838566b.43.1741174645119; 
 Wed, 05 Mar 2025 03:37:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEn2fTEi1XfV8aqSw2zYnOzYdQ8RDqzxm6GhrXG0VCSnNWZhob/ImwbXjXzOGAfScAecHnEaA==
X-Received: by 2002:a17:907:2d21:b0:ac1:de84:dea1 with SMTP id
 a640c23a62f3a-ac20da878e7mr288834766b.43.1741174644586; 
 Wed, 05 Mar 2025 03:37:24 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-abf67fa3c05sm628915166b.72.2025.03.05.03.37.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Mar 2025 03:37:24 -0800 (PST)
Message-ID: <f853b726-898c-4400-ab5a-50d3c19caea9@redhat.com>
Date: Wed, 5 Mar 2025 12:37:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>, Nitin Joshi
 <nitjoshi@gmail.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>
References: <20250305023319.6318-1-nitjoshi@gmail.com>
 <0cedc065-8cb7-4ef8-8989-6b113eb43460@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <0cedc065-8cb7-4ef8-8989-6b113eb43460@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qErkvnkZIJI9CVW_eTPAfx1VUAeP430QBvXQzjAC3G0_1741174646
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, Mark, On 5-Mar-25 4:20 AM, Mark Pearson wrote: >
 > On Tue, Mar 4, 2025, at 9:33 PM, Nitin Joshi wrote: >> Some Thinkpad products
 support Human Presence Detection (HPD) features. >> Add new sysfs entry so
 th [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tpn4K-0005a7-VC
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add new
 sysfs to check user presence sensing status
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-doc@vger.kernel.org,
 Nitin Joshi1 <njoshi1@lenovo.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Nitin, Mark,

On 5-Mar-25 4:20 AM, Mark Pearson wrote:
> 
> On Tue, Mar 4, 2025, at 9:33 PM, Nitin Joshi wrote:
>> Some Thinkpad products support Human Presence Detection (HPD) features.
>> Add new sysfs entry so that userspace can determine if feature is
>> supported or not.
>>
>> Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> 
> Just in case we're breaking protocol - I have reviewed this off mailing list with Nitin and gave it the thumbs up. The tag is correct.

Adding a Reviewed-by tag based on internal reviews done before
submitting v1 is fine, no worries.

I do wonder what the use-case for this exactly is?

The current documentation of "so that userspace can determine if
feature related to HPD should be enabled or disabled."

is a bit vague. The reason I'm asking is because I'm wondering
if this is the best API to expose this to userspace.

Also if I understand things correctly this is only about checking
if:

1) There is HPD support on the machine at all (if yes this file
will exist)
2) If HPD is supported on this machine, is it also enabled or
disabled in the BIOS?

IOW this is not about actually getting the HPD result,
which would be "human present" or "human not present", right ?

Any plans to export the actual HPD result ?

Also if this is just about checking the BIOS setting why not
just use the think-lmi driver / firmware-attribute sysfs API
for that ?


>> Signed-off-by: Nitin Joshi <nitjoshi@gmail.com>
>> ---
>>  .../admin-guide/laptops/thinkpad-acpi.rst     | 20 +++++
>>  drivers/platform/x86/thinkpad_acpi.c          | 79 +++++++++++++++++++
>>  2 files changed, 99 insertions(+)
>>
>> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst 
>> b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> index 4ab0fef7d440..02e6c4306f90 100644
>> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> @@ -1576,6 +1576,26 @@ percentage level, above which charging will stop.
>>  The exact semantics of the attributes may be found in
>>  Documentation/ABI/testing/sysfs-class-power.
>>
>> +User Presence Sensing Detection
>> +------
>> +
>> +sysfs: hpd_bios_enabled
>> +
>> +Some Thinkpad products support Human Presence Detection (HPD) features.
>> +Added new sysfs entry so that userspace can determine if feature related to
>> +HPD should be enabled or disabled.

"Added new sysfs entry ..." sounds more like something for a commit
message then for in an ABI Documentation file. In 5 years the "adding
new sysfs" language is going to look really weird in this file.

Please just describe the function + intended uses without using
"Adding new".

>> +
>> +The available commands are::
>> +
>> +        cat /sys/devices/platform/thinkpad_acpi/hpd_bios_enabled
>> +
>> +BIOS status is mentioned as below:
>> +- 0 = Disable
>> +- 1 = Enable
>> +
>> +The property is read-only. If the platform doesn't have support the sysfs
>> +class is not created.
>> +
>>  Multiple Commands, Module Parameters
>>  ------------------------------------
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>> b/drivers/platform/x86/thinkpad_acpi.c
>> index 72a10ed2017c..daf31b2a4c73 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -11039,6 +11039,80 @@ static const struct attribute_group 
>> auxmac_attr_group = {
>>  	.attrs = auxmac_attributes,
>>  };
>>
>> +/*************************************************************************
>> + * CHPD subdriver, for the Lenovo Human Presence Detection feature.
>> + */
>> +#define CHPD_GET_SENSOR_STATUS           0x00200000
>> +#define CHPD_GET_BIOS_UI_STATUS          0x00100000
>> +
>> +static bool has_user_presence_sensing;
>> +static int hpd_bios_status;
>> +static int chpd_command(int command, int *output)
>> +{
>> +	acpi_handle chpd_handle;
>> +
>> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "CHPD", &chpd_handle))) {
>> +		/* Platform doesn't support CHPD */
>> +		return -ENODEV;
>> +	}
>> +
>> +	if (!acpi_evalf(chpd_handle, output, NULL, "dd", command))
>> +		return -EIO;
>> +
>> +	return 0;
>> +}
>> +
>> +/* sysfs hpd bios status */
>> +static ssize_t hpd_bios_enabled_show(struct device *dev,
>> +				struct device_attribute *attr,
>> +				char *buf)
>> +{
>> +	return sysfs_emit(buf, "%d\n", hpd_bios_status);
>> +}
>> +static DEVICE_ATTR_RO(hpd_bios_enabled);
>> +
>> +static struct attribute *chpd_attributes[] = {
>> +	&dev_attr_hpd_bios_enabled.attr,
>> +	NULL
>> +};
>> +
>> +static umode_t chpd_attr_is_visible(struct kobject *kobj,
>> +					struct attribute *attr, int n)
>> +{
>> +	return has_user_presence_sensing ? attr->mode : 0;
>> +}
>> +
>> +static const struct attribute_group chpd_attr_group = {
>> +	.is_visible = chpd_attr_is_visible,
>> +	.attrs = chpd_attributes,
>> +};
>> +
>> +static int tpacpi_chpd_init(struct ibm_init_struct *iibm)
>> +{
>> +	int err, output;
>> +
>> +	err = chpd_command(CHPD_GET_SENSOR_STATUS, &output);
>> +	if (err)
>> +		return err;
>> +
>> +	if (output == 1)
>> +		return -ENODEV;
>> +
>> +	has_user_presence_sensing = true;
>> +	/* Get User Presence Sensing BIOS status */
>> +	err = chpd_command(CHPD_GET_BIOS_UI_STATUS, &output);
>> +	if (err)
>> +		return err;
>> +
>> +	hpd_bios_status = (output >> 1) & BIT(0);

Please add a define for this rather then just hardcoding
a shift by 1.

>> +
>> +	return err;
>> +}
>> +
>> +static struct ibm_struct chpd_driver_data = {
>> +	.name = "chpd",
>> +};
>> +
>>  /* --------------------------------------------------------------------- */
>>
>>  static struct attribute *tpacpi_driver_attributes[] = {
>> @@ -11098,6 +11172,7 @@ static const struct attribute_group *tpacpi_groups[] = {
>>  	&kbdlang_attr_group,
>>  	&dprc_attr_group,
>>  	&auxmac_attr_group,
>> +	&chpd_attr_group,
>>  	NULL,
>>  };
>>
>> @@ -11694,6 +11769,10 @@ static struct ibm_init_struct ibms_init[] 
>> __initdata = {
>>  		.init = auxmac_init,
>>  		.data = &auxmac_data,
>>  	},
>> +	{
>> +		.init = tpacpi_chpd_init,
>> +		.data = &chpd_driver_data,
>> +	},
>>  };
>>
>>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
>> -- 
>> 2.43.0
> 


Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
