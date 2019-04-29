Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CA1E623
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2019 17:22:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hL86T-0005dk-CR; Mon, 29 Apr 2019 15:22:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hL86R-0005dX-Lj
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 29 Apr 2019 15:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F89aXrS1IkZVR0wWrqT1+aK7Y3Osgg7Nrn01BR7eDlY=; b=cap3qyo88bl3am031IlCDZniGw
 91SGT5qxLhga4GWkNMOLuo7VjRmxqnN5AY6sbzc6xpKh17TYBbya8Axjr+H9dDztQypuOw8AoV7UB
 ZTwhlNHRF5aZdW/2UoiK9eswUnCRFZKzM1Tp+h284yOqn8f6Aq45hiOSUID2M4HsB4/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F89aXrS1IkZVR0wWrqT1+aK7Y3Osgg7Nrn01BR7eDlY=; b=KWqjnT5WmNOUHU3A6iBe78bKm/
 3OOnHIVgfEbH0GHXoNzh1hx/Gd+KABBTtiygzfRuaOdupwTa/JVxF1JwvhzPVNJozTccBubt056nA
 p6bROTNMWEZUrhQQ5NQS1vqoSiYuIW/mfBUTZDCnRtIJeJcUjOdF4O+PSCAiuV0U2iAY=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hL86P-001Owq-1W
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 29 Apr 2019 15:21:59 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 6A18380237; Mon, 29 Apr 2019 17:21:39 +0200 (CEST)
Date: Mon, 29 Apr 2019 17:21:48 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190429152148.GA10501@amd>
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
X-Headers-End: 1hL86P-001Owq-1W
Subject: [ibm-acpi-devel] [PATCH] leds: tpacpi: cleanup for Thinkpad ACPI led
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
Content-Type: multipart/mixed; boundary="===============3756806686219069390=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============3756806686219069390==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Make error returns more consistent... no behaviour change intended.
   =20
Signed-off-by: Pavel Machek <pavel@ucw.cz>

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/th=
inkpad_acpi.c
index 726341f..7008a7f 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -5808,7 +5808,7 @@ static int led_set_status(const unsigned int led,
 			return -EPERM;
 		if (!acpi_evalf(led_handle, NULL, NULL, "vdd",
 				(1 << led), led_sled_arg1[ledstatus]))
-			rc =3D -EIO;
+			return -EIO;
 		break;
 	case TPACPI_LED_OLD:
 		/* 600e/x, 770e, 770x, A21e, A2xm/p, T20-22, X20 */
@@ -5832,10 +5832,10 @@ static int led_set_status(const unsigned int led,
 			return -EPERM;
 		if (!acpi_evalf(led_handle, NULL, NULL, "vdd",
 				led, led_led_arg1[ledstatus]))
-			rc =3D -EIO;
+			return -EIO;
 		break;
 	default:
-		rc =3D -ENXIO;
+		return -ENXIO;
 	}
=20
 	if (!rc)

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzHFowACgkQMOfwapXb+vIdRQCgiGtLJhHVOZRshPe06zUPt0y9
w5EAmwQV9tPYgs8+2yh78fYHkUIlrzHy
=Z/s3
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--


--===============3756806686219069390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3756806686219069390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3756806686219069390==--

