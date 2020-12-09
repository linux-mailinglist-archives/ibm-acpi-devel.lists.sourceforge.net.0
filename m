Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D035C2D3B8D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  9 Dec 2020 07:38:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kmt6x-0004Gr-4Z; Wed, 09 Dec 2020 06:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kmt6v-0004G7-Ks
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 09 Dec 2020 06:38:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e50gjx2u+dk5VMtYgu+q4thABv8jJUcueqKzMMAspdM=; b=OzB6o46QlILgHv4gbH9bWGgCtk
 QwycVkMeqPBsoZQ+jiWCueRJp8qz2TzT4oQKMmwSqdvrl7p/e0qh0Jq+MtZvbgi+NN8jUGo5pP+dQ
 5KZVjgagt20XjzK3zxh3hfNrr4RscVN7UTKAugNZIWbxt5Tsb++FThDXO4qFJIvncK+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e50gjx2u+dk5VMtYgu+q4thABv8jJUcueqKzMMAspdM=; b=ZbuIV0bsRZB29Sich6kThIi3/k
 WJn9hXG85LNfhuYqnV8z9xy0osLfcH28Vs1sFy2iGyGF5hf8sAamfdMP36Zy7xOojlgn3gbP6VORm
 E1RWnakTt9CsauwISCgPoEnumXKzu5Y+oRO2cGyyG1kojcsHGTGbbkSOAf8QXCineBFQ=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kmt6s-007ROW-DD
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 09 Dec 2020 06:38:00 +0000
Received: by mail-pj1-f68.google.com with SMTP id j13so356815pjz.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 08 Dec 2020 22:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=e50gjx2u+dk5VMtYgu+q4thABv8jJUcueqKzMMAspdM=;
 b=ixLOM9HvY9cq9Z4h6NLLxTGvQ6HSYGtx3j6FDGjAbxvLa2OpQf6evTG0K7aZ8AyjSg
 Vz4p0EtroLc123xr1LjxiO7na/Pplis+8FzmNk1d2UrvVlqZn09vTY6OtuwPEytSuGG5
 2KCJbhZpSunbmaFIabDEFehnWei8Vt8i4Oc66zINdaloS1KlTL4RhfHAx8SycAn2ADXy
 YYLbUI9xC9wRdfqk9Ka7jLgWNvZxP0tNIfJltreYt+Oh5syP5tk1wE9V022lxItkYGs5
 /OGETCIhjaIt9TdmtA4GohQaG58NA5xxvbe5jJROaeFQOjvoee/Vgex7LnTi6mSyI+/t
 Kb4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=e50gjx2u+dk5VMtYgu+q4thABv8jJUcueqKzMMAspdM=;
 b=QnSVNBc93U+VnxnyP7x0OIwDAqhkevKcy/ndcWxh0TJs2Gi5eGa3vn4RQ7P1xzFMfU
 w+lmNy+x4oxOIh9AWmA2AoooDZQeHM38kIht8uUMYWW77mdFAQzVw3bI0+K8DKt89IwA
 aDlzq9SE3oIHZu/9M/aVKun02XQrp7asamvgb3MG6TOCjDeMX+Sz7y6iityfKT2iVujV
 TWRgYPLT3Q9SpT/JOdLpDGROHAv24R0QPv7t+77htCKVW1fCwFITyoSfLV2dQBtlmUzp
 F8QPBY1XTkfd0XV27+hO2uTNXD/dcz20zQxTiDYgdvbejjtj1sfq6e4I6UYKmydLKXUY
 mtgQ==
X-Gm-Message-State: AOAM532NDs9ncpsD4rFo+MPp63PNJdmJQ4RMOzw0kPUiEmKs9qL3xIbQ
 ICiWucJq8Sy15DeqU8MxcsI=
X-Google-Smtp-Source: ABdhPJwjfEiPLMae+ffo6Cnhp7douBFcf3vSLYOtRxV9vdx0S2C51CdSPEgUeVMZh9kilf8XyPe8TA==
X-Received: by 2002:a17:90b:4a0d:: with SMTP id
 kk13mr880119pjb.23.1607495865199; 
 Tue, 08 Dec 2020 22:37:45 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id z11sm990299pfj.191.2020.12.08.22.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 22:37:44 -0800 (PST)
