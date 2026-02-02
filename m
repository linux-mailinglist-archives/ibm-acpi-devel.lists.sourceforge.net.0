Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKibBGwogWnsEQMAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 02 Feb 2026 23:42:52 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB08D25A3
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 02 Feb 2026 23:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vLt3Wf2j7ZSB2DAZnebXa3PZTpL9KY+1OKS8TDLmhKc=; b=Ik8xipVBHKmwhHE5wJtvzQ6y01
	FePGLHd5i2rxnZ27PJAcg3ori2hrPWxo0MgJ2uIC1wEvU9h/nuEtigAgfSoVfrhZePY52PV72abap
	Bko43FPF/WLWuNKNainJpQim5mIDpfMflOE59iN6ZlyWNSHLMHjtQykFJMl+0S8XUpsg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vn2ca-0006sY-Dy;
	Mon, 02 Feb 2026 22:42:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1vn2cY-0006s6-T8
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 02 Feb 2026 22:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GIHhdvbgfouUqgTO6JGsJtbTO9lUUF9al1cNIIuHJ7w=; b=OkKZxRmkEBY3hVC17qbXrLXAeo
 0QrunLEypiVAwElNoptmsmJVs/b7dDgWcws3FDr8bow9tcAQbTxZJazhdX7zrxdP7sAlAhZokE/TU
 H+9CzzaiHK4WqsNBLEZRSMBZetdeTWH0PFGF5rdQNXoco6GrAh2FLcyxzPYsz4u3WUyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GIHhdvbgfouUqgTO6JGsJtbTO9lUUF9al1cNIIuHJ7w=; b=e9l2cWZ1oL2EHj9zSnbdhnpxVk
 dKWS1Z31I4Ccz3/hcCMsi+4uUi3KWEWy8Q7vCRaYkpvfnNJ6OQdw0rrt2v/o7cODdtTE4/tVVymx4
 EjtOeb+bbqYC9/24040RnNx3AKmS7SphDZHwAHJvzwuUTQOcPdi6QJ65C3v9tanfCK/A=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vn2cX-0005gH-B4 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 02 Feb 2026 22:42:14 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 628F47A0033;
 Mon,  2 Feb 2026 17:21:40 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Mon, 02 Feb 2026 17:21:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1770070900;
 x=1770157300; bh=GIHhdvbgfouUqgTO6JGsJtbTO9lUUF9al1cNIIuHJ7w=; b=
 iCDU7uwWnG/imAcXm7o6tuI4JstzAFxDpwDXTX7xRUxVpteGZ5CQUeOHfsc3+eOZ
 RrLYE3qia20OGH2NI4OYGOdYuyMRnNHoo2GvKUdw9ubTF4WqqaX8h9FgR/sJ/5Jv
 4qUeelAd6VZjDooRZz/wYvRksnCVnQsI71EhBciEgnT17I33IJAG7/PBZH06QzBB
 au1+tbtUG+0CAB5NXX7f4GLsIpcZ+r9PLl/FfJfoiNpgSlk3eS85QIdPL99cV2XF
 3q1Q0oj2dPq492kq8+BbuaF34T4IdK0C1Hneymaruf1hy03uTCM8lXxT7D9xVDMO
 tDpcyNdWl0jtDa8ioAw4tQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770070900; x=
 1770157300; bh=GIHhdvbgfouUqgTO6JGsJtbTO9lUUF9al1cNIIuHJ7w=; b=P
 oOtQv6u9cV4DNhEj1xx1pPZSQlERBp3G7G6CgB5Ok2hlOLomDpw7TliO+CFXSSNm
 TiQkNDvfbvphAi8cWJKG4yqvfTH7n7LOci6IzQywXf9GIFKnCNmoFoITPny71kTT
 6zvJiY/Mgt7wvn9W+yQRMJ1yW+qH2Da/4TOkX13LPuNQSOsVkr4mmlPgE46AanTs
 KMXai1Q3X7rnrNwnhVuaF02MRRclH0vdGJJgIWCAwAL4rcQRrsQuPuXF+KMRRceN
 k4u6JW3tGSbs3E6yXqOUmUwIjQo/WKtiuSW/GzeAd7gW3Yk1hQfoAn/afRRIJ0z9
 68UzaC6KNjaYuD3/UCJUA==
