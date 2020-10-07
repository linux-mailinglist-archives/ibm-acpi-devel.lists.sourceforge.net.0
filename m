Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE2F28560D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  7 Oct 2020 03:11:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kPxzH-0000bx-Et; Wed, 07 Oct 2020 01:11:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kPxzG-0000bn-Ib
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 07 Oct 2020 01:11:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6fZCLYVp6vJOGJ9UOukLRU5lx5R2NISCZkWVL54zOGg=; b=a2UgO5KZvFLABZ3JITWYylrVBk
 xmHhUetb39yKwnESozU5daCsgmoVLU5kYPz5Lj4yjaTne0uZZyZbSCc/se3FXjfbLXCejq6g2XxyG
 dgfUYH87BzUI5xDrsSFDRKo4ESqBfPAYSyzZod6HZ94cTdbLqnjk7bkvqwGvFjY3Rr50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6fZCLYVp6vJOGJ9UOukLRU5lx5R2NISCZkWVL54zOGg=; b=m9VRwAOUAiS8gTxaDsyBVLJl/i
 9anwwTDBBMWhLZfcKLmhP5LxtY3LnoMxSuY54smw7/2TKBn+I7+YDY0hdQaxLv6Ho6RfA7V9xxT9b
 Vf3zfagqN2p5jWdqCgJaLQO7jgxuCjRd7B03J1auAmW1mREfLxYKLlsxvyMzrJT8hBPI=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPxz7-001b9B-5i
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 07 Oct 2020 01:11:22 +0000
Received: by mail-pg1-f193.google.com with SMTP id g29so348077pgl.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 06 Oct 2020 18:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6fZCLYVp6vJOGJ9UOukLRU5lx5R2NISCZkWVL54zOGg=;
 b=S5qiUfGndIGUy172Th8X9wui1g/KqnJ8Yz9sLsLNl6YQAUDRK5o7EcFi+xf0zez4lU
 NIXSdgW3vrt0s+GUQUGbX7OxXqwbkWXD8m+33T0GyZeAvoW74hyWXw6rRstZY5gebvPs
 ToVQFWRd27he3+qYh1jDNPmGoO4cRbwezUjcdzkhN2PE9k4bNM8+siHYH9dVL+LVs/rA
 WtSwbSGfCrU+7r3dpVt4XalVIcZDhg5JLS/EJsSHAJVlSgJMg9IZUNRkbGA0Zqb9Gmgi
 gr9smdR0mAVR4vuPF1ehlmGsMQ1hU3sk75bTMYGwRjIzT4yKn9xchLknf4gNlQxMAG8X
 CDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6fZCLYVp6vJOGJ9UOukLRU5lx5R2NISCZkWVL54zOGg=;
 b=Tou4oiPm+y8AaO5akdrDn9js9KhMO1Xri5HQ3bvWowhIyF/+l164oIk4BLisaswcat
 2C+tFsYaLkce28t54zV+3MoaAb0zFOH6LsJhQ/FE8Os/AyQenMUp8SQjnUYuscI7L6cB
 gx67IbH8viht+XxqkKkF5bynGxlWOvxwbhbcKJro+rpAztuKajDNEiT1xvggpPbDFGLr
 E5xlIjeCsJ8mCCn/XKtUghw1BW3TQA8UW7odubmKtTtz5kRbMf2oiGNlm5XZu5xtLfKo
 u4zJqEgKROHeiV0b88C5rG7ETbHBQo34J7/xIWtP+iRfBIvEhahvIa2fLGbEZ71Bfm/M
 m62w==
X-Gm-Message-State: AOAM531jq+7uxi9n32RoHEHrdOo9gD41GKyd0JxMvDGglGDC/AcaaXEW
 Yj3kTwsnues/ZJB/NjkjGG4=
X-Google-Smtp-Source: ABdhPJyFRAe5gj4f3wME1Oj9xM2fApavjlXPSPwqMqBxecHV3dRBe4ft3JSqvU8nMvLBeX2kdb6ivA==
X-Received: by 2002:aa7:94a4:0:b029:151:d786:d5c2 with SMTP id
 a4-20020aa794a40000b0290151d786d5c2mr737596pfl.50.1602033067539; 
 Tue, 06 Oct 2020 18:11:07 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id w187sm453006pfb.93.2020.10.06.18.11.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 18:11:06 -0700 (PDT)
Date: Tue, 6 Oct 2020 18:11:02 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20201007011102.GR1009802@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-8-andrzej.p@collabora.com>
 <20201005181014.GL1009802@dtor-ws>
 <ac4eeab7-8333-b96b-707b-eb2d6d0d8139@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac4eeab7-8333-b96b-707b-eb2d6d0d8139@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kPxz7-001b9B-5i
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

On Tue, Oct 06, 2020 at 03:04:28PM +0200, Andrzej Pietrasiewicz wrote:
> Hi Dmitry,
> =

> W dniu 05.10.2020 o=A020:10, Dmitry Torokhov pisze:
> > Hi Andrzej,
> > =

> > On Mon, Jun 08, 2020 at 01:22:11PM +0200, Andrzej Pietrasiewicz wrote:
> > > @@ -284,8 +284,11 @@ static int input_get_disposition(struct input_de=
v *dev,
> > >   	case EV_KEY:
> > >   		if (is_event_supported(code, dev->keybit, KEY_MAX)) {
> > > -			/* auto-repeat bypasses state updates */
> > > -			if (value =3D=3D 2) {
> > > +			/*
> > > +			 * auto-repeat bypasses state updates but repeat
> > > +			 * events are ignored if the key is not pressed
> > > +			 */
> > > +			if (value =3D=3D 2 && test_bit(code, dev->key)) {
> > >   				disposition =3D INPUT_PASS_TO_HANDLERS;
> > >   				break;
> > >   			}
> > =

> > Is this chunk really part of inhibit support? I'd think we cancel
> > autorepeat timer when we are releasing a key, no?
> > =

> =

> When I look at it now it seems to me the chunk might be redundant.
> But let me explain what I had in mind when adding it.
> =

> It is a matter of what we do with input events generated while a
> device is inhibited. If ->open()/->close() are not provided by the
> driver then inhibiting amounts to merely ignoring input events from
> a device while it remains active. What else can you do if the driver
> does not provide a method to prepare the device for generating events/
> to stop generating events?
> =

> In this special case a user might trigger a repeated event while the
> device is inhibited, then the user keeps holding the key down and the
> device is uninhibited. Do we pass anything to handlers then?
> =

> In my opinion we should not. Such an event is "illegal" in a sense that it
> was generated at a time when nobody wanted any events from the device.
> Hence the test to let only those auto-repeat events through for which
> a key is actually pressed.
> =

> However, what I see now is that if a device is inhibited, no key
> will ever reach neither the "1" nor "2" state because of the "if"
> in the very beginning of input_handle_event().

OK, then let's drop it for now. We can revisit if we see that a problem.

Thanks.

-- =

Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
