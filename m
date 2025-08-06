Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEE7B1BE1A
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Aug 2025 03:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OfURO0XU8eUUpU/aGrfSJbQqDzFe2RbOEFyN/Z69Qzc=; b=EYYKUsZs90dHFHuPzUZCnES47Z
	/TjNmRbJcILFytMKzhYXDL1ZYEdlC0tYybLL9ZmkShUFz2h04m1LAC2cNGQpXxj1EvhE7bGjCaKhJ
	hKoJc20A8LIlKzmoas2ya2A2JdEpJ7l+alKYLYxCOJvYuPmFMFVwdayw0r0rvT40Wrh4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ujSZg-00085C-3l;
	Wed, 06 Aug 2025 01:04:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1ujSZT-00084k-5j
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Aug 2025 01:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d3ZADj/78KbL/K7Gk/JQaTCX5+gonE0VChhEO6wOovQ=; b=kS5h7asmMIqRK7kViIdM5exEDr
 jADJflEW5R6cYHEESWsxtCtZWEAK/x2EHM5zNyY9Hp7xnXVFwM+xMcS9edTEfEFC7i/DKbNMxgmaf
 ddcjKJp1Fz2xmEnfQHSS1ZnusQpGkZJItr4KyDqgp/adpHjVKhlWibo3c1GSxiyM/Mik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d3ZADj/78KbL/K7Gk/JQaTCX5+gonE0VChhEO6wOovQ=; b=mwtS6Jl3K20DRzlp2Rh8++OhMh
 lkof5lZKhTZN65xMy6BBte0wBljdOLLPPUulYd1KVzcDIVosNd5AJtZUOwVRStLZgkh8nU2vZR3Dn
 +Acv1CRWmC2vinIb3mGuylnmhLKw/fyNS5EYhpnZQwuHRrIXC+UnYYn9nWfPC+9VS040=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujSZR-0001NI-P2 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Aug 2025 01:03:59 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.stl.internal (Postfix) with ESMTP id 3450B1D001C2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue,  5 Aug 2025 21:03:52 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Tue, 05 Aug 2025 21:03:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1754442232;
 x=1754528632; bh=d3ZADj/78KbL/K7Gk/JQaTCX5+gonE0VChhEO6wOovQ=; b=
 XHeNRi4kfpwePgiqIwwo74zIC7Qkg/z5P+9C5BK/Ed7tNx6eem3plnSl0xClKzQq
 NZVMjbigfaLS5z7nb5/PDMbHvkZUJdMK7FbjVxcbNcVJM9EhfHJxlyV2cvbj4e7W
 vy6opIe8RaErW4NkQbROm+uitdOZJgmutcHN6rpUnmROw/fwwA6wdnkOcItCn55e
 XjqoHphWUaygQgISa9iuepLS6IVfSOovlQtf0qMRF7fwuCkzrJ9EXsbOIjfAdg/k
 c6zU4QJakow+YJ2R/O5Bc21tb33uTd8lM4UMsn7pTxiXkluqpysiiVKBnZSr4jeD
 2tjyc10EBMdF6TpzpYU3Cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1754442232; x=1754528632; bh=d
 3ZADj/78KbL/K7Gk/JQaTCX5+gonE0VChhEO6wOovQ=; b=bi6sE8ShiyyFbf5kK
 3KEKGpCYfcF5Ju9tO6bEDqLV9nG1/Y9TNKU/e43ZHDxncbRLPcdlMda4RsMqJrCP
 15gW/UCUyntPeU0cTq4TBykjCMTOWU6AyPeOdfAADMknqCVpQm94mwSlX8kKw7Vb
 gOR8nuVo4vOpDuFWnpUg0LeHmhL02XjNzldln5xxSPI3/ol0eIPHM7h/n+mFuEzU
 WWIRO+gxOB8qHOFB/FqwFUSfif6VOPF6LRd6qZ1mxxqzGX3zkttB8I4JpFshXl+0
 3Y93lPMq8gcVoFxmf/9jco4cgs+mt7kDMn6I8CQ3f45bgLHek1ecqkoFWLb3VJHR
 lzhTg==
X-ME-Sender: <xms:96mSaFvB0c2Wg3pqBH9KQI8OY0zYsd10o5PxdRtQXxDAvEB40pPLCA>
 <xme:96mSaOcx4Ydt_uApIXdKfivqM_ATlrx8laCm3j2eHX7DELmOHk3RK-GLw4_fH2B-p
 c0VoutyEWXt1paZ8G0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduudeiieekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvkfgjfhfutgfgsehtjeertd
 ertddtnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdq
 lhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpeekffeutdevke
 ejueekgfeljeegteeludeutedufeduheefhfehfeelheehffffkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhp
 ohhuthdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlheslhhishhtshdrshhouh
 hrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:96mSaCFk7_cDXSUN3JXBUbs4a9j0ZCFDJvPiqbctvxokd9jIxGJVdA>
 <xmx:96mSaHk9dDL3sjLO-5XJ5MvArBU-rxlPz5d_rwBH72BH7PQ_ij6-yQ>
 <xmx:96mSaHLP70WGj7-3frZ4lzAEedSnV3OOdlVg3BBJXLhPZqJ6M3rzNg>
 <xmx:96mSaAbJkmNGXjf1HbUwyeEGmLTAqjLqYCRTpsczwAblsSajUoqX1w>
 <xmx:-KmSaJWqWUwzj9tUBwA4sjbAfq-hFU_I-oKoVZL4tV_o3o1WLgZT0PwE>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id BF97A2CE0071; Tue,  5 Aug 2025 21:03:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T6a023ed65d37728a
Date: Tue, 05 Aug 2025 21:03:31 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: ibm-acpi-devel@lists.sourceforge.net
Message-Id: <b5c4584c-0ce1-4935-bdac-eb7ea2ca726b@app.fastmail.com>
In-Reply-To: <CAEk1YH6D_r8koPvb9g+y+2Va4iLWKjGAmf05O9Wke==SaHOqvA@mail.gmail.com>
References: <CAEk1YH6D_r8koPvb9g+y+2Va4iLWKjGAmf05O9Wke==SaHOqvA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 5, 2025, at 7:58 PM, Damjan Georgievski wrote:
 > hopefully last of my barrage of X9 issues > > I'm getting this in the kernel
 logs: > kernel: thinkpad_acpi: ThinkPad ACPI EC access misbeha [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ujSZR-0001NI-P2
Subject: Re: [ibm-acpi-devel] ACPI EC access misbehaving
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

On Tue, Aug 5, 2025, at 7:58 PM, Damjan Georgievski wrote:
> hopefully last of my barrage of X9 issues
>
> I'm getting this in the kernel logs:
> kernel: thinkpad_acpi: ThinkPad ACPI EC access misbehaving, disabling
> thermal sensors access
>
> how concerned should I be about this?
>
> the system is the Thinkpad X9-14, or rather:
>
> ```
> kernel: DMI: LENOVO 21QA0048RM/21QA0048RM, BIOS N4DET30W (1.13 ) 04/02/2025
> ...
> kernel: ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
> ...
> kernel: thinkpad_acpi: ThinkPad BIOS N4DET30W (1.13 ), EC N4DHT29W
> kernel: thinkpad_acpi: Lenovo ThinkPad X9-14 Gen 1, model 21QA0048RM
> ```
>
Yep - known issue and still under analysis by our FW team.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
