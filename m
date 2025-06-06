Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FCFAD08B3
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 Jun 2025 21:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ADVaS+qNkBmPXl7/FLQ1Uhkxh8w+68dunFUT7ASh234=; b=miq7tpTZbgUQ2L4YpOT8kzOGrH
	YOJ01wIhP2Sp78l2c21RWzssc+++F1g9b7+hWH7M1wt46e76c8O/wsR/pqIktohXJKlRdAONH/rMY
	uxuCAKGQBU+GAhSo2t7Kz/MQ6IgmmMsG40K7qQjtRyIIwlRAQ/WBua3KbZpObb/cTros=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNcmG-0007ok-9r;
	Fri, 06 Jun 2025 19:30:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uNcmE-0007oc-QZ
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 19:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lEYf3neoow/7vEvxjuEgRsFKRcKeW6cqpzgTmhNHb2g=; b=WiMsq9bmtsLR3DQ66hHlZto9i0
 M9/7uGoH0oZ6HXgnr7GIpoMw9VgWH3PTtNVBvkg2ZHdT+uMyqE87I5DIf4mJawGdkp5/b6cYEIB/J
 BSBAHef8DkDW8LHYHTkGPx5stI4nQnAqYPuqgco5pWyKkJnZYYkoktqv6cQY27fivjgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lEYf3neoow/7vEvxjuEgRsFKRcKeW6cqpzgTmhNHb2g=; b=iMZ+l/80W92cRzH8YGPnQgyTmF
 reyyWimbNSs/oiT2CjbVe4B+wotsyLTzVDXoxu1kUC3sVaFwWKYVRxiE1/i4ts+cgAWzUmK3c/Xco
 DUjxECq6tEbXU9qW+PpF6DtlqEff5/8rU4irVVsygw6qNc7wm6p2Hk40WvTUntAD4WIE=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNcmE-0004W4-6s for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 19:30:54 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 8D1301140193;
 Fri,  6 Jun 2025 15:30:43 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Fri, 06 Jun 2025 15:30:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749238243;
 x=1749324643; bh=lEYf3neoow/7vEvxjuEgRsFKRcKeW6cqpzgTmhNHb2g=; b=
 R/CZGEpf2uJtX9c5zhVO/wgEY531AM5LvDJrSmDrK3jEQzjTkTMzcjRX187dWR84
 oIbQD8KXGP6YFK9fYC23LRe49M5teDXkK0Kz7d1KVsrLoPZaXXSuRO5by7URUhJN
 lDmsEUOkOigp1YI6oTnhyIiVzJO7mPl/eULFOqIHC8v85yCxpCbrOhurSUqR+DaQ
 jxtJ504ytF76XFsmpCienWJKMYFCl3B3Gy8iBKA6zE9AdW+D1ZxDzxrPKqx5eNWv
 XMeezlkno9ykDQXuhvmLat4lxi6u0mObQxYc4iVVrgInmEeM2NYXWruCDmoW0umO
 pP2u54ml6Z1U53fqM8UCzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749238243; x=
 1749324643; bh=lEYf3neoow/7vEvxjuEgRsFKRcKeW6cqpzgTmhNHb2g=; b=l
 s3Sm07C1nnR2e9ZaUstuOe39LaA4ILuj5i6IH3wzVdHTi2IaLfZElQ5ssZ8WfQqZ
 KWosRgmzq2hWEZEj/wjD8GGoMZC/LFUF10n+yLMrRoT7YU5SPNlPDei4/GOYszWL
 5ex4LXel+75mZdZSLX/L2VdWwvZprLGAWd4y0wNBOKXsho5qSDQVbqMvjf0rbjMt
 4G1QNaZrTS/8hWtQGnRbOv8xbxVeNndzyU43UN1FphT9p9HhnPoHc3A5tGqEnltC
 3DffjneC9Mql+t6N0uXSou61iqT2fo8S9fDRn1ABSiAVQB5Bd3a+9nxr64it5oJE
 vNYJmwuMNFA5c6V43yVYg==
