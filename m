Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB281F5185
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Jun 2020 11:50:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jixN9-00065z-Oq; Wed, 10 Jun 2020 09:50:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jixN8-00065r-DU
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 09:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=botNO1nlLUjRUQbw+XWbs23AWcnqLx8AKm8BEyvzIAg=; b=HjwkhoOqUHZaq54Xw2ysqpT1i/
 H7VyeNDAeJhbkKsT/onarppFuOkxV94hWdCtAnfui2ZsSWEvN9xfDoJNCasSmH4yD7GL32L5SBTK3
 pR8xa8KZ+y6sEuH0LOTOq0R0X9J1IahKoYNbAVMuYssqk3uAfUQdB9bTKfGDfUaqv1qI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=botNO1nlLUjRUQbw+XWbs23AWcnqLx8AKm8BEyvzIAg=; b=d2+Pxdbx4nSSaPabd0fhpws6Xj
 rPAJmibzXE8wqKngR9i8xvKrtAzCJnGStsHC+Q1vJxwTo2pKxGPk/8dhgvssjN+2c5b+Y0t1sFOuG
 dWDgBquomChlfsiXdFFnyW3b9GNkX9fa5dHjpWyKnEiZP121unhxBdaI9YDeEf6HugJU=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jixN6-00FX2Z-W6
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 09:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591782607;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=botNO1nlLUjRUQbw+XWbs23AWcnqLx8AKm8BEyvzIAg=;
 b=KVuwRvENJMne24u/dhtseBcKQca4sq2FfbS1yc9gMh/xpM19akNr4tAAeHywE9SYya3+5u
 om9b51rT8OWOTsFGLvSmHIUCoDtXC2wcMrrf1nGV7E9MMXQyUceeUgzilIg3rfG2uRF/Ln
 EyKc0yAqMlJehQ60Bb1GuClOlx9RlxA=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-B7Nz2mALMvmDtXyW0jDQPA-1; Wed, 10 Jun 2020 05:49:58 -0400
X-MC-Unique: B7Nz2mALMvmDtXyW0jDQPA-1
Received: by mail-ej1-f70.google.com with SMTP id e14so832934ejt.16
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Jun 2020 02:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=botNO1nlLUjRUQbw+XWbs23AWcnqLx8AKm8BEyvzIAg=;
 b=fC0MmbcCWBNiqIxek6u/EMcCaE0QIOIynZjbFw2nq5xSpeE/yvxFXCoc48o4mayNHj
 /hK3ksYOvCiy1tQF9wDsGPDn+0DAP6VVfqL8q1x0082aox2IElTB5zwgGqamxYbLWSH2
 chKoDmbMOBFCRUiSrpWyeCsOT4ozTK99Y2UWt5CgcanRetsFB+v2RUwIDWi64Axzsj0T
 02IC/I5MVX/MVEXskhtPFeBsT8MiArcEMDJ4AJbhSOZi04Ehsw1Lq+MWyU5pu3Y8kXQk
 Cv4QpKIBrPQlTzMuz4tFslIvNygTojHbCnubeOF+Rr+CtQgErfHnapSShh+awNam0/8D
 +59g==
X-Gm-Message-State: AOAM532UCJcc09dV1w+Qyeh5Nd+HE3lzv6E6SQCSZjjQvKirZLZPuPYe
 mlgfkslScAEB988FHYLY91q13RuUAw9q7g+Wzp/ptNRMbxWRuUC7ZGsURMufawhkqAwbRCY9nsm
 4FlFpG+DiQds8Ksx9IHz1KQxar7jvoCVNc8c=
X-Received: by 2002:a17:906:e247:: with SMTP id
 gq7mr2477444ejb.107.1591782597473; 
 Wed, 10 Jun 2020 02:49:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLuKTyRnDOzIwu58NCqlAlNV6D3hehW65EK1iqNwj/QcEksd5YROS78o3t4aQe67v9IROeVQ==
X-Received: by 2002:a17:906:e247:: with SMTP id
 gq7mr2477395ejb.107.1591782597158; 
 Wed, 10 Jun 2020 02:49:57 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id f19sm16656165edq.14.2020.06.10.02.49.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 02:49:56 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
Date: Wed, 10 Jun 2020 11:49:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608112211.12125-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jixN6-00FX2Z-W6
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