X-ME-Sender: <xms:cyOBade50CXTIj33kEk63MI-_J87lOXVSoNn7knUTtpKWwgsjYj72A>
 <xme:cyOBaWAemUDypDhtlsOTHHuDNA9BwmUGzqXMaaJHVAeB_ftSnRVysPiXY1OJX7PSR
 W6WmufBdlv5LLvOQauUIjrjN4YwKHVDpxSgqE54BsrjQZrvWOAiCd8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddujeekkedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfofgrrhhk
 ucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtg
 grqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdehtdevheduvdejjefggfeijedv
 geekhfefleehkeehvdffheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhn
 sggprhgtphhtthhopeekpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegtohgshi
 essgihthgvmhgrphdrshhprggtvgdprhgtphhtthhopeguvghrvghkjhhohhhnrdgtlhgr
 rhhksehgmhgrihhlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpd
 hrtghpthhtohephhgrnhhsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihhlphho
 rdhjrghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisg
 hmqdgrtghpihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdp
 rhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
 dprhgtphhtthhopehplhgrthhfohhrmhdqughrihhvvghrqdigkeeisehvghgvrhdrkhgv
 rhhnvghlrdhorhhg
X-ME-Proxy: <xmx:cyOBaXuACOBKcYEdNz2TNasuo0n95lI-aNFZXV3nieTxfTrprGJOww>
 <xmx:cyOBaY7sEjT17SS7_pNFNdX9FQlkBOkkfmotb9zbwtcK_5jM0jMq0A>
 <xmx:cyOBabdIhSyD9iZyfYriUS2RAG1iRz45NcdnU-uNkJCSnDlcfLwlVg>
 <xmx:cyOBadxGlObR4xYQzs7PuOw29Z8qD6JX8SDcn_G7jNYbBYfunWwblQ>
 <xmx:dCOBaV-Z5RKxGPA1X5c5Z5L4h7DRzk6Eyqq7Lxz1hM911rslNr3u_2wH>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 0718F2CE0072; Mon,  2 Feb 2026 17:21:39 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AzspBGjVLsSB
Date: Mon, 02 Feb 2026 17:21:18 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Coby McKinney" <coby@bytemap.space>, "Hans de Goede" <hansg@kernel.org>, 
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <4106b16f-4537-4b14-b5ba-545e2d1e0734@app.fastmail.com>
In-Reply-To: <20260202205214.18898-1-coby@bytemap.space>
References: <20260202205214.18898-1-coby@bytemap.space>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 2, 2026, at 3:52 PM,
 Coby McKinney wrote: > checkpatch.pl
 reported warnings where seq_printf() was used for simple > strings with no
 format specifiers. > > Replace these instances with seq [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vn2cX-0005gH-B4
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: use
 seq_puts() instead of seq_printf()
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
Cc: "open list:THINKPAD ACPI EXTRAS DRIVER"
 <ibm-acpi-devel@lists.sourceforge.net>,
 open list <linux-kernel@vger.kernel.org>,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.80 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_RECIPIENTS(0.00)[m:coby@bytemap.space,m:hansg@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:ibm-acpi-devel@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:derekjohn.clark@gmail.com,m:hmh@hmh.eng.br,m:platform-driver-x86@vger.kernel.org,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[squebb.ca];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,vger.kernel.org,gmail.com,hmh.eng.br];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,squebb.ca:s=fm1,messagingengine.com:s=fm3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,squebb.ca:-,messagingengine.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,squebb.ca:email,checkpatch.pl:url,app.fastmail.com:mid]
X-Rspamd-Queue-Id: CBB08D25A3
X-Rspamd-Action: no action

