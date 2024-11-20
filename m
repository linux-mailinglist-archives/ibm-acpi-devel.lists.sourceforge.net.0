Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1299D41FE
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 20 Nov 2024 19:19:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tDpHT-0002mj-5O;
	Wed, 20 Nov 2024 18:18:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tDpHQ-0002mc-Jt
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 20 Nov 2024 18:18:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kT1eoU3zZDBtPfTVQXoKmtOXZxK4gRH+wQcmRGxom6k=; b=jcPc52BZKCd16rK0oTyoouZ4DH
 e6LLnc13LjRLneASqRJ2582bBFLjq/Jf4ChofP2zsWw30e0XgsrV9rzlC0mMLhceMrnrTzLfCeYHd
 oXsJLA4zo6hTa529+6JmA82hKv819v/UfPMzyLOBcjplvMJRBwxR+792fxXh541wOy5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kT1eoU3zZDBtPfTVQXoKmtOXZxK4gRH+wQcmRGxom6k=; b=hdlLSVPDQhLgqrrRaiHlXTr7gR
 pQGeE9jwWuNyPYeUghvUytyWxKIy/E18XjAE2sKDfz7XYfILSVpu2yVrbMRDf4pX3tpGa82JNv3Xy
 YJvCNbOT5674hW65KpEpgHmhKZrJwNdYgnNbXZoTydwCeW10dsWMeGpvGWnLkw41WKX0=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tDpHN-00082F-Ue for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 20 Nov 2024 18:18:19 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id C78BD1140134;
 Wed, 20 Nov 2024 13:18:11 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Wed, 20 Nov 2024 13:18:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1732126691;
 x=1732213091; bh=kT1eoU3zZDBtPfTVQXoKmtOXZxK4gRH+wQcmRGxom6k=; b=
 pAyJ3NUgTWR4icc7TnNYUYWmm4CsCle5RZzX071oZx3Yvdl1g3AbC+Sds3XOIWJz
 qYKUJir99kieM4uDVA0hNzCA0DKET7PPcIfk/3vsx6/ITPZkd7XFz1hKnY3SBOr4
 rIOBwbH5VbqGEKd5BYYk2BKMUt2WCzWDkp0cHMUOGxzgfvAqOqd6W3FZzB1+rMC2
 3SqemZtcUy85RA6KB0Ue2RFaCJWJ+gvHd5aZkfgdQrK8Vt9nbCL0N1dpMRajOB0E
 gSn+XwvjhwpMfCJYas+O6KpdtAYTuawTPFJmSwKslz3i4OUMZ/f4Si4eqf+o3j82
 Yb41ioq1mdHDpwWch/zirQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1732126691; x=
 1732213091; bh=kT1eoU3zZDBtPfTVQXoKmtOXZxK4gRH+wQcmRGxom6k=; b=v
 AiuumIsaWkrOuXrjJX32h7fGmFCLYGcsk4DkGb2sIvSsEEn6glvXcwPKTiWi4Sl+
 My9Lwuy4KMD+nHdaZsw5NA5qu6BNb3DnGS6LYo9OS8sA66H2UdmTcIbXGc9iHwaL
 IuzYx3mIsJTDhEvMHtuDYfvcl8m+nRaUkMyu4OQd+k53n2AeTbUtkEjoh9on2vw0
 NaPrluL+jnG54WSVxNMI7HgN14ZOzHyvRlJhF0uOm0iBeQk8CtxZR+UIufZ4rEgL
 b1J7NqtBRgTIRxWB6A7z074BnS/r3TpkmpzJncwKzSIT1TSKF0KOqnwwlJnro6xe
 0QsiIoR0JGpCjJyUX1juQ==
X-ME-Sender: <xms:4Sc-Z1MYqC_qVBVMgChzMHJhN6HzKHJutEvpatdUbJP8lYaN73VGGA>
 <xme:4Sc-Z38J5_7kl8GMqOrbigFS7Ds4Nf-h_deTcW9CZXljj2Fnf6L6TeYkqD9wdYYz3
 EjSJc5zpmif1AwVr4o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrfeeggdduuddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:4Sc-Z0R9W_VHBrnYQRroGTy0TUZx5EvQz4ZKr1eIXajo7UcwiMYfew>
 <xmx:4ic-ZxvaEmJ_n-ySRifwCJmteIZOYwBYfbvOCZxNUK8EcHkMPLePaA>
 <xmx:4ic-Z9fjImlW59ydCPoowSSvjYlqRtld9k7arbk2h-oOhIWWwmPJEg>
 <xmx:4ic-Z93IqBlrtThz3uDRmm9VOWHlWQClgvBrll0n1gaf2tB-9HHnbQ>
 <xmx:4yc-Zz-591QPJqxDEBTBcd458YRe0lbtxvzTUCMjN_FFZ5PmjMBA4367>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id D64043C0066; Wed, 20 Nov 2024 13:18:09 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Wed, 20 Nov 2024 13:17:49 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <23bdc613-a4a7-465b-b9ea-773fc25d97e9@app.fastmail.com>
