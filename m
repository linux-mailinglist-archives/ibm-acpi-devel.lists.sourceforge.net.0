Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D583A2CCF57
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Dec 2020 07:32:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kki9u-0005CK-R7; Thu, 03 Dec 2020 06:32:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kki5J-0004e0-6j
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HbJt6rJA01QCvzasS4bsjMswEGXIMUsY6Sd2CuWo+TA=; b=bSpiPWN7xVUSAOmKVQBGKvINEJ
 y0FKqc9ZpOujj/Jh6M5iu+/fWwfgSoou2p3dN7Ar5dDLuJqQh1ipt3c4rlysEZBoTlaDK6iOcqIUx
 Iniez1Wv46rNxBealb0+6lv+sZtJZgrblJmjkZJ2btREXYjW8UDQcZNfZUgjlegRK57Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HbJt6rJA01QCvzasS4bsjMswEGXIMUsY6Sd2CuWo+TA=; b=Fa5upPF24fpgx+s/C69KdK/skw
 2r5S05DcbmdrfksbPez2AVqYTl3bKHx23SpQa6fQyOM8l5rfjGDZuZ6lwRqZQkEyPP0SYMoH/fuQJ
 ZupP7kGy7NkFMNH6IZt67+GduJozRqRzCqCWXmujhrGXzCWUPAp9msRLMdN9Q51DxZlo=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kki57-00Clg2-A7
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Dec 2020 06:27:20 +0000
Received: by mail-pl1-f193.google.com with SMTP id l11so585298plt.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 02 Dec 2020 22:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=HbJt6rJA01QCvzasS4bsjMswEGXIMUsY6Sd2CuWo+TA=;
 b=dVxEWp/RvZDYdBHbNkIa716w8SrdD3Bx6vfJPohQ0OY/cKAqNuPT4RBfPrmRvG0bYK
 cdFDoQiBbwaCt8XKFTDl5hC0I2JzBvKpljBGUkGC9ndGlccVEe/kYwkw7WBcKhdqGn2H
 pOi1ZBiDIO6A3GAeoU7/o9bEHcB2S0TJGTmxdkYI1QwTdN4/wspINEUxRbUk1Sfd55vN
 wUB9lCevCMcTWq74lHPkjJiyP/EMoLSzXaK8aIkNjvZnE88DUJBZdagqZWqlI+fNHBBK
 8NKV6uP6PN1rE/aWSmY2qW8BnbMfd4KKtDSki68dYhes24N+RIyMjlzqNeTtW+6rgEqD
 FzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=HbJt6rJA01QCvzasS4bsjMswEGXIMUsY6Sd2CuWo+TA=;
 b=BZkRVkF9ckEm3VCM44+I6J5JeyrGIm1BEfRwD5+RlsWS9ce1Bw8krWq72VlFLT+fde
 mRHp/KI68JzS5kAj4D3lPQibME3PnIF7QhTj5d44pVio6xR4K31pGv7Nnt4C9tOFAPQp
 KqGOwuv2eOnRDugvqgjQkUerWeqbN6GShdYWnZUCyxb7t5rLkyL7NP1IbPVlzmqbzc17
 yoVgXi4UdxAVN1pDhIPFqgnDrgn49om7tbzMtEGfg+k34Ys3yvhzIf05Dz1h7LHSCX9Y
 cXE2Avu3pv1RZWUjHBEb9/ZClDZsZQ5juHK32mwB37fZF1PotQGge0NfeVs2+D8i1fcn
 NXxQ==
X-Gm-Message-State: AOAM532/Go4Xqx3RbK2K5wBZ9T7AtmowaOky3oEuU6ikMFlCITZWwPQf
 +IeswBx4U4Loh7sM957tj5k=
