Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0F11D8ACB
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 19 May 2020 00:28:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jaoF5-0007dD-4Z; Mon, 18 May 2020 22:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1jaoF3-0007d4-Ek
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 22:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MlwEYbuEtazsHGU4pMHiZdyW2P56ZeED2ETF+2zXhTg=; b=jtSltAr6x3Jx2cE/PTWpSEtj/a
 OtgUVj5dl72M/9TS3YbIJ93Ws5oQTNKZKKtVPdkTx4XveN3txuGM5znlnGe1XFEeUUf9bA5cTmcrK
 bP2qS3AkL/NzW9WXXs6iH0Xji/7OY+NyXeO8/s0/oQ0W5+qGZgBUnrQI3wCf0t3bR9GA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MlwEYbuEtazsHGU4pMHiZdyW2P56ZeED2ETF+2zXhTg=; b=MOCE5I72bII0eqVKYNiPOLd5WR
 2YZLcciPq0rN2zzpPPFJ8D+VN2Rn5VFOWz+uzuYFblbM9f4Q1CSWOLOxne3/SUK+FR/fHvmffGr2I
 vybHqWtyyV4iQ/oZbdklF6AQtwaKOg9m4sS6LzSjzu1F/gGS7f6eGJ1XVe68mh60mUto=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jaoF1-006Pez-Dv
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 22:28:13 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id AC42461D;
 Mon, 18 May 2020 18:28:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Mon, 18 May 2020 18:28:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=MlwEYbuEtazsHGU4pMHiZdyW2P5
 6ZeED2ETF+2zXhTg=; b=wgOOdTaxuCyxEypr3WOw+uB3EeWi8LD6DrTv+yqDXNc
 hITjlC7PES4TQuB1KnJADfAE/TIjca/QoBKHkNnosQoueUCgZ5PP9dHi74SCU9Om
 v8FC1gwu+AkkRijZ4L4h3bDI0LE4bZbQorU7pv46/WCuTLF+DCWbSPbTnQDzFh3j
 A5wVl8a5Do8jhe7u7ZgAOEmavUVmUpw/BYcYIBKsJ7pBkD1uOHPwplMsQNWJpYxP
 hj9FVKQGMuz/pn1DhO/HnGae34Td7+75BfJuBE+Vgsl4WaDqtiT2YQJgh1QvnuTN
 uAcnvsAXApzFTgNTLyUQ6g11Clz+ETkNwLg0//gDSTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MlwEYb
 uEtazsHGU4pMHiZdyW2P56ZeED2ETF+2zXhTg=; b=K1bUMtPl4rRWQfhxGD0Hp7
 omyd7Yaxdv+7xGiaE2UKshmM4CEiaqm+1bBpATRVWVDu2gWt+njNaMewk0wCYyXi
 5uzXnyydg+ZXtzZ9AFEUDiL04QQ4wIRFwlmeyn8nfaAprSnJ7auqlqXVxvgCBNOV
 i2l3pIebZX417AGSIDwVpjlpTHyZUhbhHZl0I8NbzLm6mvlKzFKgmtT79TIQ6nYC
 ULu65pSrwfnGqrudAFvAgPNBaRJfoJqgPvmcNXWGx83dckrp+rRMq00TuE7aZHB2
 l0Uc4+3L5Yp7Gh0b4aqytHxcBewSVzfwULmRRFr6Dd2Bs3wFS466vFXgyvkcb2Ng
 ==
X-ME-Sender: <xms:9AvDXhFDx1nj2W9fbTXPUby0l_Fk5QVSNdNlCSO-3KD0JPy4bAHA6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtiedguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdttddttdervdenucfhrhhomhepjfgvnhhr
 ihhquhgvucguvgcuofhorhgrvghsucfjohhlshgthhhuhhcuoehhmhhhsehhmhhhrdgvnh
 hgrdgsrheqnecuggftrfgrthhtvghrnhepveduteejgeeiudefuefgieehleejkeefudfh
 jeefgeekheekvddvheehleegveeinecukfhppedujeejrdduleegrdejrdefvdenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhmhhhsehhmhhh
 rdgvnhhgrdgsrh
X-ME-Proxy: <xmx:9AvDXmXwuhmjK0l8BVVCKDXAslK1OgT7xnsskv1goV91PEuCMimonA>
 <xmx:9AvDXjJxDxPCD87U3ZmU7eaqW1M_a4NvHE_dLx2dhMLuGp0a2LTPXQ>
 <xmx:9AvDXnGKQfh6nMFpGVg4ycx9BXDba4oNFCk5OHXOmIairhi0gziTsQ>
 <xmx:9QvDXkXLUiwhaMbehd-ktmbNESP7WaB8ll4CNBXx8QuKtiklV9U2bA>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3B7323066415;
 Mon, 18 May 2020 18:28:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 98D553403982;
 Mon, 18 May 2020 19:28:00 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id CGVWkGEWL1rW; Mon, 18 May 2020 19:27:59 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id 5E7573403335; Mon, 18 May 2020 19:27:59 -0300 (-03)
Date: Mon, 18 May 2020 19:27:59 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Leonhard Klein <leoklein@gmx.net>
Message-ID: <20200518222759.GB10281@khazad-dum.debian.net>
References: <3316ca8d-2b49-4b79-aa76-e25041235cb9@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3316ca8d-2b49-4b79-aa76-e25041235cb9@gmx.net>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jaoF1-006Pez-Dv
Subject: Re: [ibm-acpi-devel] T60: Xubuntu 20.04 LTS reduces maximum fan
 speed
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
Cc: ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, 06 May 2020, Leonhard Klein wrote:
> I just upgraded my T60 from some old Ubuntu from ~2016 to the newest
> release and found out that the fan is really quiet --- and the thing is
> overheating under load (crashing).

Try to remove anything you had installed to "control fan speed", nothing
on Ubuntu should be touching the fans by itself.

But if it *is* doing that, check thermald and friends.  That might be
it.

And you can always use the driver's default of 'fan control disabled' to
ensure nothing can mess with the fan (it will remain in auto mode).

> When I control it manually to 7 it hardly reaches 4000rpm.
> In disengaged it slowly increases until the watchdog restores the value.

Hmm, the EC is likely taking too long to restart the tachometer in
disengaged mode, but still it should not trigger a watchdog restore.

> Is this a bug in this kernel module, or do I need to search somewhere else?

Somewhere else, unfortunately.  The thinkpad-acpi kernel module just
obeys, it won't try to change fan speed by itself, ever.

But something else might be trying to control the fan through
thinkpad-acpi, yes.  Or not applying some thermal control policy that
used to work, and thus your system overheats more easily.

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
