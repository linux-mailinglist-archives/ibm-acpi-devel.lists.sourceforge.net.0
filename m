Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A82969B9C48
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:16:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73ge-0003yl-C9;
	Sat, 02 Nov 2024 02:16:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73gc-0003yc-2D
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sqe5h+nWEXB3tXAxjTcRkhhBIT3ZJ93cgqBjduUAUyE=; b=UY2SCKzcpP0vDlM539DQShtX0z
 Ts8fY/AZ8MPGWnEgkqHNUMSIDlj4Udvj8qeiLHo9XdcF5OHzlhlSYACoXUkhV6mxGUbvYaLw8lKIk
 UkhZ6ITiPa56qOvLBZPFwKQFM+IaBJMnHcGraVWwQg1AsmqHYQbe2tOAGkLp0FWkRLfc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sqe5h+nWEXB3tXAxjTcRkhhBIT3ZJ93cgqBjduUAUyE=; b=eAgXnlW1EZJG9tH9r8yLqFbBdp
 rlm1FE4mnEmQybfWIkaz8YT1006tVt7IsY5QhgcFH2BSxBT516v/zSF2MVe1TY67vPXp2oeSle0p/
 hBA5O4SlAyEI+3HM6P9lQNVB+TG2M6enoxyKvwU6BcqUT0/lr/H0SKXEPDsA0EQOctQY=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73gY-0003YH-I5 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:16:19 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 8F6F225400F6;
 Fri,  1 Nov 2024 22:16:12 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:16:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513772;
 x=1730600172; bh=Sqe5h+nWEXB3tXAxjTcRkhhBIT3ZJ93cgqBjduUAUyE=; b=
 NfLsvkjKZgivSdgmqWyWwbeipXUdbEMnr9QJhIDhAbzPz2gTddGFs9UI1RGCCcAz
 87oBpze6FK7BhLm0rNbJUUBMpwDhDPQul97G5Qg67CQ6b1md+FzrIEbnqZyqM01B
 aZ+TdtkfO3tZoh0XLhgVb4PiYM/JXVN98ZPxqgeR/1MxlfLvEuNfliluYTcN6oWk
 5rkY0GNntzVjy90uGGUdUUzRsr2LkwsZvoxFBldOIc15guohZ0WujH8CcLjyoFir
 MbptUf62qWdT9lIpomD8RtKSZW+o47oKN0cdBPE/Gmxdnu7dO55KsA9Vpr0RsKOK
 wXAe8U3ELUYMNO1P2WZ4kA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513772; x=
 1730600172; bh=Sqe5h+nWEXB3tXAxjTcRkhhBIT3ZJ93cgqBjduUAUyE=; b=M
 nEvG9vLHMJdlFt9AD1j9lH6uwuzaolJxDKIQI4ZPIsZ7UAr5tJ56411umaWw5YhM
 ES0NmZPvydkp32BY2stlbJvSogmLgxGz3wGAZCeTh96K+ykREGaltmXWiMJPhMJL
 UzTtyRdLbFwEBIGG04OET9MlbEt2u6ko6UhuqpUQBDmA+hS2V/OTGqNwuhz3IDNN
 nX74t3RfSGu3TqVXTKANB5fRebe0NU62ZAupB0yrk9RdpJGdVii5u/yOOQ0BKFjw
 YtdkXD5NRzIhhjcncInbj6MEB9V7iBvvFdFl6CJ4i67xnpWfL93zDHIt1qX5s8Er
 eBIcUWRLQZd5fWyNr92EA==
X-ME-Sender: <xms:bIslZzHqWROXKS5lraG0r07RwvAMIPSkX27n6FQ2HEfrWknYEkHmVg>
 <xme:bIslZwXZ0rDWzLA-wD2IxRjMXpKZbvOT7y12_tw9e6v8LISIUF_apLAFm11hD6gjg
 Gs8rFKXWAZg3Ryo7Mo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeegucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:bIslZ1I9vRanhgM0eMzmW6fbiCsI3DKIvc_ZYGI9UTv64n3K8No-tw>
 <xmx:bIslZxE0JpxCF3l1QB5T_5wFR1LhhKjQH6nVD3_Az7KHZcyrFQsSiQ>
 <xmx:bIslZ5U1-8hTO9FZNcCG3TZ0XXWmfruEgGGcbvqRsXRDmUWarV2RZA>
 <xmx:bIslZ8NKXGFktiPoKPQGpJNrF5XvyNwAsywrAh0gGYUs6-j8bjmtkQ>
 <xmx:bIslZ23jLoWdJjMdtNZ3AywLyUj2qN3H4hSxJfOoX4hfH_ydSPXFASEH>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 392003C0066; Fri,  1 Nov 2024 22:16:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:15:51 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <34c98d8b-f9b2-41dc-b087-a543f2e897c8@app.fastmail.com>
In-Reply-To: <20241031040952.109057-20-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-20-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > As multiple platform profile handlers might not all support the same >
 profile, cycling to the next profile could have a different result [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.157 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t73gY-0003YH-I5
Subject: Re: [ibm-acpi-devel] [PATCH v3 19/22] ACPI: platform_profile: Check
 all profile handler to calculate next
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
> As multiple platform profile handlers might not all support the same
> profile, cycling to the next profile could have a different result
> depending on what handler are registered.
>
> Check what is active and supported by all handlers to decide what
> to do.
>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 35 ++++++++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 5baac1f9a9c0e..9b681884ae324 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -187,30 +187,41 @@ EXPORT_SYMBOL_GPL(platform_profile_notify);
> 
>  int platform_profile_cycle(void)
>  {
> +	enum platform_profile_option next = PLATFORM_PROFILE_LAST;
> +	struct platform_profile_handler *handler;
>  	enum platform_profile_option profile;
> -	enum platform_profile_option next;
> +	unsigned long choices;
>  	int err;
> 
>  	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> -		if (!cur_profile)
> -			return -ENODEV;
> -
> -		err = cur_profile->profile_get(cur_profile, &profile);
> +		err = platform_profile_get_active(&profile);
>  		if (err)
>  			return err;
> 
> -		next = find_next_bit_wrap(cur_profile->choices, PLATFORM_PROFILE_LAST,
> -					  profile + 1);
> +		choices = platform_profile_get_choices();
> 
> -		if (WARN_ON(next == PLATFORM_PROFILE_LAST))
> -			return -EINVAL;
> +		next = find_next_bit_wrap(&choices,
> +					  PLATFORM_PROFILE_LAST,
> +					  profile + 1);
> 
> -		err = cur_profile->profile_set(cur_profile, next);
> -		if (err)
> -			return err;
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			err = handler->profile_set(handler, next);
> +			if (err) {
> +				pr_err("Failed to set profile for handler %s\n", handler->name);

Suggest highlighting which profile failed (profile_names[next]).

> +				break;
> +			}
> +		}
> +		if (err) {
> +			list_for_each_entry_continue_reverse(handler, 
> &platform_profile_handler_list, list) {
> +				err = handler->profile_set(handler, PLATFORM_PROFILE_BALANCED);
> +				if (err)
> +					pr_err("Failed to revert profile for handler %s\n", 
> handler->name);

Suggest 'Failed to revert to balanced profiile for ...'

> +			}
> +		}
>  	}
> 
>  	sysfs_notify(acpi_kobj, NULL, "platform_profile");
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_cycle);
> -- 
> 2.43.0

My note from patch 15 applies here with having choices determined during registration/unregistration.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
