Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D358121B0E2
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 10 Jul 2020 10:01:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jtnxk-0006yB-6f; Fri, 10 Jul 2020 08:00:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jtnxi-0006y2-LF
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 08:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hqiYYUq7BP3enHF9jO/WbU5G695/oRtUXcB4Tvc4erQ=; b=T8n1JkR6RsYLunB30365NNK+aK
 j6M0Smr+SKe12j63lR6bOvEKuXtejMQS1fkUZRLdNs4CzYwY67ZRuGrnj98bdTRfIJ174H2cJJ4p3
 XQn84TxRhAYGaNqPWh3RkoRMYq0qSMTU8AgU4uN4jPzA2UPIYpBeeKtWurMA3inZTaj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hqiYYUq7BP3enHF9jO/WbU5G695/oRtUXcB4Tvc4erQ=; b=W7b+cHYf813V4q7qiLxuf/nwj9
 tNASarCmV7ZQkgO1FNf+G5Amm3hkpuAY8HnftBYgxUtjaPajWtKvIkS125eNCRglz4bDE+pfkO4Ha
 4nLzkcy2ad9xAPhCHh1tadfhEfsWCFeR9jHXFgpGMm0y9gxfn5hNLtxvMCADDPzM6CaE=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jtnxg-00Cxjq-Hj
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 10 Jul 2020 08:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594368035;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hqiYYUq7BP3enHF9jO/WbU5G695/oRtUXcB4Tvc4erQ=;
 b=Hm6pEVJdxa4/VIokXrxpj7jTCedO8jwLJEWO4IqLndCqJ0dPzXOt39IeDtYoUulxMVz/XN
 t+TWlo2Z4AFbOhvsmNQwtrHEo0+EwgZJynWDFoclUcnrf+Hm7/7O0NZMbKQec0RSEl3ZeX
 iIyH6OVa/zluV5OUPcytYAeYfhTjP2A=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-xOlE-E4KOLWRibJJWclfJw-1; Fri, 10 Jul 2020 04:00:31 -0400
X-MC-Unique: xOlE-E4KOLWRibJJWclfJw-1
Received: by mail-ej1-f72.google.com with SMTP id b24so5368022ejb.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 10 Jul 2020 01:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hqiYYUq7BP3enHF9jO/WbU5G695/oRtUXcB4Tvc4erQ=;
 b=E1nvdtv63ooEy1/Uui3pZ0CaJxVXyqlg7E+objbC8R1ISmcjQQc0P4KsuQLZDDOfka
 ADSDcBHJgJAxkpeoMJSyjyi3Nxz93zGgnaJCpdBKzFiGBDcoRa64hI/DhmsAjH7BjbHW
 y2GmpFTkSfnHyTrdLBtv1xBPE93YmPS4e+llgI6AB2DmlgrfgHXnqhUaqVTpWEoTB4S3
 BPc0ESp6jbS4V/U8lLIrTP2QQskYtaEK+Wj39NY5+/tmjOeWUZ59uNhTfXSO3lZNPqbN
 OzYzEqxxAy8ALvWMIAf1l4+QDCkCFR+ugZZbRLyOwSs62d75TIkepnFiWwCx6SEdgpcw
 QLLQ==
X-Gm-Message-State: AOAM533QxWn9BwzAVu9PJzth0QoE7yt7R3SCv5xSfjCIYBiozCq0OW8H
 S0KMLhO6MfGd/+s/CWWgS/3lUXPh8xqB5+RpKLzRZ53S9XJXndCYOqJOI3ralBINexlupIzx9JL
 PmJfRSS4bqRW75C9l8sKHw1aFrIs7EoFFNSU=
X-Received: by 2002:a50:f08c:: with SMTP id v12mr74740692edl.119.1594368029798; 
 Fri, 10 Jul 2020 01:00:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZovV2iFyd0AQyELOnqN1obtQIQZ1JIN5rMDAtRHdqbdMSlrzHucR/UWg1fcv4JhLI9aGtvg==
X-Received: by 2002:a50:f08c:: with SMTP id v12mr74740672edl.119.1594368029495; 
 Fri, 10 Jul 2020 01:00:29 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id e8sm3175838eja.101.2020.07.10.01.00.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jul 2020 01:00:28 -0700 (PDT)
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Mark Pearson <markpearson@lenovo.com>
References: <markpearson@lenovo.com>
 <20200703012353.26413-1-markpearson@lenovo.com>
 <CAHp75Vcs15wGCzwW8Pq7AXyqQnvnopNdFP1nDE0nf+ZTz=9zFw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7c1698a6-ebd6-553d-a686-d9bd4e5a5e99@redhat.com>
