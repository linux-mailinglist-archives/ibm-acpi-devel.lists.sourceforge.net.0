Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6C72CCF28
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Dec 2020 07:27:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kki4y-0003T9-Eb; Thu, 03 Dec 2020 06:27:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kki4M-0003RX-Dv
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:26:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a5Hleron+HNO6OSGaVm7+jn0hTolWYgraVmhaIHqv7U=; b=ZLTTKWTY33WFyKVpY+i1yLXfj/
 ojQ0ap11VS5zAWwzdDguDTzBqyuuHaHV1NDuxsJj+5fJ2dyD1tgPgyfgIDt11HtpqjYs7YLMIiz9E
 8Q0acSnoHMInN993uimVBOuh1U6Hr5kpslnxtM6JfoNtTV2WYcNs3Mj4CnEZ2BQ3cTvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a5Hleron+HNO6OSGaVm7+jn0hTolWYgraVmhaIHqv7U=; b=ZdeLENVXWeHM+dYo0a3sx9TggP
 bBnOGfDvazeVzAYKbHdNY3WMk9+UBpRjIq4Vg4sIZ/wlTz/cP4tR3ygomhYMjKGpZyZ/bi554IR+C
 9I07w7MkP16+KcgVrKxrOq7QXPVPlgryMKdOblApAHDRLGPQeFKzfj8sjnsU0AVI0ea4=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kki46-00HCo8-8m
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:26:22 +0000
Received: by mail-pf1-f194.google.com with SMTP id x24so617572pfn.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 02 Dec 2020 22:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a5Hleron+HNO6OSGaVm7+jn0hTolWYgraVmhaIHqv7U=;
 b=U+Y6zDIhpIkQd0/XkPnsWOx3ty2znoP8t4ISlhFWptNuMbr5LJSUMsW+RTtd0M4x9K
 zkXL5+4LAq4x//bXrJWzpP34A+rpYm0BEV+gvvB+NvDg8g3Ppup7PuLwiRepugDodQb4
 IeDv1J0rX0QSTAaUbFsT4RMfXp6C/1AdjuAe9+WX4ydwHoVVaNSpjnpDGw8TqKH/qBxj
 SFELS12okZcCLgFwMxLX1CdG+AnoH5VLLr3bNMVPRRk2vl+KM5WV2pKelrDbtRPajdey
 ebvLpD8CW2hjzgstxv63BBMYAENN85quML6Mb//RxXN/Yp/6f77xIF0cuNxsS15D55Ap
 2BjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a5Hleron+HNO6OSGaVm7+jn0hTolWYgraVmhaIHqv7U=;
 b=B2Lh2t69I6zVInftpQZ5z9TCGJzlIyQZK6uuBSKY6ZX63tVeU9GOnHGXAu1yuVr8M0
 gg1u3JQuqWtdyDCiArSFmXLb0Yuer2Z9r2HWS18rmTIZDrTpxo21bv9OuofMqOprMoCy
 FIwPev2+BtgFFUBdMr9aMFeyS+6pzZ2G4oMRa5lB20d2fNf8p2D/XcmClsQtO1wzbCyC
 2sUK7QyBMupQdXved4ogepUAqII9XgRXmfWDpXHHB36RudlrHSC143aAHsTIWMckZLBJ
 HhFAlOjoV6sNgHdjxsVZHDL4klEcsIwLQVp8DiI1zgmmmrTjctgX7XccaOLqBHtbUYGz
 XiKg==
X-Gm-Message-State: AOAM532nQ1Lc0NqiemmzUu1iyRP5yLLmO9giPHomOaxE4yrfrXu0BQ/R
 6JYjI05q9U5rg/zdiItoypw=
X-Google-Smtp-Source: ABdhPJx+P2i1MS4WKP5k78TX7vozpZ6k242noGJ71q6yL4YO0XpxjV8ai5M/byvI+Lbmw/bWUNXyTQ==
X-Received: by 2002:a65:44c2:: with SMTP id g2mr1824908pgs.256.1606976760622; 
 Wed, 02 Dec 2020 22:26:00 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id 6sm495218pfb.22.2020.12.02.22.25.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 22:25:59 -0800 (PST)
Date: Wed, 2 Dec 2020 22:25:55 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <X8iE81mbK6NVhd0e@google.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-2-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608112211.12125-2-andrzej.p@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kki46-00HCo8-8m
Subject: Re: [ibm-acpi-devel] [PATCH v4 1/7] Input: add
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

On Mon, Jun 08, 2020 at 01:22:05PM +0200, Andrzej Pietrasiewicz wrote:
> A helper function for drivers to decide if the device is used or not.
> A lockdep check is introduced as inspecting ->users should be done under
> input device's mutex.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Applied, thank you.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
