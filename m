Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D98F3AED107
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 29 Jun 2025 22:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=goYiew1N3buHmPMeuRKo541m5hA+I/uYMPDpzG13O2I=; b=fTgvUANdyK/tfIzF1dFzXpYWYf
	SmUzI89ZkmH/kW+K04mw6ApmoILE8smDEVsBGc7B5hvub/AFx3b8AgUqS2MnbYc5yNx7AlABAuc41
	z6Eg9DV6lxNexwYWcYVqvqwRG6D7c/dKqvWcH8bFKysukgqv6o0rL7F8egFX6ZebepXY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uVyrw-0001Jj-Tt;
	Sun, 29 Jun 2025 20:43:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uVyrv-0001Jb-5x
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 29 Jun 2025 20:43:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BWGPBaX9iZOJRCEWLGCGTXE+Ju/KNnNYjIQVnEWkVnM=; b=laqSXyL96pzrnfaUw85vwAQl0D
 X+ESEBLwjgJ2AqhRBpPhx90ixHnwgxaudYjklfpxNvI3DeKzgly2Ta1NeWnwdWlbFeGaheSXxp2c9
 MeKCxVFjmpD2Z3FrF+xbmC5tLk903f9nekWwTmGgZTJ9GkO+A3G46IEEJ4vyo83JWVYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BWGPBaX9iZOJRCEWLGCGTXE+Ju/KNnNYjIQVnEWkVnM=; b=bnjE0pbh+O0/gxWU56wjC6DM3m
 NAQkGeCJjsDqCi1JS0r0/6h2AJMh/vnbm2uJ2dKQczndeaMN4o1zpS+i7TzDfJ5oFRLzzHXyxcTKb
 pkNgPsax658HU9q3Pm1POAM1joA5/rzFkZeLvsS/LFaGsVYdrf4s9xhbBQf6D5U7KiBA=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uVyru-0002X8-Fw for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 29 Jun 2025 20:43:19 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id BE120EC0192;
 Sun, 29 Jun 2025 16:43:07 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Sun, 29 Jun 2025 16:43:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1751229787;
 x=1751316187; bh=BWGPBaX9iZOJRCEWLGCGTXE+Ju/KNnNYjIQVnEWkVnM=; b=
 PmUmfuQ/w/rWA0/ThuLPG+bpC6n9sCQ3pfgs8WXDvvZeYcx0849Hum9xN1NKyjxx
 0XA82cpqCqP5ZjrfAy/HdK6RjAFK9BtdakknOZiSUlCW6jc4lQH/Hz1MHTjIX+W4
 Sbgl0oI3U/9sPv0XwDGK2kklVFMptdhht2jMMAqQA5cYqAkKSrFCzULLdgrIh2LX
 Q/kMGHmiqC3lskbwoXjbiD/lr8jbvNdQsO4VV6A8rjSaiTs/9sEYKXmwHjrP/1Zv
 UT8E8jIwKdJFIAAiKeSnSG/krM9akQbJ9bW9ox3/A3At0gG67FsMdRWmGjzARjPm
 OOmjQG8ETEO85zWQuDRb3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1751229787; x=
 1751316187; bh=BWGPBaX9iZOJRCEWLGCGTXE+Ju/KNnNYjIQVnEWkVnM=; b=f
 OX/IolZrJwn1quz5mnOQv5PHDNufVWXvrCmoReTvTjiya90I83gqcNAkzXftw4Nj
 sv246G0BExOZOmW+s15uRb6YHG3V9AsMHvLJPV6WojbCguhzF2Ze0RNTIaemzTbL
 wevvMYjihZgFjuH7gl83e6/I/7Xt15FXcBUBiTrYdSx4wyxsf4wm3kIaHynjLJVn
 JGz9A8R2o8fZDFjC28pbUoq1qE3jdFML8Z3fHPzere6uQH6b4HOyBof8wCIyhmpz
 RnTAdxLYj5RHLlS+IiEKi5qG79pd/x2w2Kckg8hiNjvn8b90ry4Uchkr4UGVC81V
 VyjZUcbt0ZXU+lUVKx7QQ==
