Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B68B4A3
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 28 Apr 2019 00:32:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKVro-0002GG-VP; Sat, 27 Apr 2019 22:32:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hKVrl-0002G6-Uj
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 22:32:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zw3s3Dci8q291gcmK4fm48FmVyz1vinj7YIue/pjLNI=; b=WbFHaGK/Xe/HVQ83yZmLk0NArD
 QAE83vpCHWT+Tup3DOh27VsqCr8cuZs8Gg49IHRhDrCKhkK+xo5Ognp+FWJYIrXWJRLVpHGJqH2B1
 8+1oZ7A6vXvahENjmYUYYQ8oycWv7Wn3So1u2yWaiLJFjxXX13EGLgLLafYiUM/KCzTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zw3s3Dci8q291gcmK4fm48FmVyz1vinj7YIue/pjLNI=; b=I07ZPydaaeXu90jMkcaQHz+Xf0
 ST8OJqaDF2MK3wMhcE2FikpDXp0lerJQNDf+xZgpk2yJhL8INzODCAPkAltWElNwONPNJGwtGzqN4
 vFNd1TUq9/osIPIJvM/mDWuhJjqhfDx79/+nr6gqFG+yH/DY+Sv12BCbCZUaGGxl5LhI=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hKVrj-00FSxw-0u
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 22:32:17 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 573568081B; Sun, 28 Apr 2019 00:31:59 +0200 (CEST)
Date: Sun, 28 Apr 2019 00:32:08 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190427223207.GA3585@amd>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
 <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hKVrj-00FSxw-0u
Subject: Re: [ibm-acpi-devel] Thinkpad ACPI led -- it keeps blinking
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
Content-Type: multipart/mixed; boundary="===============6879095210923642472=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============6879095210923642472==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

This fixes one problem:

									Pavel

Signed-off-by: Pavel Machek <pavel@ucw.cz>

diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
index e3da7c0..d795d8f 100644
--- a/drivers/leds/led-core.c
+++ b/drivers/leds/led-core.c
@@ -164,8 +164,14 @@ static void led_blink_setup(struct led_classdev *led_c=
dev,
 		     unsigned long *delay_on,
 		     unsigned long *delay_off)
 {
+	while (work_pending(&led_cdev->set_brightness_work)) {
+		printk("Waiting for brightness set to finish\n");
+		schedule();
+	}
+		      =20
 	if (!test_bit(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
 	    led_cdev->blink_set &&
+	    /* This can sleep */
 	    !led_cdev->blink_set(led_cdev, delay_on, delay_off))
 		return;
=20

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzE2GcACgkQMOfwapXb+vKl/ACeLRoqIr8SQO8NSjC99Bqkr/uQ
azAAoLbC9v1YzD3qkvL7Q0njYSmCHtpw
=rCcb
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--


--===============6879095210923642472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6879095210923642472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============6879095210923642472==--

