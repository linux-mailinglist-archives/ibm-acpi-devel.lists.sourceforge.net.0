Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DB01EDE1A
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  4 Jun 2020 09:29:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jgkJJ-0004Um-I2; Thu, 04 Jun 2020 07:29:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1jgkJI-0004Ue-6h
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 04 Jun 2020 07:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cO/oadY0dSYawTqKBBOtZELNdMv+BYwXLtOmaeKt1Sg=; b=IH35MWwA5q3pGTcD8zpVrEsWTx
 1JUsGtC+eYpQ0PwZPGjvf2xfu7cfn4p02OjzN65TvEkOvv4dpmGYW256LdsdFBaucCpcmWzm2XMm0
 qqkmjJeQDYvIqTPMcp0aZERm+FFZRXWYe6ox5Co+cfJl+EEy0o92qFDbjwx6n68k+tA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cO/oadY0dSYawTqKBBOtZELNdMv+BYwXLtOmaeKt1Sg=; b=EwVrnTP5g1iNureyKt2twi7oxq
 5e4APPP1rgCBQ6PX6OxCIqPqrf6nvL+YEtk3C+4Y35UTxZJF9yRuDlzefwz9EWs5nbGf5I7Bsp0H9
 kUTJMkdHGzqfSdPBuin4MSzc8buyOQfIUV4Pwj9/QOwBOaHYsdjwVTS3WtTa+8XQxrms=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jgkJE-005488-C7
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 04 Jun 2020 07:29:08 +0000
Received: by mail-pj1-f66.google.com with SMTP id ga6so778719pjb.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 04 Jun 2020 00:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cO/oadY0dSYawTqKBBOtZELNdMv+BYwXLtOmaeKt1Sg=;
 b=mSZGbtpdbn+bP4nMMb1tDxin4WAkP+gyVx0KGCmSbOIb2Zuo48tqPsbaZgZkX7wjUx
 jV+dC6iU4rAWGaNMNS123cBBjbN3uCcsrVVNLRo+nMZIeV/9ANOLn8Ke6L7XFZ5kaBM/
 z8qkBvmD7DtoCtFyd6eh/3t6LFAQMwqMnWpTRo/c+x8mTusmYLExEpR0cYqPGVBYDjLe
 dSjkiPZtf8kQKjMPN8q+Q9BZFBcgrom4XSu9FrzdtDSMlsvZqEwG94OArztfsA7ZQ7Ni
 mS+TfnhlkryWeFj1wtdJoqqqxt4uvNd9O1RqEh2uaT0skrLWcurMXwr1noiuEYqDlDJH
 c1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cO/oadY0dSYawTqKBBOtZELNdMv+BYwXLtOmaeKt1Sg=;
 b=lcDmQn6B0e16PDg1uwPcjA3MWjfhKucCtyn0vymZYqlysOsaYIa3f5AnFSgdN+wk4e
 J4/5oOuXHdeB325efrL5y0HsKFtuBX0aO8Z3n7fz1GDWngm05G8nA0WF9aSX3dQT9GgH
 pVvSmtC4jwoZl8wZGibz5CulACFZrnxTM2FjlxgMYItq6f7aNh54ujRJc2HW3I/5yA8O
 GN/vRUEP3HwNUQ8tuxWN2+p4vzgTI1YxfV1cFDnzRBq3wNnaMcbBX1XhTDCwOCNamcvE
 cFMLmUn1na1Bg9c7K0a1He6Lzw+V7IWDEjqoHxwRMA3QgBVhZsJNqfhXxanzVcXOMdCo
 I8Ig==
X-Gm-Message-State: AOAM532TsBvMC069EFJJ6xlI81VG8vqKArtwpWZmknzMAUCc5cwdkrSn
 XiwZYaLB6HK51jHrIpk5b1A=