X-Google-Smtp-Source: ABdhPJxLIrp/Z8QgkGxETX0iBcSEzO8X/mrXwjgbBiDfZrpesga+0Jq3qeSuLPnrQoJ+EjG3lKhetg==
X-Received: by 2002:a17:90a:a501:: with SMTP id a1mr1531028pjq.4.1606976823776; 
 Wed, 02 Dec 2020 22:27:03 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id gw7sm283892pjb.36.2020.12.02.22.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 22:27:02 -0800 (PST)
Date: Wed, 2 Dec 2020 22:26:58 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <X8iFMp5jjhxR2xrr@google.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-8-andrzej.p@collabora.com>
 <20201005181014.GL1009802@dtor-ws>
 <ac4eeab7-8333-b96b-707b-eb2d6d0d8139@collabora.com>
 <20201007011102.GR1009802@dtor-ws>
 <20201007011249.GS1009802@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201007011249.GS1009802@dtor-ws>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kki57-00Clg2-A7
Subject: Re: [ibm-acpi-devel] [PATCH v4 7/7] Input: Add "inhibited" property
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
 Ferruh Yigit <fery@cypress.com>, Patrik Fimml <patrikf@chromium.org>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Oct 06, 2020 at 06:12:49PM -0700, Dmitry Torokhov wrote:
> On Tue, Oct 06, 2020 at 06:11:02PM -0700, Dmitry Torokhov wrote:
> > On Tue, Oct 06, 2020 at 03:04:28PM +0200, Andrzej Pietrasiewicz wrote:
> > > Hi Dmitry,
> > > =

> > > W dniu 05.10.2020 o=A020:10, Dmitry Torokhov pisze:
> > > > Hi Andrzej,
> > > > =

> > > > On Mon, Jun 08, 2020 at 01:22:11PM +0200, Andrzej Pietrasiewicz wro=
te:
> > > > > @@ -284,8 +284,11 @@ static int input_get_disposition(struct inpu=
t_dev *dev,
> > > > >   	case EV_KEY:
> > > > >   		if (is_event_supported(code, dev->keybit, KEY_MAX)) {
> > > > > -			/* auto-repeat bypasses state updates */
> > > > > -			if (value =3D=3D 2) {
> > > > > +			/*
> > > > > +			 * auto-repeat bypasses state updates but repeat
> > > > > +			 * events are ignored if the key is not pressed
> > > > > +			 */
> > > > > +			if (value =3D=3D 2 && test_bit(code, dev->key)) {
> > > > >   				disposition =3D INPUT_PASS_TO_HANDLERS;
> > > > >   				break;
> > > > >   			}
> > > > =

> > > > Is this chunk really part of inhibit support? I'd think we cancel
> > > > autorepeat timer when we are releasing a key, no?
> > > > =

> > > =

> > > When I look at it now it seems to me the chunk might be redundant.
> > > But let me explain what I had in mind when adding it.
> > > =

> > > It is a matter of what we do with input events generated while a
> > > device is inhibited. If ->open()/->close() are not provided by the
> > > driver then inhibiting amounts to merely ignoring input events from
> > > a device while it remains active. What else can you do if the driver
> > > does not provide a method to prepare the device for generating events/
> > > to stop generating events?
> > > =

> > > In this special case a user might trigger a repeated event while the
> > > device is inhibited, then the user keeps holding the key down and the
> > > device is uninhibited. Do we pass anything to handlers then?
> > > =

> > > In my opinion we should not. Such an event is "illegal" in a sense th=
at it
> > > was generated at a time when nobody wanted any events from the device.
> > > Hence the test to let only those auto-repeat events through for which
> > > a key is actually pressed.
> > > =

> > > However, what I see now is that if a device is inhibited, no key
> > > will ever reach neither the "1" nor "2" state because of the "if"
> > > in the very beginning of input_handle_event().
> > =

> > OK, then let's drop it for now. We can revisit if we see that a problem.
> =

> And by that I mean that I will drop it myself, no need to resend. I will
> be applying this shortly.

Well, "shortly" was just a tad optimistic, but I did apply it ;)

Thanks.

-- =

Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
