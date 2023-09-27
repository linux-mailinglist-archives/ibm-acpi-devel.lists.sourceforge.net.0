Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EBA7AFDA9
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 27 Sep 2023 10:09:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qlPb8-0008WV-RY;
	Wed, 27 Sep 2023 08:08:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qlPb8-0008WN-2a
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 27 Sep 2023 08:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5mqMeT0GBWYCKzb+u61vBU4JG18vUL40FriF6j8Y60Y=; b=dBCe4vxSDgMHamJGdfXl8psrmL
 4/blnb4l0oaY3gWoxpAnRLuShLQ5Tn93N7hZ/3V8rdA4FyejhErM0qmQaN/HFySJNl7efWJ4csUhD
 4WWkiIqSybBHXSFhxGCh6yPeSWyC53QGOlaQrlNJyKmoIa2iC3dAZMm/IF5dyG1uoWiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5mqMeT0GBWYCKzb+u61vBU4JG18vUL40FriF6j8Y60Y=; b=COCk/e3n9mRsgKgTNPRe+YVzhD
 8NcE+4iYLf98+422e1VVmuWcGtCISTYgR+mgYWYP7oXBOd/hfXUmSuJjE5FRYdodbqHG7jJPjznzq
 10AoDBG8oPAHMjnjZpLoYRz7Oq/kazCjS+UqEf2osmd2qeEwIgs7ifSLDRBHi7s8U7q0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlPax-008Fdn-SL for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 27 Sep 2023 08:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695802105;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5mqMeT0GBWYCKzb+u61vBU4JG18vUL40FriF6j8Y60Y=;
 b=TY1gnJH6btPAwR6xFDinii1gHcGQ6VMWh1wkwro3ZPU0sC7rzDY1zInzH/PbhXGzUHkXsk
 tQVDO6DFkMCXOO7vA4qFna5SO9yXiTOQ2uoBoLvdmSDbcEPz5wGNT4V+PGB5a5Pd+yqlLW
 vQOzz6JVoxTxIR7LKMBLRTa4W6hLjfM=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-A_bjmAqGN6CndatikdaMOQ-1; Wed, 27 Sep 2023 04:08:24 -0400
X-MC-Unique: A_bjmAqGN6CndatikdaMOQ-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-9b274cc9636so593547766b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 27 Sep 2023 01:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695802103; x=1696406903;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5mqMeT0GBWYCKzb+u61vBU4JG18vUL40FriF6j8Y60Y=;
 b=GIALEu+B0avOlLwX5GaSq6WG3bAw3w55+WPrFregJTbk+l/aXl69AYLZc3UKgDkPPU
 tMJsG9haHtrmfbdAsVhCBSsbwHEKvGGpQqvaBhPlFyeF2yzvBL+1TN39GSiGuFD0XlAb
 9ECzwB819gxWT1kUJazKCINHEK99Nq+KjvJN7ljyPPr3YOOvfjhOa7zidn9oHACd5s57
 KAnGLKPq8CWwFGbto/WwnflG70FVXsDnJrXXLasxMUbQEitBnvPm3c9gbYDKsfCHQ+an
 V/z/x5A5luEmmOvtdwxS3TINdL1NkAynKFHHGBBOjYnEGI1sipF+ZQPKe3kl5EzYTn7l
 bjCA==
X-Gm-Message-State: AOJu0YxQYYLezK1bFKEYMedRTRQ/8pPsQLFDWuVXHZyjiZvTJn7i2Mvz
 mDg36GAJyl7HH3iOTeELaEYMKg/yuoVJ8gNufSvE+zb53UuRqt7Bgo4BH0vgI1Iuxz+DrH3jmL+
 tBgQFyVf/WTbWKDpkWhoU9N0JmE2TKBIRnpM=
X-Received: by 2002:a17:906:2212:b0:9ae:56ad:65a7 with SMTP id
 s18-20020a170906221200b009ae56ad65a7mr987930ejs.45.1695802103017; 
 Wed, 27 Sep 2023 01:08:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxKAz3HMBPYU5epxppQchfC2mZ+xbnrxSo7eq4GJvChG4PLWopfq+HNG36xPgmab4BliTrAQ==
X-Received: by 2002:a17:906:2212:b0:9ae:56ad:65a7 with SMTP id
 s18-20020a170906221200b009ae56ad65a7mr987908ejs.45.1695802102572; 
 Wed, 27 Sep 2023 01:08:22 -0700 (PDT)
Received: from [192.168.1.217] ([109.36.155.235])
 by smtp.gmail.com with ESMTPSA id
 ha26-20020a170906a89a00b009930308425csm8893137ejb.31.2023.09.27.01.08.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Sep 2023 01:08:21 -0700 (PDT)
