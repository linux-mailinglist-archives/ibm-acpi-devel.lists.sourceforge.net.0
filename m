Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE82A03535
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  7 Jan 2025 03:37:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tUzSC-0004Yd-FE;
	Tue, 07 Jan 2025 02:36:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tUzSA-0004YL-Mk
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 07 Jan 2025 02:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=whxcJEUUdxrpr853/By+jQ/3XvE0gYgglj51JD5j1jQ=; b=ghOg4Xrcmi6JbpplwBXfT/yCJL
 v78udzcaH61dzqetb+UvFmdcOl2mwfj01dBiD5IaeRPWLMztNjAB16OkE+Da4j451Z2kmb12PVNPG
 uK4c8kiomLwSepz99WUpO5PqKiZruGeWi/a/8fQo0axP0rWske4UoVoQzjettLV2inu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=whxcJEUUdxrpr853/By+jQ/3XvE0gYgglj51JD5j1jQ=; b=Mp9C9cq7wxZlXWM7ZhX8jQSZDe
 uKZCRaJc/VK5MDJA8rSS03piBFJdIOXFWTfaz3FtXCcVECOf+zB0bSSuynFMTD8PwqUaTwTkpgRwV
 ykr1QTz6tA+5Pge0dbPEK+X1uoiI8wjvHy9xsz5H5ZBX3eqY5MaqFO0tmu+Vonz8O6c0=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tUzS9-0000dm-Hu for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 07 Jan 2025 02:36:22 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id E29D111402C7;
 Mon,  6 Jan 2025 21:19:37 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Mon, 06 Jan 2025 21:19:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1736216377;
 x=1736302777; bh=whxcJEUUdxrpr853/By+jQ/3XvE0gYgglj51JD5j1jQ=; b=
 1ey1cL42WMzvARuyEMRIBMC9LrPdi4v1z8kYxhu9HtWXiDqYgLAPEM/YJYaJepdQ
 42viM+jxqTLa9BjxvMk7vs0pvvyq6Quft1YhdN3rFHa8SO3EcYmNe9WbJkqo9OHV
 CSvRpjpp4tWrAZR6nPlq53fH0FBB93pmYkoSSL09vH5dwl4/nFLSoon7ZSX/dnhj
 FQaHqdPUY4G6n59yzCWOioEOpeB9GHoANzowt4vmpYEP7kb1Y95jJ84JTMnai15S
 oFimElCd6b9YthOfSm9Zh0FnCVELSlI2ERJE16/l6nknsijXgHgiwfJc6LOJIGwi
 nzT344WhGwaBMP8BFyTdpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1736216377; x=
 1736302777; bh=whxcJEUUdxrpr853/By+jQ/3XvE0gYgglj51JD5j1jQ=; b=Z
 Gt1F8RM2WkZ6kPyG8jDXCR0gFgMelur824ObxECH0o+99a+rkOUVCwhKT/VgwKgG
 L49JiS1yRKuuCKO22JKT/CHpHLxTcAL67Sp+pneD/kg7mnLUxGvOjB+bSEol8i9S
 uPo5IwvIB9TNe9a9Nofhs2IuARRdHO5/F65oKqXgBN4cFK43sZSNQ8aRgfnTcG9/
 vKZLS0D26ZKxa2t0fQg8OHqJEUl2PxZssQP0A56oEf9jL+vJf+Lz5AJslS4ebaoQ
 45okAxLdEjW2TUMYnnhGAUJhl2jQh1oIpEPEn0uacPjYTDjwnMYaYWo2zyxopMao
 1Rxof4lVitvQfXONL4J4A==
