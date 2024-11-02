Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5319B9C49
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:16:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73gi-000146-PI;
	Sat, 02 Nov 2024 02:16:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73gg-00013n-Ld
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:16:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vP58K3GxwI0krgh4T0ir8Z/MG0lVm+dJJ+Fi2CLGnkw=; b=iJz6/KVHyEovLn/2PeLcvAdli2
 rXWYEuP71YnTGgHlwpMLcNKMl1JpQ4iczTfEs3JofkSmbcDs4cwr2FRLi78ryl1R7b88iY4/5yVUh
 t15L8Zh2bPNTiuReuFmo4NKZhSB8pEZbK6F6twrvWB2wsU5M2UdhFpkxmjYxROZB0Nrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vP58K3GxwI0krgh4T0ir8Z/MG0lVm+dJJ+Fi2CLGnkw=; b=IHdTFpSyrIbBX1llZNiMg/cYH6
 W12khhDVIrqoV8HrcrpZSejTPNkt5YZzDKEcxmV0RVX4RpyWMqROyiDLaV1OnL6LOi2mqcqH3D3se
 H/40lcBNS5eAXSxoF+pizLOr5nVJj1gpIa5qNuXrk8XtQ4d1fEV3tcJk3FMvK79z4t+A=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73gf-0003Yq-Ss for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:16:26 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id CCA131140083;
 Fri,  1 Nov 2024 22:16:19 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:16:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513779;
 x=1730600179; bh=vP58K3GxwI0krgh4T0ir8Z/MG0lVm+dJJ+Fi2CLGnkw=; b=
 AvMazv8mZNs30NeyYiQZl5xf3m/cabGz3BGW2m0k1gRRQe5wlHYqyb15FSiVRP9C
 JAqMHhDaWVKy20PZK4M/vTnDDJkBFcIqc2hVzN2TKPugLNSPuVEo3SyFx1KmyvoF
 AHSvg/IQaLMSg5ASe7/glCF92oU3ZOhGkCwS+H9d8BqEHhaXfVpOLkhUXginwj+A
 1UR3zHh5BWBFT2ztOb4qUdYst2I3sTPVdWFRxmj8dEDU54glPGQlyFzZjmz3ITzn
 kqHLt4EFVlNjgx4VO2XqGsLW7Rxj7Ck0fJf+5DNILUdaLhx4gZ7PNFVjKjAAIQgr
 KsH4NMBHiMxzKqvH64nhiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513779; x=
 1730600179; bh=vP58K3GxwI0krgh4T0ir8Z/MG0lVm+dJJ+Fi2CLGnkw=; b=X
 YFtRlZZljhar3kGcxOmTq5coxi6fYFBL5qa374xFUWSvuQo/P8m/p0I7Dl+rcnxu
 mv1tH9thdotxtlRFvd38CISoaUmaBkErTPHmfU0lyPiAQnt07iDOP8q/RhdweF1Q
 dLcBnnxD4yF89Wm+K5yLX0pLawUqBfI0oRoDaQJS/cWPHHNUPi9yPHgG1vLZce+K
 4qs0KhjMWzjmUPL068b1gRngp80hamA1t/jJWx8bfNIw+kVzgS5owZnBDo+ppAIC
 vekXisygpb+hXtCAVyKszOtN4sd1vtgLWSqcuIkDb5mlKN+kmWuUt7snjczZlu/T
 rfBAm1/9t6HRDMqzusvDg==
X-ME-Sender: <xms:c4slZ4naSnFCvNyYikEXsxdoX9DlAXj2Gx_ao21NqSWopq9eGssAVw>
 <xme:c4slZ30-eAkxATHaFhaZzcAa8arARDiFCZnWB31PK6UEZNZ4luA-Znkizovwoi98j
 u5MuUpgGhXNd5PqFeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:c4slZ2pB8wgaA5xjILiv9cTHntVAMxioFLaJFiZMeS9aAvRVhpRBNg>
 <xmx:c4slZ0mC89oZ-_dipp1ym04L1DKP1gsTMSrAG75_zGYSPmNMjbVNIw>
 <xmx:c4slZ23TS6YRhBN4Ho5CZ4gkINr3JqA5AGY3zoeD7bGxIP67imlNww>
 <xmx:c4slZ7uPn928O6Q6X19ex4LZBpuAtboBLJI4tpO2kFFID_Trr_RI1w>
 <xmx:c4slZwWCHN6KzydXs0tC1HHAzilavpKkSTANQ_Wdrf6QbXJia8ZmRpva>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 7A17F3C0066; Fri,  1 Nov 2024 22:16:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:15:58 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <22e1712a-d5ca-411d-b75c-2cb2288ecbf7@app.fastmail.com>
In-Reply-To: <20241031040952.109057-22-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-22-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > Multiple drivers may attempt to register platform profile handlers, > but
 only one may be registered and the behavior is non-deterministic [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t73gf-0003Yq-Ss
Subject: Re: [ibm-acpi-devel] [PATCH v3 21/22] ACPI: platform_profile: Allow
 multiple handlers
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
> Multiple drivers may attempt to register platform profile handlers,
> but only one may be registered and the behavior is non-deterministic
> for which one wins.  It's mostly controlled by probing order.
>
> This can be problematic if one driver changes CPU settings and another
> driver notifies the EC for changing fan curves.
>
> Modify the ACPI platform profile handler to let multiple drivers
> register platform profile handlers and abstract this detail from userspace.
>
> To avoid undefined behaviors only offer profiles that are commonly
> advertised across multiple handlers.
>
> If any problems occur when changing profiles for any driver, then revert
> back to the balanced profile, which is now required.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 1cc8182930dde..a845524a248b9 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -9,7 +9,6 @@
>  #include <linux/platform_profile.h>
>  #include <linux/sysfs.h>
> 
> -static struct platform_profile_handler *cur_profile;
>  static LIST_HEAD(platform_profile_handler_list);
>  static DEFINE_MUTEX(profile_lock);
> 
> @@ -212,7 +211,8 @@ static const struct attribute_group 
> platform_profile_group = {
> 
>  void platform_profile_notify(void)
>  {
> -	if (!cur_profile)
> +	guard(mutex)(&profile_lock);
> +	if (!platform_profile_is_registered())
>  		return;
>  	sysfs_notify(acpi_kobj, NULL, "platform_profile");
>  }
> @@ -280,9 +280,6 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  	}
> 
>  	guard(mutex)(&profile_lock);
> -	/* We can only have one active profile */
> -	if (cur_profile)
> -		return -EEXIST;
> 
>  	registered = platform_profile_is_registered();
>  	if (!registered) {
> @@ -313,7 +310,6 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  	list_add_tail(&pprof->list, &platform_profile_handler_list);
>  	sysfs_notify(acpi_kobj, NULL, "platform_profile");
> 
> -	cur_profile = pprof;
>  	return 0;
> 
>  cleanup_device:
> @@ -336,8 +332,6 @@ int platform_profile_remove(struct 
> platform_profile_handler *pprof)
> 
>  	list_del(&pprof->list);
> 
> -	cur_profile = NULL;
> -
>  	sysfs_notify(acpi_kobj, NULL, "platform_profile");
> 
>  	sysfs_remove_group(&pprof->class_dev->kobj, &platform_profile_group);
> -- 
> 2.43.0

Looks good to me
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