Date: Tue, 8 Dec 2020 22:37:40 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <X9BwtHs9XriwR8gL@google.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-3-andrzej.p@collabora.com>
 <CGME20201207133237eucas1p26f8484944760a14e51dc7353ed33cd28@eucas1p2.samsung.com>
 <27ce1176-6318-45aa-4e22-3dec9f3df15d@samsung.com>
 <9c784a23-eade-eacd-3e67-d344a5758b83@collabora.com>
 <ad093ba3-7b17-18f3-6bb5-d8133c3da89a@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad093ba3-7b17-18f3-6bb5-d8133c3da89a@samsung.com>
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: collabora.com]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kmt6s-007ROW-DD
Subject: Re: [ibm-acpi-devel] [PATCH v4 2/7] Input: use
 input_device_enabled()
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Dec 08, 2020 at 11:05:42AM +0100, Marek Szyprowski wrote:
> Hi Andrzej,
> =

> On 07.12.2020 16:50, Andrzej Pietrasiewicz wrote:
> > Hi Marek,
> >
> > W dniu 07.12.2020 o=A014:32, Marek Szyprowski pisze:
> >> Hi Andrzej,
> >>
> >> On 08.06.2020 13:22, Andrzej Pietrasiewicz wrote:
> >>> Use the newly added helper in relevant input drivers.
> >>>
> >>> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> >>
> >> This patch landed recently in linux-next as commit d69f0a43c677 ("Inpu=
t:
> >> use input_device_enabled()"). Sadly it causes following warning during
> >> system suspend/resume cycle on ARM 32bit Samsung Exynos5250-based Snow
> >> Chromebook with kernel compiled from exynos_defconfig:
> >>
> >> ------------[ cut here ]------------
> >> WARNING: CPU: 0 PID: 1777 at drivers/input/input.c:2230
> >> input_device_enabled+0x68/0x6c
> >> Modules linked in: cmac bnep mwifiex_sdio mwifiex sha256_generic
> >> libsha256 sha256_arm cfg80211 btmrvl_sdio btmrvl bluetooth s5p_mfc
> >> exynos_gsc v4l2_mem2mem videob
> >> CPU: 0 PID: 1777 Comm: rtcwake Not tainted
> >> 5.10.0-rc6-next-20201207-00001-g49a0dc04c46d-dirty #9902
> >> Hardware name: Samsung Exynos (Flattened Device Tree)
> >> [<c0111718>] (unwind_backtrace) from [<c010d050>] (show_stack+0x10/0x1=
4)
> >> [<c010d050>] (show_stack) from [<c0b32810>] (dump_stack+0xb4/0xd4)
> >> [<c0b32810>] (dump_stack) from [<c0126e24>] (__warn+0xd8/0x11c)
> >> [<c0126e24>] (__warn) from [<c0126f18>] (warn_slowpath_fmt+0xb0/0xb8)
> >> [<c0126f18>] (warn_slowpath_fmt) from [<c07fa2fc>]
> >> (input_device_enabled+0x68/0x6c)
> >> [<c07fa2fc>] (input_device_enabled) from [<c080a0f8>]
> >
> > Apparently you are hitting this line of code in drivers/input/input.c:
> >
> > lockdep_assert_held(&dev->mutex);
> >
> > Inspecting input device's "users" member should happen under dev's lock.
> >
> This check and warning has been introduced by this patch. I assume that =

> the suspend/resume paths are correct, but it looks that they were not =

> tested with this patch thus it has not been noticed that they are not =

> called under the input's lock. This needs a fix. Dmitry: how would you =

> like to handle this issue?

The check is proper and the warning is legit, cyapa should not be
checking this field without holding the lock. I think we can simply
remove this check from the power ops for gen3 and gen5, and this should
shut up the warning on suspend, but there other places in cyapa that do
check 'users', and they also need to be fixed.

Thanks.

-- =

Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
