Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E835997F5
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 19 Aug 2022 10:58:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oOxpS-0006mu-BC;
	Fri, 19 Aug 2022 08:58:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1oOxpR-0006mn-Oe
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Aug 2022 08:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q2w8jYOkfWJo7z3O8bLfVSfTQ42HXpptZtq532HevaI=; b=PWFq2KiEIAjzMwrPCNY2UQEPPQ
 8onuUAmMcx5NZfTEEsdDBPXLx1k4j/mMRAka39yWqQVAb0eOY579TU4et5G4STVUcBDzrtI9rEB5R
 11/FttTaoGBK8QxTC3mjVnBChyfS4GFv3WViaKVNll/PfMdFjqm+Zg0SSUf2R/OsbuPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q2w8jYOkfWJo7z3O8bLfVSfTQ42HXpptZtq532HevaI=; b=KGy87djn77cL2ZfL8UXH2rpAhs
 ezPpmnsyAmSIUBywpu/DeJtRZY8ew2Y0wV7zTfVxQKLc2twlAAbLIa4v0JNw5dRnWFLgZkdVQ2cMa
 n3vFFIXDxCk12UaHEYCCnMtayrXcWyMkLRmMDr2fa0OAgFpp8c0QpADRzW7/H9AnVQjs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOxpL-00007z-UU for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Aug 2022 08:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660899477;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q2w8jYOkfWJo7z3O8bLfVSfTQ42HXpptZtq532HevaI=;
 b=IR5EpwQZtlSVROk2x4kH3V59l55hWO7ya6DT9Tc67OqOU+gvme5/XfZLrSiia352c7Y/zE
 GhdH+njnMt0SybQ5B3TAcXW4XNwiw1uTFjmV0iewXa02dGKpGWs6si/LSEj2G6GENdLJRD
 K0fSaRjxGDEqTXwF7n2wKCuY82FfhTY=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-584-eT4_dRLLMPmTwuIBiGpAaw-1; Fri, 19 Aug 2022 04:57:56 -0400
X-MC-Unique: eT4_dRLLMPmTwuIBiGpAaw-1
Received: by mail-ej1-f69.google.com with SMTP id
 go15-20020a1709070d8f00b00730ab9dd8c6so1260287ejc.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 19 Aug 2022 01:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=q2w8jYOkfWJo7z3O8bLfVSfTQ42HXpptZtq532HevaI=;
 b=mQPhEHyD3Gq26C4jz/2cJ1ZhXKB4LrD7LbiTFKijQ8/E9F4gzY00QVjdN+XaMeyDgT
 f6RXXLdVry6k3pGIgUhz7bOZ1bLry+mjxJNFCkhvifIG7+jX3qxbV8hWmnpSob2eJuNp
 TNHyUzAUBDfSCeXPh/3goXNCwBzLdGk20qchUQem6wNW+F+3YhPdjMm65E3OA0qb2BLi
 fnWv4XU3FRVPwhVdph5DIf2XV3/iXeBGxbOHLzrdBSHBc/YXtR5RWOCLQ03J9JUdl0Dm
 +ncu+JS+l0Ss0csTw2MPtXFuylz9TA5JyHu7+2l1va6tLx26SNRVqwYVFDvojphDvwYI
 akSw==
X-Gm-Message-State: ACgBeo2SweYO2Vet0CpM2ZS9G9SFdmhJxvwL/TlyZb3kQma6IBq37J4B
 rvOATm60Cds/gwIl0+8ZUWBrn7NWH1ntFdzFqTktxRcqd8Kard73NIQLrkDTIvlqfnOySC47FuD
 t7kSUBLED5AJu46Dgd9I3OArF6ijtgWENyrQ=
X-Received: by 2002:aa7:d7d0:0:b0:445:bd03:bc90 with SMTP id
 e16-20020aa7d7d0000000b00445bd03bc90mr5237454eds.238.1660899475485; 
 Fri, 19 Aug 2022 01:57:55 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6vj0qaw7x1Kk4XYb15VpFwG+0VHIE072SvwkHNuWUQsWDP3kUiw4vK+sCTi0mwzerTMKBrNQ==
X-Received: by 2002:aa7:d7d0:0:b0:445:bd03:bc90 with SMTP id
 e16-20020aa7d7d0000000b00445bd03bc90mr5237448eds.238.1660899475237; 
 Fri, 19 Aug 2022 01:57:55 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 q25-20020a170906145900b007307d099ed7sm1980683ejc.121.2022.08.19.01.57.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Aug 2022 01:57:54 -0700 (PDT)
