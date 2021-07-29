Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDD73D9FCC
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 29 Jul 2021 10:45:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1m91fA-0004kc-EM; Thu, 29 Jul 2021 08:45:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hdegoede@redhat.com>) id 1m91f7-0004kT-O1
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 08:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5r328cWz2cgQ4yqfVV8Q/57dzR+cdbYLWjoOK8d95Xw=; b=b6eGrwqaWzMvO75X10BGnCz8X2
 DP1j8hiezaugDL/inMLQSUjZFpda2FOx5f+s+D8ppDHfrm9K7FDOT0SstJXzmRA8DUfMksYl42DK9
 yoN9oY9WaS85CQejpLots7oAPaWnzVJHXHczYbDAmJpZ8MvFyEx+yeB4auna/RQ6noGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5r328cWz2cgQ4yqfVV8Q/57dzR+cdbYLWjoOK8d95Xw=; b=l/qqNv+x/GNLLszf6UPb5HiR7i
 cVRLbKyoZM1PPOILxgGzDF+vb2FJGM0VcD3w1uTyhJpj+3beqtO6FURYWN3vYqfNgLTw1u56ctmeZ
 JCgccxsaWRecf5LJCX7hmJtBcHCS/GpKjmMA5X/2bCT8+e7J3Ubq5SckYajtYuIN+h28=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m91f6-006HgV-5c
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 29 Jul 2021 08:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627548298;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5r328cWz2cgQ4yqfVV8Q/57dzR+cdbYLWjoOK8d95Xw=;
 b=fprm2DcScjR3kUqvyjRxh3LtKp3R1XzD67RNFmgmY4Q9Zww/8exOGALl6ZmuJpLr1P/P/x
 55yZ4ZyS8RUdKQ4ftYMU4gpC0+t6DjtBQZCRgqxo900QDx0r5WRE1awA8FXv49KXwMYO4x
 4e27ttZJTiPaZ7+4Zdg3RNTzubf3Akc=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-e65jcR7TMielV8Id3OCbXw-1; Thu, 29 Jul 2021 04:44:56 -0400
X-MC-Unique: e65jcR7TMielV8Id3OCbXw-1
Received: by mail-ed1-f72.google.com with SMTP id
 s8-20020a0564020148b02903948b71f25cso2606717edu.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 29 Jul 2021 01:44:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5r328cWz2cgQ4yqfVV8Q/57dzR+cdbYLWjoOK8d95Xw=;
 b=JPZcj48rJRaITC4d3gxq/pUIRAyAPEDuolyWVDxXURlcXn78lpBFzsDffWdGubb/4j
 7BKRCgPccL3CmzQZlogvbU3uVprW3RHDmmMR5TsYVdm/RfxPCs9to0IHd2LEMqjvRjS/
 pJOemsdZlKEwZ1Poe3z6E57a6ndltvMZV14Aa4bisl197DKXLLFVj4PRZTEaq+xqHLXT
 P3BdQl9GvVTU6OQC2Ow8WyQKslD1jnD82KO/eYA+/RxbKL2RtrpPKcg4bn1foTe+bfkJ
 KYLfA27FYtwGALbnNgQ3KJu+4kl51veApFVkwrIj1bamaLeNe+fKj/x7bn4hkh3AVPK8
 Y/4Q==
X-Gm-Message-State: AOAM532mqYOsPcr8xQgiV2Ee2PKqWWZSdIE+aFdff+I+kAztL6ihKXwf
 dygVLkjI2XbRpjnb+xzCwmhxKxNz7nXyYrXn1WBZSGdv2cc2Z96nbDN0pcFAQGWoPOOSuvxkGM9
 xynyQXPCPUOxtu72C0c2bTjucvP2S5jNSGBQ=
X-Received: by 2002:a17:906:c013:: with SMTP id
 e19mr3603127ejz.389.1627548295642; 
 Thu, 29 Jul 2021 01:44:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzevJ6+rCuc7gLI5eij4Ytdva/IZszYx0skO6mSfEHi66+rH8Nijeh0cNoU6OwF7TDdWtDJPA==
