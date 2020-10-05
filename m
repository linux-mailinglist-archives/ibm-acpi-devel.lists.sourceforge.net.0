Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CB228300D
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  5 Oct 2020 07:21:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kPIvo-0001D0-S6; Mon, 05 Oct 2020 05:21:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kPIvl-0001CK-Jk
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 05 Oct 2020 05:21:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4tJLfv4r1zoGxZLPIaDyCtUW4+LVxjwAdNen8IGn/go=; b=KMZn1X8npb6toK3rVTsZkA8mO6
 QthgZxbrOempNkZCT+bedSP/TGVzSRXPUcJ+DYkzqo3Avl9cadSQ5WD50d5LVv82QUfFzrIUWluuq
 jf7FvgvZ55mWo8fpIUEEG5h6hoOJXhMyOORyd8F8Br7E7ZzlNV7ghlPjS/wZdYCPo9Kw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4tJLfv4r1zoGxZLPIaDyCtUW4+LVxjwAdNen8IGn/go=; b=cK8sFpNA5k+culax9pvlHHb034
 qsr9k8BUNWUIkRaq6h2aSfhqD4LpUu1BMm8itehmkPAU0EyZmRO5ScNM4xkCil/5FRpgdFXUgyFTF
 3Nrai+999tc4sTuGR0kDTjTx5NdQLDAMqL6yQj7FNIcoiW8FO7q6qCRKJEiOl0JV6FZA=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPIve-002wJI-VD
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 05 Oct 2020 05:21:01 +0000
Received: by mail-io1-f67.google.com with SMTP id d197so7836363iof.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 04 Oct 2020 22:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4tJLfv4r1zoGxZLPIaDyCtUW4+LVxjwAdNen8IGn/go=;
 b=se1XSVGwrhHdOgI356g94SUutkWKQpBzxrpqpgfPMBUHMoA90lXzkjgZ0/3Tw8I6QB
 Q5UOA4g26ikmyxmGNiEUC3x3ScQap1qGzK2DTuVfPYXwczdynjqThsGFkHlrBI9rFqlc
 eJtIn1vZAKuoQt8JnVE2YXPu5kCEmlLVNfu9mL6gdd81xTRSbC3SFDGt+HTaXqom0oRD
 VF56TE9qgti4LqfLMq65X7Nk26Zkv8FYAddFi5YtGDkyM9W6WRu+Irfo/xmTGqGQxqAP
 yGgN41FtnwCEBSNAjHdSvGZE6TQpIRcr7WiyNXJZ8/cEOc21PP4Qj90lxbFEu1hau11H
 hUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4tJLfv4r1zoGxZLPIaDyCtUW4+LVxjwAdNen8IGn/go=;
 b=mRpAk8GbJHQX5XdbRHKK+2PmjRWYQP+9cd+LwiLiikRxM/EulsJpuaOipGjyn2vUZ7
 dvYRQ0P65RboBOf0hYzi9ZjP86dR6HjUZNFEIJn/EZtttPtmAWEFAIlPmKVBza9z+WsL
 mqFJnvEjm+66H1V3LWHAhA2Xq7AZiqT86GjRgTw9IArJKrayZkAUuUrO2sAtMhebA2sU
 DTzV7Ja6WwCSsHSbeoE0UGK9klhbdxk0TjnAP1SC34u7Zp31V9/vFN+WEp5pOYP4O7zl
 ufU63azbCFm0oeB8qFQnmVkqn7QLNNXc8qSgKe0Um3mQVynKV67HbcojDMd6uM/52xyt
 BIfA==
X-Gm-Message-State: AOAM5324HCQRZNB6tk+BKdl54Os3Aa69NOaiv+KNePsbvIJilG1He8c6
 waHLjxwZmUVrx9vYjzeZy6OQLlrxuQOIoQ==
X-Google-Smtp-Source: ABdhPJzbc7KATEHw3tURSc0pA0PlebTOm5ozKxIivLTRAmqi1P5kxW+VgeENvYQMNfQrrxbYDAqGGA==
X-Received: by 2002:a63:ec4c:: with SMTP id r12mr12411601pgj.74.1601874490742; 
 Sun, 04 Oct 2020 22:08:10 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id d128sm10874958pfc.8.2020.10.04.22.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 22:08:10 -0700 (PDT)
Date: Sun, 4 Oct 2020 22:08:07 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <20201005050807.GI1009802@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-4-andrzej.p@collabora.com>
 <CAJZ5v0j7e9TzDtEiDXmj3fLAQ7CvFHoe7Q3aYKKas3PEXrsUuw@mail.gmail.com>
 <20200625052318.GE248110@dtor-ws>
 <CAJZ5v0hgQt-amMn8xiF_0kyVZ-9pQxgm5H-VcFpinVQGKnYhwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0hgQt-amMn8xiF_0kyVZ-9pQxgm5H-VcFpinVQGKnYhwQ@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPIve-002wJI-VD
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

On Thu, Jun 25, 2020 at 12:55:29PM +0200, Rafael J. Wysocki wrote:
> On Thu, Jun 25, 2020 at 7:23 AM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Wed, Jun 24, 2020 at 05:00:09PM +0200, Rafael J. Wysocki wrote:
> > > On Mon, Jun 8, 2020 at 1:22 PM Andrzej Pietrasiewicz
> > > <andrzej.p@collabora.com> wrote:
> > > >
> > > > Inspecting input device's 'users' member should be done under device's
> > > > mutex, so add appropriate invocations.
> > > >
> > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > >
> > > This looks like a fix that might be applied independently of the other
> > > patches in the series.
> > >
> > > Do you want me to pick it up?
> >
> > If you pick it we'll have to have a dance with this series. Can I apply
> > instead?
> 
> Yes, please.
> 
> Also feel free to add
> 
> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> to it.

Looking at the driver I think the patch and the original use of
input->users is not proper. I'll post another patch addressing this
shortly.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
