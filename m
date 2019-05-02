Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64010122FE
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 May 2019 22:06:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hMHyC-0006Dx-79; Thu, 02 May 2019 20:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hMHyB-0006Dq-7D
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 20:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lo2J+JY79uSiHUjbqKvYDflwrJz2hkndgzqIjkStia8=; b=iHoHUgrhj/M2YShKjf25JbHY9C
 l81Gn+h/zIHu9MlGtX0QVCr+1RzuAHLiixoS5cuu4rsH5UyOT3pLOcXde8sG7/FyxgJxo0woGDTWY
 brTirgocy9wxff6nhn8q45owgaij8nwAs250MC/VOiqwDHhImKbvsWs6kuq4qlJhO/Lk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lo2J+JY79uSiHUjbqKvYDflwrJz2hkndgzqIjkStia8=; b=NbR0rAAMHK1cTLkfm1dbfeoplR
 Dl1Rqnw2wZDR9IoOf/V7D9P/C/NWfwv3UC9e3Zyhi+IzglJCqJc/OYO1dkYHKmGmolOWfiL4aTRR/
 /PmQK+j14MQqim/ca09svRjJW8BOo6G9a2S9f5I0TLfiREwtI8Xx8OCRD94Bq48ma8Ps=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hMHy8-003Vqy-GF
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 20:06:15 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 7AA38802FF; Thu,  2 May 2019 22:05:56 +0200 (CEST)
Date: Thu, 2 May 2019 22:06:06 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190502200606.GC4845@amd>
References: <20190427193411.GA9709@amd>
 <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
 <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
 <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com>
 <20190501183600.GA20452@amd>
 <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com>
 <20190502191321.GB4845@amd>
 <62a99fe8-5c61-c681-3f9d-54e0a27a63d2@gmail.com>
MIME-Version: 1.0
In-Reply-To: <62a99fe8-5c61-c681-3f9d-54e0a27a63d2@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMHy8-003Vqy-GF
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
Content-Type: multipart/mixed; boundary="===============8040321903146779796=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============8040321903146779796==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bAmEntskrkuBymla"
Content-Disposition: inline


--bAmEntskrkuBymla
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2019-05-02 21:28:06, Jacek Anaszewski wrote:
> On 5/2/19 9:13 PM, Pavel Machek wrote:
> >Hi!
> >
> >>>>>+++ b/drivers/leds/led-class.c
> >>>>>@@ -57,6 +57,7 @@ static ssize_t brightness_store(struct device *dev,
> >>>>>  	if (state =3D=3D LED_OFF)
> >>>>>  		led_trigger_remove(led_cdev);
> >>>>>  	led_set_brightness(led_cdev, state);
> >>>>>+	flush_work(&led_cdev->set_brightness_work);
> >>>>
> >>>>Is this really required here? It creates non-uniform brightness
> >>>>setting behavior depending on whether it is set from sysfs or
> >>>>by in-kernel call to led_set_brightness().
> >>>
> >>>This fixes the echo 0 > brightness; echo 1 > brightness. It has to be
> >>>at a place where we can sleep.
> >>>
> >>>If you have better idea, it is welcome, but it would be good to fix
> >>>the bug.
> >>
> >>Currently not, so I applied the patch in this shape.
> >
> >Thanks!
> >
> >This is actually something that makes sense for stable.. perhaps the
> >bots can pick it up.
>=20
> I was thinking of it, but finally decided to submit this patch
> to linux-stable when it will prove not having side effects.
>=20
> But if you think it is ready for stable then I can add
> relevant "Fixes" tag. Do you think that below will be an appropriate
> base to refer to?
>=20
> Fixes 1afcadfcd184 ("leds: core: Use set_brightness_work for the blocking
> op")

Yes, that looks right. If you can add fixes: and cc: stable tags, the
rest should happen automagically.

Thanks!
									Pavel



--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--bAmEntskrkuBymla
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzLTa4ACgkQMOfwapXb+vLwhQCgi3JeQuNX0skWytw+vdvS2HyA
mtwAnR4DCTMLMBJ+uEuZyH2iBTfLXTPJ
=3aC0
-----END PGP SIGNATURE-----

--bAmEntskrkuBymla--


--===============8040321903146779796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8040321903146779796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============8040321903146779796==--

