Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A69B205395
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Jun 2020 15:36:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jnj5P-0000cr-Qe; Tue, 23 Jun 2020 13:35:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1jnj5O-0000cd-7F
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Jun 2020 13:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CO7f787lSXARSfRVaqMfsOHCGyW0pvFj0q0O5eAjuRA=; b=fcaufwmWJwAM/FMTKmn99W8nqA
 x6URnBzJyVnIIDjvSIMZbw2nCIQjubcwfB/5p/QfWyUYYGWY1RxXGB9s4kYYe0eAT4UarjUcjI1fe
 KiO4uUMh3/nlkB99EpwkZl3LYpBT9+h7MDyeoBZRF/+AHr5TN6gt2sZ2KIIDH4cc3QQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CO7f787lSXARSfRVaqMfsOHCGyW0pvFj0q0O5eAjuRA=; b=AbD7CPeJNJPOXWWXV8pMrvQmt9
 btkge6XXiRfLuqbKyl7T11BvYGOQPMXwfw9wyXJ69sa7ljjiaRwvIuAkJsCB7uUJzq/sf+D4vq4Zl
 J5ZkNV2Z2OKHhrYrS3ea8abMNS/muSSyEbvZXJU4EuF+YDgLb9LgWmFBgHETgk7mhSRo=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jnj5L-00FHil-Ij
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Jun 2020 13:35:38 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 5FFD01C0C0A; Tue, 23 Jun 2020 15:35:19 +0200 (CEST)
Date: Tue, 23 Jun 2020 15:35:12 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20200623133512.GA2783@bug>
References: <f9007f37-c526-5fa4-3188-a554d2434177@redhat.com>
 <20200617101822.8558-1-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617101822.8558-1-andrzej.p@collabora.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jnj5L-00FHil-Ij
Subject: Re: [ibm-acpi-devel] [PATCH v2] Input: document inhibiting
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
 Micha?? Miros??aw <mirq-linux@rere.qmqm.pl>,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi!

> +Inhibiting input devices
> +~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +Inhibiting a device means ignoring input events from it. As such it is about maintaining
> +relationships with input handlers - either already existing relationships, or relationships
> +to be established while the device is in inhibited state.
> +
> +If a device is inhibited, no input handler will receive events from it.
> +
> +The fact that nobody wants events from the device is exploited further, by calling device's
> +close() (if there are users) and open() (if there are users) on inhibit and uninhibit
> +operations, respectively. Indeed, the meaning of close() is to stop providing events
> +to the input core and that of open() is to start providing events to the input core.
> +
> +Calling the device's close() method on inhibit (if there are users) allows the driver
> +to save power. Either by directly powering down the device or by releasing the
> +runtime-pm reference it got in open() when the driver is using runtime-pm.
> +
> +Inhibiting and uninhibiting are orthogonal to opening and closing the device by input
> +handlers. Userspace might want to inhibit a device in anticipation before any handler is
> +positively matched against it.

Ok.

> +Inhibiting and uninhibiting are orthogonal to device's being a wakeup source, too. 
> Being a +wakeup source plays a role when the system is sleeping, not when the system is 
> operating. +How drivers should program their interaction between inhibiting, sleeping 
> and being a wakeup +source is driver-specific. + +Taking the analogy with the network 

I don't believe making interaction driver-specific is good idea. We should decide
what reasonable behaviour is and then make drivers implement that...

Best regards,
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