X-ME-Sender: <xms:4kFDaIxR-T4VMUeCvpyO6b0aNY6mc-cKHTNvPCsAcnYXO97MTjv0tQ>
 <xme:4kFDaMSccayqbSsT7xH9tiE_xNR1r_maZ-9AHpaTrTTfmElVg5ZrkUQtuS-UPF_pO
 kMZkGg2lr7GnKFSHXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdehheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedufedpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepihhkvghprghnhhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohep
 figprghrmhhinhesghhmgidruggvpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsg
 hrpdhrtghpthhtoheplhhkphesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhgurhhi
 hidrshhhvghvtghhvghnkhhosehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtoh
 epihhlphhordhjrghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphht
 thhopehovgdqkhgsuhhilhguqdgrlhhlsehlihhsthhsrdhlihhnuhigrdguvghvpdhrtg
 hpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhr
 ghgvrdhnvghtpdhrtghpthhtoheptghorhgsvghtsehlfihnrdhnvght
X-ME-Proxy: <xmx:4kFDaKUvSPNU1VHVDoLtZsVeoDlZrIuwcqaUW64hDiY5ihLIY22pxw>
 <xmx:4kFDaGjzibfTxl3_FCUnSXmYzJKrgoIEJNYTi1bBxdOQkl1z75bDjA>
 <xmx:4kFDaKDXj-b13AJ8C7SQoQBZPyRQEg6wgtjZydwznk16NGjYmI29ug>
 <xmx:4kFDaHIrX28gXw3p76CQa6l6t2qX-poMA5iFKfHiiFVqfd7undZuOw>
 <xmx:40FDaAILvoi3Ti-qur14dEFImeIPFodxm3Q5F2ESeqfvgtfgCTm4u-vx>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 2ADB22CE0063; Fri,  6 Jun 2025 15:30:42 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Fri, 06 Jun 2025 15:30:21 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <68f7cbc2-f81b-47ff-9dfb-093c54bec760@app.fastmail.com>
In-Reply-To: <aEM6PTCql7l1n6e0@smile.fi.intel.com>
References: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <202506062319.F0IpDxF6-lkp@intel.com>
 <6d17454f-faac-4616-ac2e-7da80feedf2c@app.fastmail.com>
 <aEM6Da6CZ0DI3x8w@smile.fi.intel.com> <aEM6PTCql7l1n6e0@smile.fi.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Andy On Fri, Jun 6, 2025, at 2:58 PM, Andy Shevchenko
 wrote: > On Fri, Jun 06, 2025 at 09:57:17PM +0300, Andy Shevchenko wrote:
 >> On Fri, Jun 06, 2025 at 01:30:25PM -0400, Mark Pearson wrote: >> > On
 Fri, [...] 
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
X-Headers-End: 1uNcmE-0004W4-6s
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: Move Lenovo files
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
Cc: Armin Wolf <W_Armin@gmx.de>, kernel test robot <lkp@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, oe-kbuild-all@lists.linux.dev,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Andy

On Fri, Jun 6, 2025, at 2:58 PM, Andy Shevchenko wrote:
> On Fri, Jun 06, 2025 at 09:57:17PM +0300, Andy Shevchenko wrote:
>> On Fri, Jun 06, 2025 at 01:30:25PM -0400, Mark Pearson wrote:
>> > On Fri, Jun 6, 2025, at 11:58 AM, kernel test robot wrote:
>
> ...
>
>> > I'm unable to reproduce this issue with a W=1 build
>> 
>> Do you have GCC-12?
>
> To be more precise you need to have a CONFIG_DMI=n.
>
>> > and I think it's a false positive.
>> 
>> I think the problematic line is in certificate_store().
>> You need to check the value of dmi_get_system_info().
>> Or make sure the DMI is always selected (depend on DMI
>> in Kconfig, perhaps).
>> 

I think this is already in place, but it's a bit of a tangled nest of Kconfig options and could depend on the architecture. I can't disable it in my current build anyway.

>> > Am I safe to ignore this report?
>> 
>> Please, try to fix it.

Ack. 
I'll add in a check for the dmi_get_system_info returning NULL, and add a depends on DMI.

Thanks for the pointers.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
