Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7702D71BE
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 11 Dec 2020 09:32:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kndq0-0000f2-VI; Fri, 11 Dec 2020 08:31:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kndpz-0000eu-3B
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 11 Dec 2020 08:31:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4zPFRNJq7ChgGn6x1xRHPz16KRlRzGnYElHimU2a+ik=; b=mz0BNDpsJ9en9O2z4sg583o/om
 GbxN56gY824RcJF06RPkJDHfCHdUebMUyrHnxbxxkwzFpzxBeph2Xf5wYM6KQoFzK0Qpx/YxiRNJZ
 +3hge/DatC9HqrWM6FFGV53rExtOd3Q4P3+W+u6Vdnyo6XNVq9LBpPPw0l7JL2n5kshw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4zPFRNJq7ChgGn6x1xRHPz16KRlRzGnYElHimU2a+ik=; b=bA7jCeAMZ1IfgdTawEodJB4GjE
 9BRp2mUORyDyqCmvCCyJe6yUWXjBJ2ZMnhM9Ra0BC+fE8QV0Lb/71PIBJVS8xPSJA2deWZVhqEpkf
 O/ryc90gWBR6yGo5QDk/NQzrL4wcAuxJAeRXlfaBJ67By+efYIlrgW/t7J8gUjRGjSbI=;
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kndpu-009owa-Gw
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 11 Dec 2020 08:31:39 +0000
Received: by mail-pj1-f65.google.com with SMTP id b5so1974094pjl.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 11 Dec 2020 00:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4zPFRNJq7ChgGn6x1xRHPz16KRlRzGnYElHimU2a+ik=;
 b=mB3B90PTK0IhVY1R2bpq5cXTcrpAgnpH7bH9MG5eYBLl9ySVrfD34JwfyKv86oVOO2
 cDIzStmOtmsKsvdG/iT4i6wekuMnWgB0ranqUq0eQRQorGNfi+etBI5781L0QT2XMr+E
 QHUK6op8ediMKZPm1gkI8HweBBQgTulyamv0PeJIXE5L9/6n1b+OiSRoIaFDrfmpP/bT
 DatGLglQJixZuub99A6SS+6aVNzm+GJNEd29b6D5D1qYuUxQKWj3kwtINrbvAmOSjRrf
 weN9ctehM3LgNCf4J7Bd6hxMJWju4rk83bU7dSq62a9hPpBWlCfvVZF0aS/Fl1vYhjEB
 PXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4zPFRNJq7ChgGn6x1xRHPz16KRlRzGnYElHimU2a+ik=;
 b=rs87HClk37XYr1sPtz1NkRORxSVeAWlJ4XQh0R+nxIyfmc1yknwQ9JBV/V/FG0Sl4g
 ekulksaiCh+E/AQotf0dZ9TLzqBnhrf7ZUojyoqEUUDwTtdE3TjTdvybn8pbuU1UoUHf
 da1ErTPz5FodkT8auhNrfY4nM8+cMtYq7fubrAGblRFIbQEttHWV45jzz+0croXPH0LL
 e9f2ewpzIrzYQEOm8oLQhc9gVWB4MUl/S3ms1hovJaOrU9CAtf/Ul92j1585XZSoYPb7
 IPJj36W9kfXytEkMmdaNRDkh6xEP46EUWXEnWo4Ju7EE3GIhl6SQ5MOWxTGJ60G5+pGa
 GLCA==
X-Gm-Message-State: AOAM5333WcOLyNryDgZp5xl8TAVK6DxY9jP/ttVm7wpvcvrjhr6Rv2wb
 chCG7dfFZSvc1wTSmqlHEDM=
X-Google-Smtp-Source: ABdhPJy5hbCygYTmShS5aFbZ1YVPeTgb8RVJaseat9jLQIAFHFQ+8RbQ/NYOYxQFRvRqk+3sJqx0Pg==
X-Received: by 2002:a17:902:fe02:b029:db:c7fd:3c2c with SMTP id
 g2-20020a170902fe02b02900dbc7fd3c2cmr10050492plj.31.1607675481748; 
 Fri, 11 Dec 2020 00:31:21 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id u4sm9029469pgg.48.2020.12.11.00.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 00:31:20 -0800 (PST)
Date: Fri, 11 Dec 2020 00:31:16 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <X9MuVAaRhv/D7vYU@google.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-3-andrzej.p@collabora.com>
 <CGME20201207133237eucas1p26f8484944760a14e51dc7353ed33cd28@eucas1p2.samsung.com>
 <27ce1176-6318-45aa-4e22-3dec9f3df15d@samsung.com>
 <9c784a23-eade-eacd-3e67-d344a5758b83@collabora.com>
 <ad093ba3-7b17-18f3-6bb5-d8133c3da89a@samsung.com>
 <X9BwtHs9XriwR8gL@google.com> <X9MbMja+TEfbKkmJ@google.com>
 <fa0e07b1-dee7-9b44-897d-66095f2eab90@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa0e07b1-dee7-9b44-897d-66095f2eab90@samsung.com>
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: samsung.com]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kndpu-009owa-Gw
Subject: Re: [ibm-acpi-devel] [PATCH] Input: cyapa - do not call
 input_device_enabled from power mode handler
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
 linux-iio@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Dec 11, 2020 at 09:22:44AM +0100, Marek Szyprowski wrote:
> 
> On 11.12.2020 08:09, Dmitry Torokhov wrote:
> > Input device's user counter is supposed to be accessed only while holding
> > input->mutex.  Commit d69f0a43c677 ("Input: use input_device_enabled()")
> > recently switched cyapa to using the dedicated API and it uncovered the
> > fact that cyapa driver violated this constraint.
> >
> > This patch removes checks whether the input device is open when clearing
> > device queues when changing device's power mode as there is no harm in
> > sending input events through closed input device - the events will simply
> > be dropped by the input core.
> >
> > Note that there are more places in cyapa driver that call
> > input_device_enabled() without holding input->mutex, those are left
> > unfixed for now.
> >
> > Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > ---
> >
> > Marek, could you please try this one?
> 
> The warning is still there:

Ah, yes, we are hitting another instance right after setting power mode.
I need to think more how to handle that one.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
