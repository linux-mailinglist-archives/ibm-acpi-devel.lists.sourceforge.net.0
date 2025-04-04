Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 300CFA7BE0A
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  4 Apr 2025 15:39:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u0hFu-0006Qu-Ow;
	Fri, 04 Apr 2025 13:38:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1u0hFt-0006Ql-5r
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 13:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=75XAmlfVNzc6h+b5l/KysRyzERzovGK4ho8zX4Qn46Q=; b=LyE3+T3exxo+puHnTx7BwR6xmT
 0axzkSSHHslz5JhaU2quYDJ4b+lCmjLVPaXxkSlTBgJvzUKioTV9CkiaCkFG2gaAaXXubpJzm9qRh
 9if6Q7MIJmJSHR4YZNeq5z98Xj4aZK3C+nvKNFcJBelqPgMk6hxUyoTNGnhXx4Au9fow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=75XAmlfVNzc6h+b5l/KysRyzERzovGK4ho8zX4Qn46Q=; b=ev4CPUahk3wSGvJrq2cSMlt9ma
 P8CURr925DM40AxD4631dzJLwwWGafT/qgJH6hXoJ/c4sRXhWyuVw/TQl/Rcw80lWsFdPC1Y88oUJ
 LvzBdNUr7r4eNqDxI5PhtDfjBFeS8oL9S1JHXXq00JaX5JSE2w/RD1Afr4EotrlDWG90=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0hFc-0005R9-9g for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 13:38:44 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 8D8401140106
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri,  4 Apr 2025 09:38:17 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-06.internal (MEProxy); Fri, 04 Apr 2025 09:38:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1743773897;
 x=1743860297; bh=75XAmlfVNzc6h+b5l/KysRyzERzovGK4ho8zX4Qn46Q=; b=
 AY2K+DYpX9BKwWm5m0UN+ekj1dsCITC5ZEKAB8tcUJC4DhmTaydiI+wx3EudZvcV
 zdbuCkSEmcC3t2TQYPhimoO3C13iw/74cQbL3UByuY0fbmTKKFx62Jf4UurkReok
 EV/f6tHB2s9NBDiJgodOgXs/DAfTXNCu6rvXTJBse7FpWYrYlw9yjgM/hPBKbrs1
 yyHYPyK+HC29caOFrw8smN/L0DU9X2eJmvUpRs9ualEn8fzn32615CtUNMlXISFa
 q40O2FXn2OnTd7fkQWBps0lC1RZ+G2jneqgdkcCkser+VbZjZaC2Ipxk99EadWAU
 qCv0BtzFU2THuAg7kkNLmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1743773897; x=1743860297; bh=7
 5XAmlfVNzc6h+b5l/KysRyzERzovGK4ho8zX4Qn46Q=; b=umJqSI4L5O6CQeOcP
 YVbw+6IGe40XRcZvzZSV/7QXg1BJuxv+vXenrGMhwdX+1KNLFGYKgyjoZCplO6la
 yrE8ITBGkGqyeXT/qm9ES0Djzqwf/TKuPLMbecdpuHSlBCQSF40qBdRsdKNUiXLn
 RsxxhjspPismUdxeex3/tTImyuuIbUosgXYpxQh0IIHiKhBusbWYevuquGlA3xbA
 Aq4PzDijIQP/h+iaxZr62F2ygASCk+5BYQK/NenPkepOXBm1rnxoe0o73rKmkmGS
 TfZFDmE7gw6rW4UK1PEHKkskV8Rd90LTNDvbQEY0zgSGxs42XusO4KaBwGioePjl
 7C7Jg==
