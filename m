Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EA89B2CCF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 28 Oct 2024 11:26:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t5Mwy-0005um-UL;
	Mon, 28 Oct 2024 10:26:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t5Mww-0005uc-Sb
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cjA7AzVK8Qp+c8VweVoj7E322QSX3xuFomZv0bAl22E=; b=FnSLTJiE+3XEzFwwX1qH0Ou+oH
 z2zI26pxyWkHmRDq8ktpjjQQ8b9LJCab74LKXecZnzLwJc23GFwWf5L3pSUtFFuqFrsHJwKcMZeto
 brHgVKQRL+Rfpa3xJnaFzD+ixlAUR/ccjb5Bn3ZIQi+Z3tPfdZF7fFqA7xGXt8HSH8yo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cjA7AzVK8Qp+c8VweVoj7E322QSX3xuFomZv0bAl22E=; b=RvZem5MU9fIXaWyRlU01Ht/vMi
 aaYd2CL4gX9DJ6Ab3lBAmL8noWCPelBjr/9+LcaAE+V+i1+vTpzfTEgTU1aRvSUJueCE1UfgN8Sfa
 /fKVpxlTk7AmYt3kBUZrI8mR62KunGSblmbCDFiFPbsnFpkws6f9HnEjwDATZqH0RK14=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5Mww-0002IT-DP for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:26:15 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 51456254008F;
 Mon, 28 Oct 2024 06:10:05 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Mon, 28 Oct 2024 06:10:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730110205;
 x=1730196605; bh=cjA7AzVK8Qp+c8VweVoj7E322QSX3xuFomZv0bAl22E=; b=
 pDWyvHNGQk66gR/qW9Q6dF8KUz0207WVteO8wW4AiXzBT9qxoKKRs1nEVLfVRQ5n
 AWD9cF8tj6uvKamYxSdE76Q2x/ilN6iCitv/J/xI9iF3/b4Skl2dmys1CnYj3wic
 nsKmCNdo9N256Q47Zf/4dORxklJn3wzQ/ncKG+Rs70IvsPfrmvAO3g0y8/c0mPAS
 aOyFk5YY5xhOQW5YxDg4t2J4WjSUyHObf5uKDtYS+71U4RD3kKaEqFBinZU6UBHz
 xBjv7tpbRhCbReFZkG8XmyZRLmt0yrhhp9ODIa6z2MAb4j3pK/MHdULm49RvvFra
 LPwMTrotirMMWYKeIPPtLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730110205; x=
 1730196605; bh=cjA7AzVK8Qp+c8VweVoj7E322QSX3xuFomZv0bAl22E=; b=m
 PK1eL2HVsBrYVqhM1bfJD6WAFZt+3mvi13AqB+WD+i0+dTSAjQ8PkticH4SAisyp
 rWnKxXKEKu3VQBe/BWWDdXtXfR/HixvsaSbzaWvum3a7eooWlLg6L/TdKmdLfPZC
 ofsVFooG1QuiNpt5+yoC55t0tr1ttRazrATQAXES7zUb+7na/HjL2WBF+mOdEmJe
 bjwPUwIoxYysi2htLHQ4Mvtk0BA8+A3p0c8c2r0XyKBL9s7JMZ9MuGFtHqqs3c4c
 J5AwD+dF42lHkNVCfmcd5SErg8pS4sTeVIrT7qB4nSIesbP+djkn35SIkOpCJZKM
 uFHv44k3yPuAVtE4eK/yQ==
X-ME-Sender: <xms:_GIfZ_uEqdJmw8YaPBTvXLNEwvIX1R1h9RyPWS1lbEtrSkPvMb6uhA>
 <xme:_GIfZwc9AYmAgq5-AmrxUjTU6HsHdFpeDvbc4Xq-HPipulyE7-4WX8qcwj1hnUAgE
 8j851UBYA-sqj2AsWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejkedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:_GIfZyyeL76sW1P27qSUBBiLlhhV89lKFh4EpzriNY0CFhwUsN2Ofg>
 <xmx:_GIfZ-NM1f-ZxUx3o4OmsFXd_CGtkR0dU7_4GD3FiuAh5MXfMnOlzw>
 <xmx:_GIfZ_9ybYhLXL32RPS-2DVzonsqn7tqNBvfkGzRDMbVDig_IB66ww>
 <xmx:_GIfZ-Ws5RE--gTwCfoj-WUWbH7DUfQlb8-MwrtRMMywrKb6lhTGuQ>
 <xmx:_WIfZ6dvemVNbKvmsw4d4pWKSx4u5Mo53mDZceO0Sr1VPQ9IQnQ4HGDm>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id A0AC93C0066; Mon, 28 Oct 2024 06:10:04 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 06:09:44 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <556814fe-15ae-41cd-8b79-183a479cd76f@app.fastmail.com>
In-Reply-To: <20241025193055.2235-5-mario.limonciello@amd.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-5-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
 > In order to prepare for having support for multiple platform handlers >
 a list will be needed to iterate over them for various platform > p [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.152 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1t5Mww-0002IT-DP
Subject: Re: [ibm-acpi-devel] [PATCH 4/8] ACPI: platform_profile: Add a list
 to platform profile handler
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


On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
> In order to prepare for having support for multiple platform handlers
> a list will be needed to iterate over them for various platform
> profile handler calls.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c  | 5 ++++-
>  include/linux/platform_profile.h | 1 +
>  2 files changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index c24744da20916..0c60fc970b6e8 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -10,6 +10,7 @@
>  #include <linux/sysfs.h>
> 
>  static struct platform_profile_handler *cur_profile;
> +static LIST_HEAD(platform_profile_handler_list);
>  static DEFINE_MUTEX(profile_lock);
> 
>  static const char * const profile_names[] = {
> @@ -198,6 +199,7 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  		mutex_unlock(&profile_lock);
>  		return err;
>  	}
> +	list_add_tail(&pprof->list, &platform_profile_handler_list);
> 
>  	cur_profile = pprof;
>  	mutex_unlock(&profile_lock);
> @@ -207,8 +209,9 @@ EXPORT_SYMBOL_GPL(platform_profile_register);
> 
>  int platform_profile_remove(struct platform_profile_handler *pprof)
>  {
> -	sysfs_remove_group(acpi_kobj, &platform_profile_group);
> +	list_del(&pprof->list);
> 
> +	sysfs_remove_group(acpi_kobj, &platform_profile_group);
>  	mutex_lock(&profile_lock);
>  	cur_profile = NULL;
>  	mutex_unlock(&profile_lock);
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index 58279b76d740e..9ded63a9ae6f1 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -29,6 +29,7 @@ enum platform_profile_option {
>  struct platform_profile_handler {
>  	const char *name;
>  	unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
> +	struct list_head list;
>  	int (*profile_get)(struct platform_profile_handler *pprof,
>  				enum platform_profile_option *profile);
>  	int (*profile_set)(struct platform_profile_handler *pprof,
> -- 
> 2.43.0

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
