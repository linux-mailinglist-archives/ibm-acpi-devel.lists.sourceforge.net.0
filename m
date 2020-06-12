Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE061F7526
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 12 Jun 2020 10:15:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jjepm-00052g-MV; Fri, 12 Jun 2020 08:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jjepl-00051w-6R
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 12 Jun 2020 08:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V2zTglIal5OiHZJ8iFKvfCqf75RWAmlyagUCe+VaIC8=; b=cY4R5fksv4FyoH34R1L8f5tJcm
 T60EBB7l3FFiR2FcFwPGik7/ztTYM+E7u2IUa7ZF70OPgvp0+bKzfqW7Fm+nVjiafIifIlFnI89ib
 IQhqEXG7kB4mkIDobYqDOdAaPwcpvy2OBsSPqhBJcDFq51nchDnml5z0gjoxNYJhTAR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V2zTglIal5OiHZJ8iFKvfCqf75RWAmlyagUCe+VaIC8=; b=T6RADJWvVHHXFkBv1JN6h8upv1
 XOXFh9PJuL6BYDjkIOnRurQzBQ5Ig6H0AWbWrf7uJ3QYHJrSLhGOCZyJS7TS7AiN1iIR5r3R2x5su
 f2dLYBIU9EmC++V0POsvgxeOD0zaCU22RnRRQve7Xu4GYKdqVKcAiRhfSFBmj6ykm8p4=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jjepj-002tC3-Dm
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 12 Jun 2020 08:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591949672;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V2zTglIal5OiHZJ8iFKvfCqf75RWAmlyagUCe+VaIC8=;
 b=hMyH0wt4NGYCoMm5bfGdoRQihjb4005EsFWUCnPxB3GA7ycL/IP+IdVoclobNCjCArw4fL
 R9FVM7fTGyR0ySUDNRFS/Z9aaeGC0MLrxoqzBtAL38LVJw7h8+s518oNzapkOccmoSyrg7
 wDLGQVafZrNhB7yl399tNdX2y4AeZgc=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-4MYeNCLnOm2vwZjZWf_U_w-1; Fri, 12 Jun 2020 04:14:21 -0400
X-MC-Unique: 4MYeNCLnOm2vwZjZWf_U_w-1
Received: by mail-ej1-f69.google.com with SMTP id g9so3854407ejs.20
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 12 Jun 2020 01:14:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V2zTglIal5OiHZJ8iFKvfCqf75RWAmlyagUCe+VaIC8=;
 b=V32jcUxRAz/qTfvzqLl4HEGCOc0qle8zQlEd8ykZfE4tffn3Vm5ZaTWS719pIFNG90
 9Q14RMVpTTeplHNzAnRd+cloSMvB95LyaEVUYktaypKpTU2KTwsaNipmjyDuogQXwHfC
 EMsom4Yb+asy6VjsEXsQ1QBVy4coODwl0l4AbAFi5h1tpop0MXj9Bqj5G84MwTkuhaXK
 0O4l+fPIqThixNW/9O2g5mH51Ufcjosschi3HDoF55FA830Q/SunhojLVgajndhSXHjR
 5tqycVnR7G88t3PS10DIioX40d2jEEhUFVINALgZ1S51cViL3/T9QDowm3fKlBroNzsr
 dYiA==
X-Gm-Message-State: AOAM533rBoa9dJegTyj6AMXVd9YGomZ71n0++4BgUdCkvhfPcEuijRXV
 arPMqgzQSD5jme7xDxBHRnLm+DfIng2vO482W/5ljui/S/0mpQz6I+P3qLN76g84ZAnvA3iuQTJ
 moWYx/S/gUjCSvAg0TxEz3sbMbWKTSxHMigo=
X-Received: by 2002:a17:907:209b:: with SMTP id
 pv27mr11743703ejb.146.1591949659884; 
 Fri, 12 Jun 2020 01:14:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBAHer5t4lrLm+vMdTXed6gLDbil+57VlZQwx847llFMXVqLhRHTvWPje2pJt4EUELeeQ+uA==