Date: Fri, 10 Jul 2020 10:00:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAHp75Vcs15wGCzwW8Pq7AXyqQnvnopNdFP1nDE0nf+ZTz=9zFw@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtnxg-00Cxjq-Hj
Subject: Re: [ibm-acpi-devel] [PATCH v5] platform/x86: thinkpad_acpi: lap or
 desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, Bastien Nocera <bnocera@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 7/9/20 8:02 PM, Andy Shevchenko wrote:
> On Fri, Jul 3, 2020 at 4:24 AM Mark Pearson <markpearson@lenovo.com> wrote:
>>
>> Newer Lenovo Thinkpad platforms have support to identify whether the
>> system is on-lap or not using an ACPI DYTC event from the firmware.
>>
>> This patch provides the ability to retrieve the current mode via sysfs
>> entrypoints and will be used by userspace for thermal mode and WWAN
>> functionality
> 
> Hans, do you think it's good to have custom ABI for this? I think you
> may be know better what types of ABI we already have for such thing.

Actually, Mark asked me the same question before submitting his
patch upstream. I'm never a fan of custom ABI for this. But for now
the solution Lenovo has chosen to deal with thermal management
issues on modern hw is unique to Lenovo and we do not have anything
like this anywhere else.

So for now I believe that a custom ABI is best.

If we see this becoming a common feature on more platforms then we can
design a generic API for it once we have a better idea how this would
look like when implemented by others and then thinkpad_acpi can easily
add support for the new generic interface, while keeping its own
custom interface for backward compatibility.

Regards,

Hans