On 6/8/20 1:22 PM, Andrzej Pietrasiewicz wrote:
> This is a quick respin of v3, with just two small changes, please see
> the changelog below.
> 
> Userspace might want to implement a policy to temporarily disregard input
> from certain devices.
> 
> An example use case is a convertible laptop, whose keyboard can be folded
> under the screen to create tablet-like experience. The user then must hold
> the laptop in such a way that it is difficult to avoid pressing the keyboard
> keys. It is therefore desirable to temporarily disregard input from the
> keyboard, until it is folded back. This obviously is a policy which should
> be kept out of the kernel, but the kernel must provide suitable means to
> implement such a policy.

First of all sorry to start a somewhat new discussion about this
while this patch set is also somewhat far along in the review process,
but I believe what I discuss below needs to be taken into account.

Yesterday I have been looking into why an Asus T101HA would not stay
suspended when the LID is closed. The cause is that the USB HID multi-touch
touchpad in the base of the device starts sending events when the screen
gets close to the touchpad (so when the LID is fully closed) and these
events are causing a wakeup from suspend. HID multi-touch devices
do have a way to tell them to fully stop sending events, also disabling
the USB remote wakeup the device is doing. The question is when to tell
it to not send events though ...

So now I've been thinking about how to fix this and I believe that there
is some interaction between this problem and this patch-set.

The problem I'm seeing on the T101HA is about wakeups, so the question
which I want to discuss is:

1. How does inhibiting interact with enabling /
disabling the device as a wakeup source ?

2. Since we have now made inhibiting equal open/close how does open/close
interact with a device being a wakeup source ?

And my own initial (to be discussed) answers to these questions:

1. It seems to me that when a device is inhibited it should not be a
wakeup source, so where possible a input-device-driver should disable
a device's wakeup capabilities on suspend if inhibited

2. This one is trickier I don't think we have really clearly specified
any behavior here. The default behavior of most drivers seems to be
using something like this in their suspend callback:

         if (device_may_wakeup(dev))
                 enable_irq_wake(data->irq);
         else if (input->users)
                 foo_stop_receiving_events(data);

Since this is what most drivers seem to do I believe we should keep
this as is and that we should just clearly document that if the
input_device has users (has been opened) or not does not matter
for its wakeup behavior.

Combining these 2 answers leads to this new pseudo code template
for an input-device's suspend method:

	/*
	 * If inhibited we have already disabled events and
	 * we do NOT want to setup the device as wake source.
	 */
	if (input->inhibited)
		return 0;

         if (device_may_wakeup(dev))
                 enable_irq_wake(data->irq);
         else if (input->users)
                 foo_stop_receiving_events(data);

###

A different, but related issue is how to make devices actually use the
new inhibit support on the builtin keyboard + touchpad when say the lid
is closed.   Arguably this is an userspace problem, but it is a tricky
one. Currently on most modern Linux distributions suspend-on-lid-close
is handled by systemd-logind and most modern desktop-environments are
happy to have logind handle this for them.

But most knowledge about input devices and e.g. heurisitics to decide
if a touchpad is internal or external are part of libinput. Now we could
have libinput use the new inhibit support (1), but then when the lid
closes we get race between whatever process is using libinput trying
to inhibit the touchpad (which must be done before to suspend to disable
it as wakeup source) and logind trying to suspend the system.

One solution here would be to move the setting of the inhibit sysfs
attr into logind, but that requires adding a whole bunch of extra
knowledge to logind which does not really belong there IMHO.

I've been thinking a bit about this and to me it seems that the kernel
is in the ideal position to automatically inhibit some devices when
some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
issue here is to chose on which devices to enable this. I believe
that the auto inhibit on some switches mechanism is best done inside
the kernel (disabled by default) and then we can have a sysfs
attr called auto_inhibit_ev_sw_mask which can be set to e.g.
(1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
inhibit both when the lid is closed or when switched to tablet mode.

This could then be combined with a userspace utility run from an
udev rule which makes the actual decision what auto_inhibit_ev_sw_mask
should be set for a given input device.

This will put the mechanism for what we want inside the kernel and
leaves the policy on which switches we want this for out of the
kernel.

Note adding this new auto_inhibit_ev_sw_mask sysfs attr falls
somewhat outside the context of this patchset and could be done
as a follow up to this patch-set. But I do believe that we need to
figure out how (non ChromeOS) userspace can / will use the new inhibit
interface before merging it.

Regards,

Hans




1) There are issues here with libinput not running as root and this
being a root only sysfs interface but lets ignore those for now,
note that the auto_inhibit_ev_sw_mask also neatly solves this
problem




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
