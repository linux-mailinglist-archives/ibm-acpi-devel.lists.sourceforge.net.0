Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 801BEAD2B35
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 03:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aTpIdt+NC1Ik7o7Ic+OOP3pH2tr1JgErH0D5CkaHHos=; b=MzU53MqoNMHPVKWNlVSYeWLcQj
	zamzdpVYbxVMPdYS3bdiDiBBwwaaoWs/bRJaYyD3com9pwaSbMeuogbj8vh/G+GAlIzraa/EIfXV6
	Zl9poQKKx/UbFBpGWgyhKD0s1ymEibesWXljfqVc2tpK17Gqu6StXq5mm0rV83QzYYnk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uOnh2-0006Zd-K4;
	Tue, 10 Jun 2025 01:22:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uOnh0-0006ZU-9P
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 01:22:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5TQz7BXKwHR2EA9SqdvfYt7vFBlswGi7VoJzU49Pnrc=; b=fHhAXqR3lxiyK5LvajIt6eKiFu
 awQbMOHyCY1dT8CTkuPApdtlHgbQgyPi+TyT5GZF+PAfT13SisbM0rq3m5wO9B986TYo91la6c1U8
 3Cr9p7Hhf/LwbF0/W6Qix4KlFtwU2X1gNxsYz8EFQn+NnzmRltH3rrmjL1nPZlJRikFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5TQz7BXKwHR2EA9SqdvfYt7vFBlswGi7VoJzU49Pnrc=; b=Js+1WMp2XiAItZpArHCZ8kwTAY
 CNWgIJARToqfdnA7cCnAkNUmQd+GCzOcrwKFC41sGckBi151GeUot4TNG//Jz4xSt0+E5PC/rpI1F
 hrGG39Ji7/ylym6uUmDzIiQ4DmC7agvk8865WdpyH+mP3nPopT2g+CNdcPiX8mlh7JY0=;
Received: from fout-a5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOngz-0000Q1-Bk for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 01:22:22 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id AAD45138058C;
 Mon,  9 Jun 2025 21:22:15 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Mon, 09 Jun 2025 21:22:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749518535;
 x=1749604935; bh=5TQz7BXKwHR2EA9SqdvfYt7vFBlswGi7VoJzU49Pnrc=; b=
 M7mHrUI3tqnYrhis8pzK8AK50E02BulafbGaf4fRwXFPVVaTQr4qVTf8cXZH7BFy
 0HV5/8Se24DZwPUYODsdWM+Qliq3Vubr5fdos7/YZrUqw105N9oCJ4irPoYvKEvs
 4cV9rHzoEtozBpSo0mVrxDueoDS8yrV54dXYIi44abHQqEbJZl+fJQoKB2oxNEu7
 gULDleGTinW/nbWv+ax6/cqDDmP000EWQFivo6ch+vcoIzxv6ozvBqnkqZVB7Y1I
 LO9qRy/D+Dd0RsUdCaHHkI9bZXSf+l8A7Ylu4Rf8SdahXvQ0QDaWCB2oy62BFyGc
 piAb+/RLTKeaRX/niILUjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749518535; x=
 1749604935; bh=5TQz7BXKwHR2EA9SqdvfYt7vFBlswGi7VoJzU49Pnrc=; b=g
 p8yhwcbzC3KIiP9g+tHxr1HQQbC4mGrZJQbBS6j570g5ziDegiVBTu65Cddq4jCP
 iNpezMsgrcvYTG+50bIIfDDGdtKVc+LGsQ8OSqpErbSCHmZzpFcQA+xeMQV19KZB
 26icdFnaoXMi3MWrmgTP7xsCJTCmr+X9jYvR58cUjYFC3IgroGxvpMymCPCKTtps
 Zf8B0YgpP1dwDJeXM+Le0nRJ/zr0dv/FVN5/dm3uFOJwK53ZS31DEbvpgiHg9y/x
 akkizW90dpJCyupniodWPxbJNIA/qVeAbOgKnV8eJcxXhIsdNJeD8Nz7803WRJmq
 URkGiVaKEEFg9xEtB3jXQ==
