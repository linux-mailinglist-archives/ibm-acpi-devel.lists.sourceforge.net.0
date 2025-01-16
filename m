Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61617A14477
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 16 Jan 2025 23:21:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tYYEO-0006gv-4Y;
	Thu, 16 Jan 2025 22:20:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tYYEM-0006go-Dv
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 16 Jan 2025 22:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vb4kmYiLpZR7cnqSwRqWr3BnMdy2IX6vkQzBpGLy1OY=; b=iq6bz8sgW4fFMNpJ4mMA+F6n6L
 +EG51ofOxTc5FN9JWt/8cjroGJBYcfsQg0RQmOjolo7KkCb07aEtidxbrj/a32+D2nlbM/h7ppv4y
 MHudRhn/tvWZDIORL7SvNrQc6McHAOfAniBt79B1qNZXWnbEu58Pc+7FEVIKR0rvn+tE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vb4kmYiLpZR7cnqSwRqWr3BnMdy2IX6vkQzBpGLy1OY=; b=m1Nx9V+cXwxRyNOJ49/fgshl6q
 xWKH21TEr3hbnSpKGB6hEf0UIoAk2Fa/fes43/qiYo8wazw4/cG+HJ/EB2SLj5U8DqGvEWDSwQlPz
 6asZN/TZjkBrbJgAn1yQ91gSWMgNd1Fq8/PikTVzISmyqJrxJIYpANg/EVNqXyqpZ7l4=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYYEK-0003cB-Fj for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 16 Jan 2025 22:20:50 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id C3FCC13802C2;
 Thu, 16 Jan 2025 17:20:37 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Thu, 16 Jan 2025 17:20:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1737066037;
 x=1737152437; bh=Vb4kmYiLpZR7cnqSwRqWr3BnMdy2IX6vkQzBpGLy1OY=; b=
 uAMXcO8EhlWg6wgXZiY5hNTAz3eUj7kPHf/Q0wN8ObX15jEzaJmnXmu9JKDQk4ve
 wXKwaQ7KkYR2vLG7uTcmRCv0O5gAjbMf/EXn/gmeWLDYYQCS+U87EaBOzvoap7rg
 vqAvESB+RNotJovaILtAgGd5TQ9K8mfr+TdiDmntrnf8IDClxGNZ6h7HIO758p6s
 bgkqldLiqQ3ul/sJ4cjHoO8syK1sD0IyBsxW6RCrB+jbO4wNP4Qg+rI4JW9xvEnw
 YIwDV8yjsr798nzWTd/JqLygQaTWVfgFkJNLamR4iiPS64HWcG05vC7nXF/UBRrk
 XUnx+j5mzWJULYaL9EgivA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1737066037; x=
 1737152437; bh=Vb4kmYiLpZR7cnqSwRqWr3BnMdy2IX6vkQzBpGLy1OY=; b=l
 8sJjVkFlhrQGKOEwlFAeyh66tQeKodAibtYzwvYBjEVD04j7zC8cn7cslJu8SkxW
 gkBU8Tw/0E7f8D//MxNslNnpwu3W5+RkZ2eNO55Eai/ksPLS1c2REyRdOD+71njL
 cwD7NVAWfkT+Q6FdkOngDNNyixH9qnFsMgofeTV2SB5u6OzcEdmitcnfVvEXfCRM
 bLDQPtzZmb9aFXeYQipPuNaWrTyorhqJ/LeZZqe7DayM6aUX/QnzEtinTUj9BNCf
 Lgsi8iy8yDdsvez0+OqgHTjWj/CdGhAkE0bFXVMDnNFnDKlwUWYrJvvbw/sctNHO
 5jB2vd3+SLC5eh6arCQsQ==
X-ME-Sender: <xms:M4aJZ4vWyXnX0wtMXsB0ogXp4yBC60Gw82981HCsoERhdvk2U1kj1w>
 <xme:M4aJZ1dXy8tdBJHzUsfjl-M_KBjiKswgi9h8HHvNIfPOMxISncT4CydSvkD9sX8T6
 4WjOwvu6KnUqSlo5Bs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudeiuddgudehiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnheptdffvefgtefhveet
 uddvfeelveektdduvdelgfehgfeikeffjeetjeevffektdfhnecuffhomhgrihhnpehkvg
 hrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprh
 gtphhtthhopedvhedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepshhhhigrmhdq
 shhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhrtghpthhtohepmhgrrhhiohdrlhhimh
 honhgtihgvlhhlohesrghmugdrtghomhdprhgtphhtthhopehikhgvrdhprghnsegtrghn
 ohhnihgtrghlrdgtohhmpdhrtghpthhtohepuggvlhhlrdgtlhhivghnthdrkhgvrhhnvg
 hlseguvghllhdrtghomhdprhgtphhtthhopegrlhgvgigsvghlmhegkeesghhmrghilhdr
 tghomhdprhgtphhtthhopegtohhrvghnthhinhdrtghhrghrhiesghhmrghilhdrtghomh
 dprhgtphhtthhopeguvghrvghkjhhohhhnrdgtlhgrrhhksehgmhgrihhlrdgtohhmpdhr
 tghpthhtohepkhhuuhhrthgssehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrg
 igihhmihhlihgrnhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:M4aJZzyyoGPMKmyZ86YezqbAXb2M1pDzZeKSdQG4h24I3IFRecrjaA>
 <xmx:M4aJZ7M3wWf3jcBrhx-DFdZSt96NRGBkG-QYZwFqUVEfJq-dIT7I6A>
 <xmx:M4aJZ49Nl5Tg_tdR5PgKIwUh0Cb6mmA4o_5k-_CdQuB8wcoX9L8n3w>
 <xmx:M4aJZzUc1TY5pHQfVMAHkcc7KfsJotlztzIribiOlofU8UYWCjJpOA>
 <xmx:NYaJZ2NiWWNPAwnG-Dcib6_9mooTYlRtxQp3Y0Hq-jmxk2BS-dOw0Oai>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 2874A3C0068; Thu, 16 Jan 2025 17:20:35 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Thu, 16 Jan 2025 17:20:14 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Kurt Borja" <kuurtb@gmail.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Message-Id: <1eb2720a-c9af-4e5c-8df2-c4ce3c017d5c@app.fastmail.com>
