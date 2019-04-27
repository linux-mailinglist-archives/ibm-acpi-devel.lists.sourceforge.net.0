Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6637B461
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 27 Apr 2019 21:34:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKT5b-0003UU-3i; Sat, 27 Apr 2019 19:34:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hKT5Z-0003UJ-U8
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 19:34:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOoWDHCqlRTfZHNx8opJI+kG1YqE4pMsMiDWDly2PpU=; b=gi9KqzUCGhsDr4ts/RPc6mMZDg
 0jPY35KnlJ26MeWhXuBR9jFomYGFwLcRlxiG7VDjRSZ1ARiQ9HvdaBtxaKuR49NxU50I+emXTRu8L
 nlBTl78RQTfGpMo51DocO6HQBk0bOSuBDzPVzLnSAzOApW4rcpagddTcYG5QTB2+J9Z4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TOoWDHCqlRTfZHNx8opJI+kG1YqE4pMsMiDWDly2PpU=; b=XpyTGVWoDU2Wb2z37eFpm1+wLS
 P6YfW8G4YPcOl0ivvt5Z/zy3yvf5t0U1IJQarm0fD8o1I0JJDzgRWO3sYGGSF814BSrJYLZuAJ/vW
 W6c+lbTNg01ePXolxFlmox4J+dSnQtwyFCpj135wW9lToJX9aQ5KHUASgA9V0tlnHCuA=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hKT5X-00Fnb5-9r
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 19:34:21 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 5400180647; Sat, 27 Apr 2019 21:34:03 +0200 (CEST)
Date: Sat, 27 Apr 2019 21:34:11 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190427193411.GA9709@amd>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
MIME-Version: 1.0
In-Reply-To: <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marc.info]
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hKT5X-00Fnb5-9r
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
Content-Type: multipart/mixed; boundary="===============3174741954605100154=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============3174741954605100154==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat 2019-04-27 18:55:37, Jacek Anaszewski wrote:
> On 4/26/19 11:42 PM, Pavel Machek wrote:
> >Hi!
> >
> >>Kernel 5.1.0-rc1 + some unrelated bits.
> >
> >I tried adding
> >https://marc.info/?l=3Dlinux-kernel&m=3D151622365715313&q=3Draw as Jacek
> >suggested, and it is still broken.
> >
> >Test code is this: ledtest actually works as expected on first try,
> >but keeps blinking on second run. Strange.
>=20
> Did it work for previous releases? If yes, then bisect should help here.

Absolutely no idea :-(. I assume "no". Capslock LED on the same system
works as expected.

I still hope thinkpad people will speak up, notice it does not work
for them, and debug it :-).
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzErrMACgkQMOfwapXb+vLKJACdGdMknMjibGT8TIGHFW715nwt
21QAoKtFVQVTYn3a8xaLrfm6upBBiQPW
=qhtX
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--


--===============3174741954605100154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3174741954605100154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3174741954605100154==--

