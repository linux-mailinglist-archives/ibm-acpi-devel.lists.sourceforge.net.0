Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7020A3DA1EA
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 29 Jul 2021 13:16:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1m940i-0003wG-7S; Thu, 29 Jul 2021 11:15:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1m940U-0003tv-FX
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 11:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zddsjIu0dWD/zBHYUlwQGei6rq9GfZwXJkwTqXkgrBc=; b=CEkU91luKJ6mN1SLIsMDQzo500
 iq8BrZSTOCkD92JXq8fllmr3IWlS9zPtNM59We3WJWLbLls8OSRuhChcLNS8c8C1r04A3Xo/HbvUb
 qHJvToyE8nPiit26/mocDux5sVLVOgWL/8UAHrC9NiZUEeSfoZcZqli+cFvOUKpmr05Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zddsjIu0dWD/zBHYUlwQGei6rq9GfZwXJkwTqXkgrBc=; b=J2hhHQu7Zp/hAsEEZGUkm9By0m
 JDMSjJZhtV69uTvo75DM3CRqGXeNjUgxl2esE/wS6IDrshLc1wJkW22DAXWXyNEhPDyVdHDChC6Zw
 Rp/2CobZ436NB0CWmjtuWSIOeexGR/xOy9HHuqx6TkszFcD3/fo1UAobBByKEhGmhSpY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m940D-006RWP-6l
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 11:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627557294;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zddsjIu0dWD/zBHYUlwQGei6rq9GfZwXJkwTqXkgrBc=;
 b=bggmLgB2Piunh26v0eGOaC4K1fFzZ7dvqTilEHE5Nq1kb1CaCKLPwEXjgZLpIGXfTk2VCw
 tVU2tczV1PTMApE6u9pP4l8HMSiOi0ur+0HeTO0mgj+b8xEQ2jMPyT3Mmn0/NwtFlDhjG0
 j5TohJmmjopHe6DpqhbbjY06WCVAtCs=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-H69hnh3zMg624kd9yDYo0w-1; Thu, 29 Jul 2021 07:14:53 -0400
X-MC-Unique: H69hnh3zMg624kd9yDYo0w-1
Received: by mail-ed1-f70.google.com with SMTP id
 b13-20020a056402278db029039c013d5b80so2790559ede.7
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 29 Jul 2021 04:14:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zddsjIu0dWD/zBHYUlwQGei6rq9GfZwXJkwTqXkgrBc=;
 b=Qfav0yAuawqiV8CxamgZLhQdrtvmpK34W6gsmsu+8urWOLtMERRzlCV2SEzirHak/D
 ZutwoTKddL6wv9d60ilNoR7jma38y0fZkJu6Q6dSgLO/7wZeUgpkHbNZBOxAqhv6Fbym
 hsdU976sy+SxB8J1j4Nuqx9sCCIrrbUYCoeAEqQyeSA+opgUzjchu/KY5/MSpSHx6lNE
 FSMGiSaoNDYHloGkyl4c2xFt3lp8NY2C/3pY5hOjrc0dk2zyARtNr/pOkwLlA06+FYSu
 8jI3tB0zSy86xfn+r5c2UJLHrnFwa82UOOQAzojejvlvDIKFPiUwMtxfmddFKsAs7zDG
 UUTA==
X-Gm-Message-State: AOAM53174SLiO9GPhxz4bG2RG/mXmP0EbO6PzKVSTLsQNXjbKpGe6gbF
 uaefXOQR2B13mdpShOPgVr1kAo5eQiowhZMiKXNgVE4/VdxVeTAz9Beqfo3EvC8bj3Y0NBwsKE/
 NO77NGuuQc4NcDHNDZtIw2vaiNBPGP79uBv8=
X-Received: by 2002:a17:907:3f9a:: with SMTP id
 hr26mr4155798ejc.110.1627557291965; 
 Thu, 29 Jul 2021 04:14:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyh6/UAmcpC1SzCmUrQ6YUOFMFK5NQwX4HGs0UJJtJ8aLT2g3TQh+Dcyixf6mHMxqTaSarLlw==
X-Received: by 2002:a17:907:3f9a:: with SMTP id
 hr26mr4155784ejc.110.1627557291790; 
 Thu, 29 Jul 2021 04:14:51 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id o14sm1069481eds.55.2021.07.29.04.14.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Jul 2021 04:14:51 -0700 (PDT)
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20210729082134.6683-1-hdegoede@redhat.com>
 <CAHp75VepyNqwLSDaDmc+XCk+_gC5+zGUQ51DOo7KUt2-Gaty-Q@mail.gmail.com>
 <7e6402dd-ec83-5014-8165-95e45cd3169f@redhat.com>
 <CAHp75VeeN7KYifZ7K82CKmj4QKexAu2cK1pqXaj_coMPO4Q8ZQ@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <06bd005c-2cf0-00e1-be87-c953b0db5cb5@redhat.com>
