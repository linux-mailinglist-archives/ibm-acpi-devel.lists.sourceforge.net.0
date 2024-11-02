Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6002B9B9C44
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:16:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73gP-0006us-W9;
	Sat, 02 Nov 2024 02:16:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73gO-0006uh-7W
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y1ZSW/P7hMCHuve2Z4n5mPL2BrcmOglDs3B4Iz+Rs+k=; b=K6Lei/Ls+X6Od1Hv3QH9WCT+Fa
 FiluKr1grcqsJuOQrzIjZ4ingmljYGlj2tMn/FzeMddek+7URz6+ZXMkiGL15za1INRZMQNohdezB
 42+L7RyzimUSAond/82K3zVNuQO7ICnExTwFT+4Ys0pl2lKhTq5PBsx6sOwRLnZFDdFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y1ZSW/P7hMCHuve2Z4n5mPL2BrcmOglDs3B4Iz+Rs+k=; b=hQsV6J0EgjF4gu2H/nBqEV/L2W
 st15cIHb6oO+RlO+FrjEp37LORO1e7sKH7M1fhWAHp1sMX6lWM2iffPiTLI8zJuR5QGAFpgL1JGPU
 ig/gNSzWXxFA2E1qYmGtvv0pEio5OLmBoiJVeh77u4m1FgRHkVe5B+uNiirQbuyNbPH8=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73gJ-0003X9-6B for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:16:03 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 366FF25400F3;
 Fri,  1 Nov 2024 22:15:57 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:15:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513757;
 x=1730600157; bh=y1ZSW/P7hMCHuve2Z4n5mPL2BrcmOglDs3B4Iz+Rs+k=; b=
 Cn/o5Pe4s7wq+mIJHAg20CFYTwguidZPxAPS3mJFYob+Z4HZDMORKKaCDGUrgt/4
 FyT3aUoenNMBKwR6tlya61PpFjt7HJurW4itHqV5/YxxeRvNbCng2erkq6nIJ39l
 b1EieO+9yixU681HwxYAY2F+2q6TC+jLIB3773nMEgzzKw3X7OXHTDfHBeznq3yM
 W89Doaa4ARnVDELv09mgk2/927uxY+wf6EnXbA0R8vODGEfQvA6nyevyjOU6bRqM
 TI6FpcHsAUunmymVkKoVP/t76ZE5Ryh75NFigsgnn87VmKjWdEhZYwWzLHcxJRc0
 CcKVaPhlXaOnwR30tbhWEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513757; x=
 1730600157; bh=y1ZSW/P7hMCHuve2Z4n5mPL2BrcmOglDs3B4Iz+Rs+k=; b=C
 1jdaovB7FZ+VoONSKOwzWgxgmLfEcBTvb0s79Bqr7IdjjS4DMJq/P7SUdDmlbtmG
 LiIT5mmND5oXCYyUPRDY4daGB3oXvIhfNLIDhMCHa578zCa+M8dMtRlMbbh5Sbtu
 NESFjt/OPpcdhBy5C3W3mxQLOvMZb2HFo8AHt2U4g8mjulu2X10/nuYFPVFKMt4D
 7HBBrQWw8W+SCksbtjsJCKRKHyNsPgjXwSlGHp5rdz4TVb5htEJ8fFfZYrzP6CS2
 1D0UyhrrAEpppSH1BxkMR5LBjAfZyFtRgYLDVX70OBZkA42MjCs7aiOXyK+MjnI6
 Iu5me8dOpPG9GMgQx7S7w==
X-ME-Sender: <xms:XIslZ8W8SKcsWnJV4t9p-HWvCF1r21IjQZHJHBGy6P95gBVcE2T54A>
 <xme:XIslZwl6I7cFfWI7zQe1LdCFIpRantZtA1Munz-9CH1sgYyZkACQSIOMnQ_IG20Zq
 GrtRgiIbYUapOEADCM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpeejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:XIslZwZkax8UIQMb2-cyWSeK7jeuw2shZIOeEovT0-YPSpDxFOlJLA>
 <xmx:XIslZ7VmAoviQg8kACiIqvUY-8SQOL7CHvVQ5wtzzv5kjWy8Z8uqIg>
 <xmx:XIslZ2kdbDnqN3bdm0vWuyxDnBBjXw5c1eu9pxViILtUrB_hb78adQ>
 <xmx:XIslZwd4J0FjN29pUXVs_7vbqjS76vMoieKmH5cYFpaeKh3Ex6zDmA>
 <xmx:XYslZ-GQIbMmWby_TICml60CGaQr4gaogzECGM3sAaiX48IoZkTl_5bX>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id D734F3C0066; Fri,  1 Nov 2024 22:15:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:15:35 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <5b3a857b-16dc-4db4-aa7f-a104c09dc90e@app.fastmail.com>
In-Reply-To: <20241031040952.109057-19-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-19-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > If for any reason multiple profile handlers don't agree on the profile
 > report the custom profile to userspace. > > Signed-off-by: Mario [...] 
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
X-Headers-End: 1t73gJ-0003X9-6B
Subject: Re: [ibm-acpi-devel] [PATCH v3 18/22] ACPI: platform_profile: Make
 sure all profile handlers agree on profile
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
> If for any reason multiple profile handlers don't agree on the profile
> report the custom profile to userspace.
>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 39 +++++++++++++++++++++++++++------
>  1 file changed, 32 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 3128bd16615b6..5baac1f9a9c0e 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -51,6 +51,36 @@ static unsigned long platform_profile_get_choices(void)
>  	return aggregate;
>  }
> 
> +static int platform_profile_get_active(enum platform_profile_option *profile)
> +{
> +	struct platform_profile_handler *handler;
> +	enum platform_profile_option active = PLATFORM_PROFILE_LAST;
> +	enum platform_profile_option val;
> +	int err;
> +
> +	lockdep_assert_held(&profile_lock);
> +	list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +		err = handler->profile_get(handler, &val);
> +		if (err) {
> +			pr_err("Failed to get profile for handler %s\n", handler->name);
> +			return err;
> +		}
> +
> +		if (WARN_ON(val >= PLATFORM_PROFILE_LAST))
> +			return -EINVAL;
> +
> +		if (active != val && active != PLATFORM_PROFILE_LAST) {
> +			*profile = PLATFORM_PROFILE_CUSTOM;
> +			return 0;
> +		}
> +		active = val;
> +	}
> +
> +	*profile = active;
> +
> +	return 0;
> +}
> +
>  static ssize_t platform_profile_choices_show(struct device *dev,
>  					struct device_attribute *attr,
>  					char *buf)
> @@ -81,18 +111,13 @@ static ssize_t platform_profile_show(struct device *dev,
>  	int err;
> 
>  	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> -		if (!cur_profile)
> +		if (!platform_profile_is_registered())
>  			return -ENODEV;
> -
> -		err = cur_profile->profile_get(cur_profile, &profile);
> +		err = platform_profile_get_active(&profile);
>  		if (err)
>  			return err;
>  	}
> 
> -	/* Check that profile is valid index */
> -	if (WARN_ON((profile < 0) || (profile >= ARRAY_SIZE(profile_names))))
> -		return -EIO;
> -
>  	return sysfs_emit(buf, "%s\n", profile_names[profile]);
>  }
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
