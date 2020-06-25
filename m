Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E32209D2A
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 25 Jun 2020 12:56:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1joPXp-0002hF-29; Thu, 25 Jun 2020 10:55:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rjwysocki@gmail.com>) id 1joPXn-0002h8-Gy
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jun 2020 10:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TrUXVh5K34ExkyosZm6J1FzTLucnrfzr2MGexVTzx7A=; b=WUJpYVIXRImlFJiobgbfTK/UHO
 dSDyN6AenAxwnE+F/gOikCy3+ox8BbnfHqfBj8S9HngHbX6YRHKGYtsLGLoqvEYjXNuqwLUtQ+zeL
 +jjmtBmfoPcAC45JA9R+B9Z9DJ5GOL+WesuQ6dsnvLMtedJU+01NhnIvdlIMnMd9LnU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TrUXVh5K34ExkyosZm6J1FzTLucnrfzr2MGexVTzx7A=; b=frmrrc+nhCqQXdZfs4yXPXp7FB
 ru/R0lcIbvjW1JN99YmPB7jVLrrrRsYioX7f8L8M7Nhd0HOp/BtXt+qakFMVIjVMRYl2YVDAggTl8
 Uqz6juGW+vFY6psyUmDsvFePKzm9sjPiSiB4f8V43kFSjYcaWyO7VvYBUJYZ17AB5tTM=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1joPXm-000PMH-BG
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jun 2020 10:55:47 +0000
Received: by mail-oi1-f196.google.com with SMTP id k4so4578914oik.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 25 Jun 2020 03:55:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TrUXVh5K34ExkyosZm6J1FzTLucnrfzr2MGexVTzx7A=;
 b=QYo5dezQu8yc3XdJ8K3LnviF3YG+6qajfe7JzUaO0WFuRemUp8QDmgIBl/Aw8SLoRI
 G0XMuxeiR1gy8iy3O2uXex/aRAOPD1otKJbmZXBNSxIbuqqIr9gWS9p4AtXurWUsNiUQ
 MwzgR1/7NZp4VIf3nwhB4Frkko7H3KjnVgAiN7ZgfjhbXz7/Z9VEzU0Un40hdsaVETV1
 kCBFGL74cT+8ef02WTtJ/z7IMHQHuVE2mXaBerK2ZQGBiTr00SM0WV/kTdYbfNq9a3UZ
 kjf8NR1iD9C78igoWduwiTPlpEN8tbnK7hStn1tY+VzbpAD6RwwezoN3XxegmEeGSTP6
 Wq7Q==
X-Gm-Message-State: AOAM532gPDl8OAkKCGiHdyycWwDTSWdBKtiwfxjWAlCM8O6mqopm5wOY
 ST3NDaPmaBULNmzeVEEBqHrxYpMC+D5c5v1elOQ=
X-Google-Smtp-Source: ABdhPJxEHcU+htFP7B4i5hFRJBFdP4Ml1jBQ9xnktdScLVwnwA+huwt1DnfbyHYvIexy3b5Mqz0mUcFvn4VuBdP0DQA=
X-Received: by 2002:a54:4585:: with SMTP id z5mr1709742oib.110.1593082540828; 
 Thu, 25 Jun 2020 03:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-4-andrzej.p@collabora.com>
 <CAJZ5v0j7e9TzDtEiDXmj3fLAQ7CvFHoe7Q3aYKKas3PEXrsUuw@mail.gmail.com>
 <20200625052318.GE248110@dtor-ws>
In-Reply-To: <20200625052318.GE248110@dtor-ws>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 25 Jun 2020 12:55:29 +0200
Message-ID: <CAJZ5v0hgQt-amMn8xiF_0kyVZ-9pQxgm5H-VcFpinVQGKnYhwQ@mail.gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rjwysocki[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1joPXm-000PMH-BG
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

On Thu, Jun 25, 2020 at 7:23 AM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Wed, Jun 24, 2020 at 05:00:09PM +0200, Rafael J. Wysocki wrote:
> > On Mon, Jun 8, 2020 at 1:22 PM Andrzej Pietrasiewicz
> > <andrzej.p@collabora.com> wrote:
> > >
> > > Inspecting input device's 'users' member should be done under device's
> > > mutex, so add appropriate invocations.
> > >
> > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> >
> > This looks like a fix that might be applied independently of the other
> > patches in the series.
> >
> > Do you want me to pick it up?
>
> If you pick it we'll have to have a dance with this series. Can I apply
> instead?

Yes, please.

Also feel free to add

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

to it.

> I do not think this change has any practical effect as nobody
> attaches/detached input handlers or opening/closing input devices when
> system goes through device resume phase.

Indeed.

Thanks!


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
