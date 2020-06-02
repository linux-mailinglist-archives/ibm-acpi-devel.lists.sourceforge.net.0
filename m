Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C13611EC16F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  2 Jun 2020 19:53:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jgB5q-0004QB-Nh; Tue, 02 Jun 2020 17:52:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1jgB5o-0004Q2-Lz
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 02 Jun 2020 17:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DsDlTAN5nXx2eXeaYpyOizF6rp89+ZyQuZEoODyhpKQ=; b=LiMvRYxo4iGDs0AjUJcGDKwyAS
 tXP9ACMw4+aRxE0rtKzzmR0aniiIsQml1/H8jcn8d+/HRL4yV0fMJK5NZXTu2t/eHvtHOFGBURZqb
 0JTvp6S1Qneo0XI343zetdkI91mvWSbA+/3k7UlgN1lAs7LaP3iG+YzWC6PnN+fY1PdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DsDlTAN5nXx2eXeaYpyOizF6rp89+ZyQuZEoODyhpKQ=; b=BoiV6g+J5ah89BT+q3GexRSNU+
 reUdxNKw9lhXkVIrbvN78n/+XxA59isOgTO4mioVgCd7zweGP7roJVbZsaSUX68oudzX/OZqtks6m
 VOB3QR3QjNJ/tN4UUAQUdxMLk1QLeVE27fmxy22cmDJAqMCDXpCtnHBqX06u87UJ1cMs=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jgB5n-009i3z-D5
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 02 Jun 2020 17:52:52 +0000
Received: by mail-pl1-f195.google.com with SMTP id t7so1671848plr.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 02 Jun 2020 10:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DsDlTAN5nXx2eXeaYpyOizF6rp89+ZyQuZEoODyhpKQ=;
 b=lOt5bDJGsfK9IyNxz3BNa4rLKdk08R28EoDJrT2TUNMLbDyn8CzBBmFfkFe6atRsGn
 NQUzHizY/xR0tIwR/Fv6cLBvYq4vV4+Q1oNNa578UCAQkfJUbXwU0XvgRE6TIZ4K0ZVL
 +IilnKMWHrYZbepwRYHoTr0hmJk9tLHnDUs3xNl11dsFboIB3dq7c9tD088BsqY9MbHi
 +SPZDl667YmxpVexTZNqnhx5Pgecw0OPK+asacMRjWAHfk4LuN6hUAN5lYYRVMImMTkJ
 rkLXt/cXLA5dp+fg8J/cStQdFtFGauWWiBHCKiftRfNn+KL8xQifFcVN5QzSVxpMF7pD
 M3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DsDlTAN5nXx2eXeaYpyOizF6rp89+ZyQuZEoODyhpKQ=;
 b=ctff7QJiN+/8QT3Q26ruMgWrn7MRcZ4ZOZeYXK1d8A8OKZRf+E2eZ2XOEu2zLgv/Xe
 JWJ0gUkuxSCJLW7tldekRUc6eTPlpu7stCyRNtfYvR9icRvENjoCqtgZMT4QCLPk0AeD
 BxPUWPdRhsPrBau4F5SpmiaARQCCcXUPphpHJKmUMt7xhGLx77ZYekfhXmJDYT41ErIk
 T/6CEbJeoNLp8sy+gYncMpn/lHyh7VJ5QLRZ3Yhpe+UCU+9IUB6JKzEnsrJSrGu3PQ6X
 mddzw3RwRijVy3pNBAsN7VOHAYey3+lOJXupI5Tge8s+VjTynYpra60RTkNFkLwgnW2A
 E2jA==
X-Gm-Message-State: AOAM5301l9PG2qDzsmnb0PSG3XeXRg+exYlBxGHKSJpw21FNPJVajzAZ
 K+0ay62jUqHN2lKYUIvVsqU=
X-Google-Smtp-Source: ABdhPJw4j3qAh/n1rbRzh5j+Qh1ZpRvg/yNd1He12Pkb+W7uWkt4zY60I9IIhaoAP1YKs8H+3eduzw==
X-Received: by 2002:a17:902:c411:: with SMTP id
 k17mr22524187plk.165.1591120365656; 
 Tue, 02 Jun 2020 10:52:45 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id m9sm2909107pfo.200.2020.06.02.10.52.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 10:52:44 -0700 (PDT)
Date: Tue, 2 Jun 2020 10:52:41 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20200602175241.GO89269@dtor-ws>
References: <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
 <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jgB5n-009i3z-D5
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
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Andrzej,

On Tue, Jun 02, 2020 at 06:56:40PM +0200, Andrzej Pietrasiewicz wrote:
> Hi Dmitry,
> =

> W dniu 27.05.2020 o=A008:34, Dmitry Torokhov pisze:
> > That said, I think the way we should handle inhibit/uninhibit, is that
> > if we have the callback defined, then we call it, and only call open and
> > close if uninhibit or inhibit are _not_ defined.
> > =

> =

> If I understand you correctly you suggest to call either inhibit,
> if provided or close, if inhibit is not provided, but not both,
> that is, if both are provided then on the inhibit path only
> inhibit is called. And, consequently, you suggest to call either
> uninhibit or open, but not both. The rest of my mail makes this
> assumption, so kindly confirm if I understand you correctly.

Yes, that is correct. If a driver wants really fine-grained control, it
will provide inhibit (or both inhibit and close), otherwise it will rely
on close in place of inhibit.

> =

> In my opinion this idea will not work.
> =

> The first question is should we be able to inhibit a device
> which is not opened? In my opinion we should, in order to be
> able to inhibit a device in anticipation without needing to
> open it first.

I agree.

> =

> Then what does opening (with input_open_device()) an inhibited
> device mean? Should it succeed or should it fail?

It should succeed.

> If it is not
> the first opening then effectively it boils down to increasing
> device's and handle's counters, so we can allow it to succeed.
> If, however, the device is being opened for the first time,
> the ->open() method wants to be called, but that somehow
> contradicts the device's inhibited state. So a logical thing
> to do is to either fail input_open_device() or postpone ->open()
> invocation to the moment of uninhibiting - and the latter is
> what the patches in this series currently do.
> =

> Failing input_open_device() because of the inhibited state is
> not the right thing to do. Let me explain. Suppose that a device
> is already inhibited and then a new matching handler appears
> in the system. Most handlers (apm-power.c, evbug.c, input-leds.c,
> mac_hid.c, sysrq.c, vt/keyboard.c and rfkill/input.c) don't create
> any character devices (only evdev.c, joydev.c and mousedev.c do),
> so for them it makes no sense to delay calling input_open_device()
> and it is called in handler's ->connect(). If input_open_device()
> now fails, we have lost the only chance for this ->connect() to
> succeed.
> =

> Summarizing, IMO the uninhibit path should be calling both
> ->open() and ->uninhibit() (if provided), and conversely, the inhibit
> path should be calling both ->inhibit() and ->close() (if provided).

So what you are trying to say is that you see inhibit as something that
is done in addition to what happens in close. But what exactly do you
want to do in inhibit, in addition to what close is doing?

In my view, if we want to have a dedicated inhibit callback, then it
will do everything that close does, they both are aware of each other
and can sort out the state transitions between them. For drivers that do
not have dedicated inhibit/uninhibit, we can use open and close
handlers, and have input core sort out when each should be called. That
means that we should not call dev->open() in input_open_device() when
device is inhibited (and same for dev->close() in input_close_device).
And when uninhibiting, we should not call dev->open() when there are no
users for the device, and no dev->close() when inhibiting with no users.

Do you see any problems with this approach?

Thanks.

-- =

Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