X-ME-Sender: <xms:N498Z2nHU_4oIfOt9pJSv0DjOhtM-b3Zz8jYeDTPrH2CQedZRZX9nQ>
 <xme:N498Z91ZlrnjbDpVHSGg5Crg5q9SyDUtI8q69U7NQvluvKljUn8HFCmU3gF-z1JPX
 zpK3jlSJhI1kPvk3Pw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudeguddggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvkedpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehurdhklhgvihhnvgdqkhhovghnihhgsegsrgihlhhisghrvgdrtghomhdprhgt
 phhtthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtohepug
 gvlhhlrdgtlhhivghnthdrkhgvrhhnvghlseguvghllhdrtghomhdprhgtphhtthhopegr
 lhgvgigsvghlmhegkeesghhmrghilhdrtghomhdprhgtphhtthhopegtohhlihhnrdhird
 hkihhnghesghhmrghilhdrtghomhdprhgtphhtthhopegtohhrvghnthhinhdrtghhrghr
 hiesghhmrghilhdrtghomhdprhgtphhtthhopeguvghrvghkjhhohhhnrdgtlhgrrhhkse
 hgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:N498Z0op3Y51SDYOkqk2ZtRdIMc3zl_Rj4aL8GdpBtAKS1PuWu4WYg>
 <xmx:N498Z6l8XgiHhtNWEO08cmrs6tuPYrtJZ98SACGJ-AgIuRRydvNOlw>
 <xmx:N498Z02uSipbzfLSVNWbIiB5OWdiFHmHWLWaQf4EhhsJw4B18mFmXQ>
 <xmx:N498ZxsBSBBjfGCv60L6kw_rvshlfAmLt26kisLRkmnressUJp1b6w>
 <xmx:OY98Z2HXH_teyoKA0gRjuLXUOjuzfNumWAgrVkQ-X9EycfIIeJIoCg9n>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id F00793C0066; Mon,  6 Jan 2025 21:19:34 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 06 Jan 2025 21:19:14 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Kurt Borja" <kuurtb@gmail.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Message-Id: <33a5b6a2-e4df-4bfc-88a9-a9e8309c7f7a@app.fastmail.com>
In-Reply-To: <20250106044605.12494-1-kuurtb@gmail.com>
References: <20250106044605.12494-1-kuurtb@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Kurt, On Sun, Jan 5, 2025, at 11:45 PM, Kurt Borja wrote:
 > Hello,
 > > Some drivers may need to dynamically modify their selected `choices`.
 > Such is the case of the acer-wmi driver, which implemented thei [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.154 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.154 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tUzS9-0000dm-Hu
Subject: Re: [ibm-acpi-devel] [RFC PATCH 0/3] ACPI: platform_profile: Let
 drivers dynamically refresh choices
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
 ibm-acpi-devel@lists.sourceforge.net, hridesh699@gmail.com, "Limonciello, 
 Mario" <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Alexis Belmonte <alexbelm48@gmail.com>, "Luke D . Jones" <luke@ljones.dev>,
 Lyndon Sanche <lsanche@lyndeno.ca>, Ai Chao <aichao@kylinos.cn>,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Gergo Koteles <soyer@irl.hu>, Colin Ian King <colin.i.king@gmail.com>,
 Len Brown <lenb@kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Dell.Client.Kernel@dell.com, josh@joshuagrisham.com,
 Armin Wolf <W_Armin@gmx.de>, linux-kernel@vger.kernel.org,
 Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Kurt,

On Sun, Jan 5, 2025, at 11:45 PM, Kurt Borja wrote:
> Hello,
>
> Some drivers may need to dynamically modify their selected `choices`.
> Such is the case of the acer-wmi driver, which implemented their own
> profile cycling method, because users expect different profiles to be
> available whether the laptop is on AC or not [1].
>
> These series would allow acer-wmi to simplify this custom cycling method
> to use platform_profile_cycle(), as it's already being proposed in these
> series [2]; without changing expected behaviors, by refreshing their
> selected choices on AC connect/disconnect events, which would also solve
> this discussion [3].
>
> Additionally, I think the platform_profile_ops approach would enable us
> to hide the platform_profile_handler in the future, and instead just pass
> the class device to get/set methods like the HWMON subsystem does.
>
> I think having this kind of flexibility is valuable. Let me know what you
> think!
>

I personally would love to see how this would be used for the acer issue highlighted to see how it would work out. It feels like the series is short a patch :)

As a side note, I did (many moons ago) propose a change to alter profiles used depending on AC/battery mode (in the thinkpad driver), and it was rejected as something that should be done in user space.
Your use case does seem somewhat different, but it's similar enough that if you get it working I'd be interested to see if I can take advantage of the approach too.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
