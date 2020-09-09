Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EB0262EF8
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  9 Sep 2020 15:12:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kFztI-0006MI-SC; Wed, 09 Sep 2020 13:12:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <me@the-compiler.org>) id 1kFztC-0006M1-2N
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 09 Sep 2020 13:11:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fevectogxsh6G/fMvW6s7obXIznXoGp/gKz7r3gHg6g=; b=E0+5x4dol+dh5jgHiifi4+Xrbw
 DrQEbvuM7Pc9wvkiql8HjY59E+kyzVKqnXReYbO1M13d3usMIrtqnx4PHEerNlrSlDvXlCaK84u2m
 7W6uKyqzc6Sc/bgcV9F5sdgFY3rHsCPs4cQWH0qj5k13rVTcCSU2TvNetbOol2PdVQ2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fevectogxsh6G/fMvW6s7obXIznXoGp/gKz7r3gHg6g=; b=YO3AvGI5pS/4FnRsi1PR2bvuMd
 jxF8zXQx5suya4lB7DUi7Q2692+0TkZjdRn5SOJ6pzjS3O7M4CeSECw817n2gTtyR3JjaBFTfZ749
 hFLywk3uYU8A1sYR3hQmiD8x9fSwbDLu9ZcSTz/sNtT00Y5+ibFt1sMxZw3gZzDisf2k=;
Received: from devico.uberspace.de ([185.26.156.185])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFzt5-000aVE-6F
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 09 Sep 2020 13:11:53 +0000
Received: (qmail 3373 invoked from network); 9 Sep 2020 13:11:27 -0000
Received: from localhost (HELO localhost) (127.0.0.1)
 by devico.uberspace.de with SMTP; 9 Sep 2020 13:11:27 -0000
Date: Wed, 9 Sep 2020 15:11:21 +0200
From: Florian Bruhin <me@the-compiler.org>
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <20200909131121.w2pu6ibjjd6c7mbe@aragog.localdomain>
References: <20200903153640.4qcrdgtfas4rqedb@aragog.localdomain>
MIME-Version: 1.0
In-Reply-To: <20200903153640.4qcrdgtfas4rqedb@aragog.localdomain>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mail-archive.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kFzt5-000aVE-6F
Subject: Re: [ibm-acpi-devel] Thinkpad T14: unhandled HKEY event 0x1317,
 0x1318 and 0x1319
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
Content-Type: multipart/mixed; boundary="===============4565420965199474969=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============4565420965199474969==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ctlkkhrafcovdbxr"
Content-Disposition: inline


--ctlkkhrafcovdbxr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 03, 2020 at 05:36:44PM +0200, Florian Bruhin wrote:
> On my Thinkpad T14, I have three buttons which I think are new on that
> system: [...]

Ah, I see a patch has been posted yesterday for that:
https://www.mail-archive.com/ibm-acpi-devel@lists.sourceforge.net/msg04726.html

Sorry, I didn't notice the earlier version of the patch before posting
my message :)

Florian

--ctlkkhrafcovdbxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE4E5WAAJAG47w528KkW6wyP1VoHIFAl9Y1HYACgkQkW6wyP1V
oHIjFA/9ETe8rsw/WfL6luEgKnTKOYHRbsVcLX+L0UoXKuLn6oEFybMeGbSDruRK
0PtLRcIuVlyQ9o1oAc2XzzmSbTxLwgwPorJpou2Hy5Ex/OtpbJ+ohNtRlkYsYI0/
uJTIRq89XiiHWqZAoxZCzFHh05CaQlvUNDLQ44EjkboTa5dOARsAP1oHa4D628Sn
2VDoDR6E2zYqS4wltVSyCpuQzlnuCEaJEPrvCLmH5gyoiv4F43JpRpd0VbPZY3b2
0QxZ1i7DOP9scJvRqbRl3lhONd0ZtGbPOxd12LI/Op7U3u07FgqlMW2XYwt0hq0J
KMvCEHBgoon43jvXEEOgVBcPOH7IZsDVfxceWZ0NmH8OoqyHZJxR81A+BTW1u3oG
1VJHyDxRtIm73MP8qHw/Ues8Qtr8C1H5/NV5LCLHldLE1odx5XaZPYpWv1eSoY4m
GhhSA6BNu+7poRcVm1Tuao7SQINFQJXHi27evjyu6/5Ei6nuBdlPVr4DclxYv+H0
vgvbAkg5zkOtEKcAlAcMxJm2jTK5Xrp12cvrhKLBazQMmQjumXqfDnpPMVRSr24t
cCOB40DIfpAqh16wXCHJTPMRANC47tuXwm6EMcv6v4NUtU3dVzXLOdLAuSwTYxHu
TLu2Le0FBCUKwk7GPCcnmQxYmb9jZc/w6Q5Ho7drSBU4s5lW9Mo=
=bnJZ
-----END PGP SIGNATURE-----

--ctlkkhrafcovdbxr--


--===============4565420965199474969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4565420965199474969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============4565420965199474969==--