X-Google-Smtp-Source: ABdhPJyqLLuYWne+m1xT0qat0v5Dz3JeDQ3IB/DdPJdnnpMfQKwnq1lCSPXxs5qp986I3SUYNwXRtg==
X-Received: by 2002:a17:90a:fa95:: with SMTP id
 cu21mr4307120pjb.56.1591255738475; 
 Thu, 04 Jun 2020 00:28:58 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id n189sm1657259pfn.108.2020.06.04.00.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 00:28:57 -0700 (PDT)
Date: Thu, 4 Jun 2020 00:28:53 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200604072853.GP89269@dtor-ws>
References: <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
 <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
 <20200602175241.GO89269@dtor-ws>
 <82e9f2ab-a16e-51ee-1413-bedf0122026a@collabora.com>
 <8f97d2e1-497a-495d-bc82-f46dbeba440c@redhat.com>
 <fb5bee72-6a75-88aa-8157-75f07c491eeb@collabora.com>
 <681abc14-ef0f-ff15-68ed-944b2f96bdaf@redhat.com>
 <025361f4-5b1b-6669-ffa0-a6e8ad43940c@collabora.com>
 <01b902dd-8841-e697-5ba7-96fa6b73c1cd@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01b902dd-8841-e697-5ba7-96fa6b73c1cd@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jgkJE-005488-C7
Subject: Re: [ibm-acpi-devel] [PATCHv2 0/7] Support inhibiting input devices
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Hans, Andrzej,

On Wed, Jun 03, 2020 at 09:37:10PM +0200, Hans de Goede wrote:
> Hi,
> =

> On 6/3/20 7:54 PM, Andrzej Pietrasiewicz wrote:
> > W dniu 03.06.2020 o=A019:38, Hans de Goede pisze:
> > > Hi,
> > > =

> > > On 6/3/20 3:07 PM, Andrzej Pietrasiewicz wrote:
> > > > Hi Hans, hi Dmitry,
> > > =

> > > <snip>
> > > =

> > > > I'm taking one step back and looking at the ->open() and ->close()
> > > > driver callbacks. They are called from input_open_device() and
> > > > input_close_device(), respectively:
> > > > =

> > > > input_open_device():
> > > > "This function should be called by input handlers when they
> > > > want to start receive events from given input device."
> > > > =

> > > > ->open() callback:
> > > > "this method is called when the very first user calls
> > > > input_open_device(). The driver must prepare the device to start
> > > > generating events (start polling thread, request an IRQ, submit
> > > > URB, etc.)"
> > > > =

> > > > input_close_device():
> > > > "This function should be called by input handlers when they
> > > > want to stop receive events from given input device."
> > > > =

> > > > ->close() callback:
> > > > "this method is called when the very last user calls
> > > > input_close_device()"
> > > > =

> > > > It seems to me that the callback names do not reflect their
> > > > purpose: their meaning is not to "open" or to "close" but to
> > > > give drivers a chance to control when they start or stop
> > > > providing events to the input core.
> > > > =

> > > > What would you say about changing the callbacks' names?
> > > > I'd envsion: ->provide_events() instead of ->open() and
> > > > ->stop_events() instead of ->close(). Of course drivers can
> > > > exploit the fact of knowing that nobody wants any events
> > > > from them and do whatever they consider appropriate, for
> > > > example go into a low power mode - but the latter is beyond
> > > > the scope of the input subsystem and is driver-specific.
> > > =

> > > I don't have much of an opinion on changing the names,
> > > to me open/close have always means start/stop receiving
> > > events. This follows the everything is a file philosophy,
> > > e.g. you can also not really "open" a serial port,
> > > yet opening /dev/ttyS0 will activate the receive IRQ
> > > of the UART, etc. So maybe we just need to make the
> > > docs clearer rather then do the rename?=A0 Doing the
> > > rename is certainly going to cause a lot of churn.
> > =

> > Right, I can see now that the suggestion to change names is
> > too far fetched. (I feel that release() would be better
> > than close(), though). But it exposes the message I wanted to
> > pass.