On Mon, Feb 2, 2026, at 3:52 PM, Coby McKinney wrote:
> checkpatch.pl reported warnings where seq_printf() was used for simple
> strings with no format specifiers.
>
> Replace these instances with seq_puts() to avoid the overhead of runtime
> string parsing and to conform to kernel coding standards.
>
> Signed-off-by: Coby McKinney <coby@bytemap.space>
> ---
>  drivers/platform/x86/lenovo/thinkpad_acpi.c | 86 ++++++++++-----------
>  1 file changed, 43 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/platform/x86/lenovo/thinkpad_acpi.c 
> b/drivers/platform/x86/lenovo/thinkpad_acpi.c
> index 6b0e4b4c485e..ffe71cbf3cb8 100644
> --- a/drivers/platform/x86/lenovo/thinkpad_acpi.c
> +++ b/drivers/platform/x86/lenovo/thinkpad_acpi.c
> @@ -1315,7 +1315,7 @@ static ssize_t 
> tpacpi_rfk_sysfs_enable_store(const enum tpacpi_rfk_id id,
>  static int tpacpi_rfk_procfs_read(const enum tpacpi_rfk_id id, struct 
> seq_file *m)
>  {
>  	if (id >= TPACPI_RFK_SW_MAX)
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  	else {
>  		int status;
> 
> @@ -1330,7 +1330,7 @@ static int tpacpi_rfk_procfs_read(const enum 
> tpacpi_rfk_id id, struct seq_file *
>  		}
> 
>  		seq_printf(m, "status:\t\t%s\n", str_enabled_disabled(status == 
> TPACPI_RFK_RADIO_ON));
> -		seq_printf(m, "commands:\tenable, disable\n");
> +		seq_puts(m, "commands:\tenable, disable\n");
>  	}
> 
>  	return 0;
> @@ -4017,7 +4017,7 @@ static int hotkey_read(struct seq_file *m)
>  	int res, status;
> 
>  	if (!tp_features.hotkey) {
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  		return 0;
>  	}
> 
> @@ -4033,10 +4033,10 @@ static int hotkey_read(struct seq_file *m)
>  	seq_printf(m, "status:\t\t%s\n", str_enabled_disabled(status & BIT(0)));
>  	if (hotkey_all_mask) {
>  		seq_printf(m, "mask:\t\t0x%08x\n", hotkey_user_mask);
> -		seq_printf(m, "commands:\tenable, disable, reset, <mask>\n");
> +		seq_puts(m, "commands:\tenable, disable, reset, <mask>\n");
>  	} else {
> -		seq_printf(m, "mask:\t\tnot supported\n");
> -		seq_printf(m, "commands:\tenable, disable, reset\n");
> +		seq_puts(m, "mask:\t\tnot supported\n");
> +		seq_puts(m, "commands:\tenable, disable, reset\n");
>  	}
> 
>  	return 0;
> @@ -4933,7 +4933,7 @@ static int video_read(struct seq_file *m)
>  	int status, autosw;
> 
>  	if (video_supported == TPACPI_VIDEO_NONE) {
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  		return 0;
>  	}
> 
> @@ -4949,18 +4949,18 @@ static int video_read(struct seq_file *m)
>  	if (autosw < 0)
>  		return autosw;
> 
> -	seq_printf(m, "status:\t\tsupported\n");
> +	seq_puts(m, "status:\t\tsupported\n");
>  	seq_printf(m, "lcd:\t\t%s\n", str_enabled_disabled(status & BIT(0)));
>  	seq_printf(m, "crt:\t\t%s\n", str_enabled_disabled(status & BIT(1)));
>  	if (video_supported == TPACPI_VIDEO_NEW)
>  		seq_printf(m, "dvi:\t\t%s\n", str_enabled_disabled(status & BIT(3)));
>  	seq_printf(m, "auto:\t\t%s\n", str_enabled_disabled(autosw & BIT(0)));
> -	seq_printf(m, "commands:\tlcd_enable, lcd_disable\n");
> -	seq_printf(m, "commands:\tcrt_enable, crt_disable\n");
> +	seq_puts(m, "commands:\tlcd_enable, lcd_disable\n");
> +	seq_puts(m, "commands:\tcrt_enable, crt_disable\n");
>  	if (video_supported == TPACPI_VIDEO_NEW)
> -		seq_printf(m, "commands:\tdvi_enable, dvi_disable\n");
> -	seq_printf(m, "commands:\tauto_enable, auto_disable\n");
> -	seq_printf(m, "commands:\tvideo_switch, expand_toggle\n");
> +		seq_puts(m, "commands:\tdvi_enable, dvi_disable\n");
> +	seq_puts(m, "commands:\tauto_enable, auto_disable\n");
> +	seq_puts(m, "commands:\tvideo_switch, expand_toggle\n");
> 
>  	return 0;
>  }
> @@ -5204,14 +5204,14 @@ static int kbdlight_read(struct seq_file *m)
>  	int level;
> 
>  	if (!tp_features.kbdlight) {
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  	} else {
>  		level = kbdlight_get_level();
>  		if (level < 0)
>  			seq_printf(m, "status:\t\terror %d\n", level);
>  		else
>  			seq_printf(m, "status:\t\t%d\n", level);
> -		seq_printf(m, "commands:\t0, 1, 2\n");
> +		seq_puts(m, "commands:\t0, 1, 2\n");
>  	}
> 
>  	return 0;
> @@ -5378,16 +5378,16 @@ static int light_read(struct seq_file *m)
>  	int status;
> 
>  	if (!tp_features.light) {
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  	} else if (!tp_features.light_status) {
> -		seq_printf(m, "status:\t\tunknown\n");
> -		seq_printf(m, "commands:\ton, off\n");
> +		seq_puts(m, "status:\t\tunknown\n");
> +		seq_puts(m, "commands:\ton, off\n");
>  	} else {
>  		status = light_get_status();
>  		if (status < 0)
>  			return status;
>  		seq_printf(m, "status:\t\t%s\n", str_on_off(status & BIT(0)));
> -		seq_printf(m, "commands:\ton, off\n");
> +		seq_puts(m, "commands:\ton, off\n");
>  	}
> 
>  	return 0;
> @@ -5477,10 +5477,10 @@ static int cmos_read(struct seq_file *m)
>  	/* cmos not supported on 570, 600e/x, 770e, 770x, A21e, A2xm/p,
>  	   R30, R31, T20-22, X20-21 */
>  	if (!cmos_handle)
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  	else {
> -		seq_printf(m, "status:\t\tsupported\n");
> -		seq_printf(m, "commands:\t<cmd> (<cmd> is 0-21)\n");
> +		seq_puts(m, "status:\t\tsupported\n");
> +		seq_puts(m, "commands:\t<cmd> (<cmd> is 0-21)\n");
>  	}
> 
>  	return 0;
> @@ -5847,10 +5847,10 @@ static int __init led_init(struct ibm_init_struct *iibm)
>  static int led_read(struct seq_file *m)
>  {
>  	if (!led_supported) {
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  		return 0;
>  	}
> -	seq_printf(m, "status:\t\tsupported\n");
> +	seq_puts(m, "status:\t\tsupported\n");
> 
>  	if (led_supported == TPACPI_LED_570) {
>  		/* 570 */
> @@ -5863,7 +5863,7 @@ static int led_read(struct seq_file *m)
>  		}
>  	}
> 
> -	seq_printf(m, "commands:\t<led> on, <led> off, <led> blink (<led> is 
> 0-15)\n");
> +	seq_puts(m, "commands:\t<led> on, <led> off, <led> blink (<led> is 
> 0-15)\n");
> 
>  	return 0;
>  }
> @@ -5947,10 +5947,10 @@ static int __init beep_init(struct 
> ibm_init_struct *iibm)
>  static int beep_read(struct seq_file *m)
>  {
>  	if (!beep_handle)
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  	else {
> -		seq_printf(m, "status:\t\tsupported\n");
> -		seq_printf(m, "commands:\t<cmd> (<cmd> is 0-17)\n");
> +		seq_puts(m, "status:\t\tsupported\n");
> +		seq_puts(m, "commands:\t<cmd> (<cmd> is 0-17)\n");
>  	}
> 
>  	return 0;
> @@ -6399,14 +6399,14 @@ static int thermal_read(struct seq_file *m)
>  	if (unlikely(n < 0))
>  		return n;
> 
> -	seq_printf(m, "temperatures:\t");
> +	seq_puts(m, "temperatures:\t");
> 
>  	if (n > 0) {
>  		for (i = 0; i < (n - 1); i++)
>  			seq_printf(m, "%d ", t.temp[i] / 1000);
>  		seq_printf(m, "%d\n", t.temp[i] / 1000);
>  	} else
> -		seq_printf(m, "not supported\n");
> +		seq_puts(m, "not supported\n");
> 
>  	return 0;
>  }
> @@ -6919,10 +6919,10 @@ static int brightness_read(struct seq_file *m)
> 
>  	level = brightness_get(NULL);
>  	if (level < 0) {
> -		seq_printf(m, "level:\t\tunreadable\n");
> +		seq_puts(m, "level:\t\tunreadable\n");
>  	} else {
>  		seq_printf(m, "level:\t\t%d\n", level);
> -		seq_printf(m, "commands:\tup, down\n");
> +		seq_puts(m, "commands:\tup, down\n");
>  		seq_printf(m, "commands:\tlevel <level> (<level> is 0-%d)\n",
>  			       bright_maxlvl);
>  	}
> @@ -7638,10 +7638,10 @@ static int volume_read(struct seq_file *m)
>  	u8 status;
> 
>  	if (volume_get_status(&status) < 0) {
> -		seq_printf(m, "level:\t\tunreadable\n");
> +		seq_puts(m, "level:\t\tunreadable\n");
>  	} else {
>  		if (tp_features.mixer_no_level_control)
> -			seq_printf(m, "level:\t\tunsupported\n");
> +			seq_puts(m, "level:\t\tunsupported\n");
>  		else
>  			seq_printf(m, "level:\t\t%d\n",
>  					status & TP_EC_AUDIO_LVL_MSK);
> @@ -7649,9 +7649,9 @@ static int volume_read(struct seq_file *m)
>  		seq_printf(m, "mute:\t\t%s\n", str_on_off(status & BIT(TP_EC_AUDIO_MUTESW)));
> 
>  		if (volume_control_allowed) {
> -			seq_printf(m, "commands:\tunmute, mute\n");
> +			seq_puts(m, "commands:\tunmute, mute\n");
>  			if (!tp_features.mixer_no_level_control) {
> -				seq_printf(m, "commands:\tup, down\n");
> +				seq_puts(m, "commands:\tup, down\n");
>  				seq_printf(m, "commands:\tlevel <level> (<level> is 0-%d)\n",
>  					      TP_EC_VOLUME_MAX);
>  			}
> @@ -9157,9 +9157,9 @@ static int fan_read(struct seq_file *m)
>  		} else if (fan_status_access_mode == TPACPI_FAN_RD_TPEC) {
>  			if (status & TP_EC_FAN_FULLSPEED)
>  				/* Disengaged mode takes precedence */
> -				seq_printf(m, "level:\t\tdisengaged\n");
> +				seq_puts(m, "level:\t\tdisengaged\n");
>  			else if (status & TP_EC_FAN_AUTO)
> -				seq_printf(m, "level:\t\tauto\n");
> +				seq_puts(m, "level:\t\tauto\n");
>  			else
>  				seq_printf(m, "level:\t\t%d\n", status);
>  		}
> @@ -9167,19 +9167,19 @@ static int fan_read(struct seq_file *m)
> 
>  	case TPACPI_FAN_NONE:
>  	default:
> -		seq_printf(m, "status:\t\tnot supported\n");
> +		seq_puts(m, "status:\t\tnot supported\n");
>  	}
> 
>  	if (fan_control_commands & TPACPI_FAN_CMD_LEVEL) {
> -		seq_printf(m, "commands:\tlevel <level>");
> +		seq_puts(m, "commands:\tlevel <level>");
> 
>  		switch (fan_control_access_mode) {
>  		case TPACPI_FAN_WR_ACPI_SFAN:
> -			seq_printf(m, " (<level> is 0-7)\n");
> +			seq_puts(m, " (<level> is 0-7)\n");
>  			break;
> 
>  		default:
> -			seq_printf(m, " (<level> is 0-7, auto, disengaged, full-speed)\n");
> +			seq_puts(m, " (<level> is 0-7, auto, disengaged, full-speed)\n");
>  			break;
>  		}
>  	}
> @@ -9189,7 +9189,7 @@ static int fan_read(struct seq_file *m)
>  			       "commands:\twatchdog <timeout> (<timeout> is 0 (off), 1-120 
> (seconds))\n");
> 
>  	if (fan_control_commands & TPACPI_FAN_CMD_SPEED)
> -		seq_printf(m, "commands:\tspeed <speed> (<speed> is 0-65535)\n");
> +		seq_puts(m, "commands:\tspeed <speed> (<speed> is 0-65535)\n");
> 
>  	return 0;
>  }
> -- 
> 2.52.0

Looks good to me. Thanks!
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
