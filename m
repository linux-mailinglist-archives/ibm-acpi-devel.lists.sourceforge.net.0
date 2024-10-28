Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AB89B2CD0
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 28 Oct 2024 11:26:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t5Mwy-0003ZB-UT;
	Mon, 28 Oct 2024 10:26:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t5Mwx-0003Yx-9U
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zpVCVnKNAbqxoyZ/9RQal9LIDE3t1qOufDxKPWWH5zM=; b=fcyCeHwpK5Krxf6g/o3c+hisa7
 EE2CSXX6iCyZxCuuWnXvwHi6bvn+HEZyN5eTWV0CRkAyDQ11LCE2ADR+koww6Obytsul4bYPBMEhG
 o7B2SWsX34wOCTLzfxo7KdSd9ErAgQmF1Ohu2mWDtjiaeUENfOvHdYx/6FOAD46stWAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zpVCVnKNAbqxoyZ/9RQal9LIDE3t1qOufDxKPWWH5zM=; b=M/cib84++d+K3OTvoCZQD6ctUp
 r8t2IdUtzPDvUzdi1CL9VN0SWw7KcjF7pDZhVcFqXgMnxaTlUaPifUrndKoH2aIMqypAdpiTH7R9m
 y+4gkeg5PcZ0pG8airBTJJ6p8As/4QDfVOA6UJf0INulVGhA344jJF1HS75p6nZn3tt8=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5Mww-0002IS-Cz for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 10:26:15 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id 9990E11400FC;
 Mon, 28 Oct 2024 06:07:39 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Mon, 28 Oct 2024 06:07:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730110059;
 x=1730196459; bh=zpVCVnKNAbqxoyZ/9RQal9LIDE3t1qOufDxKPWWH5zM=; b=
 Bz3gPrvSE1u2Jp3zcvNqLIgtS7gDWMUnjYMZwbN9jT0laM+CoThXEGY5b8gRoiHd
 YDzGI+8HQP5xXE77HxV/LglCXiU6zz4fpUExBPX2qEmH+wo8FBMn62SRi1yYfPzw
 Zu4NkaD8cNaiU/0ybJqyCWOl6cPmU029/bQdFAfwma1AhNRF3+bEkwE2TbOdSWgZ
 hKPo3avc4gQ7m5oiGNw+c6ZoJbH/id3P0yeu82lcDCycOSOy/tnNjwgnu7cfosC2
 tU0cRFzIbL4UAkpPudUvI2G8912MlMzd39qaShQusIEQJHoHCPyz+I4yiSXuTztj
 SdAfrJ6EwxOwWzNUH2jOlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730110059; x=
 1730196459; bh=zpVCVnKNAbqxoyZ/9RQal9LIDE3t1qOufDxKPWWH5zM=; b=N
 WdQ7+GI2ygJZ7I+cYyb9tXX8HC6956Uclg4Q3v2NfImYW3tvzkEaKdhbR19Xpp4H
 So+KxxThq2XslwtVrBv0y77qRMXMbAZkxEDEJB7P8y+FGW1x5KdufrocBNvxmIf7
 8sME9CeQOB3EzkyfuUGuDfDrpZ56Llm6grv12lk0DCY05JN1ZAAURpZSNBgAR0gK
 hhTYHkFmu8m1mhy48CwDcGYelv3v7yKM3WLwVbsr+ovV+Qsr8eCQkB0+DaSCn0Qd
 uVRqD+Y8xHbmxjq2oTKuIT/Ib59YPK1IZn3ESZ5FBlwOYjtp5H20IOcq22pUwslD
 RKJSe0Frk5r/1tkXH6Fjw==
X-ME-Sender: <xms:aWIfZ8n4NI9jOTrhs_B-s3cAwpFYqVDbSBoPD_JPNdLAMV5_519pMg>
 <xme:aWIfZ72fVIDaVXnD70Tv6g_0gCGgOt_yCcNYQyT3tG6gq4ETRDKFylefTXImAcyAw
 6W_s1SheLB0GTLkE9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejkedgudduucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:aWIfZ6opKMutfh8H0IjY5UvPokSKzzK8DOsnhaZH1ZzFzOdXEBky-A>
 <xmx:aWIfZ4nlI68s1IQGm7PiDVmEtktDibFd9EavHboWC_B1PH6EaVqglw>
 <xmx:aWIfZ62VEXeSovcriCz6wwmmyKYd15xgwIywFpBkqFn9D7S33LXq9A>
 <xmx:aWIfZ_vEWAFwfQvS6OoHbqDiF3VXHvLYnMM7HUzKjaaFAl6bpsvp9A>
 <xmx:a2IfZ0WG9t8KGBr82f2tt_TAJ27K_GAnM7KWXlB_lghM0g6sEIZvD_KL>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id C94833C0066; Mon, 28 Oct 2024 06:07:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 06:07:16 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <c5d52213-cb1b-408c-8fb5-a7401f690d24@app.fastmail.com>
