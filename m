Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D945B490
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 27 Apr 2019 23:46:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKV97-0006bM-LK; Sat, 27 Apr 2019 21:46:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hKV96-0006bF-Ae
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 21:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TcJ1B5aDxmECALKjKjuKVpfROIaKuHxz+5FVECV4BgQ=; b=Gc9wCNI6LL+TfP5rp84elW+WOm
 z+GbSrJqIV3XCLhJrSNcZ5BudHHYA58OGodsZdiTws6vDSJW07iyKBIN4/smMeSsjUSbkBj2fmIvw
 SXDk+nVOJUZrcJJki2sFbG3x6DQSISGM8VsgtFqhArCdSJNSohYaKHcdHYA4tnrz04b0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TcJ1B5aDxmECALKjKjuKVpfROIaKuHxz+5FVECV4BgQ=; b=ZDrqQEcu1Nqwtm2G9D/RbA3NiD
 r5rMiueXjutRNGi8SDGoZohjX3O0qlglXgHF7ZipDTcPBAxwUPw3taVRoQfvg9zC3/HnBZ7DZq5Bz
 XR9xyELwe0er8n0XjxbIf3wsoUJm/KDgdidzcXfqy3DhlKYTrcpxzRGazrdrEI++FWp8=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hKV92-00FQUi-Uj
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 21:46:08 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 7254D80743; Sat, 27 Apr 2019 23:45:48 +0200 (CEST)
Date: Sat, 27 Apr 2019 23:45:56 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190427214556.GA19758@amd>
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
 for more information. [URIs: marc.info]
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hKV92-00FQUi-Uj
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
Content-Type: multipart/mixed; boundary="===============3581202643413206402=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============3581202643413206402==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat 2019-04-27 22:35:35, Jacek Anaszewski wrote:
> On 4/27/19 9:34 PM, Pavel Machek wrote:
> >On Sat 2019-04-27 18:55:37, Jacek Anaszewski wrote:
> >>On 4/26/19 11:42 PM, Pavel Machek wrote:
> >>>Hi!
> >>>
> >>>>Kernel 5.1.0-rc1 + some unrelated bits.
> >>>
> >>>I tried adding
> >>>https://marc.info/?l=3Dlinux-kernel&m=3D151622365715313&q=3Draw as Jac=
ek
> >>>suggested, and it is still broken.
> >>>
> >>>Test code is this: ledtest actually works as expected on first try,
> >>>but keeps blinking on second run. Strange.
> >>
> >>Did it work for previous releases? If yes, then bisect should help here.
> >
> >Absolutely no idea :-(. I assume "no". Capslock LED on the same system
> >works as expected.
> >
> >I still hope thinkpad people will speak up, notice it does not work
> >for them, and debug it :-).
>=20
> I see this driver implements blink_set:
>=20
> tpacpi_leds[led].led_classdev.blink_set =3D &led_sysfs_blink_set;
>=20
> and also applies some internal logic related to the type
> of supported LEDs, and the way how the hardware is accessed.
>=20
> To eliminate the problem on the LED core side you could
> disable initialization of blink_set op in the driver.

Yep, software blinking will very likely work ok.

[  226.949924] LED set 0 to 2
[  226.950766] LED set 0 to 2... 0
[  232.613577] LED set 0 to 2
[  232.613991] LED set 0 to 0
[  232.614467] LED set 0 to 2... 0
[  232.616442] LED set 0 to 0... 0

Thinkpad ACPI driver is being asked to turn led to blink [232.613577]
LED set 0 to 2 and turn it off [  232.613991] LED set 0 to 0
simultaneously. It has no internal locking and ACPI is slow. That
can't end well.
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzEzZQACgkQMOfwapXb+vJS2ACdELxAVLLsxfoqrCYKatyXFDTM
ueYAnRWaffAg2FE3OkRUTeZQ3InSww0b
=zsJ+
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--


--===============3581202643413206402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3581202643413206402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3581202643413206402==--