In-Reply-To: <20250116002721.75592-1-kuurtb@gmail.com>
References: <20250116002721.75592-1-kuurtb@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi On Wed, Jan 15, 2025, at 7:27 PM, Kurt Borja wrote: > Hi
 :) > > The merge window is about to open, so I rebased this patchset on top
 of > pdx86/review-ilpo-next to pick up acer-wmi latest commits, in [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.151 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tYYEK-0003cB-Fj
Subject: Re: [ibm-acpi-devel] [PATCH v4 00/19] Hide platform_profile_handler
 from consumers
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
Cc: Ike Panhc <ike.pan@canonical.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, "Limonciello,
 Mario" <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Alexis Belmonte <alexbelm48@gmail.com>, "Luke D . Jones" <luke@ljones.dev>,
 Lyndon Sanche <lsanche@lyndeno.ca>, Ai Chao <aichao@kylinos.cn>,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Gergo Koteles <soyer@irl.hu>, Len Brown <lenb@kernel.org>,
 Lee Chun-Yi <jlee@suse.com>, Hans de Goede <hdegoede@redhat.com>,
 Dell.Client.Kernel@dell.com, Joshua Grisham <josh@joshuagrisham.com>,
 Armin Wolf <W_Armin@gmx.de>, linux-kernel@vger.kernel.org,
 Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi

On Wed, Jan 15, 2025, at 7:27 PM, Kurt Borja wrote:
> Hi :)
>
> The merge window is about to open, so I rebased this patchset on top of
> pdx86/review-ilpo-next to pick up acer-wmi latest commits, in case we
> manage to squeeze this into v6.14.
>
> ~ Kurt
> ---
> v3 -> v4:
>
> [09/19]
>   - Replace error message with a user-friendly one
>
> v3: 
> https://lore.kernel.org/platform-driver-x86/20250115071022.4815-1-kuurtb@gmail.com/
>
> Kurt Borja (19):
>   ACPI: platform_profile: Replace *class_dev member with class_dev
>   ACPI: platform_profile: Let drivers set drvdata to the class device
>   ACPI: platform_profile: Remove platform_profile_handler from callbacks
>   ACPI: platform_profile: Add `ops` member to handlers
>   ACPI: platform_profile: Add `probe` to platform_profile_ops
>   platform/surface: surface_platform_profile: Use
>     devm_platform_profile_register()
>   platform/x86: acer-wmi: Use devm_platform_profile_register()
>   platform/x86: amd: pmf: sps: Use devm_platform_profile_register()
>   platform/x86: asus-wmi: Use devm_platform_profile_register()
>   platform/x86: dell-pc: Use devm_platform_profile_register()
>   platform/x86: ideapad-laptop: Use devm_platform_profile_register()
>   platform/x86: hp-wmi: Use devm_platform_profile_register()
>   platform/x86: inspur_platform_profile: Use
>     devm_platform_profile_register()
>   platform/x86: thinkpad_acpi: Use devm_platform_profile_register()
>   ACPI: platform_profile: Remove platform_profile_handler from exported
>     symbols
>   ACPI: platform_profile: Move platform_profile_handler
>   ACPI: platform_profile: Clean platform_profile_handler
>   ACPI: platform_profile: Add documentation
>   ACPI: platform_profile: Add a prefix to log messages
>
>  .../ABI/testing/sysfs-class-platform-profile  |  44 +++++
>  drivers/acpi/platform_profile.c               | 172 +++++++++++++-----
>  .../surface/surface_platform_profile.c        |  48 ++---
>  drivers/platform/x86/acer-wmi.c               | 114 ++++++------
>  drivers/platform/x86/amd/pmf/core.c           |   1 -
>  drivers/platform/x86/amd/pmf/pmf.h            |   3 +-
>  drivers/platform/x86/amd/pmf/sps.c            |  51 +++---
>  drivers/platform/x86/asus-wmi.c               |  55 +++---
>  drivers/platform/x86/dell/alienware-wmi.c     |  34 ++--
>  drivers/platform/x86/dell/dell-pc.c           |  60 +++---
>  drivers/platform/x86/hp/hp-wmi.c              |  83 +++++----
>  drivers/platform/x86/ideapad-laptop.c         |  45 +++--
>  .../platform/x86/inspur_platform_profile.c    |  48 +++--
>  drivers/platform/x86/thinkpad_acpi.c          |  37 ++--
>  include/linux/platform_profile.h              |  37 ++--
>  15 files changed, 495 insertions(+), 337 deletions(-)
>  create mode 100644 Documentation/ABI/testing/sysfs-class-platform-profile
>
>
> base-commit: d98bf6a6ed61a8047e199495b0887cce392f8e5b
> -- 
> 2.48.1

For the series up to v4 commit 15/19:
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

I need to go over the last few commits just once more, as there a few pieces I need to get my head around - and I'm not going to get it done this evening. Hope it's OK to add review for the bits that I have done.

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
