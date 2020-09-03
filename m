Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9D825C617
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Sep 2020 18:05:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kDrjY-000338-4u; Thu, 03 Sep 2020 16:05:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <me@the-compiler.org>) id 1kDrjV-00032y-O0
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Sep 2020 16:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g5G1oBIgJwM2uaLPiowZygiQwkG235CZlBk+nAL6zoE=; b=cqiRLvkcJXuBh49Fo2l1lK3VeF
 FlwErcbZV7jBLTQQ+PfFuwDLgZZe2wHzLDbPnVbfCRX506odui0BDPG8hAAVDmDd9CLB63ezq+Xrd
 LiXzjeh6aruvHavgc2j4+qyMaES/UXvNNzsxk5MdEFalXaLdzjUgk0eezZzEy1mubYio=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g5G1oBIgJwM2uaLPiowZygiQwkG235CZlBk+nAL6zoE=; b=H
 ERSRh9eJb06b6it32mkKQBdWwMAMpjHSW132gW8oQYSUi1poBQE+LGU5pBicUeMGyB3IR8SQiU2CF
 8NzrCK6TIZL7pJ53Dmtra/l21JtJw5J5sSeM1wHscOHNAqf0GIyl/ztJ4qWrO1XIt4jGi7eN4HGj5
 BcH3oFjctzwA3gzU=;
Received: from devico.uberspace.de ([185.26.156.185])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDrjQ-00AihW-9N
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 03 Sep 2020 16:05:05 +0000
Received: (qmail 16504 invoked from network); 3 Sep 2020 15:36:44 -0000
Received: from localhost (HELO localhost) (127.0.0.1)
 by devico.uberspace.de with SMTP; 3 Sep 2020 15:36:44 -0000
Date: Thu, 3 Sep 2020 17:36:40 +0200
From: Florian Bruhin <me@the-compiler.org>
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <20200903153640.4qcrdgtfas4rqedb@aragog.localdomain>
MIME-Version: 1.0
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: notebookcheck.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [185.26.156.185 listed in bl.score.senderscore.com]
X-Headers-End: 1kDrjQ-00AihW-9N
Subject: [ibm-acpi-devel] Thinkpad T14: unhandled HKEY event 0x1317,
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
Content-Type: multipart/mixed; boundary="===============1001669273763199000=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============1001669273763199000==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7j3bfy6h4snbktdw"
Content-Disposition: inline


--7j3bfy6h4snbktdw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey,

On my Thinkpad T14, I have three buttons which I think are new on that
system:

Fn + F9:  A "message" / chat symbol
Fn + F10: An "accept call" symbol
Fn + F11: A "hang up" symbol

You can see them here:
https://www.notebookcheck.net/fileadmin/_processed_/9/e/csm_IMG_20200629_014519_369088cd34.jpg
(Note that the picture is from the Intel variant - I own the AMD
variant, but it has the same keyboard)

When I press them, no X keypress event is generated, instead I get:

    thinkpad_acpi: unhandled HKEY event 0x1317
    thinkpad_acpi: please report the conditions when this event happened to ibm-acpi-devel@lists.sourceforge.net

The IDs I see are:

0x1317: message
0x1318: accept call
0x1319: hang up

I guess the first two would correspond to XF86Messenger and XF86Phone.
No clue about the third one.

I took a quick look at the source[1] and I'm guessing they'd need to be
added after TP_ACPI_HOTKEYSCAN_EXTENDED_START somehow, but I don't
really understand how those values are used exactly, or how (and by
what) they're mapped to X key events. I might be able to contribute a
fix (or at least test one) if someone can help me get started, though
it'll likely take me a bit of time.

[1] linux-5.9-rc3/drivers/platform/x86/thinkpad_acpi.c that is

Florian

--7j3bfy6h4snbktdw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE4E5WAAJAG47w528KkW6wyP1VoHIFAl9RDYUACgkQkW6wyP1V
oHIjURAApid+9Oerw0/moYAcQbzUg/PglFPLjMlIQ4M76OJU9Cys9Cu7srEgK0Tw
7jPFYUvV9O0YkTyGraLHvKq3Rm+bKj9nN0O9nwRdfPs+rJjb1+tHz2B9/1oYHzoU
dN20v6Iwub7+9JHDMun032p1VdL8p4XVrO+XRp/X0rYjVWFsIuiD0KgNb17wk3kC
g+QwQQ1iDEH9A4ZGmbKEp9NbTjiy+FFpIoa4zlc+T6WVLHTfiLluQ+dE8ZA344Gw
ClkY6Pzvie7FYP0VyktkoKz7A3T/p+Pr/L2tYsum8RuFRzMktZoMXsFN/KRRIzrq
sz0+kdL6vJvW1EuVrspzNYD3m0zmA/N2FA5L/gS/8zCOj9Nl3eLvbeKtMlqH0oZv
YV5V81nNitaiMt0Uf60jwWQOI5wcweE+rnt4YWoA1lJMUgLLokPe1DxZp5892xcz
dmw6FNq2Ss9gwnji54KG+plRIEZ5Lij7b3lsRFnWfI1cpT7uIcnGsLb3Ez6j6GhU
gODRzhVPZVIYzOzbRA1pFybAJz2EwQwYssdZSD3W0CtFdP3VlOFzUy3kKFQtGjZ6
VBf+lywfwsUEZMWR04Fi5zs8LEAX2E1E4VHZFeRm3ywZJux5kkHi3hS+YU03fnff
yHqvqr0G5vygVWkb5iAA3mhltZwlsefKUXXe5LY5ALbBS4Nqtfk=
=eIrH
-----END PGP SIGNATURE-----

--7j3bfy6h4snbktdw--


--===============1001669273763199000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1001669273763199000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============1001669273763199000==--