Message-ID: <24248f7e-42f2-eea4-d748-c562f529a12f@redhat.com>
Date: Wed, 27 Sep 2023 10:08:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: "Fernando Eckhardt Valle (FIPT)" <fevalle@ipt.br>,
 "ilpo.jarvinen@linux.intel.com" <ilpo.jarvinen@linux.intel.com>,
 "mpearson-lenovo@squebb.ca" <mpearson-lenovo@squebb.ca>,
 "corbet@lwn.net" <corbet@lwn.net>, "hmh@hmh.eng.br" <hmh@hmh.eng.br>,
 "markgross@kernel.org" <markgross@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
References: <20230925184133.6735-1-fevalle@ipt.br>
 <0efd719a-802d-1401-7cee-d3918b47441d@redhat.com>
 <CPVP152MB50532B5F8BBAC92243930842D8C3A@CPVP152MB5053.LAMP152.PROD.OUTLOOK.COM>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CPVP152MB50532B5F8BBAC92243930842D8C3A@CPVP152MB5053.LAMP152.PROD.OUTLOOK.COM>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 9/26/23 20:42, Fernando Eckhardt Valle (FIPT) wrote:
 > Thanks for the review Hans, I'll send a new version with some adjustments.
 > >> Note this is just a preference you keen keep this as is >> if [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlPax-008Fdn-SL
Subject: Re: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad_acpi: sysfs
 interface to auxmac
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 9/26/23 20:42, Fernando Eckhardt Valle (FIPT) wrote:
> Thanks for the review Hans, I'll send a new version with some adjustments.
> 
>> Note this is just a preference you keen keep this as is
>> if you want,
> I liked the Ilpo suggestion, with two 'gotos' is eliminated repeated code. If everything is ok, I prefer it this way.

If you prefer the 2 goto solution from v5 then keeping it as is is fine.

Regards,

Hans




> ________________________________________
> From: Hans de Goede <hdegoede@redhat.com>
> Sent: Tuesday, September 26, 2023 7:23 AM
> To: Fernando Eckhardt Valle (FIPT); ilpo.jarvinen@linux.intel.com; mpearson-lenovo@squebb.ca; corbet@lwn.net; hmh@hmh.eng.br; markgross@kernel.org; linux-doc@vger.kernel.org; linux-kernel@vger.kernel.org; ibm-acpi-devel@lists.sourceforge.net; platform-driver-x86@vger.kernel.org
> Subject: Re: [PATCH v5] platform/x86: thinkpad_acpi: sysfs interface to auxmac
> 
> Hi,
> 
> It looks like I just reviewed an old version, reviewing this version now ...
> 
> On 9/25/23 20:41, Fernando Eckhardt Valle wrote:
>> Newer Thinkpads have a feature called MAC Address Pass-through.
>> This patch provides a sysfs interface that userspace can use
>> to get this auxiliary mac address.
>>
>> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>
>> ---
>> Changes in v5:
>> - Repeated code deleted.
>> - Adjusted offset of a strscpy().
>> Changes in v4:
>> - strscpy() in all string copies.
>> Changes in v3:
>> - Added null terminator to auxmac string when copying auxiliary
>> mac address value.
>> Changes in v2:
>> - Added documentation.
>> - All handling of the auxmac value is done in the _init function.
>> ---
>>  .../admin-guide/laptops/thinkpad-acpi.rst     | 20 +++++
>>  drivers/platform/x86/thinkpad_acpi.c          | 81 +++++++++++++++++++
>>  2 files changed, 101 insertions(+)
>>
>> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> index e27a1c3f6..98d304010 100644
>> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> @@ -53,6 +53,7 @@ detailed description):
>>       - Lap mode sensor
>>       - Setting keyboard language
>>       - WWAN Antenna type
>> +     - Auxmac
>>
>>  A compatibility table by model and feature is maintained on the web
>>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
>> @@ -1511,6 +1512,25 @@ Currently 2 antenna types are supported as mentioned below:
>>  The property is read-only. If the platform doesn't have support the sysfs
>>  class is not created.
>>
>> +Auxmac
>> +------
>> +
>> +sysfs: auxmac
>> +
>> +Some newer Thinkpads have a feature called MAC Address Pass-through. This
>> +feature is implemented by the system firmware to provide a system unique MAC,
>> +that can override a dock or USB ethernet dongle MAC, when connected to a
>> +network. This property enables user-space to easily determine the MAC address
>> +if the feature is enabled.
>> +
>> +The values of this auxiliary MAC are:
>> +
>> +        cat /sys/devices/platform/thinkpad_acpi/auxmac
>> +
>> +If the feature is disabled, the value will be 'disabled'.
>> +
>> +This property is read-only.
>> +
>>  Adaptive keyboard
>>  -----------------
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index d70c89d32..2324ebb46 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -10785,6 +10785,82 @@ static struct ibm_struct dprc_driver_data = {
>>       .name = "dprc",
>>  };
>>
>> +/*
>> + * Auxmac
>> + *
>> + * This auxiliary mac address is enabled in the bios through the
>> + * MAC Address Pass-through feature. In most cases, there are three
>> + * possibilities: Internal Mac, Second Mac, and disabled.
>> + *
>> + */
>> +
>> +#define AUXMAC_LEN 12
>> +#define AUXMAC_START 9
>> +#define AUXMAC_STRLEN 22
>> +#define AUXMAC_BEGIN_MARKER 8
>> +#define AUXMAC_END_MARKER 21
>> +
>> +static char auxmac[AUXMAC_LEN + 1];
>> +
>> +static int auxmac_init(struct ibm_init_struct *iibm)
>> +{
>> +     acpi_status status;
>> +     struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
>> +     union acpi_object *obj;
>> +
>> +     status = acpi_evaluate_object(NULL, "\\MACA", NULL, &buffer);
>> +
>> +     if (ACPI_FAILURE(status))
>> +             return -ENODEV;
> 
> In this code path you don't initialize the "auxmac" buffer at all,
> but your auxmac_attr_group does not have an is_visible callback,
> so the auxmax sysfs attr will still show up.
> 
> Please add an is_visible callback and retuern 0 (not visible)
> when auxmac[0] == 0; See existing is_visible code for some
> examples.
> 
>> +
>> +     obj = buffer.pointer;
>> +
>> +     if (obj->type != ACPI_TYPE_STRING || obj->string.length != AUXMAC_STRLEN) {
>> +             pr_info("Invalid buffer for MAC address pass-through.\n");
>> +             goto auxmacinvalid;
>> +     }
>> +
>> +     if (obj->string.pointer[AUXMAC_BEGIN_MARKER] != '#' ||
>> +         obj->string.pointer[AUXMAC_END_MARKER] != '#') {
>> +             pr_info("Invalid header for MAC address pass-through.\n");
>> +             goto auxmacinvalid;
>> +     }
>> +
>> +     if (strncmp(obj->string.pointer + AUXMAC_START, "XXXXXXXXXXXX", AUXMAC_LEN) != 0)
>> +             strscpy(auxmac, obj->string.pointer + AUXMAC_START, AUXMAC_LEN + 1);
> 
> Please use sizeof(auxmac) as last parameter to strscpy() here.
> 
>> +     else
>> +             strscpy(auxmac, "disabled", AUXMAC_LEN);
> 
> Please use sizeof(auxmac) as last parameter to strscpy() here.
> 
> Also note how you pass 2 different dest-sizes for the same dest buffer before,
> which looks weird ...
> 
> 
>> +
>> +free:
>> +     kfree(obj);
>> +     return 0;
>> +
>> +auxmacinvalid:
>> +     strscpy(auxmac, "unavailable", AUXMAC_LEN);
>> +     goto free;
>> +}
> 
> I'm not liking the goto dance here, I would prefer:
> 
>         kfree(obj);
>         return 0;
> 
> auxmacinvalid:
>         strscpy(auxmac, "unavailable", AUXMAC_LEN);
>         kfree(obj);
>         return 0;
> 
> It is quite normal for an error-exit path to repeat a kfree().
> 
> Note this is just a preference you keen keep this as is
> if you want, but to me the goto free which jumps up looks
> pretty weird.
> 
> Regards,
> 
> Hans
> 
> 
> 
>> +
>> +static struct ibm_struct auxmac_data = {
>> +     .name = "auxmac",
>> +};
>> +
>> +static ssize_t auxmac_show(struct device *dev,
>> +                        struct device_attribute *attr,
>> +                        char *buf)
>> +{
>> +     return sysfs_emit(buf, "%s\n", auxmac);
>> +}
>> +static DEVICE_ATTR_RO(auxmac);
>> +
>> +static struct attribute *auxmac_attributes[] = {
>> +     &dev_attr_auxmac.attr,
>> +     NULL
>> +};
>> +
>> +static const struct attribute_group auxmac_attr_group = {
>> +     .attrs = auxmac_attributes,
>> +};
>> +
>>  /* --------------------------------------------------------------------- */
>>
>>  static struct attribute *tpacpi_driver_attributes[] = {
>> @@ -10843,6 +10919,7 @@ static const struct attribute_group *tpacpi_groups[] = {
>>       &proxsensor_attr_group,
>>       &kbdlang_attr_group,
>>       &dprc_attr_group,
>> +     &auxmac_attr_group,
>>       NULL,
>>  };
>>
>> @@ -11414,6 +11491,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>>               .init = tpacpi_dprc_init,
>>               .data = &dprc_driver_data,
>>       },
>> +     {
>> +             .init = auxmac_init,
>> +             .data = &auxmac_data,
>> +     },
>>  };
>>
>>  static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
> 
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
