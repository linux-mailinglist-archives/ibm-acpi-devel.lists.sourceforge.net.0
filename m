Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC4F9B9C40
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:16:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73gC-0006nv-6H;
	Sat, 02 Nov 2024 02:15:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73gB-0006nn-7M
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JmyUrRjBzHgkkvAgRz/uOrtHBYfuEIrZL234zQOVTFc=; b=X7miniBDd86KFxD36WAfyhYvKO
 S88OLb4pK0O173AY9VZgf2+u4hBpnQBAxog8g1Wa9aDk9AO24qtGINGePmaUR6vlGQsirAbXA8bdq
 id3fValudCVkh8TanYGzyc7r7JABddPrETVgeE79d770wDrN1nZ6dMfsVsrVKyk0PrSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JmyUrRjBzHgkkvAgRz/uOrtHBYfuEIrZL234zQOVTFc=; b=HaHDROVe0OIi0slZfA4suBzFds
 HkBAVMgRHcIRzDB7DdB6v9ynOCV39RaRJqYBVQWzglYaBaoj5ghEE0B1D9kgFPYJuI0HRRJw5KCdf
 0hd53Agb7brYPmnwDT88zW9xyadPFeHO9qGiYjGlb14+fqBvIMrSw+J/IqNdLn90Mh6A=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73gB-0003WZ-8v for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:15:55 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id 49952114007C;
 Fri,  1 Nov 2024 22:15:44 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:15:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513744;
 x=1730600144; bh=JmyUrRjBzHgkkvAgRz/uOrtHBYfuEIrZL234zQOVTFc=; b=
 EX5/LjnTeE95z0qucJ44FBtGT7yyGwr63CLMmdXfXu/gOCAXRcmEzQBgA1TH+cSJ
 22XnyCgIyNigSf8MnyFQ55DU/YJWP0TMIczCv95KEND0RirbOoe/36sAAdQd9pg5
 ph0nd3lhXILA1DRoqDQf6Bg1iGmV6yhvc6lcYguGEyH3iOaKpoS8Zjg3OYUjWO5Q
 fLsa+geaWdhIwqtzK1GggK1Fhqy3prNv0V5UlcmAgLbjnWqbynG8ZPqbdIW8MmJZ
 7OE1FJKtD8mte7CXffqhenH7PMPTzX3UcgEem8AEahM1o2yQ7g+GHmxh60OqgV2p
 1p0z10G1pSZREza4Vs3qsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513744; x=
 1730600144; bh=JmyUrRjBzHgkkvAgRz/uOrtHBYfuEIrZL234zQOVTFc=; b=K
 O5VbYnBtDvjRCxlge1nLiBEVKyHB5jKozzxnb6fqSTa4NFFnZK+MAyQEgTs9uM0b
 N6oxasnl+fZXvoXMtnBDTlE5kwXR99gyTUEiVd+9xiUSe5YYj3CWCyNB3ALphk3Z
 vxqMiqADxxN5Zo8COgLV+LnUt2QHBCeltybLINXP1a7+HaNjlBzZfPvamjxnTgt9
 0EU0uYKst83FG8vEpsvf/vKPkig8A82kbmDO9JOkcZ79QtJ4Z7NppqAHybED5LVd
 esa2wg4BOwuUBl+JjzWX5OXqljR0o8EtWSvSL0vv9mNnsvUYNr8zaYKDlWHmSIr1
 rmLHTCI1zzm1YJNr+dZ7w==
X-ME-Sender: <xms:T4slZ0chH_GVbtrw6ZRF8zT4dEsVDJ8_2xy_BevuGleO_3VAEQEL8g>
 <xme:T4slZ2MRkSl2q3mhbF5vLPBWA-MFMzmHpToGuJnHej9S5taoyPxTJIdH35wlJFoAx
 SEsD3Hq5yWM22dD6jM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:T4slZ1ixB-HzRg-vz_UmyxOcuo0K08BvIv7d4ApaOSA6aLFhu-IKeQ>
 <xmx:T4slZ5_-nsuy9KWFYyjTMFjvxLgRFWz7CJ8BTtsgVhI5I6xg2T_5RA>
 <xmx:T4slZwsITWQ19D14MjN_HcTITZBCpfI4kJPTc57msmYPGfTTpBC9SQ>
 <xmx:T4slZwHrEF8b32z7l_DmQd8ItEKxnaKR8K7ybvJA16JYlig2Y6YVHg>
 <xmx:UIslZxOOq-ER68RDDZ3syEPhV7n095GePArN1ycncqjlUUrZpnXsD-Q2>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 8686A3C0066; Fri,  1 Nov 2024 22:15:43 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:15:23 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <c0f02ffd-9a29-4411-8e5e-13a4d93c558f@app.fastmail.com>
In-Reply-To: <20241031040952.109057-18-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-18-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > When two profile handlers don't agree on the current profile it's ambiguous
 > what to show to the legacy sysfs interface. > > Add a "custo [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t73gB-0003WZ-8v
Subject: Re: [ibm-acpi-devel] [PATCH v3 17/22] ACPI: platform_profile: Add
 concept of a "custom" profile
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
> When two profile handlers don't agree on the current profile it's ambiguous
> what to show to the legacy sysfs interface.
>
> Add a "custom" profile string that userspace will be able to distinguish
> this situation when using the legacy sysfs interface.
>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c  | 1 +
>  include/linux/platform_profile.h | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index c2bb325ba531c..3128bd16615b6 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -20,6 +20,7 @@ static const char * const profile_names[] = {
>  	[PLATFORM_PROFILE_BALANCED] = "balanced",
>  	[PLATFORM_PROFILE_BALANCED_PERFORMANCE] = "balanced-performance",
>  	[PLATFORM_PROFILE_PERFORMANCE] = "performance",
> +	[PLATFORM_PROFILE_CUSTOM] = "custom",
>  };
>  static_assert(ARRAY_SIZE(profile_names) == PLATFORM_PROFILE_LAST);
> 
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index 6aad98f4abaf4..da009c8a402c9 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -23,6 +23,7 @@ enum platform_profile_option {
>  	PLATFORM_PROFILE_BALANCED,
>  	PLATFORM_PROFILE_BALANCED_PERFORMANCE,
>  	PLATFORM_PROFILE_PERFORMANCE,
> +	PLATFORM_PROFILE_CUSTOM,
>  	PLATFORM_PROFILE_LAST, /*must always be last */
>  };
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
