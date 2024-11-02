Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E09729B9C39
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:15:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73fp-0000ya-CM;
	Sat, 02 Nov 2024 02:15:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73fn-0000yG-Iu
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hhPyU/JFVlrGqI50WnmxKT9SwEq0unJ10nYucX7vUhQ=; b=UvBFTRSDFGdZ5JEHwwIgHdW/n9
 +/ioefO0nKsbREOChS0fTp1ZidcbJiaqOFPIqKrEpKZeAtgAWf6+QkgPp2NwDPoESbmv2nRYaajyk
 cwZakZFzXWdp3E4nu89Z5OEsEgFItQp+sOmQ4fb7iNq1Twaevtcrn6M/3kL5/GYSveOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hhPyU/JFVlrGqI50WnmxKT9SwEq0unJ10nYucX7vUhQ=; b=AHkycpwqsUB1e/rKakCy/wKXkv
 1o0trvjXKZWv5C5UPUzws7bNA4drV3vALKn4Ls9ZZunS/cn2BsA/2I3UESyF16DBMi4tw/Q9ZByDc
 0IEB6Pw5QOD3MLTT9s/r5J9L7VcdH807iG0E3uB6UAo7wRyLRUHozH6d502xq5vgAlBc=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73fl-0003U9-L7 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:15:30 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 9BFB825400F3;
 Fri,  1 Nov 2024 22:15:23 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:15:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513723;
 x=1730600123; bh=hhPyU/JFVlrGqI50WnmxKT9SwEq0unJ10nYucX7vUhQ=; b=
 F0MNO6YJvsXh1gus8qudnkHnekNanEfYYIa0HP/U32gYtiynXrk3VYTjuA2NOR1V
 QGZG27pFdoO2E6GCg8pdTTtdrzx2PmO1GyT3hyTo/jhYxyWOFt++/WepDr9dn+Fc
 TNzTHsTJz4FXf4ZsFYxiKSggz6+UvzdoDyhtfFQTsZCoym3E5JY3uzLCdMMbC3Hf
 bHVBxywVSnJK8/Hyf/Arf44iEdj75QDpp7Gcc0Xs8TEIOwE1uCb6R4HzZ3KSHt7l
 g8R6EtrtxXfbaXAgAwRiwY59dz29+KzXiP1vLe+I0idbmp9seIxPGFebRozNvlzY
 ZuhR2zPc9RhEz4L6ZQ3/1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513723; x=
 1730600123; bh=hhPyU/JFVlrGqI50WnmxKT9SwEq0unJ10nYucX7vUhQ=; b=j
 aLeRXxv1X/r6SjEz2Q51eEvSj9G0bEkOkMkh2SlxEHtU7XEwhAD0VXUNTV2JfeuP
 z+acCHfMvSbtmCe4z8cRuWGHT+K3pkNrSEAim2cbYTTslt3gUUGQgFsrw+5L/+Au
 KQ2lb+sWQtZTT2dWRtnkLb2rxve8gJu+wgR0ipS5bOSSYIJ8+ozsOx2Pho312b6e
 agAjbf6K28wvvNNa3DeMY221BQNdRvgpnVDBvRyostfxg4YofTxh8RQKwRvbof5i
 U6gH2yyeiKSeQfWHKwB7Bkc5TFi2+ex7DEHfu/Jp1J4rQHecwXhOgCJZRXW9JJkM
 +dToT9CapNOEUqpdL85GA==
