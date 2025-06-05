Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 833B0ACF37A
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  5 Jun 2025 17:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iAtqwtdJN97OkcjAnd3v9hUI0h3WwbJSta89I5/87EI=; b=G9U+X/Pi4ruM6GAR0DXDuCQpBJ
	W+VswQ4W4zh/LTt+nmij+8ERUlStbUvADWDyfwjTwa3UCXVc7g6RAvCmsh71t44iQeznnUWHT/jYF
	z1/xrU0KNB8VqPU08dBJMINrqSwr63KPJtPczv2H7OK8pYUwtKxK9ABWgZ6c4ldI0j/E=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNCv2-00088r-IE;
	Thu, 05 Jun 2025 15:54:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uNCv1-00088h-DI
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 15:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qn245qQSyJEYdSkDPOgQGR69RTFiYTcg/zViHoyBBD0=; b=QmWSqd+wk6osZURlC9jBxc/yYf
 5PLRd28O9PJOa4hM+yQIDKwssouAiTn1LpWOPIHo7zlkHxmXlvtBw5keOV6YK8c2hf0Q9pkaheBYt
 B9927bCk77Kd5lcEjHuz8AfDOLHrEUNR1Y7w6rA3G8nNfUNb/oXREJ+lvHgF7p7pS6VA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qn245qQSyJEYdSkDPOgQGR69RTFiYTcg/zViHoyBBD0=; b=XFxJtz4h2mVVh156T8YGe2b1af
 5YgyeS/ouCR6mfuPNQFn+2fmjoQm/69PfwBTsSXqUcUSpIh75UZv2nWRRB/bsorQcSDi1R+9DFEYP
 kXaJGnMUROS8H7yaiOw7N1a3Km/RhmIOzcYKEks8LIi6vRznVpKBjgdF0UFBvqkYLW0M=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNCv0-0002Ot-IP for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 15:54:15 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id DF84D114011C;
 Thu,  5 Jun 2025 11:54:08 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-04.internal (MEProxy); Thu, 05 Jun 2025 11:54:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749138848;
 x=1749225248; bh=Qn245qQSyJEYdSkDPOgQGR69RTFiYTcg/zViHoyBBD0=; b=
 CJN8AhF/P3whIfl3cMyusFbeq+OyGon/w+UuMXjXYLuqEntG2kSJKw+wI+h+Mw7u
 RGpFhyEGvhjOQZqM7eSmRjU63eBxFNAc2MZjmB4Uux3rgKETrdsp4vNBuHuUAdCd
 jN5jSqyPZ0OmPfq6BtIGMIvSYfQMBF4pj14SSxP9Zhrg/rnsfeVGbUNNNPbV0LIY
 EEy2RzoKUPFczRJUjwOGLg9FnuYkzua/gqyK9mW55ngEZgWIo+k07jW3FWcCCOX/
 sKJ+XcB3JagAiNaNsFr0O8k25rQYRtHECIJhKvV3YEKqZLG5F8HQf2BOXAiZgmOk
 8fan6C6YpQxTryE6SPmtpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749138848; x=
 1749225248; bh=Qn245qQSyJEYdSkDPOgQGR69RTFiYTcg/zViHoyBBD0=; b=Q
 4UPYCXiwOigcqrN1IPf0slad6+4inUQQ7hvSMvUvtvfmeK+Xz1zv8aX/6VEvucgY
 /nfphvyfeklslWllMNhy1nmHZ/LZKTi+hGZ2Oxhhbr7VE5Spz+bsYcm7qjU/C7IR
 /Q9ht/aql9AX2yEyZWzi0ZBkTKoz+UhWja+zyknVenmO7tTWgmQrkVKm2u6tYM0T
 BbB8fX56QqGVtTPjOHk11bnDpLDy4CcHgoqIbu1Dt9PlJFLgLS1P3vcrct2w+fgd
 1ZExkM4GFbchmcBhSZuCVf6iaoxjEmgtXNT02JzcBgcm8inIWwlg5nnhrE+XdSDK
 snIHOVyyGRoRXCDOOrOVA==