In-Reply-To: <20241025193055.2235-2-mario.limonciello@amd.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-2-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Mario, On Fri, Oct 25, 2024, at 3:30 PM,
 Mario Limonciello
 wrote: > In order to prepare for allowing multiple handlers, introduce >
 a name field that can be used to distinguish between different > handlers.
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t5Mww-0002IS-Cz
Subject: Re: [ibm-acpi-devel] [PATCH 1/8] ACPI: platform-profile: Add a name
 member to handlers
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

Thanks Mario,

On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
> In order to prepare for allowing multiple handlers, introduce
> a name field that can be used to distinguish between different
> handlers.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/platform/surface/surface_platform_profile.c | 1 +
>  drivers/platform/x86/acer-wmi.c                     | 1 +
>  drivers/platform/x86/amd/pmf/sps.c                  | 1 +
>  drivers/platform/x86/asus-wmi.c                     | 1 +
>  drivers/platform/x86/dell/dell-pc.c                 | 1 +
>  drivers/platform/x86/hp/hp-wmi.c                    | 1 +
>  drivers/platform/x86/ideapad-laptop.c               | 1 +
>  drivers/platform/x86/inspur_platform_profile.c      | 1 +
>  drivers/platform/x86/thinkpad_acpi.c                | 1 +
>  include/linux/platform_profile.h                    | 1 +
>  10 files changed, 10 insertions(+)
>
> diff --git a/drivers/platform/surface/surface_platform_profile.c 
> b/drivers/platform/surface/surface_platform_profile.c
> index 3de864bc66108..61aa488a80eb5 100644
> --- a/drivers/platform/surface/surface_platform_profile.c
> +++ b/drivers/platform/surface/surface_platform_profile.c
> @@ -211,6 +211,7 @@ static int surface_platform_profile_probe(struct 
> ssam_device *sdev)
> 
>  	tpd->sdev = sdev;
> 
> +	tpd->handler.name = "Surface Platform Profile";
>  	tpd->handler.profile_get = ssam_platform_profile_get;
>  	tpd->handler.profile_set = ssam_platform_profile_set;
> 
> diff --git a/drivers/platform/x86/acer-wmi.c b/drivers/platform/x86/acer-wmi.c
> index d09baa3d3d902..53fbc9b4d3df7 100644
> --- a/drivers/platform/x86/acer-wmi.c
> +++ b/drivers/platform/x86/acer-wmi.c
> @@ -1878,6 +1878,7 @@ static int acer_platform_profile_setup(void)
>  	if (quirks->predator_v4) {
>  		int err;
> 
> +		platform_profile_handler.name = "acer-wmi";
>  		platform_profile_handler.profile_get =
>  			acer_predator_v4_platform_profile_get;
>  		platform_profile_handler.profile_set =
> diff --git a/drivers/platform/x86/amd/pmf/sps.c 
> b/drivers/platform/x86/amd/pmf/sps.c
> index 92f7fb22277dc..e2d0cc92c4396 100644
> --- a/drivers/platform/x86/amd/pmf/sps.c
> +++ b/drivers/platform/x86/amd/pmf/sps.c
> @@ -405,6 +405,7 @@ int amd_pmf_init_sps(struct amd_pmf_dev *dev)
>  		amd_pmf_set_sps_power_limits(dev);
>  	}
> 
> +	dev->pprof.name = "amd-pmf";
>  	dev->pprof.profile_get = amd_pmf_profile_get;
>  	dev->pprof.profile_set = amd_pmf_profile_set;
> 
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index 2ccc23b259d3e..c7c104c65a85a 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -3910,6 +3910,7 @@ static int platform_profile_setup(struct asus_wmi *asus)
> 
>  	dev_info(dev, "Using throttle_thermal_policy for platform_profile support\n");
> 
> +	asus->platform_profile_handler.name = "asus-wmi";
>  	asus->platform_profile_handler.profile_get = asus_wmi_platform_profile_get;
>  	asus->platform_profile_handler.profile_set = asus_wmi_platform_profile_set;
> 
> diff --git a/drivers/platform/x86/dell/dell-pc.c 
> b/drivers/platform/x86/dell/dell-pc.c
> index 972385ca1990b..3cf79e55e3129 100644
> --- a/drivers/platform/x86/dell/dell-pc.c
> +++ b/drivers/platform/x86/dell/dell-pc.c
> @@ -247,6 +247,7 @@ static int thermal_init(void)
>  	thermal_handler = kzalloc(sizeof(*thermal_handler), GFP_KERNEL);
>  	if (!thermal_handler)
>  		return -ENOMEM;
> +	thermal_handler->name = "dell-pc";
>  	thermal_handler->profile_get = thermal_platform_profile_get;
>  	thermal_handler->profile_set = thermal_platform_profile_set;
> 
> diff --git a/drivers/platform/x86/hp/hp-wmi.c b/drivers/platform/x86/hp/hp-wmi.c
> index 81ccc96ffe40a..26cac73caf2b9 100644
> --- a/drivers/platform/x86/hp/hp-wmi.c
> +++ b/drivers/platform/x86/hp/hp-wmi.c
> @@ -1624,6 +1624,7 @@ static int thermal_profile_setup(void)
>  		set_bit(PLATFORM_PROFILE_COOL, platform_profile_handler.choices);
>  	}
> 
> +	platform_profile_handler.name = "hp-wmi";
>  	set_bit(PLATFORM_PROFILE_BALANCED, platform_profile_handler.choices);
>  	set_bit(PLATFORM_PROFILE_PERFORMANCE, platform_profile_handler.choices);
> 
> diff --git a/drivers/platform/x86/ideapad-laptop.c 
> b/drivers/platform/x86/ideapad-laptop.c
> index 9d8c3f064050e..1f94c14c3b832 100644
> --- a/drivers/platform/x86/ideapad-laptop.c
> +++ b/drivers/platform/x86/ideapad-laptop.c
> @@ -1102,6 +1102,7 @@ static int ideapad_dytc_profile_init(struct 
> ideapad_private *priv)
> 
>  	mutex_init(&priv->dytc->mutex);
> 
> +	priv->dytc->pprof.name = "ideapad-laptop";
>  	priv->dytc->priv = priv;
>  	priv->dytc->pprof.profile_get = dytc_profile_get;
>  	priv->dytc->pprof.profile_set = dytc_profile_set;
> diff --git a/drivers/platform/x86/inspur_platform_profile.c 
> b/drivers/platform/x86/inspur_platform_profile.c
> index 8440defa67886..03da2c8cf6789 100644
> --- a/drivers/platform/x86/inspur_platform_profile.c
> +++ b/drivers/platform/x86/inspur_platform_profile.c
> @@ -177,6 +177,7 @@ static int inspur_wmi_probe(struct wmi_device 
> *wdev, const void *context)
>  	priv->wdev = wdev;
>  	dev_set_drvdata(&wdev->dev, priv);
> 
> +	priv->handler.name = "inspur-wmi";
>  	priv->handler.profile_get = inspur_platform_profile_get;
>  	priv->handler.profile_set = inspur_platform_profile_set;
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
> b/drivers/platform/x86/thinkpad_acpi.c
> index 4c1b0553f8720..c8c316b8507a5 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10549,6 +10549,7 @@ static void dytc_profile_refresh(void)
>  }
> 
>  static struct platform_profile_handler dytc_profile = {
> +	.name = "thinkpad-acpi",
>  	.profile_get = dytc_profile_get,
>  	.profile_set = dytc_profile_set,
>  };
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index f5492ed413f36..6fa988e417428 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -27,6 +27,7 @@ enum platform_profile_option {
>  };
> 
>  struct platform_profile_handler {
> +	const char *name;
>  	unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
>  	int (*profile_get)(struct platform_profile_handler *pprof,
>  				enum platform_profile_option *profile);
> -- 
> 2.43.0

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