X-ME-Sender: <xms:x4hHaE9lcji1E5WU5u8qP7jKJoYDC2o-3c3kolUtUu5fddJD536mBw>
 <xme:x4hHaMs4hP4_-byVH3pmJREu1e802N0R6MeJiaSvXFbRIbG2X02j-GBHdoHO4lP1s
 KFx-aVacQcr2wjEWOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddutddtiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfeuvdehteeghedt
 hedtveehuddvjeejgffgieejvdegkefhfeelheekhedvffehnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddupdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthho
 peifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrd
 gsrhdprhgtphhtthhopegrnhgurhhihidrshhhvghvtghhvghnkhhosehlihhnuhigrdhi
 nhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslhhinhhugi
 drihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlheslhhi
 shhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopegtohhrsggvtheslh
 ifnhdrnhgvthdprhgtphhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhmpdhr
 tghpthhtoheplhhinhhugidqughotgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:x4hHaKDo1oUpp8jONRUlaHNTUdRrl7ZyPakz5gvZpSMdKme7TM2ylA>
 <xmx:x4hHaEc45InDVGbgzYE465TbGmXKUcMJPmrmsNSotlwaV1YaJQzdJQ>
 <xmx:x4hHaJOEc3AkcmCgy2mNC7ScDXnhXLpJV7jXIBEuBYOMPypJeUuJzA>
 <xmx:x4hHaOkgtty53GS2flw2EN88fe83mSFdh26A-ID5DA3xz94ycdZBUA>
 <xmx:x4hHaG5TpP9tv0JCOM3rWbSrvYhImR4axVcRbglL56w8gpkVdk-Hx3Km>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 22A352CE0063; Mon,  9 Jun 2025 21:22:15 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Mon, 09 Jun 2025 21:21:45 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <33d3ea0d-161d-4297-9a99-9e7e129b31b1@app.fastmail.com>
In-Reply-To: <aEdBWymLN7aYqkeB@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
 <aEdBWymLN7aYqkeB@smile.fi.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Andy, On Mon, Jun 9, 2025, at 4:17 PM, Andy Shevchenko
 wrote: > On Mon, Jun 09, 2025 at 08:27:24AM -0400, Mark Pearson wrote: >>
 Create lenovo subdirectory for holding Lenovo specific drivers. > > ... >
 >> [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uOngz-0000Q1-Bk
Subject: Re: [ibm-acpi-devel] [PATCH v3 1/2] platform/x86: Move Lenovo files
 into lenovo subdir
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
Cc: Armin Wolf <W_Armin@gmx.de>, Jonathan Corbet <corbet@lwn.net>,
 ikepanhc@gmail.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Andy,

On Mon, Jun 9, 2025, at 4:17 PM, Andy Shevchenko wrote:
> On Mon, Jun 09, 2025 at 08:27:24AM -0400, Mark Pearson wrote:
>> Create lenovo subdirectory for holding Lenovo specific drivers.
>
> ...
>
>>  LENOVO WMI HOTKEY UTILITIES DRIVER
>>  M:	Jackie Dong <xy-jackie@139.com>
>>  L:	platform-driver-x86@vger.kernel.org
>>  S:	Maintained
>> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
>> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
>
> Is this correct?
>
Jackie is on my team, he wrote this driver originally (with some help) for one of the thinkbook platforms.
If there are any changes he should review them as he has access to the HW, but I'll be helping too.
I think it's fine - let me know if otherwise.

Just as background: We can't use our Lenovo email addresses for kernel contributions. They're based on an awful Outlook server that is incapable of handling text only emails, and also won't play nice with any other tooling (including git send-email). Not ideal but it is what it is, and I gave up fighting with IT about it (there are some workarounds, but they're arguably worse).

> Otherwise LGTM.
>
Thanks for the review
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
