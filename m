Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8842CCF2B
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Dec 2020 07:28:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kki60-0001vf-Ef; Thu, 03 Dec 2020 06:28:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kki5S-0001uF-D2
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JIdff1VBF+uP5SziDcHY7x/1uDEIyNK1HGkkO+Ce1xk=; b=j+RjwnF3gf6kM+5hASzZmckHFP
 avXofJ/VF6fi4NiLqiIpO87yR+8Bwj1aqgkY+6gH7zhjSxl6ScNDW/kd9glq2OzKWqrJX0XtWcoNm
 g0/qGK+36P39E7vM2YqmYYRPsUAZElog7tsaabLQzp7cH9AMg+bC3Wz6S39hra3uxE2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JIdff1VBF+uP5SziDcHY7x/1uDEIyNK1HGkkO+Ce1xk=; b=jeHd9N5RSUhzXGwyxHKLYSBOCU
 OoALP869oc6qhRYtnAu8JRDq7QIEsFnebiIaW9iajIHBOqa65uOuC9XoziCOuokM+He71VJB8kTTQ
 z6ocaU7AV51OrisHDbYrs+0eaaT/w+XYwn/l4VNsXsx580PBAXDIJTZlxjsrvSSxPt4w=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kki5L-00Clhd-Cm
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:27:30 +0000
Received: by mail-pj1-f66.google.com with SMTP id e5so553616pjt.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 02 Dec 2020 22:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JIdff1VBF+uP5SziDcHY7x/1uDEIyNK1HGkkO+Ce1xk=;
 b=IofT99cLgaFaJORr+HbK7jwv4M7wNQrOzi+3OMaqTH2qKYyxCTOR/4n75dJV550QTZ
 esfx/SEMJNju/ZaA5nlmWN/s3dBlE2mITEbov+NZCL1L3+ZGV3+IfQ/WFQqKF0h8B/Xk
 QoCKlrelkKy0dcHuagzdWnsZnqLfPdk8J6aghrhpF0U80hxw1SRt9fbiT0EpN1CAvtJO
 LtpR/nTDt3KyIJGP4cAPTtAR3PxSYLkd7foCS9vfpjZFaEHFL5tRG68mUeJLrUPV56vH
 1DK4PWNB/GQPqJMsuRTCarqVp+nPOz9R0ckl03ZSxeLtNWcZOP6I+EcC68YoCLLRB1Vq
 DZog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JIdff1VBF+uP5SziDcHY7x/1uDEIyNK1HGkkO+Ce1xk=;
 b=ByyZ5213F9CQkUwd7QHPbFKkpK32EHYyQnkSWvypzzdwTakIqTK0wx5MH5f7l+ce7u
 3oURib8cTvsya8eHJlzcsztOWbIFsJE5yYthytVTN/luZ5FjtmtPZ6rR9/UxXQ3SdEHW
 /1UnyaUkzkRGaLfXjVOzO/Jf0TkTAE5qBStNipOiXdeouYu12tJ2LbAe80nLy2xdXKTV
 hDmMaRXY3mp0K5K2sxe4aup/ZPuX+p6oR5qPx4a56rMxFE6ZNPIbCnCnFUEfrvHimZvu
 FgF/v9g4njmw2AcDC9Vbfm/QHDxJItTsOgwqsDM3Az8O46FSnigXCTv1bfBRbeye20r8
 Q3ow==
X-Gm-Message-State: AOAM531pZ8hf9tGUPOkSMypeYjq+kxuCs6iQbDfVVJ6GJKeYcsbs2WSK
 uh/ezdiCu44Tw35XKHr3NCY=
X-Google-Smtp-Source: ABdhPJyjSNv/C2l8ZtaC9KjD/0k/cr478E0J4aUuV0nD73oFdnOeF77Iv6agw2RiQxq+Tc6d+K+PHg==
X-Received: by 2002:a17:902:9891:b029:d8:fdf6:7c04 with SMTP id
 s17-20020a1709029891b02900d8fdf67c04mr1727757plp.54.1606976837830; 
 Wed, 02 Dec 2020 22:27:17 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id o9sm277249pjl.11.2020.12.02.22.27.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 22:27:17 -0800 (PST)
Date: Wed, 2 Dec 2020 22:27:13 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <X8iFQfsZSh0aV+pX@google.com>
References: <f9007f37-c526-5fa4-3188-a554d2434177@redhat.com>
 <20200617101822.8558-1-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617101822.8558-1-andrzej.p@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kki5L-00Clhd-Cm
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
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jun 17, 2020 at 12:18:22PM +0200, Andrzej Pietrasiewicz wrote:
> Document inhibiting input devices and its relation to being
> a wakeup source.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Applied, thank you.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
