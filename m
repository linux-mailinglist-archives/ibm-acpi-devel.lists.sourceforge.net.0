Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA4C22D973
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 25 Jul 2020 21:01:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzPPt-0002ji-P1; Sat, 25 Jul 2020 19:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sre@kernel.org>) id 1jzPPs-0002jY-6Z
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 25 Jul 2020 19:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qaKHljSsnt0ZEbHoF15oLEHb2ZUy3J1/y4ve/d/KW34=; b=jPumk2Fz6e+uE4Fz4SDsgnVrX5
 jbZpaSp5zGwjRXFZUNh76CU1q+f15grDkU6WpKSIrcWa8gDIx7XT5n6nCVBDODe1dVmSBB3DmNPUB
 Hb2R/CGP9hs8VpF84HYbksXnmakvcMtFR25iyNLUOXKn0gL10UsJSYDgUHYLpWN5kylE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qaKHljSsnt0ZEbHoF15oLEHb2ZUy3J1/y4ve/d/KW34=; b=JHuqThHRuoQtXLVM5RR+wcSG0t
 RORnlH2gcRjaEzNAvZ1o0ELhyq3JyMJvbtsPni2mXiIks9d3dLrj/47zhUDGbUIXdluKZdKCU36Zs
 kMTymt0JKfpGJgw/wifs5Pu5+zfHvUmMGKR27qYn83W31mhz+Xsg+pWQASAWBuQw8wW8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzPPq-00H7Tq-SU
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 25 Jul 2020 19:01:04 +0000
Received: from earth.universe (unknown [185.213.155.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A7F7206D8;
 Sat, 25 Jul 2020 19:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595703652;
 bh=qaKHljSsnt0ZEbHoF15oLEHb2ZUy3J1/y4ve/d/KW34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mWv8+tHTSAEMhmq8UN7A1oO0LUUflxANDn/cQaI4MOwieOGF+GlPB7CZSA8Cm3Goc
 C3rQS1qhmCieo/B+FB6wL+4o2gM9v+7zTC186Vu3v2QzvJD3etvn1TCB9ymb7y3NGx
 nIWMO1oZIHBn5C4Sn8kN6K3/Gx9EAj/BEZIg+2+Y=
Received: by earth.universe (Postfix, from userid 1000)
 id 1B8933C0B87; Sat, 25 Jul 2020 21:00:50 +0200 (CEST)
Date: Sat, 25 Jul 2020 21:00:50 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Kristian Klausen <kristian@klausen.dk>
Message-ID: <20200725190050.3ssslnkrauq6zdrd@earth.universe>
References: <20180207145813.icmv6rwemyejhxbk@thinkpad>
 <2270b8c7-beec-5ab6-f8b7-5ec41751c699@klausen.dk>
MIME-Version: 1.0
In-Reply-To: <2270b8c7-beec-5ab6-f8b7-5ec41751c699@klausen.dk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kroah.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jzPPq-00H7Tq-SU
Subject: Re: [ibm-acpi-devel] [PATCH v13 1/4] battery: Add the battery
 hooking API
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
Cc: Platform Driver <platform-driver-x86@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Robert Moore <robert.moore@intel.com>, Ognjen Galic <smclt30p@gmail.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Lv Zheng <lv.zheng@intel.com>,
 Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph@boehmwalder.at>,
 Kevin Locke <kevin@kevinlocke.name>, Darren Hart <dvhart@infradead.org>,
 devel@acpica.org, ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andy@infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============3134125971756686083=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============3134125971756686083==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hfre6zazdmed5p3p"
Content-Disposition: inline


--hfre6zazdmed5p3p
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 24, 2020 at 01:42:26AM +0200, Kristian Klausen wrote:
> On 07.02.2018 15.58, Ognjen Galic wrote:
> > This is a patch that implements a generic hooking API for the
> > generic ACPI battery driver.
> >=20
> > With this new generic API, drivers can expose platform specific
> > behaviour via sysfs attributes in /sys/class/power_supply/BATn/
> > in a generic way.
> >=20
> > A perfect example of the need for this API are Lenovo ThinkPads.
> >=20
> > Lenovo ThinkPads have a ACPI extension that allows the setting of
> > start and stop charge thresholds in the EC and battery firmware
> > via ACPI. The thinkpad_acpi module can use this API to expose
> > sysfs attributes that it controls inside the ACPI battery driver
> > sysfs tree, under /sys/class/power_supply/BATN/.
> >=20
> > The file drivers/acpi/battery.h has been moved to
> > include/acpi/battery.h and the includes inside ac.c, sbs.c, and
> > battery.c have been adjusted to reflect that.
> >=20
> > When drivers hooks into the API, the API calls add_battery() for
> > each battery in the system that passes it a acpi_battery
> > struct. Then, the drivers can use device_create_file() to create
> > new sysfs attributes with that struct and identify the batteries
> > for per-battery attributes.
>=20
> Hi
>=20
> I did that, when I implemented charge threshold support for ASUS
> laptops[1][2].
>=20
> It works very well but I can't control the threshold with udev (also
> reported by another user here[3]). So I did a bit of digging and the doc[=
4]
> states: "If attributes are added after the device is registered, then
> userspace won=E2=80=99t get notified and userspace will not know about th=
e new
> attributes.", which seems to be the way the current code works:
> power_supply_register_no_ws is called[5] and if it success all the hooks =
are
> run.
>
> Looking at the code I'm not sure there is a easy way to fix it, do you ha=
ve
> any good ideas?

That problem is described by Greg in his blog post from 2013:

http://kroah.com/log/blog/2013/06/26/how-to-create-a-sysfs-file-correctly/

The power-supply subsystem offers registering extra attributes
at registration time by filling in the .attr_grp field in the
struct power_supply_config supplied as last parameter to
power_supply_register_*() since 4.21.

-- Sebastian

--hfre6zazdmed5p3p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl8cgV4ACgkQ2O7X88g7
+pqvtQ//ZrWf/Jt4UggT7gakaPf45snDjeeIbYOG4t+yuEAOkSI+6VHGMERKap2o
mkpuzVdEYnpIP4PtSjCxM9adJvSktn/z22QvkypyyYDDmsuGGu8d3fUD1o1TYDGE
Dm5Kce8aqHIFBVL1TG+9Yg6O8L5gkKE6NC8dwlwFRTgnh7jAR910F8sva6Poc0PC
Uvp3DqeuqRWgdPqKko5l5BTtfsghu+nTl+cMqYxrN7yTLeimaTUZZdLtYrwNJ3Z1
o4jDSYCGlxdb269FGsPj3Ukoh4KvGJ4Iz+FZw60QToteki3lMuQfmrZBrsd1dWFo
SEdrG0m+zetHNRJWEiuxSFRKHsHQXOiyrmso63HxfdwhB8s+mlBsC0pn+kunKhTh
xx0v9n9xygPfs3QWVd8mQJkE2yLVeExacsoZPLabL9NLYUTEMRUrB43pcq0D85Jv
+d7MDMKJ+Q+xOVGk6GukdMCgmR+cY7jImZqIIRKUrE1utKQ0fux2bZzbsJ7jXyvC
H27QMpJ1uA+knpRKx5PpWM5ohfVRUogaItv5C7uBzrpksMToB+wU2LumrOSKg67D
vvv3XkWm6KFKl+wOOGWcj/1pzTOatqQk0VQC1BKVeoWzqFPq/x2XNCMHIpYK7ZpP
ABX2jdj0v3Jd7bwiKRNLc9P0W6E7YQcM1V3+N2KI36O4FoLWL9M=
=9vtN
-----END PGP SIGNATURE-----

--hfre6zazdmed5p3p--


--===============3134125971756686083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3134125971756686083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3134125971756686083==--

