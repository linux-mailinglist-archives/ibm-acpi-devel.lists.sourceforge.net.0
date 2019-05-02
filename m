Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D34112279
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 May 2019 21:13:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hMH9D-0005la-Cy; Thu, 02 May 2019 19:13:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hMH9C-0005l6-8G
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 19:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OOrDt3pVI15kteDw7soyRPv2Gmhvmqz3+V4ur1aB9aw=; b=GIPHf4Q0S8ZE1dvTs/8n8vOeKH
 XTQp7RzeFUW61sZU77f5ESJm1n9SDLvb2nqToD+3c9cT4+mg9RwMrcJKiMPVPSgWUdH3zKh4jf3D2
 6j2iU4CXhgw77z94qX9y6DNe99szhc/HkemAmO+t8FaqtegS8gKNfdVwkEJ7vTZeGapo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OOrDt3pVI15kteDw7soyRPv2Gmhvmqz3+V4ur1aB9aw=; b=a8BEnh+BuWz4lv7WZTHzmej430
 cTO/f5/t5z1lyUvNsCWaXZUNY1++i4kDStxQSoab+ji5m8MmNAVx0zzwRE1b5PMeQsNkPm7OsxUr5
 ppEqHfx0woSWxmNS2YizLKLiUdvloPMXvggzSTjEUWgbNmUFuJD9bg91Yd/TTXxlEuS8=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hMH99-003SQt-QO
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 19:13:34 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 80F40802F2; Thu,  2 May 2019 21:13:12 +0200 (CEST)
Date: Thu, 2 May 2019 21:13:22 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190502191321.GB4845@amd>
References: <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
 <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
 <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
 <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com>
 <20190501183600.GA20452@amd>
 <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMH99-003SQt-QO
Subject: Re: [ibm-acpi-devel] [PATCH] leds: avoid races with workqueue
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
Cc: ibm-acpi-devel@lists.sourceforge.net, ibm-acpi@hmh.eng.br,
 stable@kernel.org, linux-leds@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7794894750878543199=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============7794894750878543199==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jho1yZJdad60DJr+"
Content-Disposition: inline


--jho1yZJdad60DJr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >>>+++ b/drivers/leds/led-class.c
> >>>@@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
> >>>  	if (state =3D=3D LED_OFF)
> >>>  		led_trigger_remove(led_cdev);
> >>>  	led_set_brightness(led_cdev, state);
> >>>+	flush_work(&led_cdev->set_brightness_work);
> >>
> >>Is this really required here? It creates non-uniform brightness
> >>setting behavior depending on whether it is set from sysfs or
> >>by in-kernel call to led_set_brightness().
> >
> >This fixes the echo 0 > brightness; echo 1 > brightness. It has to be
> >at a place where we can sleep.
> >
> >If you have better idea, it is welcome, but it would be good to fix
> >the bug.
>=20
> Currently not, so I applied the patch in this shape.

Thanks!

This is actually something that makes sense for stable.. perhaps the
bots can pick it up.
									Pavel


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--jho1yZJdad60DJr+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzLQVEACgkQMOfwapXb+vKOoACfax+BPvnk0lcSUvQ9r9d9Osa5
c+EAnR0lfaZ44Vbj/bnmI3te1IvsqbU5
=p9ml
-----END PGP SIGNATURE-----

--jho1yZJdad60DJr+--


--===============7794894750878543199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7794894750878543199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============7794894750878543199==--

