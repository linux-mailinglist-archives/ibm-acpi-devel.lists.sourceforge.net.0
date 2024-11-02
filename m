Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB44C9B9C35
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:15:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73fK-0003w1-V4;
	Sat, 02 Nov 2024 02:15:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73fH-0003vo-Lo
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CkrPl1J6C0IRjJJqxSDvwcu6yt6xdBEFuHH1XZwtxT4=; b=l0bra0i8VLwgSHe9XoXQtA/26B
 NanZwE8HeYCT6i8cS+8ulDBls9sbgrXeU7VT/3y/YMSh2l8jwpge4H+OHZoSpstxbOpRUJ/gWkIL/
 A4o+6yhOn04qz9kcQhhDlHClEyxZlfxVoUv7KFLeK+vxwl3lRsaWo8MCEEpgUq8tbvNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CkrPl1J6C0IRjJJqxSDvwcu6yt6xdBEFuHH1XZwtxT4=; b=cSllgqTZK++iQKsN4kqJ/N2ccB
 Ef5ene/EutGH3P4lBQAd1rZV2yO5Ru3D05FEWukCkLYdP4OecLOi8uBa5vwPdkw4UC4JoALHNRktO
 2Ee7b0XgcixuhxQBAEDyg4omroo//zTQk4fgG0g/a9lEDEtBj0bj3wHHxganoG1CV/co=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73fG-0003PR-BU for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:14:59 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 5B0D325400FC;
 Fri,  1 Nov 2024 22:14:52 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:14:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513692;
 x=1730600092; bh=CkrPl1J6C0IRjJJqxSDvwcu6yt6xdBEFuHH1XZwtxT4=; b=
 hnqA5leKwpfDw02iQCa76dsOowb09WlDqiQFWenoB/VjM0L/7gKBFk7EugXuXJcC
 FLuD9hKPuOxPSojdkiiuS2dkfBsdd5fb+uzLAz47y9bNHZsCia//MC+h/atm0bMD
 zuvZZIuL+IJfjocmCl6NtWBJnbB8aXHSVj0qgLRVu7Ou9REZhKdEnIq2EBStgqw5
 tVjoZJAzzWHf1zalkhB5KYBVjZOD7HVc+esvCfoVoPnrZ70Vnn0AmMYxt0afPTwH
 EpNTpY2TsXUik2eU9nShcUQ3lg2GXIODam2uLUhJPs4oAJbxu+GxzyHzMAJu+MNP
 jQoDWOLeZTJnXsWHbgXpUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513692; x=
 1730600092; bh=CkrPl1J6C0IRjJJqxSDvwcu6yt6xdBEFuHH1XZwtxT4=; b=E
 0vdTR9sQnVY1R8BWJXyoutjE/6jAeOnABNkeJYtuC6f4VufKx/m5l3+Izsphqixx
 TnCEvWDMo4cHZ2ioWhC3YzJPbepVWTYSkSMXar6IfiNwQAz0EpIoaiqSNWHEY0V8
 OuV2BsYvQj3TjkzU9edUX0mJMeOCCE4AWc//RfB0g7A7SBqDlsTTjnc9+PgQbuWZ
 sJFgWZ150Kcw3nsMt69XWlMhTH2AnESGnZv81fox8vCPNZdbeNxq9cPc8acgHgmo
 OTiHbHQ6rvpxU8Ge4kISU8tNxbatMiaa/bUG4w6XwsjNVtKJTBcXii3azPxUnG4e
 Sp+X9qKABrfpDqR4J67YA==
X-ME-Sender: <xms:HIslZ3iu5PxY0x5RPSEf348rdlX1c7ZhVo_bSMGIO7HhfxFFrz4hgQ>
 <xme:HIslZ0A1tFDfcVzfA2yjWcc641HxknWT_wWh2wOD7I-GrXAITRfR-YtPf2jw7dolT
 biJBktwCqCFSw5Tz9E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:HIslZ3GE8tLHQ7mLkFhtWvhejna9mMMiDDRPFu8yNtxNwvZ6nw44DQ>
 <xmx:HIslZ0RWTw-0cE-YtGdYGMnYu3SrD_vMM6jPCJAqwPUUwA_5v4StLA>
 <xmx:HIslZ0yXPIdQZdkmdKK-OkHZPtzbPXNB4lCGZ2HgQU0tR9KrK9koFg>
 <xmx:HIslZ65PsecglyYQxysPTPtBoW0UaQNZIsB4gaNgfrJDS2gATrMKug>
 <xmx:HIslZxzKy-BimVu7KPudm_WCn59kRDMTvSxXdIyOcS-y3xxlfAVsfox6>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 051323C0066; Fri,  1 Nov 2024 22:14:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:14:31 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <2ed34c9d-bd75-4668-b1c8-ac663ad17b25@app.fastmail.com>
In-Reply-To: <20241031040952.109057-15-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-15-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > As multiple platform profile handlers may come and go, send a notification
 > to userspace each time that a platform profile handler is reg [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.157 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t73fG-0003PR-BU
Subject: Re: [ibm-acpi-devel] [PATCH v3 14/22] ACPI: platform_profile:
 Notify change events on register and unregister
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

On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
> As multiple platform profile handlers may come and go, send a notification
> to userspace each time that a platform profile handler is registered or
> unregistered.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/acpi/platform_profile.c 
> b/drivers/acpi/platform_profile.c
> index 57c66d7dbf827..7bd32f1e8d834 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -182,6 +182,7 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  	if (err)
>  		return err;
>  	list_add_tail(&pprof->list, &platform_profile_handler_list);
> +	sysfs_notify(acpi_kobj, NULL, "platform_profile");
> 
>  	cur_profile = pprof;
>  	return 0;
> @@ -195,6 +196,8 @@ int platform_profile_remove(struct 
> platform_profile_handler *pprof)
>  	list_del(&pprof->list);
> 
>  	cur_profile = NULL;
> +
> +	sysfs_notify(acpi_kobj, NULL, "platform_profile");
>  	if (!platform_profile_is_registered())
>  		sysfs_remove_group(acpi_kobj, &platform_profile_group);
> 
> -- 
> 2.43.0

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