X-ME-Sender: <xms:WaVhaLb-mMk-Y1ZEQRldwp3SF0taxDPDEcJfJQOpwIExKzY3irN4cQ>
 <xme:WaVhaKYTujbYDaQeB6FXCoIWplEoYMHLLNtYR5k-CNzADisNKYuBKNZ56A243oQ5C
 qKpqDkw54ZOSDkWvYM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdelkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfofgrrhhkucfr
 vggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqe
 enucggtffrrghtthgvrhhnpefhuedvheetgeehtdehtdevheduvdejjefggfeijedvgeek
 hfefleehkeehvdffheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggp
 rhgtphhtthhopeduiedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepughmihhtrh
 ihrdhtohhrohhkhhhovhesghhmrghilhdrtghomhdprhgtphhtthhopehvihhshhhnuhho
 tghvsehgmhgrihhlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpd
 hrtghpthhtohephhgrnhhsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepmhhinhhg
 oheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgrlhhisehkvghrnhgvlhdrohhrgh
 dprhgtphhtthhopehvshgrnhhkrghrsehlvghnohhvohdrtghomhdprhgtphhtthhopeht
 ghhlgieslhhinhhuthhrohhnihigrdguvgdprhgtphhtthhopehilhhpohdrjhgrrhhvih
 hnvghnsehlihhnuhigrdhinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:WaVhaN_ZSYMzUux5Ji1ASSLj1jGYIHYWxTKhYGQRXJOgKOhdsiPZtQ>
 <xmx:WaVhaBqKp8A2FpFuXAcVg5M5m0jlHT6GbVcjkOfV8YBNqHQn09EGLQ>
 <xmx:WaVhaGrtpKVJgpgke10PHleITxhc9ZLgt3wVzRpR-acXfxSEFLQqeQ>
 <xmx:WaVhaHTuJP-QBEKO7niuhkgmiEI_pAN_Ndlfhj5qoHPRHGFMefRn2Q>
 <xmx:W6VhaMvG1jSNMrcEpo71wY4cCr8AaP1SJhj3hC9QlKeDIORjGaJ-4jlu>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 947592CE0071; Sun, 29 Jun 2025 16:43:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Tc8ff538d84ba1a5c
Date: Mon, 30 Jun 2025 05:42:45 +0900
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,
 "Vishnu Sankar" <vishnuocv@gmail.com>
Message-Id: <4ad6e1e1-aca8-4774-aa4a-60edccaa6d0e@app.fastmail.com>
In-Reply-To: <5jgix7znkfrkopmwnmwkxx35dj2ovvdpplhadcozbpejm32o2j@yxnbfvmealtl>
References: <20250620004209.28250-1-vishnuocv@gmail.com>
 <5jgix7znkfrkopmwnmwkxx35dj2ovvdpplhadcozbpejm32o2j@yxnbfvmealtl>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dmitry, On Fri, Jun 27, 2025, at 2:14 PM, Dmitry Torokhov
 wrote: > Hi Vishnu, > > On Fri, Jun 20, 2025 at 09:42:08AM +0900, Vishnu
 Sankar wrote: >> Newer ThinkPads have a doubletap feature that needs to be
 tu [...] 
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
X-Headers-End: 1uVyru-0002X8-Fw
Subject: Re: [ibm-acpi-devel] [PATCH] x86/Mouse: thinkpad_acpi/Trackpoint:
 Trackpoint Doubletap handling
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
Cc: zhoubinbin@loongson.cn, jay_lee@pixart.com, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 tglx@linutronix.de, jon_xie@pixart.com, pali@kernel.org, mingo@kernel.org,
 hansg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Dmitry,

On Fri, Jun 27, 2025, at 2:14 PM, Dmitry Torokhov wrote:
> Hi Vishnu,
>
> On Fri, Jun 20, 2025 at 09:42:08AM +0900, Vishnu Sankar wrote:
>> Newer ThinkPads have a doubletap feature that needs to be turned
>> ON/OFF via the trackpoint registers.
>> Systems released from 2023 have doubletap disabled by default and
>> need the feature enabling to be useful.
>> 
>> This patch introduces support for exposing and controlling the
>> trackpoint doubletap feature via a sysfs attribute.
>> /sys/devices/platform/thinkpad_acpi/tp_doubletap
>> This can be toggled by an "enable" or a "disable".
>> 
>> With this implemented we can remove the masking of events, and rely on
>> HW control instead, when the feature is disabled.
>> 
>> Note - Early Thinkpads (pre 2015) used the same register for hysteris
>> control, Check the FW IDs to make sure these are not affected.
>> 
>> trackpoint.h is moved to linux/input/.
>
> No, please keep everything private to trackpoint.c and do not involve
> thinkpad_acpi driver. By doing so you are introducing unwanted
> dependencies (for both module loading, driver initialization, and
> operation) and unsafe use of non-owned pointers/dangling pointers, etc.
>

Do you have recommendations on how to handle this case then?

This is a Thinkpad specific feature and hence the logic for involving thinkpad_acpi. There are Thinkpad hotkeys that will enable/disable the trackpoint doubletap feature - so there is some linkage. I'm not sure how to avoid that.

Is there a cleaner way to do this that you'd recommend we look at using? It's a feature (albeit a minor one) on the laptops that we'd like to make available to Linux users.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
