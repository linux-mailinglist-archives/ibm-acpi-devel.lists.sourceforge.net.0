Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E161F5667
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Jun 2020 16:02:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jj1Is-00039C-T3; Wed, 10 Jun 2020 14:02:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rjwysocki@gmail.com>) id 1jj1Ir-00038m-4h
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 14:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nl62HWLkcdUncszr4NfDCSNaITirf4yc7zsH9ph91Mg=; b=awFMDXNsIypLRjqur1gfwLm6fC
 Tb/O1x749exnO/cbbbp6dbPEHa/ZCZsrh3eHPg7q1mfMCQE1mvfIePhv4Knx4LUabLqqe+GN6h+UF
 5xwOsvUTEk0SMkUXjuDbFFC8bhAkJ3d64ZwzEY0NEzW0O9mF/FHKZWzVSrurVS/jbEsQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nl62HWLkcdUncszr4NfDCSNaITirf4yc7zsH9ph91Mg=; b=ixq3vLPAxBTzNaTCbfjGvlyT24
 di4Ey/PS0f7w82MHpChet2NNJZuEZcShOTCqGbwQOhnIEEVYXHWjLEYapaaTNbQMgTXjaSePvL6S7
 XJ51y5jA3+/6fuEl3gZSbn8CGMYKwypFi5q4XAWYWt5aBgGxEw8uop3zN/yyVubaWgI4=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jj1Ip-00ECQU-7u
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 14:02:05 +0000
Received: by mail-oi1-f193.google.com with SMTP id i74so2172065oib.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Jun 2020 07:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nl62HWLkcdUncszr4NfDCSNaITirf4yc7zsH9ph91Mg=;
 b=QoaRVd6ceaFW9yI9l5tg/DPfrpCSGg0X1TQaKO+T9Ztny5QOH86nYKYnRBLCcd4Wq2
 ytI8eisQtnULtdYieo7phZEvmDnRQBeaLCD4vI/thdNHMiEZiOCCQEXTByd0eFS0j1fC
 bttL6qEj2De7AnaEbhFm4pqXLHONFwj7CBKfAoJ45UdrsAQZwL1orkemW24rULXVO4zY
 i9dr7SLaBhh9Jw5NYQxIYaFFdd9wHfChqyZVSgXd3kROt7QlM15zgsNYjUAPC1hXlo4U
 CYF30VeAuZBViqX6EEp1+REwOOsOFPA991E8cbiBfdLixNyPuBkM7pKL0wqBTDc8x/7p
 pbFw==
X-Gm-Message-State: AOAM530RVFtz26eKW/G7czKInzhVHaaLmFvvlmIGQ7sKlwy4gXyZYiY0
 LFwTRFp5FsXFTNwttnm5XUpOxvkx322h7L58QJmMYA==
X-Google-Smtp-Source: ABdhPJzorUjsiFcKJqkTkUHEOkzCM8G8rZoea2g27dOAzap4gGLrBRRziPbedIOP6/JlYUlFFWbvc+8f9RAYMPdl7zE=
X-Received: by 2002:aca:ad88:: with SMTP id w130mr2656825oie.103.1591797717254; 
 Wed, 10 Jun 2020 07:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
 <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
In-Reply-To: <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 10 Jun 2020 16:01:45 +0200
Message-ID: <CAJZ5v0gVBzLpQqNrV-kzV84mLB86Gd6Ws63RwBKT=r1WgbeDSQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rjwysocki[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jj1Ip-00ECQU-7u
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
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
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

On Wed, Jun 10, 2020 at 3:21 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 6/10/20 3:12 PM, Andrzej Pietrasiewicz wrote:
> > Hi All,
> >

[cut]

> > What would it mean to become a wakeup source if there are no users,
> > or nobody has ever opened the device? There are no interested
> > input handlers (users) so what's the point of becoming a wakeup
> > source? Why would the system need to wake up?
>
> Well this is what we have been doing so far, so arguably we
> need to keep doing it to avoid regressions / breaking our ABI.
>
> Lets for example take a laptop, where when suspended the
> power-button is the only valid wakeup-source and this is
> running good old slackware with fvwm2 or windowmaker as
> "desktop environment", then likely no process will have
> the power-button input evdev node open.  Still we should
> wakeup the laptop on the power-button press, otherwise
> it will never wakeup.
>
> Note I agree with you that the way this works is not
> ideal, I just do not think that we can change it.

Please note that "no users" merely means that user space is not
interested in receiving and processing the events from that device.

If it is configured for system wakeup, it doesn't matter whether or
not user space will consume the related events.

Thanks!


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