X-ME-Sender: <xms:n71BaNdKsqSkFYejiCh9O9VkXJHCclNIrkhmKoMMnLunqguDzhJ0fg>
 <xme:n71BaOcP2fNek97Kt4J29mon2CLdICSL2gV-gv1UCqg63oSF07501kjWvzoZClRYz
 Man1KChh1q_R3XxBCM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdefkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepihhkvghprghnhhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohep
 figprghrmhhinhesghhmgidruggvpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsg
 hrpdhrtghpthhtoheprghnughrihihrdhshhgvvhgthhgvnhhkoheslhhinhhugidrihhn
 thgvlhdrtghomhdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnsehlihhnuhigrd
 hinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheptghorhgsvghtsehlfi
 hnrdhnvghtpdhrtghpthhtohephhguvghgohgvuggvsehrvgguhhgrthdrtghomhdprhgt
 phhtthhopehlihhnuhigqdguohgtsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:n71BaP_Sc7vGI49Jm4mDEDgCgnKZfkVX3D3G8rZ5knqlhvj7F6lZ3w>
 <xmx:n71BaClsV-_9JTLYIQ3KPOZ8qbJx4Ae6Xp6tKkBdgkD2qzFyssjA1A>
 <xmx:n71BaJ9kw8Hpi5UKvkYuaeTz7-gapc4ZU1hs8FQbuehokZC_dB-2bA>
 <xmx:n71BaIm7_x46AORl57uWXZz_OxDgddbvqq4GZ542URutTcglQ9L-dA>
 <xmx:oL1BaDNAU7hCoNSMfXjxgqO-lI7ASvmY4lBaEIeuE2GKton50KTiwpsA>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 6D6222CE0061; Thu,  5 Jun 2025 11:54:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Thu, 05 Jun 2025 11:53:47 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <71f410f4-6ac6-41d2-8c99-2a02e0f05fed@app.fastmail.com>
In-Reply-To: <aEEyEfYgpPQm8Tlx@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <aEEyEfYgpPQm8Tlx@smile.fi.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andy On Thu, Jun 5, 2025, at 1:58 AM,
 Andy Shevchenko wrote:
 > On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote: >> Create
 lenovo subdirectory for holding Lenovo specific drivers. > > ... > >> [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uNCv0-0002Ot-IP
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

Hi Andy

On Thu, Jun 5, 2025, at 1:58 AM, Andy Shevchenko wrote:
> On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote:
>> Create lenovo subdirectory for holding Lenovo specific drivers.
>
> ...
>
>> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
>> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
>
> You may follow the trick in the Makefile (see intel folder) to avoid repetition
> of the folder name in the file names. Note, the modules will be called the
> same (assuming no ABI breakages due to renames).
>
Interesting - I'll have to look at that a bit more.
Any objections if I leave that for a future change?

> ...
>
>> -# IBM Thinkpad and Lenovo
>> +# IBM Thinkpad
>
> This is a bit ambiguous now. It's IBM and Lenove for ThinkPad... Perhaps you
> should put some kind of date or so? Like
>
> # IBM Thinkpad (before 2007)
>
> (note, I speculated on the year, you may know better what to put there).
>

Sure. Realistically the thinkpad_acpi driver still works for the (pretty old now!) IBM Thinkpads so it's a bit messy.

Main reason I did this is those two IBM specific drivers aren't, to my understanding, active for Lenovo devices now, and it seemed wrong to move them. Not sure if anybody really cares though :) I just didn't want to step on any toes.

IBM sold the PC business to Lenovo in 2005, so I can put that date there unless anybody else has concerns.

> ...
>
>> +++ b/drivers/platform/x86/lenovo/Makefile
>> @@ -0,0 +1,15 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +#
>> +# Makefile for linux/drivers/platform/x86/lenovo
>> +# Lenovo x86 Platform-Specific Drivers
>> +#
>> +obj-$(CONFIG_IDEAPAD_LAPTOP)	+= ideapad-laptop.o
>> +obj-$(CONFIG_LENOVO_WMI_HOTKEY_UTILITIES)	+= lenovo-wmi-hotkey-utilities.o
>> +obj-$(CONFIG_LENOVO_YMC)	+= lenovo-ymc.o
>> +obj-$(CONFIG_THINKPAD_ACPI)	+= thinkpad_acpi.o
>> +obj-$(CONFIG_THINKPAD_LMI)	+= think-lmi.o
>> +obj-$(CONFIG_YOGABOOK)		+= lenovo-yogabook.o
>> +obj-$(CONFIG_YT2_1380)		+= lenovo-yoga-tab2-pro-1380-fastcharger.o
>> +obj-$(CONFIG_LENOVO_WMI_CAMERA)	+= lenovo-wmi-camera.o
>
>> +
>> +
>
> No need to have even a single blank line at the end of file. Usually editors
> even complain about this.
>
My bad - I missed this one. Will fix in v2.

Thanks for the review
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