X-Received: by 2002:a17:906:c013:: with SMTP id
 e19mr3603111ejz.389.1627548295443; 
 Thu, 29 Jul 2021 01:44:55 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id a22sm733039ejk.35.2021.07.29.01.44.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Jul 2021 01:44:55 -0700 (PDT)
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20210729082134.6683-1-hdegoede@redhat.com>
 <CAHp75VepyNqwLSDaDmc+XCk+_gC5+zGUQ51DOo7KUt2-Gaty-Q@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7e6402dd-ec83-5014-8165-95e45cd3169f@redhat.com>
Date: Thu, 29 Jul 2021 10:44:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VepyNqwLSDaDmc+XCk+_gC5+zGUQ51DOo7KUt2-Gaty-Q@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m91f6-006HgV-5c
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

On 7/29/21 10:37 AM, Andy Shevchenko wrote:
> On Thu, Jul 29, 2021 at 11:21 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Various 360 degree hinges (yoga) style 2-in-1 devices use 2 accelerometers
>> to allow the OS to determine the angle between the display and the base of
>> the device.
>>
>> On Windows these are read by a special HingeAngleService process which
>> calls undocumented ACPI methods, to let the firmware know if the 2-in-1 is
>> in tablet- or laptop-mode. The firmware may use this to disable the kbd and
>> touchpad to avoid spurious input in tablet-mode as well as to report
>> SW_TABLET_MODE info to the OS.
>>
>> Since Linux does not call these undocumented methods, the SW_TABLET_MODE
>> info reported by various pdx86 drivers is incorrect on these devices.
>>
>> Before this commit the intel-hid and thinkpad_acpi code already had 2
>> hardcoded checks for ACPI hardware-ids of dual-accel sensors to avoid
>> reporting broken info.
>>
>> And now we also have a bug-report about the same problem in the intel-vbtn
>> code. Since there are at least 3 different ACPI hardware-ids in play, add
>> a new dual_accel_detect() helper which checks for all 3, rather then
>> adding different hardware-ids to the drivers as bug-reports trickle in.
>> Having shared code which checks all known hardware-ids is esp. important
>> for the intel-hid and intel-vbtn drivers as these are generic drivers
>> which are used on a lot of devices.
>>
>> The BOSC0200 hardware-id requires special handling, because often it is
>> used for a single-accelerometer setup. Only in a few cases it refers to
>> a dual-accel setup, in which case there will be 2 I2cSerialBus resources
>> in the device's resource-list, so the helper checks for this.
> 
> ...
> 
>> +static int dual_accel_i2c_resource_count(struct acpi_resource *ares, void *data)
>> +{
>> +       struct acpi_resource_i2c_serialbus *sb;
>> +       int *count = data;
>> +
>> +       if (i2c_acpi_get_i2c_resource(ares, &sb))
>> +               *count = *count + 1;
>> +
>> +       return 1;
>> +}
> 
> It will be a third copy of this in the kernel.
> Let's put it to i2c.h or somewhere available for all these users.
> 
>> +
>> +static int dual_accel_i2c_client_count(struct acpi_device *adev)
>> +{
>> +       int ret, count = 0;
>> +       LIST_HEAD(r);
>> +
>> +       ret = acpi_dev_get_resources(adev, &r, dual_accel_i2c_resource_count, &count);
>> +       if (ret < 0)
>> +               return ret;
>> +
>> +       acpi_dev_free_resource_list(&r);
>> +       return count;
>> +}
> 
> So does this.
> 
> Taking into account that this is a bug fix, I'm okay if you do above
> as an additional patch (or patches) on top of this.

Right, I had a note about this behind the cut (---) line, but I dropped
the patch and git-am-ed it while reworking my tree for some other issue
dropping the note (sorry), the note was:

"""
---
Note the counting of the number of I2cSerialBus resources in an
ACPI-device's resource-list is becoming a common pattern. I plan
to add a new shared helper for this in a follow-up patch-set.
I've deliberately not made use of such a new helper in this patch
for easier backporting to the stable series.
"""

In other words, I fully agree. I've already added an item to my
TODO list about doing a followup series to replace the 3 copies in:

 drivers/platform/x86/dual_accel_detect.h
 drivers/platform/x86/i2c-multi-instantiate.c
 drivers/platform/x86/intel/int33fe/intel_cht_int33fe_common.c

With a new helper in drivers/i2c/i2c-core-acpi.c, like the
i2c_acpi_get_i2c_resource() helper which was recently added.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
