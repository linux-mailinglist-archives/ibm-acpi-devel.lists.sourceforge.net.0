Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B351F5281
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Jun 2020 12:39:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jiy8M-0008TH-LT; Wed, 10 Jun 2020 10:39:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rjwysocki@gmail.com>) id 1jiy8G-0008Ss-KO
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 10:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yhj0O7kXqY+B3Lbx8zL7czuREuKE1xDVmkNkh9W0Ff8=; b=cCkzx8mrHjgSX/o4WKVMxZl3RH
 6rV1ELYucNagixrfhMWwgvPrlNlaqlaoOiKe+2qHEmZpDe5GxK2YNndzxmF4ACalXllXa7Mjof8cp
 +QHLYtnm4RGQzr4msJa5JS7qW+wkX6ARAmbgZ2/nB2ff4PELOVjWEvIvujTOePrhlVgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yhj0O7kXqY+B3Lbx8zL7czuREuKE1xDVmkNkh9W0Ff8=; b=clCjKFbUZbYJO+liMCqp2QN7l+
 IxZG2eCYcdZ/RPt9iTZln4hX6CWdDbxc2Kvl5qROZXI7k7ErAr23iWy8yBapH4QnocoYW/IVdosnp
 U2gCc5peeEnwN3QJcBFDX9B9adBRdFg+Qi04B5DcVL2E3oNcXNGmC0h5RFPkWVKEB/1s=;
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jiy8F-00FYxr-Az
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 10:38:56 +0000
Received: by mail-oo1-f68.google.com with SMTP id v3so397305oot.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Jun 2020 03:38:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yhj0O7kXqY+B3Lbx8zL7czuREuKE1xDVmkNkh9W0Ff8=;
 b=OQ1v0gAQ5jdZjt7ONdcQ0/omnp2FsQWjczuboNYWEBkusKz2qgZ4nJvYcXLtZtUUwU
 JO7z1mov4/FY+mrbSZHvoqnJxghDPNujJfIVi3JFR3/rlJmAe1e1fY4bdtiC056HU/ru
 Z+Du2fZmlUwGG2cxtyMJp81ABC2/PeHDcmNL+V4qyk464OxefQitABI72nCHdXlxZfqQ
 S06fFPyR0LIGet2S2Exwuat/1ClGWwZSHw6rhkbOT/N3bIan5cqqBbZ7xec0iZt4NUy4
 yXg9RK/8/3UlDy5sJt01Tx4F7U+i9jjwmM2UzZKO6crCi9xb//geHlVBRbRyiXtA73Md
 7W/g==
X-Gm-Message-State: AOAM533EKpUoHp7R2pOGbtd0/b4ZdnAU45f1lzAjWBlrVuH7VKWoc5/C
 uw0drOuVidp1WByIl4Pc1/DQijtq/uWwjG/qMF0=
X-Google-Smtp-Source: ABdhPJxAdTpO7LhYnf0dQcSTZJQHhIdlLN/4PFslP7TgkSlriS32Yc+I7+BmEpE6ZYiAWqbF26joucvNTE5ZFDcQo+M=
X-Received: by 2002:a4a:3c1a:: with SMTP id d26mr1875366ooa.38.1591785522478; 
 Wed, 10 Jun 2020 03:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