Message-ID: <44119dc8-5e17-b27d-75f2-80f590728604@redhat.com>
Date: Fri, 19 Aug 2022 10:57:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20220818210058.7229-1-wsa+renesas@sang-engineering.com>
 <CAHp75VeM2q7wdnREoenyYpJ-tso2G6M-uyGFJGjPGL8hfUmzhQ@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAHp75VeM2q7wdnREoenyYpJ-tso2G6M-uyGFJGjPGL8hfUmzhQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 8/19/22 08:22, Andy Shevchenko wrote: > On Fri, Aug
 19, 2022 at 12:06 AM Wolfram Sang > <wsa+renesas@sang-engineering.com> wrote:
 >> >> Follow the advice of the below link and prefer 'strscpy' in t [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oOxpL-00007z-UU
Subject: Re: [ibm-acpi-devel] [PATCH] platform: move from strlcpy with
 unused retval to strscpy
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
Cc: Dell.Client.Kernel@dell.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Mark Gross <markgross@kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Prasanth Ksr <prasanth.ksr@dell.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Divya Bharathi <divya.bharathi@dell.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 8/19/22 08:22, Andy Shevchenko wrote:
> On Fri, Aug 19, 2022 at 12:06 AM Wolfram Sang
> <wsa+renesas@sang-engineering.com> wrote:
>>
>> Follow the advice of the below link and prefer 'strscpy' in this
> 
> We refer to the functions like this: strscpy() (note no quote marks).
> 
>> subsystem. Conversion is 1:1 because the return value is not used.
>> Generated by a coccinelle script.
> 
> I assume you are experimenting with coccinelle, so I have no objection
> to the change, but in PDx86 we usually want to have one patch per
> driver. Can you split?

Actually, although we do in general split patches per driver
as Andy says, this one is so small / simple that I'm happy to
merge it as is. I'll pick this up during my next round of
merges coming Monday.

> You also may add
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Thanks for the review.

Regards,

Hans




> to each of them.
> 
>> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
>> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> ---
>>  drivers/platform/surface/surface3_power.c          | 2 +-
>>  drivers/platform/x86/dell/dell-wmi-sysman/sysman.c | 2 +-
>>  drivers/platform/x86/intel/chtwc_int33fe.c         | 6 +++---
>>  drivers/platform/x86/thinkpad_acpi.c               | 4 ++--
>>  4 files changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/platform/surface/surface3_power.c b/drivers/platform/surface/surface3_power.c
>> index 444ec81ba02d..4c53d116d59b 100644
>> --- a/drivers/platform/surface/surface3_power.c
>> +++ b/drivers/platform/surface/surface3_power.c
>> @@ -519,7 +519,7 @@ static int mshw0011_probe(struct i2c_client *client)
>>         i2c_set_clientdata(client, data);
>>
>>         memset(&board_info, 0, sizeof(board_info));
>> -       strlcpy(board_info.type, "MSHW0011-bat0", I2C_NAME_SIZE);
>> +       strscpy(board_info.type, "MSHW0011-bat0", I2C_NAME_SIZE);
>>
>>         bat0 = i2c_acpi_new_device(dev, 1, &board_info);
>>         if (IS_ERR(bat0))
>> diff --git a/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c b/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c
>> index 636bdfa83284..0a6411a8a104 100644
>> --- a/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c
>> +++ b/drivers/platform/x86/dell/dell-wmi-sysman/sysman.c
>> @@ -270,7 +270,7 @@ void strlcpy_attr(char *dest, char *src)
>>         size_t len = strlen(src) + 1;
>>
>>         if (len > 1 && len <= MAX_BUFF)
>> -               strlcpy(dest, src, len);
>> +               strscpy(dest, src, len);
>>
>>         /*len can be zero because any property not-applicable to attribute can
>>          * be empty so check only for too long buffers and log error
>> diff --git a/drivers/platform/x86/intel/chtwc_int33fe.c b/drivers/platform/x86/intel/chtwc_int33fe.c
>> index c52ac23e2331..1ea989df513c 100644
>> --- a/drivers/platform/x86/intel/chtwc_int33fe.c
>> +++ b/drivers/platform/x86/intel/chtwc_int33fe.c
>> @@ -270,7 +270,7 @@ cht_int33fe_register_max17047(struct device *dev, struct cht_int33fe_data *data)
>>         }
>>
>>         memset(&board_info, 0, sizeof(board_info));
>> -       strlcpy(board_info.type, "max17047", I2C_NAME_SIZE);
>> +       strscpy(board_info.type, "max17047", I2C_NAME_SIZE);
>>         board_info.dev_name = "max17047";
>>         board_info.fwnode = fwnode;
>>         data->battery_fg = i2c_acpi_new_device(dev, 1, &board_info);
>> @@ -361,7 +361,7 @@ static int cht_int33fe_typec_probe(struct platform_device *pdev)
>>         }
>>
>>         memset(&board_info, 0, sizeof(board_info));
>> -       strlcpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
>> +       strscpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
>>         board_info.dev_name = "fusb302";
>>         board_info.fwnode = fwnode;
>>         board_info.irq = fusb302_irq;
>> @@ -381,7 +381,7 @@ static int cht_int33fe_typec_probe(struct platform_device *pdev)
>>         memset(&board_info, 0, sizeof(board_info));
>>         board_info.dev_name = "pi3usb30532";
>>         board_info.fwnode = fwnode;
>> -       strlcpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);
>> +       strscpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);
>>
>>         data->pi3usb30532 = i2c_acpi_new_device(dev, 3, &board_info);
>>         if (IS_ERR(data->pi3usb30532)) {
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index 22d4e8633e30..8dad0428a83c 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -7623,9 +7623,9 @@ static int __init volume_create_alsa_mixer(void)
>>         data = card->private_data;
>>         data->card = card;
>>
>> -       strlcpy(card->driver, TPACPI_ALSA_DRVNAME,
>> +       strscpy(card->driver, TPACPI_ALSA_DRVNAME,
>>                 sizeof(card->driver));
>> -       strlcpy(card->shortname, TPACPI_ALSA_SHRTNAME,
>> +       strscpy(card->shortname, TPACPI_ALSA_SHRTNAME,
>>                 sizeof(card->shortname));
>>         snprintf(card->mixername, sizeof(card->mixername), "ThinkPad EC %s",
>>                  (thinkpad_id.ec_version_str) ?
>> --
>> 2.35.1
>>
> 
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