release() usually means that the object is destroyedm, i.e this action,
unlike close() is irrevocable.

Let's leave the names as is, and adjust kerneldoc comments as needed.

> > =

> > > =

> > > Anyways as said, I don't have much of an opinion,
> > > so I'll leave commenting (more) on this to Dmitry.
> > > =

> > > > With such a naming change in mind let's consider inhibiting.
> > > > We want to be able to control when to disregard events from
> > > > a given device. It makes sense to do it at device level, otherwise
> > > > such an operation would have to be invoked in all associated
> > > > handlers (those that have an open handle associating them with
> > > > the device in question). But of course we can do better than
> > > > merely ignoring the events received: we can tell the drivers
> > > > that we don't want any events from them, and later, at uninhibit
> > > > time, tell them to start providing the events again. Conceptually,
> > > > the two operations (provide or don't provide envents) are exactly
> > > > the same thing we want to be happening at input_open_device() and
> > > > input_close_device() time. To me, changing the names of
> > > > ->open() and ->close() exposes this fact very well.
> > > > =

> > > > Consequently, ->inhibit() and ->uninhibit() won't be needed,
> > > > and drivers which already implement ->provide_events() (formerly
> > > > ->open()) and ->stop_events() (formerly ->close()) will receive
> > > > full inhibit/uninhibit support for free (subject to how well they
> > > > implement ->provide_events()/->stop_events()). Unless we can come
> > > > up with what the drivers might be doing on top of ->stop_events()
> > > > and ->provide_events() when inhibiting/uninhibiting, but it seems
> > > > to me we can't. Can we?
> > > =

> > > Right. I'm happy that you've come to see that both on open/close
> > > and on inhibit/uninhibit we want to "start receiving events" and
> > > "stop receiving events", so that we only need one set of callbacks.
> > > =

> > =

> > Yeah, that's my conclusion - at least on a conceptual level.
> > =

> > That said, what I can imagine is an existing driver (e.g. elan_i2c)
> > which does not implement neither open() nor close(), but does have
> > suspend() and resume(). Then it is maybe a bit easier to add inhibit()
> > and uninhibit() /they would be similar to suspend and resume/ instead
> > of open() and close(): If only open() and close() are possible, then
> > the probe function needs to be extended to "close" the device before it
> > gets registered, because from the moment it is registered it might be
> > opened right away.
> =

> The probe only needs to "close" it if for some reason it
> starts directly sending events in most cases the driver
> must actively do something to get it to send events.
> =

> So in most cases this should be pretty straight forward,
> as for having to do some init / power-on during probe
> and then power-off at the end of the probe. Yes sometimes
> something like that might be necessary.
> =

> Looking at your suggested elan_i2c changes I think they
> look fine. I have the feeling that with some refactoring
> they can be made a bit cleaner (I did not look a the
> changes in too much detail) but overall I think they
> look ok.
> =

> Note you may also want to look at using the runtime
> suspend framework for this, doing a pm_runtime_get_sync()
> in open() and then letting (runtime) suspend do the power
> off if you set a reasonable timeout for autosuspend after
> the last user is gone then that will also avoid an
> unnecessary suspend / resume cycle between probe()
> exiting and the first open() call and this avoids the
> need to do a poweroff() at the end of probe(), the
> runtime-pm framework will autosuspend the device after
> the timeout expires.

Yes, plugging into runtime PM would be nice, as as it currently stands
the driver will be broken with regard to trying access sysfs for
firmware update/calibration/etc if device happens to be inhibited.

The version of the driver in Chrome OS tree is similarly broken, but
because we control both kernel and the rest of the stack we know that we
do not poke at sysfs when device is inhibited. It will not be acceptable
for mainline (and that is one of reasons why elan_i2c does not have
open/close methods at the moment).

Thanks.

-- =

Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