In-Reply-To: <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 10 Jun 2020 12:38:30 +0200
Message-ID: <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rjwysocki[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jiy8F-00FYxr-Az
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jun 10, 2020 at 11:50 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi All,
>
> On 6/8/20 1:22 PM, Andrzej Pietrasiewicz wrote:
> > This is a quick respin of v3, with just two small changes, please see
> > the changelog below.
> >
> > Userspace might want to implement a policy to temporarily disregard input
> > from certain devices.
> >
> > An example use case is a convertible laptop, whose keyboard can be folded
> > under the screen to create tablet-like experience. The user then must hold
> > the laptop in such a way that it is difficult to avoid pressing the keyboard
> > keys. It is therefore desirable to temporarily disregard input from the
> > keyboard, until it is folded back. This obviously is a policy which should
> > be kept out of the kernel, but the kernel must provide suitable means to
> > implement such a policy.
>
> First of all sorry to start a somewhat new discussion about this
> while this patch set is also somewhat far along in the review process,
> but I believe what I discuss below needs to be taken into account.
>
> Yesterday I have been looking into why an Asus T101HA would not stay
> suspended when the LID is closed. The cause is that the USB HID multi-touch
> touchpad in the base of the device starts sending events when the screen
> gets close to the touchpad (so when the LID is fully closed) and these
> events are causing a wakeup from suspend. HID multi-touch devices
> do have a way to tell them to fully stop sending events, also disabling
> the USB remote wakeup the device is doing. The question is when to tell
> it to not send events though ...
>
> So now I've been thinking about how to fix this and I believe that there
> is some interaction between this problem and this patch-set.
>
> The problem I'm seeing on the T101HA is about wakeups, so the question
> which I want to discuss is:
>
> 1. How does inhibiting interact with enabling /
> disabling the device as a wakeup source ?
>
> 2. Since we have now made inhibiting equal open/close how does open/close
> interact with a device being a wakeup source ?
>
> And my own initial (to be discussed) answers to these questions:
>
> 1. It seems to me that when a device is inhibited it should not be a
> wakeup source, so where possible a input-device-driver should disable
> a device's wakeup capabilities on suspend if inhibited

If "inhibit" means "do not generate any events going forward", then
this must also cover wakeup events, so I agree.

> 2. This one is trickier I don't think we have really clearly specified
> any behavior here. The default behavior of most drivers seems to be
> using something like this in their suspend callback:
>
>          if (device_may_wakeup(dev))
>                  enable_irq_wake(data->irq);
>          else if (input->users)
>                  foo_stop_receiving_events(data);
>
> Since this is what most drivers seem to do I believe we should keep
> this as is and that we should just clearly document that if the
> input_device has users (has been opened) or not does not matter
> for its wakeup behavior.
>
> Combining these 2 answers leads to this new pseudo code template
> for an input-device's suspend method:
>
>         /*
>          * If inhibited we have already disabled events and
>          * we do NOT want to setup the device as wake source.
>          */
>         if (input->inhibited)
>                 return 0;
>
>          if (device_may_wakeup(dev))
>                  enable_irq_wake(data->irq);
>          else if (input->users)
>                  foo_stop_receiving_events(data);
>
> ###

Sounds reasonable to me.

> A different, but related issue is how to make devices actually use the
> new inhibit support on the builtin keyboard + touchpad when say the lid
> is closed.   Arguably this is an userspace problem, but it is a tricky
> one. Currently on most modern Linux distributions suspend-on-lid-close
> is handled by systemd-logind and most modern desktop-environments are
> happy to have logind handle this for them.
>
> But most knowledge about input devices and e.g. heurisitics to decide
> if a touchpad is internal or external are part of libinput. Now we could
> have libinput use the new inhibit support (1), but then when the lid
> closes we get race between whatever process is using libinput trying
> to inhibit the touchpad (which must be done before to suspend to disable
> it as wakeup source) and logind trying to suspend the system.
>
> One solution here would be to move the setting of the inhibit sysfs
> attr into logind, but that requires adding a whole bunch of extra
> knowledge to logind which does not really belong there IMHO.
>
> I've been thinking a bit about this and to me it seems that the kernel
> is in the ideal position to automatically inhibit some devices when
> some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
> issue here is to chose on which devices to enable this. I believe
> that the auto inhibit on some switches mechanism is best done inside
> the kernel (disabled by default) and then we can have a sysfs
> attr called auto_inhibit_ev_sw_mask which can be set to e.g.
> (1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
> the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
> inhibit both when the lid is closed or when switched to tablet mode.

I agree that the kernel is the right place to handle this, but it
requires some extra knowledge about dependencies between devices.

It'd be kind of like power resources in ACPI, so for each state of a
"master" device (in principle, there may be more states of it than
just two) there would be a list of "dependent" intput devices that
need to be inhibited when the "master" device goes into that state.

> This could then be combined with a userspace utility run from an
> udev rule which makes the actual decision what auto_inhibit_ev_sw_mask
> should be set for a given input device.
>
> This will put the mechanism for what we want inside the kernel and
> leaves the policy on which switches we want this for out of the
> kernel.
>
> Note adding this new auto_inhibit_ev_sw_mask sysfs attr falls
> somewhat outside the context of this patchset and could be done
> as a follow up to this patch-set. But I do believe that we need to
> figure out how (non ChromeOS) userspace can / will use the new inhibit
> interface before merging it.


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