X-ME-Sender: <xms:O4slZ4Bt5O5koNvfVF-8joMpc6AQX9HJZOApuCinczfK_FBECJfZ4w>
 <xme:O4slZ6i7mSuwgjhsGGhzdLvLdlt7T-z1HTRkfAoa0Ovmr66GRcqximn-pq7BI2k56
 HjSHJRzYwsgdKmUgso>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpeehnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:O4slZ7kuTlWyFycbiotMdT08c-oqxFSWPwr1eU4q8h9H4_skPZdE2w>
 <xmx:O4slZ-yGs1WRqLzs7DmE-MvvIQaHZ07Bnnw9AzoM6RcGH0mOe0qQlw>
 <xmx:O4slZ9Q-fA4NRlGe_HpJXHvaOMd-lJZJ8DsgaODkV89L59BWzAtwag>
 <xmx:O4slZ5bUrw9nU40b-ozAoTCzx5hso3ATfCzL8ci0ddeh_g10etPg0g>
 <xmx:O4slZ-Rjx8oQsrJIZaofi75QbhuLVKUBsMgilZrR6mu-0-J9EVkiATlm>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 45BE03C0066; Fri,  1 Nov 2024 22:15:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:15:03 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <7fec9e68-4cc7-4db9-a6a3-8a2917132ac8@app.fastmail.com>
In-Reply-To: <20241031040952.109057-16-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-16-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > If multiple platform profile handlers have been registered, don't allow
 > switching to profiles unique to only one handler. > > Tested-by: [...] 
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
X-Headers-End: 1t73fl-0003U9-L7
Subject: Re: [ibm-acpi-devel] [PATCH v3 15/22] ACPI: platform_profile: Only
 show profiles common for all handlers
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
> If multiple platform profile handlers have been registered, don't allow
> switching to profiles unique to only one handler.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 38 +++++++++++++++++++++++++--------
>  1 file changed, 29 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 7bd32f1e8d834..90cbc0de4d5bc 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -29,23 +29,43 @@ static bool platform_profile_is_registered(void)
>  	return !list_empty(&platform_profile_handler_list);
>  }
> 
> +static unsigned long platform_profile_get_choices(void)
> +{
> +	struct platform_profile_handler *handler;
> +	unsigned long aggregate = 0;
> +	int i;
> +
> +	lockdep_assert_held(&profile_lock);
> +	list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +		unsigned long individual = 0;
> +
> +		for_each_set_bit(i, handler->choices, PLATFORM_PROFILE_LAST)
> +			individual |= BIT(i);
> +		if (!aggregate)
> +			aggregate = individual;
> +		else
> +			aggregate &= individual;
> +	}
> +
> +	return aggregate;
> +}
> +

I realise this is very unlikely but isn't it possible that the number of profiles could overflow unsigned long number of bits? As handler->choices is an array of them. It should loop through BITS_TO_LONGS(PLATFORM_PROFILE_LAST) cycles.

Also wondered if this could be simplified with setting aggregate = ~0 and then & it with each handler->choices to avoid having to scan individual bits?

>  static ssize_t platform_profile_choices_show(struct device *dev,
>  					struct device_attribute *attr,
>  					char *buf)
>  {
> +	unsigned long choices;
>  	int len = 0;
>  	int i;
> 
> -	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> -		if (!cur_profile)
> -			return -ENODEV;
> +	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock)
> +		choices = platform_profile_get_choices();
> 
> -		for_each_set_bit(i, cur_profile->choices, PLATFORM_PROFILE_LAST) {
> -			if (len == 0)
> -				len += sysfs_emit_at(buf, len, "%s", profile_names[i]);
> -			else
> -				len += sysfs_emit_at(buf, len, " %s", profile_names[i]);
> -		}
> +	for_each_set_bit(i, &choices, PLATFORM_PROFILE_LAST) {
> +		if (len == 0)
> +			len += sysfs_emit_at(buf, len, "%s", profile_names[i]);
> +		else
> +			len += sysfs_emit_at(buf, len, " %s", profile_names[i]);
>  	}
>  	len += sysfs_emit_at(buf, len, "\n");
> 
> -- 
> 2.43.0

This links in to the later patches - but I was wondering if at profile registration/unregistration if building a local choices selection would simplify things.
Then instead of needing platform_profile_get_choices, you can just use your local choices selection to make decisions on what to show, or cycle to - instead of having to cycle thru the profiles and bits every time.

Not 100% sure how well it would work out - but might be simpler and faster?

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