X-ME-Sender: <xms:yeDvZy0QidRurothP9rH8EAHpXF9uaBF6bCOio9EYDwa8ycz9SVbIQ>
 <xme:yeDvZ1FtVtqnoy-zjaUV4n99D1XGi4Hk1049XWmBotKdczhhZ0VqJO5Bxq-aQQ2YG
 WYzEHl7elhD83e8850>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduleduheekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefogg
 ffhffvkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfofgrrhhkucfrvggrrhhs
 ohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeihedugfffjeetuedtveffkeelfeehhfdtffevjedutdegteekgeef
 udelheelgfenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhsthhsrdhsohhurhgt
 vghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:yeDvZ66pD5nV6YyrhPjaxy8O4GJj0lKADgiFY50wLXB0ewLdyPjH_w>
 <xmx:yeDvZz3_aNMKYKL6I1UJv3JE6htiGEJ4faAS6zrMK6Pfk4SgjrKsjQ>
 <xmx:yeDvZ1E_hcdMSkyuiIpLOWuE6b3D0qLNHXfy_xtuYHLsvRfRkMJJHg>
 <xmx:yeDvZ89XMciq7rrqIs9XA6NGOqwCXfSU8tNCcH0q2ZITBw-_uvkYiw>
 <xmx:yeDvZ67avuhMHqakdQ6TLL26BrAq1PgfXV8HeoTreQqqJtyZn9AbEePu>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 3DC0B3C006B; Fri,  4 Apr 2025 09:38:17 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T2ed4cbfd7d3a7ac0
Date: Fri, 04 Apr 2025 09:37:56 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: ibm-acpi-devel@lists.sourceforge.net
Message-Id: <244d92a7-745a-46f4-add4-a95d5ddb5509@app.fastmail.com>
In-Reply-To: <AS8PR08MB94796AD5D1A7844E8F7393C394A92@AS8PR08MB9479.eurprd08.prod.outlook.com>
References: <a8308cd7-5943-48b6-a2e3-c7d371093887.20fc86b6-d351-4c25-aa7d-2c8a9fc6a0f0.42103c22-1ad8-4a83-a642-0c0da79ff41d@emailsignatures365.codetwo.com>
 <AS8PR08MB94796AD5D1A7844E8F7393C394A92@AS8PR08MB9479.eurprd08.prod.outlook.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Emma, On Fri, Apr 4, 2025, at 8:59 AM, Emma Dahlbo via
 ibm-acpi-devel wrote: > Hello, > > I recently ran into an issue with the Lenovo
 ThinkPad L14 Gen 5 (AMD) > laptop when working with function keys. With [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.146 listed in sa-accredit.habeas.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.146 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [202.12.124.146 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u0hFc-0005R9-9g
Subject: Re: [ibm-acpi-devel] No ACPI event for F11 function key on Lenovo
 ThinkPad
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Emma,

On Fri, Apr 4, 2025, at 8:59 AM, Emma Dahlbo via ibm-acpi-devel wrote:
> Hello,
>
> I recently ran into an issue with the Lenovo ThinkPad L14 Gen 5 (AMD) 
> laptop when working with function keys. With Linux Kernel 6.6, pressing 
> FN+F11 will generate an ACPI event called "ibm/hotkey LEN0268:00 
> 00000080 00001320". However, with versions 6.11 and 6.12, this key 
> press does not generate any ACPI event at all.
>
> Additionally, there is an error in the journal:
>
> kernel: thinkpad_acpi: unhandled HKEY 0x1320
> kernel: thinkpad_acpi: please report the conditions when this event 
> happened to ibm-acpi-devel@lists.sourceforge.net
>
> However, this error shows up in all kernel versions that I tested (6.6, 
> 6.11, 6.12) and seems to not be connected (at least not directly) to 
> the ACPI issue.
>
> I reproduced this issue both with IGEL OS and Ubuntu 24.10 (kernel 6.11).
>
This was recently fixed upstream:
https://github.com/torvalds/linux/commit/7ba618e893a4580b04fb883aaed3f00539c3c361
I think the kernels you're testing must have picked up the fix, hence why you're not seeing the message anymore.

As a note, that particular hotkey feature doesn't do anything under Linux. I think you can register the KEY_LINK_PHONE action to do something in user space, but by default it gets ignored.

> Feel free to contact me if more details are needed!
>

Just as a note, for Thinkpad/ThinkCenter issues I have a weekly meeting with IGEL engineers. Ping me off mailing list if you need details :)

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
