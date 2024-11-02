Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 482769B9C2D
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Nov 2024 03:14:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t73eX-0006k3-P0;
	Sat, 02 Nov 2024 02:14:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t73eW-0006jw-R4
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YQ+eU7FFr74dJaScVAyAyc16wc8vDYsMV3egRAzYsnY=; b=iOG31ygC2IDHMVTCgxnSkT30nz
 ajZhfWz9H+Lc8vzE88aCn87HdeG0sndmkE+5Ncglmre8HPHjDPExiGVLQ+/nG+2R05BW7Bx2XaMLY
 FCri1yjwvt15XdIzzp1Vr6dQROVDoQ2jw3LxeJzMLgiOo6j26PVBeMC/Fjh/J8hN0YOw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YQ+eU7FFr74dJaScVAyAyc16wc8vDYsMV3egRAzYsnY=; b=k65M2ucNLl6p1XPDU63VxryKhS
 afcoJ3etFzg1VS8kbdWuJzpmeB3DFo35XF8koGiX0kJ8eTcLhfHTWhTCCMgkeMXwYKAKh8j+uGdtl
 QjpNbMa9muw+Ba8od5KShnzBTs1ATIi8JfWuZEHz9le2cqqeuANp/xSiLNCJmnI4eNXo=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t73eW-0003I6-PP for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Nov 2024 02:14:13 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id C40E0114007E;
 Fri,  1 Nov 2024 22:14:06 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 01 Nov 2024 22:14:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730513646;
 x=1730600046; bh=YQ+eU7FFr74dJaScVAyAyc16wc8vDYsMV3egRAzYsnY=; b=
 DHCBpbU3T2/azr9ri1YMl880bxwgyKpoT60a3ZZcGL0eUgPTahqbo6PSqjclo1iU
 neXDpIFBhPRtqcbpbxAKUTr8S3HGxGlfT9OY2FmpgBGxs4XY6bAP88SHakSM1n/7
 8/EJYBIt3fmHGi5lNy3HN/GOeTB0V/Q4fYF5RsR8vvwYJYmJsRpJkKtHchOxSlzH
 eU9rgo+jfaq/+8tAAFiq0hgkJ5AlOqgr6ONnie4IGqHyj3eslPo3p2IBE55JjFWb
 8L9Kq9LSvA+3ATr73lxlWjEXd1Dg+gPKjIohfLCppwGqeiz0xlYAms3X0lqnLrfn
 qLS368Qa7Q/SqlAg5k9ugw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730513646; x=
 1730600046; bh=YQ+eU7FFr74dJaScVAyAyc16wc8vDYsMV3egRAzYsnY=; b=f
 IU/EIsUiH6AAx/3Lrt6HH0P9HDe1pdp8ROHsFmqojrnvZiPmw+cPPXgJ29NvOTQl
 apJW/H7xDLCYvVBFxK6WGy+fEoQnj1QYrWBDbd6rCwYRIGF8XxNmMez3bzmCj1TY
 +j+511sSkJH+nM2xDZv1D0PoDo7jMH+r9eWIpcUloGVtKDRUsMcsyoVbrkApQTTc
 7hj8qg5Jb0HoRQnDf0PM3Z0vdNknVN9fO8AfF1HLym1v8qqomgxKMgtaKMxpu+uS
 vdsP9TK+Gk6d9HBm92n+LmshRMr0tELFZTPfeiDtOqg6XQpouNgtRUyCfxHkIB6o
 TF3KwxvqFT55M8IXZ9MiA==
X-ME-Sender: <xms:7oolZ4-l8CdADSXDCjt0TcDCRqkBvFsCouEXXDmHX8r5tZXd7ypb6g>
 <xme:7oolZwsU_x_rchAz5LxXj-xydCs6JsPba94yLgWwqLoaSWXAk1uMmWnGVwj8V0HAb
 _UGbhJ6iOzHdHpD_90>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeltddggeefucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:7oolZ-DCIccRORhaTo9auB9xaiKIt_v8KvWFyU2g46dgn76c4uI4Rg>
 <xmx:7oolZ4el2ElSAkL_BQPYRnL6gIcUVEUNW1OtchiINtgIy_KMx_GagQ>
 <xmx:7oolZ9OIrfx99ohXlSQI73X_JfZ6LtNglEHPsSOwO2BJuI2S4S_D6Q>
 <xmx:7oolZylwOxxGxOeJNT5pFgffNcBRqC4CLe6Lw8cLHbK9ehr4YAZEQQ>
 <xmx:7oolZxs79KZQuvEJz4MjNMaVgM5B66CdLIzF6lQAMcaZoXfLtHwScaiT>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 714FA3C0066; Fri,  1 Nov 2024 22:14:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 22:13:46 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <26396791-6a7f-4f07-b939-e7b9874ae34c@app.fastmail.com>
In-Reply-To: <20241031040952.109057-7-mario.limonciello@amd.com>
References: <20241031040952.109057-1-mario.limonciello@amd.com>
 <20241031040952.109057-7-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 31, 2024, at 12:09 AM, Mario Limonciello wrote:
 > The sanity check that the platform handler had choices set doesn't > need
 the mutex taken. Move it to earlier in the registration. > > Tes [...] 
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
X-Headers-End: 1t73eW-0003I6-PP
Subject: Re: [ibm-acpi-devel] [PATCH v3 06/22] ACPI: platform_profile: Move
 sanity check out of the mutex
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
> The sanity check that the platform handler had choices set doesn't
> need the mutex taken.  Move it to earlier in the registration.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c 
> b/drivers/acpi/platform_profile.c
> index d0198d2ccb551..f2f2274e4d83e 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -180,6 +180,12 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  {
>  	int err;
> 
> +	/* Sanity check the profile handler */
> +	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> +	    !pprof->profile_set || !pprof->profile_get) {
> +		pr_err("platform_profile: handler is invalid\n");
> +		return -EINVAL;
> +	}
>  	if (!pprof->dev) {
>  		pr_err("platform_profile: handler device is not set\n");
>  		return -EINVAL;
> @@ -192,13 +198,6 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  		return -EEXIST;
>  	}
> 
> -	/* Sanity check the profile handler field are set */
> -	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> -		!pprof->profile_set || !pprof->profile_get) {
> -		mutex_unlock(&profile_lock);
> -		return -EINVAL;
> -	}
> -
>  	err = sysfs_create_group(acpi_kobj, &platform_profile_group);
>  	if (err) {
>  		mutex_unlock(&profile_lock);
> -- 
> 2.43.0

Looks good to me.
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
