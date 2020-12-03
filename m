Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 696932CCF29
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Dec 2020 07:27:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kki4x-0001sA-9h; Thu, 03 Dec 2020 06:26:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kki4P-0001qv-Gb
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PMMryq/f/K4KW/tBzqVTPSeUJtb9pzGWFktSlRDSCWA=; b=RapIPcc5tJw9CeAHrUOgcZgAQB
 ++HY2qWR5+s7FjR5RgulpPTcxZLPuP8nEWv8ym2vuyOhFSgh27Ve7Vhq7B9LiEf7ruO4cq72TCpTq
 rC1XDtvuJmiYWLM2gnqrX3LhRkf9Go+hAkzmQfoR2bkVrqf8cse8ZX4Q2qFAPL+h9ccw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PMMryq/f/K4KW/tBzqVTPSeUJtb9pzGWFktSlRDSCWA=; b=BFCtNMQp0Za/nitN4wpzx4dzdH
 +bcdC6nJlnUEx+ZlWn51qpF+UgEbE3qUcfEcJ8Dmwj1qPjVf598hRDO5+HGfo2wYPHGCOnh+cUaF0
 cuFw86NtcbsRNaTM7Md5cgJz+6El+lJ9BNITXKynq/dJN3X4CbsbZnxtx5U9RByFnMy8=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kki4O-00ClbM-5W
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:26:25 +0000
Received: by mail-pf1-f193.google.com with SMTP id w187so623341pfd.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 02 Dec 2020 22:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PMMryq/f/K4KW/tBzqVTPSeUJtb9pzGWFktSlRDSCWA=;
 b=oXdYHFTJ8vwEnPGWOJoKQDM30cRXcVwx5uzWnVG3TQrdW+uYYF6Yk4N/MpZMBPzcLm
 Jkoavh7SVx9CPmeQGginGPwGkOkUQ0+CbjyxHBAx2+08eOot+8EXZv6kEdK2RniSmaRx
 SAat5cFzXCr8iHy7fu3Ti1B1y6n3ye1V46e0LZ42Okv3XJgCNAtD+aBIN9gj4iwG5KYb
 sO1O5w1Uxh0h6abERgKj8dI9l21Kscxte0L9k0I091lDfJZ27iUvvl1hP8w+DgYCCwmf
 68qs2KZq/caA8VcAORV90sGMv7HybPXKFEV2miY9MqAFxOjfjUIJkC2gTjsFfYV65beX
 6C/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PMMryq/f/K4KW/tBzqVTPSeUJtb9pzGWFktSlRDSCWA=;
 b=gaOgmJqDqAlN+AkikB6q3uiVilwvG+AMlr2r6yOnj5cGtXJgdIBPulQVXH3lbU4Dq6
 /q1qZ4xzGeMP9se1AsLnf2+b0N2b+agMup4Dj3bHOhDPK0hy5j6Dpd/cxmMW6qr7WkLE
 z/U8TwE1jmEeuLylLpD0weRaah2K9t1+KFSLCo3mZc9Al9r6uygPvD4kiaXWKiTDRg5C
 dI4bLKBjMdnrVZxpfbH8y8+JdfIk/c3SI1FAk3t9pRI0EmI5BNAotXTWF/fu6FgayqWZ
 aJ1g8reQmNAmjI6KGlvuOiaeXVbPh8ZSIszP7oYfOhd/j3knYuxhUP4ho2SpygOi3W2o
 mHdg==
X-Gm-Message-State: AOAM531y4+jtaOZr2zI7ACbDMEX/P2tQrXs/5bwpd9KxFxs7bdleLxQs
 xmYoI8VlVvDS3VnQtl2MMig=
X-Google-Smtp-Source: ABdhPJyzTeUPZ9CQHUWQEdr+2Ce0lCrtr+dGRn8864LCovKwqGAkby+KWmIsQT/jM0AKGjMpw5P8yw==
X-Received: by 2002:a62:15d8:0:b029:198:30d:b49d with SMTP id
 207-20020a6215d80000b0290198030db49dmr1732124pfv.5.1606976771494; 
 Wed, 02 Dec 2020 22:26:11 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id q20sm86111pgb.6.2020.12.02.22.26.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 22:26:10 -0800 (PST)
Date: Wed, 2 Dec 2020 22:26:07 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <X8iE/xVPEWO2HRuB@google.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-3-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608112211.12125-3-andrzej.p@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kki4O-00ClbM-5W
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

On Mon, Jun 08, 2020 at 01:22:06PM +0200, Andrzej Pietrasiewicz wrote:
> Use the newly added helper in relevant input drivers.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Applied, thank you.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