X-Received: by 2002:a17:907:209b:: with SMTP id
 pv27mr11743678ejb.146.1591949659541; 
 Fri, 12 Jun 2020 01:14:19 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id h1sm2725555edz.88.2020.06.12.01.14.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 01:14:18 -0700 (PDT)
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <20200610182836.GA248110@dtor-ws>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <2e4bd050-117c-cc5f-8cf0-055b5304717f@redhat.com>
Date: Fri, 12 Jun 2020 10:14:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200610182836.GA248110@dtor-ws>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjepj-002tC3-Dm
Subject: Re: [ibm-acpi-devel] [PATCH v4 0/7] Support inhibiting input devices
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/10/20 8:28 PM, Dmitry Torokhov wrote:
> On Wed, Jun 10, 2020 at 12:38:30PM +0200, Rafael J. Wysocki wrote:
>> On Wed, Jun 10, 2020 at 11:50 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>>
>>> Hi All,
>>>
>>> On 6/8/20 1:22 PM, Andrzej Pietrasiewicz wrote:
>>>> This is a quick respin of v3, with just two small changes, please see
>>>> the changelog below.
>>>>
>>>> Userspace might want to implement a policy to temporarily disregard input
>>>> from certain devices.
>>>>
>>>> An example use case is a convertible laptop, whose keyboard can be folded
>>>> under the screen to create tablet-like experience. The user then must hold
>>>> the laptop in such a way that it is difficult to avoid pressing the keyboard
>>>> keys. It is therefore desirable to temporarily disregard input from the
>>>> keyboard, until it is folded back. This obviously is a policy which should
>>>> be kept out of the kernel, but the kernel must provide suitable means to
>>>> implement such a policy.
>>>
>>> First of all sorry to start a somewhat new discussion about this
>>> while this patch set is also somewhat far along in the review process,
>>> but I believe what I discuss below needs to be taken into account.
>>>
>>> Yesterday I have been looking into why an Asus T101HA would not stay
>>> suspended when the LID is closed. The cause is that the USB HID multi-touch
>>> touchpad in the base of the device starts sending events when the screen
>>> gets close to the touchpad (so when the LID is fully closed) and these
>>> events are causing a wakeup from suspend. HID multi-touch devices
>>> do have a way to tell them to fully stop sending events, also disabling
>>> the USB remote wakeup the device is doing. The question is when to tell
>>> it to not send events though ...
>>>
>>> So now I've been thinking about how to fix this and I believe that there
>>> is some interaction between this problem and this patch-set.
>>>
>>> The problem I'm seeing on the T101HA is about wakeups, so the question
>>> which I want to discuss is:
>>>
>>> 1. How does inhibiting interact with enabling /
>>> disabling the device as a wakeup source ?
> 
> One should not affect the other.
> 
>>>
>>> 2. Since we have now made inhibiting equal open/close how does open/close
>>> interact with a device being a wakeup source ?
> 
> One did not affect another, and it should not.
> 
>>>
>>> And my own initial (to be discussed) answers to these questions:
>>>
>>> 1. It seems to me that when a device is inhibited it should not be a
>>> wakeup source, so where possible a input-device-driver should disable
>>> a device's wakeup capabilities on suspend if inhibited
>>
>> If "inhibit" means "do not generate any events going forward", then
>> this must also cover wakeup events, so I agree.
> 
> Why? These are separate concepts. Do we disable wake on lan when
> bringing network interface down? Do we update power/wakeup when device
> is inhibited? Do we restore it afterwards? Do we un-inhibit if we
> reenable wakeup after device is inhibited? Do we return error? How?
> 
> Inhibit works on logical level, i.e. if I have several input interfaces
> on the same hardware device, I cam inhibit one leaving others intact.
> This does not mean that the device should stop generating wakeup events.
> We can't even guarantee this for composite devices.

After thinking more about this I believe you are right and we should
keep these as 2 separate, completely independent settings.

Especially since the wakeup setting typically is a setting of the
parent device, where as the inhibit is done on the actual input-dev.

###

Some quick background info on my original thoughts here, as mentioned
I started thinking about this because of spurious wakeups from suspend
when the lid of an asus t101ha is "touching" its touchpad. The HID
multi-touch protocol has a setting where we can ask the device to
stop sending events. So even though the kbd + touchpad are a
single composite USB device, we can disable wakeup (in a way)
for just the touchpad at the hid-multitouch level.

So I was thinking maybe adding a separate wakeup setting to the
input device itself for this. But thinking more about it, when
the lid is closed we can just disable wakeup on the entire USB
device, since the keyboard is covered by the lid too.

And then on suspend the hid-multitouch driver can detect that its
parent (or parents parent in the case of USB) has wakeup disabled
and also tell the device to stop scanning for fingers to save some
power.

We probably also need a close and open callbacks add the HID-driver
level, so that if there are no touchpad users we can also use
the same option to put the HID multi-touch device in a low power mode
where it does not scan for fingers.

<snip>

>>> A different, but related issue is how to make devices actually use the
>>> new inhibit support on the builtin keyboard + touchpad when say the lid
>>> is closed.   Arguably this is an userspace problem, but it is a tricky
>>> one. Currently on most modern Linux distributions suspend-on-lid-close
>>> is handled by systemd-logind and most modern desktop-environments are
>>> happy to have logind handle this for them.
>>>
>>> But most knowledge about input devices and e.g. heurisitics to decide
>>> if a touchpad is internal or external are part of libinput. Now we could
>>> have libinput use the new inhibit support (1), but then when the lid
>>> closes we get race between whatever process is using libinput trying
>>> to inhibit the touchpad (which must be done before to suspend to disable
>>> it as wakeup source) and logind trying to suspend the system.
>>>
>>> One solution here would be to move the setting of the inhibit sysfs
>>> attr into logind, but that requires adding a whole bunch of extra
>>> knowledge to logind which does not really belong there IMHO.
> 
> You do not need to push the knowledge into logind, you just need to
> communicate to logind what devices can be wakeup sources and which ones
> should not. Chrome OS uses udev tags/properties for that.

True, I did not think of doing the tag thingie + letting logind do
the inhibit on LID close based on that. logind could also disable
wakeup (to save power while suspended) on devices which are tagged
for it to do that (should probably be a separate tag from the
inhibit tag).

>>> I've been thinking a bit about this and to me it seems that the kernel
>>> is in the ideal position to automatically inhibit some devices when
>>> some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
>>> issue here is to chose on which devices to enable this. I believe
>>> that the auto inhibit on some switches mechanism is best done inside
>>> the kernel (disabled by default) and then we can have a sysfs
>>> attr called auto_inhibit_ev_sw_mask which can be set to e.g.
>>> (1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
>>> the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
>>> inhibit both when the lid is closed or when switched to tablet mode.
> 
> This is a policy and should be kept out of the kernel. Yes, we had it
> implemented with rfkill input handler, but it caused quite a few issues.
> As far as I know it is not being used anymore and we should not try with
> SW_LID->inhibit either.
> 
> I know it is faster to patch the kernel than to roll out proper
> userspace because everyone updates kernel regularly, but it does not
> mean it is the right solution.

Agreed, I just could not come up with a clean userspace solution, but
using udev+hwdb to set a tag for logind instead of having the write
to a new auto_inhibit_ev_sw_mask will work nicely.

So I think this is all resolved now (or at least we have a plan for it).

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