In-Reply-To: <20241119171739.77028-1-mario.limonciello@amd.com>
References: <20241119171739.77028-1-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 19, 2024, at 12:17 PM, Mario Limonciello wrote:
 > Currently there are a number of ASUS products on the market that happen
 to > have ACPI objects for amd-pmf to bind to as well as an ACPI p [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.150 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.150 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.150 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tDpHN-00082F-Ue
Subject: Re: [ibm-acpi-devel] [PATCH v7 00/22] Add support for binding ACPI
 platform profile to multiple drivers
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Lee Chun-Yi <jlee@suse.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



On Tue, Nov 19, 2024, at 12:17 PM, Mario Limonciello wrote:
> Currently there are a number of ASUS products on the market that happen to
> have ACPI objects for amd-pmf to bind to as well as an ACPI platform
> profile provided by asus-wmi.
>
> The ACPI platform profile support created by amd-pmf on these ASUS
> products is "Function 9" which is specifically for "BIOS or EC
> notification" of power slider position. This feature is actively used
> by some designs such as Framework 13 and Framework 16.
>
> On these ASUS designs we keep on quirking more and more of them to turn
> off this notification so that asus-wmi can bind.
>
> This however isn't how Windows works.  "Multiple" things are notified for
> the power slider position. This series adjusts Linux to behave similarly.
>
> Multiple drivers can now register an ACPI platform profile and will react
> to set requests.
>
> To avoid chaos, only positions that are common to both drivers are
> accepted when the legacy /sys/firmware/acpi/platform_profile interface
> is used.
>
> This series also adds a new concept of a "custom" profile.  This allows
> userspace to discover that there are multiple driver handlers that are
> configured differently.
>
> This series also allows dropping all of the PMF quirks from amd-pmf.
> ---
> v7:
>  * Add tags
>  * Rebase on pdx86/for-next
>  * Armin's various code feedback (see individual patches)
>
> Mario Limonciello (22):
>   ACPI: platform-profile: Add a name member to handlers
>   platform/x86/dell: dell-pc: Create platform device
>   ACPI: platform_profile: Add device pointer into platform profile
>     handler
>   ACPI: platform_profile: Add platform handler argument to
>     platform_profile_remove()
>   ACPI: platform_profile: Pass the profile handler into
>     platform_profile_notify()
>   ACPI: platform_profile: Move sanity check out of the mutex
>   ACPI: platform_profile: Move matching string for new profile out of
>     mutex
>   ACPI: platform_profile: Use guard(mutex) for register/unregister
>   ACPI: platform_profile: Use `scoped_cond_guard`
>   ACPI: platform_profile: Create class for ACPI platform profile
>   ACPI: platform_profile: Add name attribute to class interface
>   ACPI: platform_profile: Add choices attribute for class interface
>   ACPI: platform_profile: Add profile attribute for class interface
>   ACPI: platform_profile: Notify change events on register and
>     unregister
>   ACPI: platform_profile: Only show profiles common for all handlers
>   ACPI: platform_profile: Add concept of a "custom" profile
>   ACPI: platform_profile: Make sure all profile handlers agree on
>     profile
>   ACPI: platform_profile: Check all profile handler to calculate next
>   ACPI: platform_profile: Notify class device from
>     platform_profile_notify()
>   ACPI: platform_profile: Allow multiple handlers
>   platform/x86/amd: pmf: Drop all quirks
>   Documentation: Add documentation about class interface for platform
>     profiles
>
>  .../ABI/testing/sysfs-platform_profile        |   5 +
>  .../userspace-api/sysfs-platform_profile.rst  |  31 ++
>  drivers/acpi/platform_profile.c               | 525 ++++++++++++++----
>  .../surface/surface_platform_profile.c        |   8 +-
>  drivers/platform/x86/acer-wmi.c               |  12 +-
>  drivers/platform/x86/amd/pmf/Makefile         |   2 +-
>  drivers/platform/x86/amd/pmf/core.c           |   1 -
>  drivers/platform/x86/amd/pmf/pmf-quirks.c     |  66 ---
>  drivers/platform/x86/amd/pmf/pmf.h            |   3 -
>  drivers/platform/x86/amd/pmf/sps.c            |   4 +-
>  drivers/platform/x86/asus-wmi.c               |   8 +-
>  drivers/platform/x86/dell/alienware-wmi.c     |   8 +-
>  drivers/platform/x86/dell/dell-pc.c           |  36 +-
>  drivers/platform/x86/hp/hp-wmi.c              |   8 +-
>  drivers/platform/x86/ideapad-laptop.c         |   6 +-
>  .../platform/x86/inspur_platform_profile.c    |   7 +-
>  drivers/platform/x86/thinkpad_acpi.c          |  16 +-
>  include/linux/platform_profile.h              |   9 +-
>  18 files changed, 542 insertions(+), 213 deletions(-)
>  delete mode 100644 drivers/platform/x86/amd/pmf/pmf-quirks.c
>
>
> base-commit: c6a2b4fcec5f2d80b0183fae1117f06127584c28
> -- 
> 2.43.0

For the series
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Let me know if it would be useful to run tests on the latest version.
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
