Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9EDE629
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2019 17:23:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hL87Z-0002uh-6w; Mon, 29 Apr 2019 15:23:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hL87Y-0002uU-DQ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 29 Apr 2019 15:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D18R+qRU0cCJpucbylDbYcKdz60m21bfzMtrQMAbwqU=; b=RzEvh3voBk8nJLgwbMh8ibttBf
 9tkQZ473+X4HBpz2s2rohc1PjmEZH4+c+N7fNzJIZI3I03LVlkai4Tnra7ZSc0iB6680+L89hJqzR
 spyZ/py8Et7LDU+VWWo3nZnCLYhLsBcZqVA01RhJDjfIHkCNn0dgJ1eE+JhbVejG9nFc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D18R+qRU0cCJpucbylDbYcKdz60m21bfzMtrQMAbwqU=; b=aLgmjBhqkKCmLEgAUlTMH53Iej
 Vj1fQWfEJdc/diLv8/wBA0vqaeoyW/o63+vVpMeK9w0r/P7UhotafLAA6f73l1kwNzUdtHdb/RtWr
 R1Ckk0CnrDbJglJ6ODsj2LYN9QdJlq52/MeiLF9fmRRsmj8y60D/yOSiupp7Z4QYygtc=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hL87W-001P0d-BJ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 29 Apr 2019 15:23:08 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 9FB8480752; Mon, 29 Apr 2019 17:22:50 +0200 (CEST)
Date: Mon, 29 Apr 2019 17:22:59 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190429152259.GB10501@amd>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
 <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
 <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
MIME-Version: 1.0
In-Reply-To: <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hL87W-001P0d-BJ
Subject: [ibm-acpi-devel] [PATCH] leds: avoid races with workqueue
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
Content-Type: multipart/mixed; boundary="===============5327714801193748459=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============5327714801193748459==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZfOjI3PrQbgiZnxM"
Content-Disposition: inline


--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


There are races between "main" thread and workqueue. They manifest
themselves on Thinkpad X60:
   =20
This should result in LED blinking, but it turns it off instead:
   =20
    root@amd:/data/pavel# cd /sys/class/leds/tpacpi\:\:power
    root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
    root@amd:/sys/class/leds/tpacpi::power# echo timer > trigger
    root@amd:/sys/class/leds/tpacpi::power#
   =20
It should be possible to transition from blinking to solid on by echo
0 > brightness; echo 1 > brightness... but that does not work, either,
if done too quickly.
   =20
Synchronization of the workqueue fixes both.
   =20
Signed-off-by: Pavel Machek <pavel@ucw.cz>

diff --git a/drivers/leds/led-class.c b/drivers/leds/led-class.c
index 68aa923..dcb59c8 100644
--- a/drivers/leds/led-class.c
+++ b/drivers/leds/led-class.c
@@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
 	if (state =3D=3D LED_OFF)
 		led_trigger_remove(led_cdev);
 	led_set_brightness(led_cdev, state);
+	flush_work(&led_cdev->set_brightness_work);
=20
 	ret =3D size;
 unlock:
diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
index 9f8da39..aefac4d 100644
--- a/drivers/leds/led-core.c
+++ b/drivers/leds/led-core.c
@@ -166,6 +166,11 @@ static void led_blink_setup(struct led_classdev *led_c=
dev,
 		     unsigned long *delay_on,
 		     unsigned long *delay_off)
 {
+	/*
+	 * If "set brightness to 0" is pending in workqueue, we don't
+	 * want that to be reordered after blink_set()
+	 */
+	flush_work(&led_cdev->set_brightness_work);
 	if (!test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
 	    led_cdev->blink_set &&
 	    !led_cdev->blink_set(led_cdev, delay_on, delay_off))

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ZfOjI3PrQbgiZnxM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzHFtMACgkQMOfwapXb+vKzHQCePjX+aIpGGpJuL8D2SFeqNxbz
GVIAnjogZRTg5UyLCA5uJBJ0Yb/RcCta
=cleH
-----END PGP SIGNATURE-----

--ZfOjI3PrQbgiZnxM--


--===============5327714801193748459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5327714801193748459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============5327714801193748459==--

