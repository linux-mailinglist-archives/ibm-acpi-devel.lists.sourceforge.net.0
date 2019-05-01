Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA4210CBB
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  1 May 2019 20:36:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hLu5b-0003yj-8S; Wed, 01 May 2019 18:36:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hLu5V-0003y4-BM
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 May 2019 18:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tQVsbkAv8Qn5xWxYb2Lwv54v9Hdz4vuwFqA6gtyZM4k=; b=dd3H/sk+XR4iTmAY2tIYvUD4iW
 C6zoWzWEW3HLasJFptJbVNxQ69nkkYiwijtnrHgpoIujPOEMnZo9p8TPyLd/aErV8ZnLsGqhwoC6U
 E04cEj5+B1B8nn2MCWRRg6+uFrmiAt3K8XvlMRp2ct0j9VF59CEsc1A20uUXeSkxppv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tQVsbkAv8Qn5xWxYb2Lwv54v9Hdz4vuwFqA6gtyZM4k=; b=Rqu/bmMriwl0wLDGmdZHjYrQVJ
 2GNpW0QuOMg6YvYW14uKISDIQZAlKWpeFr7IUU+HDFWGkKDklDpJTD9W+DAiNs8WvwkxtjW8GCZFv
 X/JCc9nQ0IUeiSJtNuoMLh+3udLFOoBwqYmEJVW2b6EANs5h9+vCwLKs+5jMo0NIeR0g=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLu5S-001v8E-VA
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 May 2019 18:36:13 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 757618058D; Wed,  1 May 2019 20:35:52 +0200 (CEST)
Date: Wed, 1 May 2019 20:36:00 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190501183600.GA20452@amd>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
 <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
 <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
 <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com>
MIME-Version: 1.0
In-Reply-To: <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hLu5S-001v8E-VA
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
 linux-leds@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1487509041811300481=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============1487509041811300481==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >There are races between "main" thread and workqueue. They manifest
> >themselves on Thinkpad X60:
> >This should result in LED blinking, but it turns it off instead:
> >     root@amd:/data/pavel# cd /sys/class/leds/tpacpi\:\:power
> >     root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
> >     root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
> >     root@amd:/sys/class/leds/tpacpi::power#
> >It should be possible to transition from blinking to solid on by echo
> >0 > brightness; echo 1 > brightness... but that does not work, either,
> >if done too quickly.
> >Synchronization of the workqueue fixes both.
> >Signed-off-by: Pavel Machek <pavel@ucw.cz>
> >
> >diff --git a/drivers/leds/led-class.c b/drivers/leds/led-class.c
> >index 68aa923..dcb59c8 100644
> >--- a/drivers/leds/led-class.c
> >+++ b/drivers/leds/led-class.c
> >@@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
> >  	if (state =3D=3D LED_OFF)
> >  		led_trigger_remove(led_cdev);
> >  	led_set_brightness(led_cdev, state);
> >+	flush_work(&led_cdev->set_brightness_work);
>=20
> Is this really required here? It creates non-uniform brightness
> setting behavior depending on whether it is set from sysfs or
> by in-kernel call to led_set_brightness().

This fixes the echo 0 > brightness; echo 1 > brightness. It has to be
at a place where we can sleep.

If you have better idea, it is welcome, but it would be good to fix
the bug.

Best regards,
								Pavel
							=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzJ5xAACgkQMOfwapXb+vI/BACeNY7i8g4zzNbNSD+qMBKyQ70o
B34AoMDqGa9BH+n7wyRQltKiOYrajtpV
=CJ0T
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============1487509041811300481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1487509041811300481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============1487509041811300481==--