> 
>> Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
>> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
>> Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
>> Reviewed-by: Bastien Nocera <bnocera@redhat.com>
>> Signed-off-by: Mark Pearson <markpearson@lenovo.com>
>> ---
>> Changes in v5:
>>   - Updated with review changes from Andy Shevchenko
>>   - Added ABI information to thinkpad-acpi.rst
>>   - improved error handling and parameter passing as recommended
>>   - code cleanup as recommended
>>   - added review tag from bnocera
>> Changes in v4:
>>   - Correct hotkey event comment as we're handling event
>>   - Remove unnecessary check in dytc_lapmode_refresh
>> Changes in v3:
>> - Fixed inaccurate comments
>> - Used BIT macro to check lapmode bit setting as recommended and update
>>    define name
>> - Check for new_state == dytc_lapmode in dytc_lapmode_refresh
>> Changes in v2:
>> - cleaned up initialisation sequence to be cleaner and avoid spamming
>>    platforms that don't have DYTC with warning message. Tested on P52
>> - Adding platform-driver-x86 mailing list for review as requested
>>
>>   .../admin-guide/laptops/thinkpad-acpi.rst     |  15 +++
>>   drivers/platform/x86/thinkpad_acpi.c          | 111 +++++++++++++++++-
>>   2 files changed, 124 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> index 822907dcc845..99066aa8d97b 100644
>> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> @@ -50,6 +50,7 @@ detailed description):
>>          - WAN enable and disable
>>          - UWB enable and disable
>>          - LCD Shadow (PrivacyGuard) enable and disable
>> +       - Lap mode sensor
>>
>>   A compatibility table by model and feature is maintained on the web
>>   site, http://ibm-acpi.sf.net/. I appreciate any success or failure
>> @@ -1432,6 +1433,20 @@ The first command ensures the best viewing angle and the latter one turns
>>   on the feature, restricting the viewing angles.
>>
>>
>> +DYTC Lapmode sensor
>> +------------------
>> +
>> +sysfs: dytc_lapmode
>> +
>> +Newer thinkpads and mobile workstations have the ability to determine if
>> +the device is in deskmode or lapmode. This feature is used by user space
>> +to decide if WWAN transmission can be increased to maximum power and is
>> +also useful for understanding the different thermal modes available as
>> +they differ between desk and lap mode.
>> +
>> +The property is read-only. If the platform doesn't have support the sysfs
>> +class is not created.
>> +
>>   EXPERIMENTAL: UWB
>>   -----------------
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index ff7f0a4f2475..037eb77414f9 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -4022,8 +4022,8 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>>                  return true;
>>          case TP_HKEY_EV_THM_CSM_COMPLETED:
>>                  pr_debug("EC reports: Thermal Control Command set completed (DYTC)\n");
>> -               /* recommended action: do nothing, we don't have
>> -                * Lenovo ATM information */
>> +               /* Thermal event - pass on to event handler */
>> +               tpacpi_driver_event(hkey);
>>                  return true;
>>          case TP_HKEY_EV_THM_TRANSFM_CHANGED:
>>                  pr_debug("EC reports: Thermal Transformation changed (GMTS)\n");
>> @@ -9795,6 +9795,105 @@ static struct ibm_struct lcdshadow_driver_data = {
>>          .write = lcdshadow_write,
>>   };
>>
>> +/*************************************************************************
>> + * DYTC subdriver, for the Lenovo lapmode feature
>> + */
>> +
>> +#define DYTC_CMD_GET          2 /* To get current IC function and mode */
>> +#define DYTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */
>> +
>> +static bool dytc_lapmode;
>> +
>> +static void dytc_lapmode_notify_change(void)
>> +{
>> +       sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "dytc_lapmode");
>> +}
>> +
>> +static int dytc_command(int command, int *output)
>> +{
>> +       acpi_handle dytc_handle;
>> +
>> +       if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
>> +               /* Platform doesn't support DYTC */
>> +               return -ENODEV;
>> +       }
>> +       if (!acpi_evalf(dytc_handle, output, NULL, "dd", command))
>> +               return -EIO;
>> +       return 0;
>> +}
>> +
>> +static int dytc_lapmode_get(bool *state)
>> +{
>> +       int output, err;
>> +
>> +       err = dytc_command(DYTC_CMD_GET, &output);
>> +       if (err)
>> +               return err;
>> +       *state = output & BIT(DYTC_GET_LAPMODE_BIT) ? true : false;
>> +       return 0;
>> +}
>> +
>> +static void dytc_lapmode_refresh(void)
>> +{
>> +       bool new_state;
>> +       int err;
>> +
>> +       err = dytc_lapmode_get(&new_state);
>> +       if (err || (new_state == dytc_lapmode))
>> +               return;
>> +
>> +       dytc_lapmode = new_state;
>> +       dytc_lapmode_notify_change();
>> +}
>> +
>> +/* sysfs lapmode entry */
>> +static ssize_t dytc_lapmode_show(struct device *dev,
>> +                                       struct device_attribute *attr,
>> +                                       char *buf)
>> +{
>> +       return snprintf(buf, PAGE_SIZE, "%d\n", dytc_lapmode);
>> +}
>> +
>> +static DEVICE_ATTR_RO(dytc_lapmode);
>> +
>> +static struct attribute *dytc_attributes[] = {
>> +       &dev_attr_dytc_lapmode.attr,
>> +       NULL,
>> +};
>> +
>> +static const struct attribute_group dytc_attr_group = {
>> +       .attrs = dytc_attributes,
>> +};
>> +
>> +static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
>> +{
>> +       int err;
>> +
>> +       err = dytc_lapmode_get(&dytc_lapmode);
>> +       /* If support isn't available (ENODEV) then don't return an error
>> +        * but just don't create the sysfs group
>> +        */
>> +       if (err == -ENODEV)
>> +               return 0;
>> +       /* For all other errors we can flag the failure */
>> +       if (err)
>> +               return err;
>> +
>> +       /* Platform supports this feature - create the group */
>> +       err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
>> +       return err;
>> +}
>> +
>> +static void dytc_exit(void)
>> +{
>> +       sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
>> +}
>> +
>> +static struct ibm_struct dytc_driver_data = {
>> +       .name = "dytc",
>> +       .exit = dytc_exit,
>> +};
>> +
>>   /****************************************************************************
>>    ****************************************************************************
>>    *
>> @@ -9842,6 +9941,10 @@ static void tpacpi_driver_event(const unsigned int hkey_event)
>>
>>                  mutex_unlock(&kbdlight_mutex);
>>          }
>> +
>> +       if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
>> +               dytc_lapmode_refresh();
>> +
>>   }
>>
>>   static void hotkey_driver_event(const unsigned int scancode)
>> @@ -10280,6 +10383,10 @@ static struct ibm_init_struct ibms_init[] __initdata = {
>>                  .init = tpacpi_lcdshadow_init,
>>                  .data = &lcdshadow_driver_data,
>>          },
>> +       {
>> +               .init = tpacpi_dytc_init,
>> +               .data = &dytc_driver_data,
>> +       },
>>   };
>>
>>   static int __init set_ibm_param(const char *val, const struct kernel_param *kp)
>> --
>> 2.26.2
>>
> 
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
