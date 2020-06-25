Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7A3209969
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 25 Jun 2020 07:23:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1joKMD-0000JR-Fo; Thu, 25 Jun 2020 05:23:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1joKMC-0000JH-OW
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jun 2020 05:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G7EYtpN+7APVu3hftiJBUcaii12rvBtQLcLyvFMd3fw=; b=QYl99UEjndQjMbTvdQ4Bmf7BDY
 CX77WtuXnTiI5r8lMLocgaEfPMSjlnTwxhbZePkCbCdLX2l53fDipj+Sp3fbWmtbfbhiIVhP7g9b1
 /eVofw5giKBHETRFWQVXMw8WqcL0211EGVuYeW1+s+36ohzZjL28yGHjgnm3bKcWd8dE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G7EYtpN+7APVu3hftiJBUcaii12rvBtQLcLyvFMd3fw=; b=QXJLDxfuM7DaiODAvvxlIls1Hl
 MuTAY5RBp0rXelukYu5AllpwuZ+odvAORHX0s63gGihfpMpNswRkFDIlvA1amF6Ipe/g01NHz2e82
 NxbvxSf3Qy4cfAFFlKlwav5D6YCpU3wSzbHizTcOP3HqRtpU4J47IKIY7abNlQN4YnBw=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1joKMB-00HPK8-H4
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jun 2020 05:23:28 +0000
Received: by mail-pg1-f193.google.com with SMTP id e8so2789012pgc.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 24 Jun 2020 22:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=G7EYtpN+7APVu3hftiJBUcaii12rvBtQLcLyvFMd3fw=;
 b=jJIIJMoxL6YsQVrG7We7n48E+SeW7jk0D25Di+/5IowuwUSecYdFowrs3zU3Ar+clB
 D7O/AgEWBWfMEOmUWDep0xWKKl8zbs3ABy/eLh8Y/rqrV47ShC/omyeBMohoN+RrEVGv
 zMvNYy9Si2WXLoSyXeQBtE7pOxnk/4Z7HeqYSbK1usdxxvj/KfrRfwmgezF21rhBaQxL
 3dJ6sXHFV3I5r1Oc+FaC8rLXBwY9Jos35avaKEVvJB2z+WsyWE2Q+utTq9C5fOgPuUom
 YtjrsnSlphGxBQ7IyrYgDi/KklkyWAiY6PraldKhi3/UqKrYGyFCbNJyeSWtvQ/inbve
 nzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G7EYtpN+7APVu3hftiJBUcaii12rvBtQLcLyvFMd3fw=;
 b=cZJxUdi2bll9MUTyvDdaW0C3r0gROskSGaEbCHVZcsZGlaYQxGQFQQw3XPzva/ew5I
 Qdjo3eYPaUlCVlZOUs+bQTlEVFr7XiVxx8Uaw82xnPx1d6Jy25tGTrR2atuNTaEKd0Gc
 3AuUDhR76bGM7yfmQnkaLmwNSyXGz6cRHj6dFtmdby21ych9Kn1pWCZPRnCpmLCktZ1x
 2ywhP1G+LxLsSNR9imVFNtMNvWQ56UVlIE9P7WtVAdDu6yg9NSW0JXqpthjFC0BWtxnn
 ddyegxz33T773ZyzEWWOIG9N8a3zGc1qXd14kferyIdxuoumBvbx/hJCBimPm6pheRrB
 vuFw==
X-Gm-Message-State: AOAM530kmIqv4ZWpVdS1tuYoHAEV/lLA0IZpKF2rB+lhcWVyEEYdmgJE
 UtcpW8bm42BjSZgLJB1Sqoo=
X-Google-Smtp-Source: ABdhPJw9IVvFgD9u6cKkJI+eEsVm8cCM5YDQSmq1Y1wrIMZkohaI0YZ2wNwSQKKZGzZRenNdJo7hRA==
X-Received: by 2002:a65:46c9:: with SMTP id n9mr23942588pgr.89.1593062601705; 
 Wed, 24 Jun 2020 22:23:21 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id i12sm21668804pfk.180.2020.06.24.22.23.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 22:23:20 -0700 (PDT)
Date: Wed, 24 Jun 2020 22:23:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <20200625052318.GE248110@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-4-andrzej.p@collabora.com>
 <CAJZ5v0j7e9TzDtEiDXmj3fLAQ7CvFHoe7Q3aYKKas3PEXrsUuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0j7e9TzDtEiDXmj3fLAQ7CvFHoe7Q3aYKKas3PEXrsUuw@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1joKMB-00HPK8-H4
Subject: Re: [ibm-acpi-devel] [PATCH v4 3/7] ACPI: button: Access input
 device's users under appropriate mutex
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
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jun 24, 2020 at 05:00:09PM +0200, Rafael J. Wysocki wrote:
> On Mon, Jun 8, 2020 at 1:22 PM Andrzej Pietrasiewicz
> <andrzej.p@collabora.com> wrote:
> >
> > Inspecting input device's 'users' member should be done under device's
> > mutex, so add appropriate invocations.
> >
> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> 
> This looks like a fix that might be applied independently of the other
> patches in the series.
> 
> Do you want me to pick it up?

If you pick it we'll have to have a dance with this series. Can I apply
instead?

I do not think this change has any practical effect as nobody
attaches/detached input handlers or opening/closing input devices when
system goes through device resume phase.

> 
> > ---
> >  drivers/acpi/button.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/acpi/button.c b/drivers/acpi/button.c
> > index 78cfc70cb320..ff7ab291f678 100644
> > --- a/drivers/acpi/button.c
> > +++ b/drivers/acpi/button.c
> > @@ -456,13 +456,16 @@ static int acpi_button_resume(struct device *dev)
> >  {
> >         struct acpi_device *device = to_acpi_device(dev);
> >         struct acpi_button *button = acpi_driver_data(device);
> > +       struct input_dev *input = button->input;
> >
> >         button->suspended = false;
> > -       if (button->type == ACPI_BUTTON_TYPE_LID && button->input->users) {
> > +       mutex_lock(&input->mutex);
> > +       if (button->type == ACPI_BUTTON_TYPE_LID && input->users) {
> >                 button->last_state = !!acpi_lid_evaluate_state(device);
> >                 button->last_time = ktime_get();
> >                 acpi_lid_initialize_state(device);
> >         }
> > +       mutex_unlock(&input->mutex);
> >         return 0;
> >  }
> >  #endif
> > --
> > 2.17.1
> >

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
