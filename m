Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC92C1F5638
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Jun 2020 15:52:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jj19a-00016c-7k; Wed, 10 Jun 2020 13:52:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jj19Y-00016D-JC
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 13:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YL2CUX+ytcqKztbtjkEaTAotWFK6JYYqCnPu2fBEOuA=; b=MxHUugWdiq+iDidtd/QHgC68pG
 ZPqiI05bf9dsxYkfKSnpSXhp0OZmF0appq2j7Hjlmib7SHuYuk8+nrVCHQdZTeBV5+HstAXyQq/o4
 ilIvsu2DXcsI2GcZzfFWw4a8shoEOypzUu4tKC2UD+CehoYnQIjLFD5QYRw+XA29R1q0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YL2CUX+ytcqKztbtjkEaTAotWFK6JYYqCnPu2fBEOuA=; b=RHQtEMsZPaHqlpWjxmmuE8ap9+
 Huk/MtxVYnZd2VzlGtNOB22tTFZsNlXRWlT3uKYfjQxmnd2myvFOcphIsczm4bQRnVEAvjVoG4jM4
 rLykgMroIn2/tod3L7/g4Xx+Z0vkSDS2LPJ/xcPrcmtQZVjnM1Ef3dT/01wwxGmAwjDE=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jj19W-00EC0l-K4
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 13:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591797140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YL2CUX+ytcqKztbtjkEaTAotWFK6JYYqCnPu2fBEOuA=;
 b=RNgBmriM4ahFUxcS7Fg9c2XAKyovRc1vbF3yWBevYkrsDtYMZYq+0YkfnznkHE7+87EJiz
 8cG3QCQqdrGNc0n8sVym0ptbpk5JY0AId2TxhStM8tX/tw86bzhGaE0OS+2A4XTehSFOHL
 SbVZ2Gna7dWtJJxjK6K+HwBkthAcMJ4=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-SdBSwBmxP6-MX7jwRj6rUA-1; Wed, 10 Jun 2020 09:52:18 -0400
X-MC-Unique: SdBSwBmxP6-MX7jwRj6rUA-1
Received: by mail-ed1-f72.google.com with SMTP id m23so678857edq.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Jun 2020 06:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YL2CUX+ytcqKztbtjkEaTAotWFK6JYYqCnPu2fBEOuA=;
 b=hdTMFVw4RtGdE1BQaKCuPT0DWnuJxOkiYHjG24pPk0c3IFfOviB9rFRWMHm1r9I8vH
 G5Nea5ocOWGRPP5m7S5rmjoVWAeAqtdwiCLO/vKwRi6QH4o8tUUQuWwxF+V01IvmzLiB
 4y/W7czb0u26lLxH4BYBJru7EsWsRDEF0LzIXWNocDgUGerv80rK3sdjxjVjOdlOHNxK
 bbXCvDZAt9dgqnF8zWwh3bMpiqFd28bOYrqm/fbXtgY80MTAeRfFWtZPTtTxhYBJNNLL
 qK9QSi7+27sHDl00KqjyOv5SBgFTq/ING0Gl3trBod1TcarAWwws8lcGTCMxiLG8jYW5
 32Bw==
X-Gm-Message-State: AOAM533zc8QvCl8T/XFHEDuDRRerrC8JegpSZf/iYFv/a2wnCvS/1efD
 jSsE6PHuYgVouEuEnTfSbK6AauAd1kWwLFSo3BSvpZodkmw0opkBTRikHFP9hpjnhr5rdYseU2B
 lF53YvyBSbQgZWho33lVj9S2ka0uS7fPeXKA=
X-Received: by 2002:a50:b2e1:: with SMTP id p88mr2582802edd.198.1591797137518; 
 Wed, 10 Jun 2020 06:52:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEJek1TXZYUkZ6pG2p869jbxR9ODYMKVkeJa1/sT8kaPG7Zk4zmYdct4EtD9GIM7FcH0rbNA==
X-Received: by 2002:a50:b2e1:: with SMTP id p88mr2582761edd.198.1591797137192; 
 Wed, 10 Jun 2020 06:52:17 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id dm1sm16655504ejc.99.2020.06.10.06.52.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 06:52:16 -0700 (PDT)
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <cd0dc625-c0bf-8322-fc31-c5eccb4be1cd@redhat.com>
Date: Wed, 10 Jun 2020 15:52:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
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
X-Headers-End: 1jj19W-00EC0l-K4
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
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
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

On 6/10/20 12:38 PM, Rafael J. Wysocki wrote:
> On Wed, Jun 10, 2020 at 11:50 AM Hans de Goede <hdegoede@redhat.com> wrote:

<snip>

>> A different, but related issue is how to make devices actually use the
>> new inhibit support on the builtin keyboard + touchpad when say the lid
>> is closed.   Arguably this is an userspace problem, but it is a tricky
>> one. Currently on most modern Linux distributions suspend-on-lid-close
>> is handled by systemd-logind and most modern desktop-environments are
>> happy to have logind handle this for them.
>>
>> But most knowledge about input devices and e.g. heurisitics to decide
>> if a touchpad is internal or external are part of libinput. Now we could
>> have libinput use the new inhibit support (1), but then when the lid
>> closes we get race between whatever process is using libinput trying
>> to inhibit the touchpad (which must be done before to suspend to disable
>> it as wakeup source) and logind trying to suspend the system.
>>
>> One solution here would be to move the setting of the inhibit sysfs
>> attr into logind, but that requires adding a whole bunch of extra
>> knowledge to logind which does not really belong there IMHO.
>>
>> I've been thinking a bit about this and to me it seems that the kernel
>> is in the ideal position to automatically inhibit some devices when
>> some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
>> issue here is to chose on which devices to enable this. I believe
>> that the auto inhibit on some switches mechanism is best done inside
>> the kernel (disabled by default) and then we can have a sysfs
>> attr called auto_inhibit_ev_sw_mask which can be set to e.g.
>> (1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
>> the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
>> inhibit both when the lid is closed or when switched to tablet mode.
> 
> I agree that the kernel is the right place to handle this, but it
> requires some extra knowledge about dependencies between devices.
>
> It'd be kind of like power resources in ACPI, so for each state of a
> "master" device (in principle, there may be more states of it than
> just two) there would be a list of "dependent" intput devices that
> need to be inhibited when the "master" device goes into that state.

So a big part of the reason to punt the decision on which input
devices to enable this auto-inhibit is that we don't really have
information about those relationsships / device-links you are
suggesting here.  libinput is already doing inhibiting inside
userspace for e.g. the tablet-mode switch but it relies on heuristics
+ quirk tables to decide which keyboards should be inhibited and which
not.

E.g. for a 360 degree hinges 2-in-1 we want to disable the builtin
keyboard, when folded into in tablet mode, but not any external ones.

Mostly the builtin kbd will be PS2 but I have one such 2-in-1 here
in my home office with a USB kbd ...

In general of the master devices there will be only 1, there will be
only 1 lid switch and only 1 tablet-mode switch. So my idea with the
auto_inhibit_ev_sw_mask, is for it to be a per input-device setting.

So using your terms, all input devices with the (1 << SW_LID) bit
set in their auto_inhibit_ev_sw_mask will be dependents of the
(master) device which actually is reporting the SW_LID bit.

The idea here is for this to work the same as how the rfkill code
from net/rfkill/input.c works, except instead of binding e.g.
KEY_WLAN to toggling the sw-state of rfkill devices with a type
of RFKILL_TYPE_WLAN. This will bind SW_LID to inhibiting input
devices with the SW_LID bit set in their auto_inhibit_ev_sw_mask.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
