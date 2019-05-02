Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A9D12481
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  3 May 2019 00:16:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hMJzx-0005G9-2n; Thu, 02 May 2019 22:16:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1hMJzv-0005Fw-Pp
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 22:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i3lN1AbTnL6qGnRyQU9P8PthglDbIO6MDsht8cnKVGQ=; b=H9WfYp4nyC6e0Ec5vvBSQFEi+/
 jL+0aVSauwTBHU2wN9WbkMnE25tdIiQIVEXNNStCCDIerJ8teh/t1bjvHlMQcjvr1Moh8eTkyYH2d
 T7U9BnjFmatA7PyjArDDtK7pbejvicUHJvplxrjJLyYtqEcdd6j6EZUm7yXh6KbXy8VI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i3lN1AbTnL6qGnRyQU9P8PthglDbIO6MDsht8cnKVGQ=; b=hOIzKWx3fniy+9ZN02PYqh99zB
 ow2Vgj0yQ9cYWoO7l2JaESPmZG9QnMiXoE9jPrxXIx7TDnUzOqwkSkBvoPcUDEIhsJyxnNWm2pNDL
 /SRfL4vADSs1b2U8b3fBtXAZbfoNlX8/rL8kJ0udlR56ZZ1+fYyP6dXahNFEvWE3KuOw=;
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hMJzs-003clI-Qf
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 May 2019 22:16:11 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id CCDC28030B; Fri,  3 May 2019 00:15:52 +0200 (CEST)
Date: Fri, 3 May 2019 00:16:02 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <20190502221602.GA23225@amd>
References: <20190427223207.GA3585@amd>
 <d2373c8b-5c66-c875-16c7-0c5a93470793@gmail.com>
 <20190429152259.GB10501@amd>
 <36e1fdd7-a220-4b0d-d558-829f522b0841@gmail.com>
 <20190501183600.GA20452@amd>
 <9337b5fb-0ff8-9925-29e6-a781884af861@gmail.com>
 <20190502191321.GB4845@amd>
 <62a99fe8-5c61-c681-3f9d-54e0a27a63d2@gmail.com>
 <20190502200606.GC4845@amd>
 <564697f8-ad02-6933-56e8-b3b19053d63d@gmail.com>
MIME-Version: 1.0
In-Reply-To: <564697f8-ad02-6933-56e8-b3b19053d63d@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMJzs-003clI-Qf
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
Content-Type: multipart/mixed; boundary="===============1293590938031347771=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============1293590938031347771==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >Yes, that looks right. If you can add fixes: and cc: stable tags, the
> >rest should happen automagically.
>=20
> Cc: stable@kernel.org is exactly for what it claims - sending a copy
> to that list.
>=20
> "Fixes:" seems to be always enough for the bots to pick a patch.
>=20
> Tag added.

Well, docs says Cc: stable is right way to request inclusion, and it
does not talk about Fixes:... but I guess that will work too.

Thanks,
									Pavel

(
To have the patch automatically included in the stable tree, add the
tag

=2E. code-block:: none

     Cc: stable@vger.kernel.org

in the sign-off area. Once the patch is merged it will be applied to
the stable tree without anything else needing to be done by the author
or subsystem maintainer.
)

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzLbCIACgkQMOfwapXb+vLTRACgppf8XsAxNK6Gl2ZurjE45GG8
ncAAn0czatd0YesNkjk7bw3k7Tix2j6x
=nKoc
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--


--===============1293590938031347771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1293590938031347771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============1293590938031347771==--

