Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 044FF9B9C34
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:15:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73f6-0006rx-HT;
	Sat, 02 Nov 2024 02:14:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73f3-0006rm-Ud
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTD4lt+iLU7cN0yZuhFfops1FCqb+x9RwToKur8jpZw=; b=ZhPYG88eQ528F0lfmg9CTA9PhU
 WWL3b/UacOi1xdHcHRBEYb3Tw5X8f5EzjHPLTMyitDxPOut6R6SSspnI9xl3gm2lzrR9ROkV5t32d
 BKNOuCHUE4elpmMAcoPreRawx4S5swiucsaqGQIrT8VzZaTyrGOXYctpobn+NulruJ+s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KTD4lt+iLU7cN0yZuhFfops1FCqb+x9RwToKur8jpZw=; b=OFgpmp8nJiZUHO9m69kp1rKU6y
 mCCTXzi9PSxSBgbB+S1lH2Ii7CpKC7LQLAxwW8iAH7BzuvDbzVa5ctUSV9b6R6iC3xJdm3kA0Qj12
 vwZ3SZVaKiCvDu0gFdCP/lb0paqS4NNUx9d4TmXrLUcSeri8A/VVc9kPQK7ggbzDStFE=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73f0-0003Mm-CL for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:14:42 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id 5E22311400C3;
 Fri,  1 Nov 2024 22:14:31 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:14:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513671;
 x=1730600071; bh=KTD4lt+iLU7cN0yZuhFfops1FCqb+x9RwToKur8jpZw=; b=
 HkUUd6Dychnkm2xHYUjZhzPQSqucYeVq80IBqxI6bSEFhCRALzVlex5EeD5eHjfl
 U73DKRuGDUxv/NRImApMkJIvOhlBKfE8W1t87Ezc3Pav+jaT/upZ9sjKxnzHzwuE
 AZvVPVhTq7org9b/TrQHTjfhjcPKl4MZ0EyiDKgUhVylki2JZpw62I82gS2aMjCn
 YpSL7iQwXOiO6rQoaUIj3znaoFH5aVHCfCcQF38B/mx6Icb9RDRdR0Oh/D3LDw3H
 NmYBsnnFsA6my8DoztlCgnyfTiF7TObKpAxo7bxQvcvW3gKi+24WXmIyCqevQZfI
 K6KGCTXYmpUBo+F0NEgWNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513671; x=
 1730600071; bh=KTD4lt+iLU7cN0yZuhFfops1FCqb+x9RwToKur8jpZw=; b=n
 x/Apu0MNOWO9/74SQCfSAI5wXGepUHIy/pEBkwYMN0lN11N6Gur4CGCJMH6MxUa7
 d6+s28jeIgO7jUbGINr6XEmM2VMEcGchI6tLyQdR9odppcQTak8dPfETfVyxSWBa
 00WjK7q3CiCuws0/sPbwdwPNq093OJz2RrNhKZSwaHbvfy0A+s9/wu1Mvmg0JaWb
 UhAEJ1czaoFl2dBp6cMV1bC3PHdQVIybP6tnlT5etoJTDv5agnNzttwZM09nxwTi
 u8bAwOuD8520Fr9/MZhzJ17cmJ7112Fs2Qr/aSzIjHI7tfzs4VU25/+IO6m0NkGA
 rLfDLkbvpsIq3EcbeYkiQ==
X-ME-Sender: <xms:BoslZ1Z__YH8k-GK41nBQTxnNO9aIxyIwuZDjD0KN8-8fZG47Yfrqg>
 <xme:BoslZ8aXlFgW8SOpWoUjNMvokkSY_zxhKjPk1q9mer-HmdDy5n_iGbIIx1-8fqsvy
 XQFOwpcdkH58OXKMA4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeefucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:BoslZ3_biM1FFz9eKo_rxileDmUosTKd1k4jvIEq1uEZA__RbhpH1A>
 <xmx:BoslZzr7cDiln-fgfWxxz0RAihswEdC7dJmS5_u3MkFkJqsq9aSz6g>
 <xmx:BoslZwrYjKuPMMLzt3iERHjciuHojvI8ziU6ZFbaglTXLCLw0AXQ0Q>
 <xmx:BoslZ5SUL-twp5Dsnzh1TTjczxETs6oVToHHh8FPjMft_WlEoIfegw>
 <xmx:B4slZ0qbywQ4V5CWnXlCVvtVBHidKg3Nwv606d_bDykCzB0-WjOcjekx>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id B689F3C0066; Fri,  1 Nov 2024 22:14:30 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:14:10 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <51a93c87-7192-4df0-b61d-a4da57ac0903@app.fastmail.com>
In-Reply-To: <20241031040952.109057-12-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-12-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > Migrate away from using an interruptible mutex to scoped_cond_guard. >
 > Signed-off-by: Mario Limonciello <mario.limonciello@amd.com> > -- [...] 
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
X-Headers-End: 1t73f0-0003Mm-CL
Subject: Re: [ibm-acpi-devel] [PATCH v3 11/22] ACPI: platform_profile: Use
 `scoped_cond_guard` for platform_profile_cycle()
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
> Migrate away from using an interruptible mutex to scoped_cond_guard.
>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 39 +++++++++++++--------------------
>  1 file changed, 15 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 63a5f5ac33898..2d971dba2d917 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -124,36 +124,27 @@ int platform_profile_cycle(void)
>  	enum platform_profile_option next;
>  	int err;
> 
> -	err = mutex_lock_interruptible(&profile_lock);
> -	if (err)
> -		return err;
> +	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> +		if (!cur_profile)
> +			return -ENODEV;
> 
> -	if (!cur_profile) {
> -		mutex_unlock(&profile_lock);
> -		return -ENODEV;
> -	}
> +		err = cur_profile->profile_get(cur_profile, &profile);
> +		if (err)
> +			return err;
> 
> -	err = cur_profile->profile_get(cur_profile, &profile);
> -	if (err) {
> -		mutex_unlock(&profile_lock);
> -		return err;
> -	}
> +		next = find_next_bit_wrap(cur_profile->choices, PLATFORM_PROFILE_LAST,
> +					  profile + 1);
> 
> -	next = find_next_bit_wrap(cur_profile->choices, PLATFORM_PROFILE_LAST,
> -				  profile + 1);
> +		if (WARN_ON(next == PLATFORM_PROFILE_LAST))
> +			return -EINVAL;
> 
> -	if (WARN_ON(next == PLATFORM_PROFILE_LAST)) {
> -		mutex_unlock(&profile_lock);
> -		return -EINVAL;
> +		err = cur_profile->profile_set(cur_profile, next);
> +		if (err)
> +			return err;
>  	}
> 
> -	err = cur_profile->profile_set(cur_profile, next);
> -	mutex_unlock(&profile_lock);
> -
> -	if (!err)
> -		sysfs_notify(acpi_kobj, NULL, "platform_profile");
> -
> -	return err;
> +	sysfs_notify(acpi_kobj, NULL, "platform_profile");
> +	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_cycle);
> 
> -- 
> 2.43.0

For patches 8 to 11 - Looks good to me (guards are new to me - I had to go read up on them. Very cool and a nice clean-up)

Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
