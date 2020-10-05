Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0994E282FFC
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  5 Oct 2020 07:07:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kPIiH-00078M-I3; Mon, 05 Oct 2020 05:07:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kPIiF-00077z-Nu
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 05 Oct 2020 05:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dxt0ysy04CUIuZwj7WZsE2Z9ZTrTyYeaScGu6k5Gpj0=; b=cgatYg2Oz+SwIdGiWRE3SU8SPL
 qOMHH3zaL2mU7hyOP5s6ZpsOJ//XdMlGzWx711EsRO2ZBuXbA7UhJrqdmgQxbXleazICeq2KkBVfU
 4UcWAQ8MxJBMKcc++tBVB+MZ+2EYF76tT5oICdx6l78vIob4NoIqdBPn6BlMr2sDp+Os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dxt0ysy04CUIuZwj7WZsE2Z9ZTrTyYeaScGu6k5Gpj0=; b=YbtO3EvLt9OvEm2/9tfFe1Zavc
 5uVrS7QI7j0dtK9EbTkEiyIenbbZh9SJzrWaBFvoXG9Ki6iWsQ/1CCFIUVcjaZzDeyK1ukAwfjwLy
 zneszxSqB91Aa82tlJhwCe2+bSYD3PkJoCYAMU6x7DqPhLFkrXWDczYqTVEruSjeMUc8=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPIi4-002ve7-Ar
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 05 Oct 2020 05:07:03 +0000
Received: by mail-pg1-f193.google.com with SMTP id g9so4727132pgh.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 04 Oct 2020 22:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dxt0ysy04CUIuZwj7WZsE2Z9ZTrTyYeaScGu6k5Gpj0=;
 b=gfNreHzWt4TPfz/30KqlxE3MmSR0uk0mNv4BhxD1qrqJU0kKDdXnMMbeoKiZ0cDo9n
 zw3xJ9K8H22DaXnZrAlKWHNLkgYI/AEBTnGiW70jS/x9rp8plOxdERg7bBxCEXxSH5Dj
 YXHXkr4RUDj+NIT4fSnmTepF7er3jlNAirotlQ0SapEZD6bEVaPAM05Vmf91Wyzz3NyE
 juXio4hcz9qeyUkl2tVR5TsqeKh5CaQSQ7eP6wPww+qzVBDAl9juAUdkOYXFZUNkJ388
 pG/3UC6TExI4FXwx/TM1GB4E2cvgU0V7QZ3nDxfm6/syOWz1HtnL208EUdiy+R9io2kT
 OeaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dxt0ysy04CUIuZwj7WZsE2Z9ZTrTyYeaScGu6k5Gpj0=;
 b=Si9n0vvkVSXR0i3ln9la1z3wc8omNuUrHfpJUlnKH2Ip9OqDFyJfme7A2HmaNJK7ok
 6bpIBU8D3iM/naBXttZI1FMWD7/gTRVm67GRzEtCBbvgrU4AC8hlIME5/IGLssOshqeW
 tD/Y4OqfPh3wjU9GjA1sIe+Pjk+dmmIcibcvwmb7XE7Ak3//d+BO2GsP9OCj4RXpdqPn
 UwEEy1TpsvfBIxsHzdPUIGDNnT6gEfoSdL0PdTmPRjNyRSmf8IMssoy5L0Gfv3QqYU4U
 KlHh0Nq06m4AgdnTKzmeRLdoIwhc5Bd9Tb1Ao9ykohLVWQ1hx9chgM4eJkWk6mY3q8uR
 8QWQ==
X-Gm-Message-State: AOAM53255ryQd/kCN1nPhXufd5k2dwFshPaL8SZ8Lk0+lEXnSHrDc29b
 P/7wVFMtQG2E2CXVYrH22DY=
X-Google-Smtp-Source: ABdhPJwKCvznRcFib6nkD+RO0m57F4NQznJJCICJJkM3Pz3kXgehY0ax8kdg9YjCt0l6aqeH/wrt+Q==
X-Received: by 2002:a65:4cc1:: with SMTP id n1mr4035788pgt.404.1601874406624; 
 Sun, 04 Oct 2020 22:06:46 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id m11sm4684586pfa.69.2020.10.04.22.06.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 22:06:45 -0700 (PDT)
Date: Sun, 4 Oct 2020 22:06:42 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20201005050642.GH1009802@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-5-andrzej.p@collabora.com>
 <20200625052446.GF248110@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625052446.GF248110@dtor-ws>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kPIi4-002ve7-Ar
Subject: Re: [ibm-acpi-devel] [PATCH v4 4/7] ACPI: button: Use
 input_device_enabled() helper
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
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-acpi@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jun 24, 2020 at 10:24:46PM -0700, Dmitry Torokhov wrote:
> On Mon, Jun 08, 2020 at 01:22:08PM +0200, Andrzej Pietrasiewicz wrote:
> > A new helper is available, so use it.
> > 
> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > ---
> >  drivers/acpi/button.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/acpi/button.c b/drivers/acpi/button.c
> > index ff7ab291f678..4deb2b48d03c 100644
> > --- a/drivers/acpi/button.c
> > +++ b/drivers/acpi/button.c
> > @@ -411,7 +411,7 @@ static void acpi_button_notify(struct acpi_device *device, u32 event)
> >  		input = button->input;
> >  		if (button->type == ACPI_BUTTON_TYPE_LID) {
> >  			mutex_lock(&button->input->mutex);
> > -			users = button->input->users;
> > +			users = input_device_enabled(button->input);
> >  			mutex_unlock(&button->input->mutex);
> >  			if (users)
> 
> This chunk (pre-patch) is really wrong. 'users' value is obsolete and
> can not be trusted the moment we unlocked the mutex. "if" needs to be
> inside critical section.

So looking at this patch and the previous one again, I believe this
driver is wrong to key the behavior off input->users and we should not
apply either of the patches. I'll post another patch fixing this.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
