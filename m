Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A06E31F1286
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Jun 2020 07:38:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jiATo-0002N1-Ho; Mon, 08 Jun 2020 05:37:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1jiATn-0002Mk-LM
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Jun 2020 05:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RTapcU6gK7wVagdpIBy1syxYRT4o5dx2x3mb/55IfwQ=; b=ia7PU3OGqtvzF28BKIyd6dj2Ud
 tLyoOUgLJ0FcogvvnttJ2yVMxlsyRXz3PycDjTiRqY1VkdAE/EAG5A1pYQdCLyDotO9ygRnBW61eK
 ekq600dLzUIzty7LjFRAPmcBVv/+K4vTpYuB4VNCKjBNxyQdcuf0i4WTBU87K9OznWUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RTapcU6gK7wVagdpIBy1syxYRT4o5dx2x3mb/55IfwQ=; b=PiNRlMheK02MY6cPMi5Rs71Dkq
 C+bezGwZM7R+DSxo6pyFQRareND6n84eHh8O7D3pI0skBl29MUIZn72k86YyFeRdE/DTANDfcHtlC
 YyVz46+P2q9irm/3/YhEs6lIcmM/kD0WJn/+XU98+YWCeDo7QsW8g8SGai4kbGR3m5xU=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jiATj-00Fq6p-4m
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Jun 2020 05:37:51 +0000
Received: by mail-pj1-f66.google.com with SMTP id ga6so5278246pjb.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 07 Jun 2020 22:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RTapcU6gK7wVagdpIBy1syxYRT4o5dx2x3mb/55IfwQ=;
 b=DITjcqepAg/aiVMxe1Gh2awTCmo91vVu3S9mlVdU3hgfcPrStCTsiH/eLXmFFx4VRn
 o+ChFk5Yofnb659Ehd5fQWdqZmVijpUVnFuGNuFhMOE72kvC1E3+mfpKEr/ZswrbVsJy
 sipQ8XyZUaVEwcIfHzLeHoRReoDiJt10fqtwJ3c4BO29KFNyabOsxQSftZ67b+4X3i7i
 XR9li74InWK9fBIdE0y17Jbyz8DsjgWa/+fMyP1yne5aCzj4UJD1nLwMXWmxvqe9Spvq
 wc9P1vraN5a+3iQ96WNuaUdHrp7GU+r2Ij6WnopwS0BjnouSD1RBVYKA1uSNqvSLb6Py
 s/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RTapcU6gK7wVagdpIBy1syxYRT4o5dx2x3mb/55IfwQ=;
 b=jvEG9BtWbxxx31sOryjFpWNCuBMclkMtPqUDgnDQDdU0+0hBo7JXBiUG5n8t8KxHtP
 rV8jE3/GnFNjk9H1zyVBNqGOFSoPTEnt9SC+TrIqaJU19pT4HNgKJ4K9mI6o6YkK52qk
 oxSpjbO/enG3VzhjgDn24sig7gs1QZOA2WJbOL3TjVXhvUgL0I3K2wMmImbAACllkVn2
 pL1vIpu56vVrDmZ46FRZgem0HRDcbcCPePbIgrneT8LMytk+mPs1nTcfd9YaClU35yqz
 /zeXlm+xK/lcOZCGnOMqfwcKg8P4GnJc9HTq/cphQVDfqkGQ4iV0cjP1akF41Pr24SN7
 SnNA==
X-Gm-Message-State: AOAM5317zuObdnADBIFrNMJ4qjFTteIy4BgtrAXgzaAgCNhbwy1+ar8M
 mWAP1ryUOG8y0qvm5l2vPAw=
X-Google-Smtp-Source: ABdhPJzN5CaIdVRcGxuqJwlU7nQJooHDxxicu9iq+KnTRKt689A3cjTNxnb8ofRVOYLQTpNcwc0RwQ==
X-Received: by 2002:a17:90a:c283:: with SMTP id
 f3mr14534964pjt.166.1591594661380; 
 Sun, 07 Jun 2020 22:37:41 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id k14sm4926474pgn.94.2020.06.07.22.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 22:37:40 -0700 (PDT)
Date: Sun, 7 Jun 2020 22:37:37 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20200608053737.GS89269@dtor-ws>
References: <20200604072853.GP89269@dtor-ws>
 <20200605173335.13753-1-andrzej.p@collabora.com>
 <20200607202414.GB13138@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607202414.GB13138@amd>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jiATj-00Fq6p-4m
Subject: Re: [ibm-acpi-devel] [PATCH v3 0/7] Support inhibiting input devices
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
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, Jun 07, 2020 at 10:24:14PM +0200, Pavel Machek wrote:
> On Fri 2020-06-05 19:33:28, Andrzej Pietrasiewicz wrote:
> > Userspace might want to implement a policy to temporarily disregard input
> > from certain devices.
> 
> Wow, you certainly cc a lot of lists.
> 
> > An example use case is a convertible laptop, whose keyboard can be folded
> > under the screen to create tablet-like experience. The user then must hold
> > the laptop in such a way that it is difficult to avoid pressing the keyboard
> > keys. It is therefore desirable to temporarily disregard input from the
> > keyboard, until it is folded back. This obviously is a policy which should
> > be kept out of the kernel, but the kernel must provide suitable means to
> > implement such a policy.
> > 
> > Due to interactions with suspend/resume, a helper has been added for drivers
> > to decide if the device is being used or not (PATCH 1/7) and it has been
> > applied to relevant drivers (PATCH 2,4,5,6/7).
> 
> But is that a right way to implement it?
> 
> We want this for cellphones, too -- touchscreen should be disabled
> while the device is locked in the pocket -- but we really want the
> touchscreen hardware to be powered down in that case (because it keeps
> SoC busy and eats a _lot_ of electricity).
> 
> But simplistic "receive an event and then drop it if device is
> inhibited" does not allow that...

I do not think you read the entirety of this patch series...

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
