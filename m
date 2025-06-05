Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 642A6ACF91C
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  5 Jun 2025 23:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/k1uQ2J3278rhM6vVvlDMSNe7wCnSE7cKpxluaLTilU=; b=e0gIoAKFN56TT6dV5BptlLazsO
	WepjF6WNAA3Z61vQUkbbb5E2dq6Y8+SzdaTW5ykHQ+1PICwdWCNUo4oLCWEEXUC7FaWtEmITVoQJQ
	nuWHrk5ZuhLZ0Nr6ve4Ea3JMS6CCH6TaFnNthb5OLMESiW2sAG2FmK6XawIwKH2qUyP4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNHkf-0001wy-Cw;
	Thu, 05 Jun 2025 21:03:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uNHkd-0001wp-Qz
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 21:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zVXTQZbdvC/TAzsb8x4vqo9EMW+NlidVTsUt3AlM1ic=; b=ZDgjSKOH/DNNrAXLaTEjPSKK0g
 izwQhCX+MO9R28jf9AFz9TuExTVH7mqfrEBK0qYgP96SBQEnntJC1DuTZZVGNoXwMK1AlZV6UzoQo
 vQXMAEWRA2MYaDk4mTwKDbCvp0xVT4KYCcxV9DTI2impxr/Su3LPS3LdibHBVjJyvzWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zVXTQZbdvC/TAzsb8x4vqo9EMW+NlidVTsUt3AlM1ic=; b=SclS7lAcr9tnKaCvAF3yfg/Br4
 hbaZy3VpCeYAsFoZaClLaaa+UAmZOQp6ZXYcM8nGUQ9C/904cy0rhVsgC6ibtbxQk4tsIr6DuS5QU
 azle1+8wCJwdj1SdJph+1q/5wBEougVDtn5qo9GyqqTB1u37se9HNIMDHxJmqtxe5Sm0=;
Received: from fhigh-b3-smtp.messagingengine.com ([202.12.124.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNHkZ-0003pR-JQ for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 21:03:51 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 934E825400A6;
 Thu,  5 Jun 2025 17:03:36 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Thu, 05 Jun 2025 17:03:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749157416;
 x=1749243816; bh=zVXTQZbdvC/TAzsb8x4vqo9EMW+NlidVTsUt3AlM1ic=; b=
 lXP4G1Xq5ZjVlFKq7Gix18VYqGVRI/WRB0nc7KXjXTNDuuRMIHdVUkJd5GDrEqbn
 F0fBSSDKhriKiwnMEKUEKPSZwyHliTMH38NCC2h4d1UPa9P8Q0Jh5eEZXo1sRyXJ
 R1k7Y6xy0TIC3edWP5R2/Jz/IxHIFArRH9F6jB8rpgj3rmFk51OW0/RNAv24mVzW
 Tx4hNjMkzSGZRVPDZ5M4CddPVoG7OF//c1EDNtFfWif/UglsuUfsG6mUA5dVtORf
 vOKyBhq10IhVRJvBTcZpOq89utXSmCajHfH1d+F61dSeroEHmBMtsr3SqLsWTY+R
 nQasJAaVFhP9l0DurRyrUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749157416; x=
 1749243816; bh=zVXTQZbdvC/TAzsb8x4vqo9EMW+NlidVTsUt3AlM1ic=; b=e
 eiE05iwGYDaO3E/O8JDndkKK0VxO6F1x6Hm+rFuL2llSHoH1UAXlJuLOflOElRMD
 9v1rv9b6bzgasRmeA7aJcU4Zs4VT0vvmr+BFoSt72hzIn1uKN/Ndex6j3ViGtWoo
 8LHA0abS9VAUTl6Z1bZ9hLdClhmLfyZfFm/6ZdIThtPeiIHVlp7ja5A+RCaB6zU9
 Uf6JQHymBioylFyLYZt+gaZnBAC0jEG+/hWGDmwmE8avbY7hJwwGeG6pqZOmIvac
 IUZ29rY7b6Fs2cSdiR6WRg0LH+3jqwBeJTzHHdpDBd55rTY1gyeAHZ/l9Yyl4yw8
 KDt0c+rhum9FGvMTmGmxA==
X-ME-Sender: <xms:JwZCaNOYXk3GU1KfdHQwcm5gjtm0nFK96JEChOWimEFb3Xsf0z7tDw>
 <xme:JwZCaP-_DhP4kX2MeE_ciRlbqT7TmRQtQ8NoFCUmBoRJ5UsTBbFMUu9073LjeT52O
 ktUjF2kVaSwlzXyEuY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdegudegucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:JwZCaMQxO3al6dnB9sAdgd8ehpyzlkre8wKXr_4f6tlTNw8GmhNm2Q>
 <xmx:JwZCaJu0faNmirli2wnJb6Qgxyczz_r6eaqfNJ85KVD4rGjFJ2wxTA>
 <xmx:JwZCaFfs8LEfV22mhfqxO6oZU_Bd1x-r8bDhi14rhokQhsQUNLo5yw>
 <xmx:JwZCaF1nBQuTKr9assGbqRn69EmcugK5WfAevgrNEySn17TCeyC7tw>
 <xmx:KAZCaB89Oo0mEfqAobynotnzf2EN0r0SWxl4WmYtyFEH5vw3KrU3ka-W>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id BFFF82CE0060; Thu,  5 Jun 2025 17:03:35 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Thu, 05 Jun 2025 17:03:15 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <dd3b79e3-a0d1-4413-8c69-58ca6b4fb8c9@app.fastmail.com>
In-Reply-To: <aEHzYT4XqhzIpO5k@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <aEEyEfYgpPQm8Tlx@smile.fi.intel.com>
 <71f410f4-6ac6-41d2-8c99-2a02e0f05fed@app.fastmail.com>
 <aEHzYT4XqhzIpO5k@smile.fi.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andy On Thu, Jun 5, 2025, at 3:43 PM,
 Andy Shevchenko wrote:
 > On Thu, Jun 05, 2025 at 11:53:47AM -0400, Mark Pearson wrote: >> On Thu,
 Jun 5, 2025, at 1:58 AM, Andy Shevchenko wrote: >> > On Wed, Jun 04, [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.154 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.154 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.154 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uNHkZ-0003pR-JQ
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

On Thu, Jun 5, 2025, at 3:43 PM, Andy Shevchenko wrote:
> On Thu, Jun 05, 2025 at 11:53:47AM -0400, Mark Pearson wrote:
>> On Thu, Jun 5, 2025, at 1:58 AM, Andy Shevchenko wrote:
>> > On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote:
>> >> Create lenovo subdirectory for holding Lenovo specific drivers.
>
> ...
>
>> >> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
>> >> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
>> >
>> > You may follow the trick in the Makefile (see intel folder) to avoid repetition
>> > of the folder name in the file names. Note, the modules will be called the
>> > same (assuming no ABI breakages due to renames).
>> >
>> Interesting - I'll have to look at that a bit more.
>> Any objections if I leave that for a future change?
>
> IF it's nearest future :-)
>
I got this implemented - I'll include it with v3. It's less complicated than I thought when I initially looked. 
Thanks for the suggestion.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
