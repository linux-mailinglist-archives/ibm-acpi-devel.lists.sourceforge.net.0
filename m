Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAACAD4684
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 11 Jun 2025 01:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BbdjUDetsEPQ2T0xqSIvqVUxfIXvSYRsdOLGd/PU8g=; b=l2Wu98ikahMgIQiLZ8e0MRQ3fu
	9baclypLr+KyUZeGT3wmC/l1EYJc2qahiyw7u847zhIJlU0iHiL/6QbmRrkaBmAgketooBlseoZyB
	rr5lw5WZdkyQlT+I+1xTBVyMRacGfEUfyYECl6OfrX1O2/PwqHK+GT3KsZYP5OUSOjLs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP88S-0002OX-TQ;
	Tue, 10 Jun 2025 23:12:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uP88R-0002ON-Gp
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 23:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qDJgBUcJfJgiZmP8rmKonm+Khzfd7QP8iKE+QK3IZhM=; b=gwigwIOQ088ncTXj1kYQC1RrRO
 1jQpui+4eoWeOXaibkKMJTUV5UdyTpN2ZLGqfWj+Jjhsn7GTLsfu2FjK9QYgVqZoD7TMbuHnq4V8t
 h19kRwUofAuV8TOL4ojkQGYUkcXonpPD0Qb7ClWAe+JkQ3NqGh4GZG7mlOUUI1ttD9vQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qDJgBUcJfJgiZmP8rmKonm+Khzfd7QP8iKE+QK3IZhM=; b=mhM+odS2QaRYjsrTOIim+zkPfk
 3VXGuiebt4QmvVPgBrcgzJJKyAVdOiMpCAfiw9XF3aLTqp93p7Gy0t9tOgi1Ohl4d+0R8NaLE3gwA
 EJFa2AhEtBwalajrhjnlB4XDq1TKqvvrCKEB8n5/EXy1KwoMuyV4IXNLvbUWUaTvUimc=;
Received: from fhigh-b5-smtp.messagingengine.com ([202.12.124.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP88Q-0005ot-Ul for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 23:12:03 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 2706A2540106;
 Tue, 10 Jun 2025 19:11:57 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Tue, 10 Jun 2025 19:11:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749597117;
 x=1749683517; bh=qDJgBUcJfJgiZmP8rmKonm+Khzfd7QP8iKE+QK3IZhM=; b=
 U6FbT/UJuUuMDXHNSX0eu51+tL4jbkR/Bm4jQPck57+6LUf7nwbq+bbvr/9HkMaA
 8DjmeR3bHQjc4pZrsVv4KuV5O12dlSxG3E0Iy99KDQ5H33dEDkhZvTGFrtxVjbN1
 tHjaw797VEIU4++5w7HUBvckQzxizluG7pZo2QI7YizbHPA4fSpz6HT5oEvV1PFO
 rvcYW9r39nUXa7oLxA5OGd7t1AVaY3Kn19qdXcx8QmqFf6g2xYuoMZXkqIU7sZ7o
 aXLEEu9ieMggVV31/k1HisecHxMT5Z0JNiFPtgKofStKR1lSNtSo8zyOxQKGc0T/
 3D83lGo8Z31ryAnhc6Y/cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749597117; x=
 1749683517; bh=qDJgBUcJfJgiZmP8rmKonm+Khzfd7QP8iKE+QK3IZhM=; b=K
 qzwWuv2hSqt/vZp7TnqVk7LwcsCZRBSh4+L5k1Evetj5/oKGEeeVZ5aW5W7N+eH/
 MAPGh53XdN3tbesaVZDejICVzYGL4AK7GrMu5Pgmnsx4DcyfA+pZEhF9VkD6SIwS
 DsmJpv7y3z/ij8MiAt2NazNoVrd2RhFssVrBRZjKgiiMHgmYeHo16csX6ymlGDiV
 35In2wwtE8p09OdBi1C29ByktGAUaqTVCkGpzzQ276xdp0UO1L+SERR/XIB2BFeH
 2cvxfky1WRwAgTJnH753Cq2DIlAj4pUW2MeY/I+hYDHTYNgSLSbLdg0qKYoYkbBk
 MHoV7PMFA09yvAkRm5QKQ==
X-ME-Sender: <xms:vLtIaGq6ewm0E1eqvnyWM2VGeRp7Cxclod77bkUsI-CkQWWDoqKKwA>
 <xme:vLtIaEq310CHc6cHGk2KFraFWWvtTpfwza_rY7gMITtxg-zqYfM5ODdl58ZHRkcGL
 kKxnizBWjFyOi9_jY8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdduudefkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredt
 tdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfeuvdehteeghedt
 hedtveehuddvjeejgffgieejvdegkefhfeelheekhedvffehnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepledpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepihhkvghprghnhhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohep
 figprghrmhhinhesghhmgidruggvpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsg
 hrpdhrtghpthhtoheprghnughrihihrdhshhgvvhgthhgvnhhkoheslhhinhhugidrihhn
 thgvlhdrtghomhdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnsehlihhnuhigrd
 hinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohephhguvghgohgvuggvse
 hrvgguhhgrthdrtghomhdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehplhgrthhfohhrmhdqughrihhvvghrqd
 igkeeisehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:vLtIaLPeHYaGpMIqiG6fhDRw5n6flB7bxdqkQ8VxSwCVb7Z9Aa8wvA>
 <xmx:vLtIaF4QtLwbtmk6ejMcMSwn3pxiAYwHUYQ0VshppAbfRGT5S91_tQ>
 <xmx:vLtIaF4wS_ZIIOEiqnRr_5dn1GfIXLmTW2P_Vh7CKgrSGhvN2HU25A>
 <xmx:vLtIaFioBge3fL2CkhgxZkTON-9KyTclUTjuntBDmM9mC_NjswvmXA>
 <xmx:vLtIaLHPG7Or6MiG3zjSc_VrnrPPMJKodRx_gpYdbwlqAYjU9ELH7FYv>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 5B12A2CE0063; Tue, 10 Jun 2025 19:11:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Tue, 10 Jun 2025 19:11:36 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <002d39fe-44ed-45a4-9410-4fecf1c2163f@app.fastmail.com>
In-Reply-To: <aEiVHXI4vS9BDOPW@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-2-mpearson-lenovo@squebb.ca>
 <aEiVHXI4vS9BDOPW@smile.fi.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 10, 2025, at 4:27 PM, Andy Shevchenko wrote: >
 On Tue, Jun 10, 2025 at 03:28:25PM -0400, Mark Pearson wrote: >> Create lenovo
 subdirectory for holding Lenovo specific drivers. > > Assuming [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uP88Q-0005ot-Ul
Subject: Re: [ibm-acpi-devel] [PATCH v4 2/2] platform/x86: Move Lenovo files
 into lenovo subdir
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
Cc: Armin Wolf <W_Armin@gmx.de>, ibm-acpi-devel@lists.sourceforge.net,
 ikepanhc@gmail.com, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jun 10, 2025, at 4:27 PM, Andy Shevchenko wrote:
> On Tue, Jun 10, 2025 at 03:28:25PM -0400, Mark Pearson wrote:
>> Create lenovo subdirectory for holding Lenovo specific drivers.
>
> Assuming Kconfig entries have mostly been copied'n'pasted, the rest LGTM,

Yes - no changes from what they were previously.

> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>
Thanks for the reviews and help with both patches

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
