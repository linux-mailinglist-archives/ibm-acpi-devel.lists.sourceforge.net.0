Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C38B15F21
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 30 Jul 2025 13:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3cq64F+ubBZIOVozwbWhLja9uot78tBuH7oDmSENASE=; b=gK2gxCQSJAIeOv7RQ+C/6bFjbB
	dwRug1Em+atDZT1uns094rKw21KvbWKHBu5r7HBoGC4IiwiA3uYpTrW8jK4BUuHk0xZReywj8RAmE
	HyuGqG0um6y8SPMf2086BgKlmkN775XAyHtbd6Kah4NFM8HVOY3D2lYRcF+EFp6CSutw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uh4if-0003oz-P6;
	Wed, 30 Jul 2025 11:11:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pavel@ucw.cz>) id 1uh4ic-0003oj-I2
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 30 Jul 2025 11:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IUvziGVwPj14oumL8T3Pp/fyePDtYX7fnby8+7xW4+E=; b=Fs5STTI0uBB4GfPd4St6FuOd5N
 RIeHQVLqr2D4a8jp54IyG4uq4XmxZI1DbyVtjvQvzUWLRWOA3jFqm/gwyTbK7RprrmwMCVe//1L+C
 c/Y4FKV1t92dAj/tyxQHVb3by67STT8hkUnEBcaNg+kz8p/FsCz6xk/aTTv7v6cpziZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IUvziGVwPj14oumL8T3Pp/fyePDtYX7fnby8+7xW4+E=; b=fj8SwbdjJZxpTQf/0ZyBMbjXAR
 LzQATXtc3aRsGPa+5+4Pw2PuFBH3PFih3sAdjldFCfk4TfBp15cx7mmRNKmjRNakBA7otxBT2rzfB
 rqPHDtEFXj+spnnLzdEl0OUKmYWoVYRPxoqH+BNX9xCc2cRk2T1bLdf7QEE8rcMj4TEs=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uh4ic-0001Mh-FC for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 30 Jul 2025 11:11:35 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 364E81C008E; Wed, 30 Jul 2025 12:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
 t=1753872958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IUvziGVwPj14oumL8T3Pp/fyePDtYX7fnby8+7xW4+E=;
 b=nga9U8PTDAG/6BnC8pbaiLzmd+rkzLie3LnDO/2YvL2bB/s6KdCUyd9rWradFH3fnZK8FT
 Tqy9uBFaE5pvxekhb0PL7F7cK+s2ebtImnGm3T8Qr+qyvjODM/vsNGhxP2lgakG9N+P59E
 yJ019R7gtYK+uHI8fXbbs6eXn5qCNW0=
Date: Wed, 30 Jul 2025 12:55:57 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Vishnu Sankar <vishnuocv@gmail.com>
Message-ID: <aIn6PdZREQzNVR74@duo.ucw.cz>
References: <20250620004209.28250-1-vishnuocv@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250620004209.28250-1-vishnuocv@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri 2025-06-20 09:42:08,
 Vishnu Sankar wrote: > Newer ThinkPads
 have a doubletap feature that needs to be turned > ON/OFF via the trackpoint
 registers. > Systems released from 2023 have doubletap d [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uh4ic-0001Mh-FC
Subject: Re: [ibm-acpi-devel] [PATCH] x86/Mouse: thinkpad_acpi/Trackpoint:
 Trackpoint Doubletap handling
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
Cc: zhoubinbin@loongson.cn, jay_lee@pixart.com, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 vsankar@lenovo.com, ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, Mark Pearson <mpearson-lenovo@squebb.ca>,
 ilpo.jarvinen@linux.intel.com, tglx@linutronix.de, jon_xie@pixart.com,
 pali@kernel.org, mingo@kernel.org, hansg@kernel.org
Content-Type: multipart/mixed; boundary="===============0890448307924168597=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============0890448307924168597==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vN9KMWUX9mIMbmXC"
Content-Disposition: inline


--vN9KMWUX9mIMbmXC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2025-06-20 09:42:08, Vishnu Sankar wrote:
> Newer ThinkPads have a doubletap feature that needs to be turned
> ON/OFF via the trackpoint registers.
> Systems released from 2023 have doubletap disabled by default and
> need the feature enabling to be useful.
>=20
> This patch introduces support for exposing and controlling the
> trackpoint doubletap feature via a sysfs attribute.
> /sys/devices/platform/thinkpad_acpi/tp_doubletap
> This can be toggled by an "enable" or a "disable".

sysfs attributes need documentation.
							Pavel
						=09
--=20
I don't work for Nazis and criminals, and neither should you.
Boycott Putin, Trump, and Musk!

--vN9KMWUX9mIMbmXC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCaIn6PQAKCRAw5/Bqldv6
8phYAKCBVMI8dDqskaiFv96hJ2CjEFqcJACgsHeaCzYOHLDeqLpyta7Y01fR+v8=
=da38
-----END PGP SIGNATURE-----

--vN9KMWUX9mIMbmXC--


--===============0890448307924168597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0890448307924168597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============0890448307924168597==--

