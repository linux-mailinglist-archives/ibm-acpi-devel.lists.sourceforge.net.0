Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6906E4507
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 17 Apr 2023 12:20:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1poLxQ-0001tL-Ut;
	Mon, 17 Apr 2023 10:19:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1poLxP-0001se-Dp
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 17 Apr 2023 10:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yVioH6reqYXkNBcqXGMdOnvI7hBw/T3Pe2Em6Jl/kA8=; b=gTVJ8P4NVKQ+dZfPmLAjkVVafQ
 Y2QrQR3FQB4M5RI9yIn/6jlSNhV4FMWy+0X5ZUeUXKiMtuKMeevzS6seOLf1kZBYF9alNu0eUuxlt
 xKA4uXn9pQJRlr7BUkk+p9N+pznqz1IdB/iCPWhIwTq9zw5m6CoOOi0JRqdVVGudy6Ms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yVioH6reqYXkNBcqXGMdOnvI7hBw/T3Pe2Em6Jl/kA8=; b=lO/pe8gFVU8JeVZFATl+pqEhy4
 9eiHMIg+GPXYlavyINMcPH6zOMS/hE7P101AFnyCOYAYPhzb4lQ49qgevGjRai9Qi93IFBEkG+15W
 1GfRvESEZ0mtBTk7LOzFlebTd0OScenjHMN6XUP6zTYBNtYHNlMoX+PCFmnSjLjk/rYs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1poLxI-00ARxY-JT for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 17 Apr 2023 10:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681726762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yVioH6reqYXkNBcqXGMdOnvI7hBw/T3Pe2Em6Jl/kA8=;
 b=CXcbGFwf5u1g+MFkk8xdznvA6XqQ7CUzblQSKceBozdWKDSmrdTBCXzNXUD3HrN8Sz555i
 mD7bnXyfhEsuyZjL+kG9esGWX2ZhmwxyWEoCF/XYqxWu/CJTFDTmP1fcGA7LMcd/iu1TCC
 /FMUrolhpVfShqaFk5SO4GR2OG1vbYs=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-303-1OtnQVeSMtKyjMewMY1yTg-1; Mon, 17 Apr 2023 06:19:21 -0400
X-MC-Unique: 1OtnQVeSMtKyjMewMY1yTg-1
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-506a446b9c1so394342a12.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 17 Apr 2023 03:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681726760; x=1684318760;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yVioH6reqYXkNBcqXGMdOnvI7hBw/T3Pe2Em6Jl/kA8=;
 b=SAOPbELm3gLSvk2TM0D47CdxaNNabji7+EN/WuJEvdciDhfhdd0en0+YHZm6+oZSjR
 gGjPEctQRiAOh3sFchGs/u9Siy1cCHCBGVQ05zXf78WpQGlu60OwXmKydQykrw4jpL20
 qmwn6Lq8fuFau/mtUfWx47Q5KQu1QRZUapOY52K8LdBjsvFzj20ajiGOVkLXfQIbr3L7
 FRprUX/NYMvGHEXJee1PXQGgBA7aEHXR+VEso0rOmz1u9jH34agPAiZb9qlN5aP8U/zx
 E/dnNJCVt6sDuvnnp6/lzhsK93v5AKSsHmPZrUz8u4fgMbpZALl5VKUZKJMU3bzOZiU4
 Ib/Q==
X-Gm-Message-State: AAQBX9f52tngeHAoAFf5z3RVNPsb2T9WVSheGC80dNG9KsXFLbLdWvfH
 WwLQg3qkmuzLTe9ASFurK0qGdnnd6PEGBtdSmnGXHJ5KixOiIXyqEm1jAgElSV/l9bwxgzPtyzH
 qo10RehDnKviZXukoWCieC2ocnTgzUd/loe8=
X-Received: by 2002:aa7:c403:0:b0:506:8eb1:a266 with SMTP id
 j3-20020aa7c403000000b005068eb1a266mr6313315edq.33.1681726760045; 
 Mon, 17 Apr 2023 03:19:20 -0700 (PDT)
