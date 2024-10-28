Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 717E49B2CAE
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 28 Oct 2024 11:21:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t5MsA-00039H-9a;
	Mon, 28 Oct 2024 10:21:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t5Ms8-000390-G0
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mkCCNsasirTb2gwbpaxzIv4zvvheu4d4dmMbXzeZbwM=; b=eoCiDf/SrZC+Vgz1xod8i3Efyn
 1ppGHSc8wUjI9zhTeWrLapQIjbuJ9RjZlcoBYEzH3P1/ghDlGeAVuCiNIkhcrUsdufwRCuDp0L8uo
 L0ledZ07BWoAE3Bgk3MCbTiPJxvhi7ghn7uZwPZ/cPLXvE+YppBhkmrHtQsNKcplDcec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mkCCNsasirTb2gwbpaxzIv4zvvheu4d4dmMbXzeZbwM=; b=XFJLbi0CPX3o8Rg275YmWs+Tb7
 AgEjMGOEZsKfrJaG6+i8wjAPYD+gLXetDGRnEE159TAlVvIOvXThFJULHe17rugDKTI2dai1eoeoB
 nq200wbfyzLFMuQWhNJwzTVTaHYdTMHm/0wd4zdAGEAR5bZ8wuTDb0hGMf0pNI+ZOA9c=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5Ms6-0001wj-QQ for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:21:16 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 3DC4625400C4;
 Mon, 28 Oct 2024 06:10:51 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Mon, 28 Oct 2024 06:10:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730110251;
 x=1730196651; bh=mkCCNsasirTb2gwbpaxzIv4zvvheu4d4dmMbXzeZbwM=; b=
 G1uZnGi8tOj2Tc0gOX4lv35M0u9wABHEpAeWLLB54RrVLtA3zPREUXHnQi2Vi5lb
 esiIL2QcHagSih6gyl+R4vt4j2CP4Kk1leJkbILlSRXN8vNBrZDM1RgSzt9hGQq9
 wJIPIgooOzZHUmkvngwQaNn7DZ7za3xyM8AB7B9+Nl5+vhmIOFlVV33cqutIdCiS
 vZmy+SBxwp4OywZJ+RidSZN0AK2qcCzGHRVQTtIX5vWscaux0dIg6ctUZl+ik1h3
 dz/5TycMKy57lDBX4Wj6xqWKGVNd9TGghSzlRgbkfKwNskIWZUzZYn2mJuHOpC8c
 MHbiwDs9l0GafbklAPCC8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730110251; x=
 1730196651; bh=mkCCNsasirTb2gwbpaxzIv4zvvheu4d4dmMbXzeZbwM=; b=I
 tjedI2IVm6uDHa4PAaYKBF9DRtLQ7iaiTVs3dwVUQ5FHCDzH0Pr8df3s1VPrNEoz
 C0d4HzXKjywmNZUsY7K2YGuDG9TMAI2Xp2V+h7aTFknHp7+yox7HtVOEuiLyASkG
 noZtn+tLJUuVL5F0CMSddca4MhO2Zeg9+GS5QoBInnBA4yQWaQsaIru8QZxXUA2x
 fRp5KOb2h12QO7Z52KbVoR4+MQ1tzj3uWaXDIIVWUBOTR9Ny6fxjhjR3RL6q7NLX
 4KyEgAPmKe9G954ax5wC1Ku+nZImUy2JjqWhEl9fKPix0mVy7Niei/erd/hfPiLb
 AoL0F5prxmzFuRaXZIzGw==
X-ME-Sender: <xms:KWMfZ03j36ZsvZvaer7yTFyxjrRM8DanlN_ufRdfh6sBbbjfmpXkUg>
 <xme:KWMfZ_ERfcwtp6TjCuF_GbLFG-_CaaxjRCbbGW9K4j-gpWLQChqEDklcEdb8zAp_A
 cngJwGKfCNgE4TYZo0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejkedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:KmMfZ86B6-5f_bTg5e3eBwUqePHFK-WSmAAxMDsyxWr4AolDjNDUUg>
 <xmx:KmMfZ93EsONvpl3_DPK5P7z0zTa7pEySjDZs-Ajxy_sjF5-E9uYLKw>
 <xmx:KmMfZ3EkIiFghrQ2L9dBoBr4S7JH4o7kfUF-eXfWwSFb4yCNYYixeQ>
 <xmx:KmMfZ2-mWd8WJclAuWmS7l8kLwhGjlS0QJjWQD3P88BwmmPdE-EPRw>
 <xmx:K2MfZ_MouRpC_2g2Bhx4TEaudkcEZSs0TRQqZF6ciaxdrq0I8dbikEGd>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id E16813C0066; Mon, 28 Oct 2024 06:10:49 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 06:10:29 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <bac1b29b-91db-409a-b07a-55a183b6d686@app.fastmail.com>
In-Reply-To: <20241025193055.2235-6-mario.limonciello@amd.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-6-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
 > guard(mutex) can be used to automatically release mutexes when going >
 out of scope. > > Tested-by: Matthew Schwartz <matthew.schwartz@linu [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.152 listed in list.dnswl.org]
X-Headers-End: 1t5Ms6-0001wj-QQ
Subject: Re: [ibm-acpi-devel] [PATCH 5/8] ACPI: platform_profile: Use
 guard(mutex) for register/unregister
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
> guard(mutex) can be used to automatically release mutexes when going
> out of scope.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c 
> b/drivers/acpi/platform_profile.c
> index 0c60fc970b6e8..81928adccfade 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -180,41 +180,34 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  {
>  	int err;
> 
> -	mutex_lock(&profile_lock);
> +	guard(mutex)(&profile_lock);
>  	/* We can only have one active profile */
> -	if (cur_profile) {
> -		mutex_unlock(&profile_lock);
> +	if (cur_profile)
>  		return -EEXIST;
> -	}
> 
>  	/* Sanity check the profile handler field are set */
>  	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> -		!pprof->profile_set || !pprof->profile_get) {
> -		mutex_unlock(&profile_lock);
> +		!pprof->profile_set || !pprof->profile_get)
>  		return -EINVAL;
> -	}
> 
>  	err = sysfs_create_group(acpi_kobj, &platform_profile_group);
> -	if (err) {
> -		mutex_unlock(&profile_lock);
> +	if (err)
>  		return err;
> -	}
>  	list_add_tail(&pprof->list, &platform_profile_handler_list);
> 
>  	cur_profile = pprof;
> -	mutex_unlock(&profile_lock);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_register);
> 
>  int platform_profile_remove(struct platform_profile_handler *pprof)
>  {
> +	guard(mutex)(&profile_lock);
> +
>  	list_del(&pprof->list);
> 
>  	sysfs_remove_group(acpi_kobj, &platform_profile_group);
> -	mutex_lock(&profile_lock);
>  	cur_profile = NULL;
> -	mutex_unlock(&profile_lock);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_remove);
> -- 
> 2.43.0

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