Date: Thu, 29 Jul 2021 13:14:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VeeN7KYifZ7K82CKmj4QKexAu2cK1pqXaj_coMPO4Q8ZQ@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m940D-006RWP-6l
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: Add and use a
 dual_accel_detect() helper
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
Cc: Mark Gross <mgross@linux.intel.com>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Julius Lehmann <julius@devpi.de>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <markpearson@lenovo.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 7/29/21 10:50 AM, Andy Shevchenko wrote:
> On Thu, Jul 29, 2021 at 11:45 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi,
>>
>> On 7/29/21 10:37 AM, Andy Shevchenko wrote:
>>> On Thu, Jul 29, 2021 at 11:21 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>>>
>>>> Various 360 degree hinges (yoga) style 2-in-1 devices use 2 accelerometers
>>>> to allow the OS to determine the angle between the display and the base of
>>>> the device.
>>>>
>>>> On Windows these are read by a special HingeAngleService process which
>>>> calls undocumented ACPI methods, to let the firmware know if the 2-in-1 is
>>>> in tablet- or laptop-mode. The firmware may use this to disable the kbd and
>>>> touchpad to avoid spurious input in tablet-mode as well as to report
>>>> SW_TABLET_MODE info to the OS.
>>>>
>>>> Since Linux does not call these undocumented methods, the SW_TABLET_MODE
>>>> info reported by various pdx86 drivers is incorrect on these devices.
>>>>
>>>> Before this commit the intel-hid and thinkpad_acpi code already had 2
>>>> hardcoded checks for ACPI hardware-ids of dual-accel sensors to avoid
>>>> reporting broken info.
>>>>
>>>> And now we also have a bug-report about the same problem in the intel-vbtn
>>>> code. Since there are at least 3 different ACPI hardware-ids in play, add
>>>> a new dual_accel_detect() helper which checks for all 3, rather then
>>>> adding different hardware-ids to the drivers as bug-reports trickle in.
>>>> Having shared code which checks all known hardware-ids is esp. important
>>>> for the intel-hid and intel-vbtn drivers as these are generic drivers
>>>> which are used on a lot of devices.
>>>>
>>>> The BOSC0200 hardware-id requires special handling, because often it is
>>>> used for a single-accelerometer setup. Only in a few cases it refers to
>>>> a dual-accel setup, in which case there will be 2 I2cSerialBus resources
>>>> in the device's resource-list, so the helper checks for this.
>>>
>>> ...
>>>
>>>> +static int dual_accel_i2c_resource_count(struct acpi_resource *ares, void *data)
>>>> +{
>>>> +       struct acpi_resource_i2c_serialbus *sb;
>>>> +       int *count = data;
>>>> +
>>>> +       if (i2c_acpi_get_i2c_resource(ares, &sb))
>>>> +               *count = *count + 1;
>>>> +
>>>> +       return 1;
>>>> +}
>>>
>>> It will be a third copy of this in the kernel.
>>> Let's put it to i2c.h or somewhere available for all these users.
>>>
>>>> +
>>>> +static int dual_accel_i2c_client_count(struct acpi_device *adev)
>>>> +{
>>>> +       int ret, count = 0;
>>>> +       LIST_HEAD(r);
>>>> +
>>>> +       ret = acpi_dev_get_resources(adev, &r, dual_accel_i2c_resource_count, &count);
>>>> +       if (ret < 0)
>>>> +               return ret;
>>>> +
>>>> +       acpi_dev_free_resource_list(&r);
>>>> +       return count;
>>>> +}
>>>
>>> So does this.
>>>
>>> Taking into account that this is a bug fix, I'm okay if you do above
>>> as an additional patch (or patches) on top of this.
>>
>> Right, I had a note about this behind the cut (---) line, but I dropped
>> the patch and git-am-ed it while reworking my tree for some other issue
>> dropping the note (sorry), the note was:
>>
>> """
>> ---
>> Note the counting of the number of I2cSerialBus resources in an
>> ACPI-device's resource-list is becoming a common pattern. I plan
>> to add a new shared helper for this in a follow-up patch-set.
>> I've deliberately not made use of such a new helper in this patch
>> for easier backporting to the stable series.
>> """
>>
>> In other words, I fully agree. I've already added an item to my
>> TODO list about doing a followup series to replace the 3 copies in:
> 
> With this promise taken
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

Thank you, I've added this to the review-hans and fixes branches now.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