X-Google-Smtp-Source: AKy350Y1Z9gl4TiEW7hbJoOhucFOdrVflwjbt8FRuMTvOCqZE2CTvNgpWXLsXcH9O5QkjfafZ9TE5w==
X-Received: by 2002:aa7:c403:0:b0:506:8eb1:a266 with SMTP id
 j3-20020aa7c403000000b005068eb1a266mr6313302edq.33.1681726759721; 
 Mon, 17 Apr 2023 03:19:19 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 v3-20020aa7d9c3000000b00506943f60adsm2834654eds.90.2023.04.17.03.19.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Apr 2023 03:19:19 -0700 (PDT)
Message-ID: <dd07686f-dd03-4efc-3dfe-5b568c6c854d@redhat.com>
Date: Mon, 17 Apr 2023 12:19:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Daniel Bertalan <dani@danielbertalan.dev>
References: <20230414180034.63914-1-dani@danielbertalan.dev>
 <060c750b-f282-b1f4-2fcc-64fc3885f149@redhat.com>
 <a1229347-b5f3-8a1d-40a8-20beb863592a@gmail.com>
 <2739eb24-736f-6f59-70c5-d9975c354369@redhat.com>
 <c7LGto3wAWSkvfZaIEtB9_5EhTFe8ZdAOCKSZE8m8L18w0kJu2tms1RSdhrdUPBfHy5f-GMvxi_Etc5s8e7NOdF_xG4atmwco2QQ41bv9Sc=@danielbertalan.dev>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <c7LGto3wAWSkvfZaIEtB9_5EhTFe8ZdAOCKSZE8m8L18w0kJu2tms1RSdhrdUPBfHy5f-GMvxi_Etc5s8e7NOdF_xG4atmwco2QQ41bv9Sc=@danielbertalan.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/15/23 16:22, Daniel Bertalan wrote: > Hi, > > On
 Saturday, April 15th, 2023 at 15:30, Hans de Goede <hdegoede@redhat.com> wrote:
 > >> Hi, >> >> On 4/15/23 15:24, Liav Albani wrote: >> >>> On 4/15 [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1poLxI-00ARxY-JT
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 Embedded Controller access on X380 Yoga
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
Cc: Liav Albani <liavalb@gmail.com>, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/15/23 16:22, Daniel Bertalan wrote:
> Hi,
> 
> On Saturday, April 15th, 2023 at 15:30, Hans de Goede <hdegoede@redhat.com> wrote:
> 
>> Hi,
>>
>> On 4/15/23 15:24, Liav Albani wrote:
>>
>>> On 4/15/23 13:12, Hans de Goede wrote:
>>>
>>>> Hi,
>>>>
>>>> On 4/14/23 20:02, Daniel Bertalan wrote:
>>>>
>>>>> On the X380 Yoga, the `ECRD` and `ECWR` ACPI objects cannot be used for
>>>>> accessing the Embedded Controller: instead of a method that reads from
>>>>> the EC's memory, `ECRD` is the name of a location in high memory. This
>>>>> meant that trying to call them would fail with the following message:
>>>>>
>>>>> ACPI: \_SB.PCI0.LPCB.EC.ECRD: 1 arguments were passed to a non-method
>>>>> ACPI object (RegionField)
>>>>>
>>>>> With this commit, it is now possible to access the EC and read
>>>>> temperature and fan speed information. Note that while writes to the
>>>>> HFSP register do go through (as indicated by subsequent reads showing
>>>>> the new value), the fan does not actually change its speed.
>>>>>
>>>>> Signed-off-by: Daniel Bertalan dani@danielbertalan.dev
>>>>> Interestig, this looks like a pretty clean solution to me.
>>>
>>> Daniel and I have looked in the DSDT ASL code and found a bunch of registers in high physical memory location (which is an ACPI OpRegion),
>>> and one of the registers had a bit called ECRD.
>>> However, there were many other registers that might be interesting as well, the problem is the short names in the ASL code (so we only see abbreviations essentially).
>>>
>>> While I do agree that adding this code is indeed a clean solution, if you (people that are dealing with Thinkpad laptops) know about cleaner way to access the embedded controller, I think it's preferable, because this way Daniel might be able to trigger the fan on that laptop so it will actually spin and will dissipate-out heat from the system, without the relying on the embedded controller to get into some sort of thermal state and then to trigger the fan.
>>
>>
>> Have you tried falling back to the ec_read() and ec_write() helpers
>> exported by the ACPI EC code ?
>>
>> The "first_ec" pointer used by these functions is exported too,
>> so you could try modifying thinkpad_acpi to use ec_read() and
>> ec_write() as fallback when first_ec is set (and the quirk
>> added by this patch triggers).
> 
> This is basically what my patch does. If the ECRD/ECWR method handles
> are NULL, thinkpad_acpi's acpi_ec_{read,write} functions fall back to
> the regular ACPI EC helpers you mentioned.

Ah I did not realize that. Ok that sounds good to me.

I'll go and apply the patch then. To be on the save side I'm going
to only add this to -next, so that it gets some testing before
showing up in stable series. Once 6.4-rc1 is out you can then
send it to stable@vger.kernel.org to get it backported.

> Speaking of which, does anyone know why these private helper functions
> exist in the first place? The code seems to use them interchangeably.
> Even in the fan control code, there are places where the regular EC
> helpers are called directly. Can we get away with always doing that?

I assume that on some older models there is no standard ACPI EC device
in the ACPI tables, so there only ECRD/ECWR work. I guess that code-paths
which directly call ec_read() / ec_write() are only used on newer
models. But this does indeed seem inconsistent.

> Back to the issue at hand, is there someone we could ask if the X380Y
> even supports manual fan control in the first place? My debugging
> efforts are starting to look like a wild goose chase.
> 
> The thermal sensors and fan PWM readings now work, which is better
> than nothing, but it would be good to get to the bottom of this.

Mark Pearson from Lenovo can hopefully help answer this, but I know
that he is quite busy atm. Hopefully Mark will get back to you when
he has some more bandwidth.

Regards,

Hans



>>>>> ---
>>>>> drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++++
>>>>> 1 file changed, 16 insertions(+)
>>>>>
>>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>>> index 7191ff2625b1..6fe82f805ea8 100644
>>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>>> @@ -11699,6 +11699,7 @@ static int __init thinkpad_acpi_module_init(void)
>>>>> {
>>>>> const struct dmi_system_id *dmi_id;
>>>>> int ret, i;
>>>>> + acpi_object_type obj_type;
>>>>>
>>>>> tpacpi_lifecycle = TPACPI_LIFE_INIT;
>>>>>
>>>>> @@ -11724,6 +11725,21 @@ static int __init thinkpad_acpi_module_init(void)
>>>>> TPACPI_ACPIHANDLE_INIT(ecrd);
>>>>> TPACPI_ACPIHANDLE_INIT(ecwr);
>>>>>
>>>>> + /*
>>>>> + * Quirk: in some models (e.g. X380 Yoga), an object named ECRD
>>>>> + * exists, but it is a register, not a method.
>>>>> + */
>>>>> + if (ecrd_handle) {
>>>>> + acpi_get_type(ecrd_handle, &obj_type);
>>>>> + if (obj_type != ACPI_TYPE_METHOD)
>>>>> + ecrd_handle = NULL;
>>>>> + }
>>>>> + if (ecwr_handle) {
>>>>> + acpi_get_type(ecwr_handle, &obj_type);
>>>>> + if (obj_type != ACPI_TYPE_METHOD)
>>>>> + ecwr_handle = NULL;
>>>>> + }
>>>>> +
>>>>> tpacpi_wq = create_singlethread_workqueue(TPACPI_WORKQUEUE_NAME);
>>>>> if (!tpacpi_wq) {
>>>>> thinkpad_acpi_module_exit();
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
