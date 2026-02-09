Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBlZH6ABimluFQAAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 09 Feb 2026 16:47:44 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8132112226
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 09 Feb 2026 16:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nyPRUOepiBtB0WBqwNXgeVtaaI/7pMn9phEdNja2MpY=; b=XTIIKqsLZ+FpYrKbD/5idmnjZj
	fjcWOUmhTjruk7UQuqkJQsajTobWUlqRlVkfGKfG+qQg7IkHNRtOT0NZHWn6ZI05bE+hxet3SQNN5
	z3LvBeMK2TjlbphjC3Hg30aSnrgN2ckaOGJFiooDj/K4leXYV1gJzfnvEU31iEdT2iKE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vpTTE-00052r-A9;
	Mon, 09 Feb 2026 15:46:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1vpTTB-00052h-Ix
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Feb 2026 15:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VVTc8AFxFWprNshjFgBiGVbkOhoCEuBZq1vKIvtqqc4=; b=Nez6NLGMgLXrqysz6e3z1mhJIX
 0XSdpNy9bLgJyJ9IJ6iw78xNkwH2Wt5MMV92N0IgAQXoHNUHTNkT0Nz51/Jz8PSSCV/bAyYndN/kJ
 Sem6ff94bE4p2VYDy9wOLUuEkrU9yqgP4qnGFPlEdrjzsmRofWqT9/4jwsnSh47806Ic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VVTc8AFxFWprNshjFgBiGVbkOhoCEuBZq1vKIvtqqc4=; b=auIJfnFFbyP6BpT6t/04kJigFO
 9dddr8EZ9JjsievF3rto5geMtEqjod/+lPKH0tTq6egf6zqEkqhpbVHiqJBh8Rby9Ehp2OGFweyPU
 QksJbeYWVmrC7rCaoMxXl2H990wzjN+fdNeWoXegecHOJneGoHpW3Vn0LyTujBUS9zaE=;
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vpTTA-0003vc-CV for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Feb 2026 15:46:37 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id B82591D0017E;
 Mon,  9 Feb 2026 10:46:24 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Mon, 09 Feb 2026 10:46:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1770651984;
 x=1770738384; bh=VVTc8AFxFWprNshjFgBiGVbkOhoCEuBZq1vKIvtqqc4=; b=
 vZ0GNnr7OqjFqy4Gc4Kw+WFrJMUwEEfUbnySGUUicV2VJBU6aoBHzDCiCro30UHA
 pA6PCxfULP+DSaMWffVMDe96OVtTEaJiKg2vyoUtyDyHGPeEVlXdGP0Wec0pQg4Z
 8Y7HDf1//63t5BCIRWrtAij3eXED4Ih4OOoeirv+DYPRlIGwoCT128HK1fSG0RpR
 5brgFdkR6y4In7M2uhj8R01F9yJpDBmZfw64aeVzlWvFHTUpkkPV8npnHZJWMC41
 B9sUKHlQOKSHrkd7g7n0Leh29vaRt4IOLKuYIkpVIE+FYkXkuU9oeRj99y2OMQrd
 5yrjDUyvXwBvumd5ryUVXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770651984; x=
 1770738384; bh=VVTc8AFxFWprNshjFgBiGVbkOhoCEuBZq1vKIvtqqc4=; b=b
 JNW5ZCcehcbZZd7h9cnsv7vsor1Yvp0qaEaLccCQqqGgWDlZmfqO0TSME1bVNZZ3
 N9EwQ/fTLFzlyddjeP0ybwNtbZ0qu9kWos/YgiBXs0uflG0L4ekhu3rbiOMAny5n
 5hTycWr2jy05u0tCN+4rlbecPef5H7mEzg//f6BKsXvxAuiLOAOps9dHJ13XgMpq
 49dz1hu7WFWf7J+H3kDLNShifegGd36alelOJay37pUQXmr6L02vNngCsnhIg2RM
 lhSaadDx7YrEBwxFDnAmlzylK0g7yQnX2PWsxDGb8CFTOOvdMdKcJT/4A66d335B
 GeoxB6Rw1M6fr7rvABSlA==
X-ME-Sender: <xms:TwGKafUOeAXTPjo5h30KoyHDpN6LpQd06csgr2RFxIOOijZPNPaNXA>
 <xme:TwGKaSZQ-UzFPaecghBjArpQ1cQ5aY1t-6RLNOvWg_MxMAilo_6zXX0ChpEeezqP0
 zJO3WHE0qttPxSzDlwA0kx2L4kmG1GcY2EugG4Z-RlXW-sUWfT46V8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduleejvddtucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedfofgrrhhk
 ucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtg
 grqeenucggtffrrghtthgvrhhnpeelvddvleeuieevhefgudekleetheffvdejiedtkedv
 tdefffehhfdvfffffeffveenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgihhthh
 husgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprhgtph
 htthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggvrhgvkhhjohhh
 nhdrtghlrghrkhesghhmrghilhdrtghomhdprhgtphhtthhopehvihhshhhnuhhotghvse
 hgmhgrihhlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpdhrtghp
 thhtohephhgrnhhsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepvhhsrghnkhgrrh
 eslhgvnhhovhhordgtohhmpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslhhi
 nhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehisehrohhn
 ghdrmhhovgdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrgh
X-ME-Proxy: <xmx:TwGKaW7yretjjeVZBcjR8kBFLhcNCXN1O0TDnanUfQGHDTsrCFZRpw>
 <xmx:TwGKabzfK3lSFmVhC4tGUjM5DjTq-QlvcDWOcIeKMRijHmc68l97cA>
 <xmx:TwGKaSdGzBtcHRaaGitw1z6RWZKJ3GGXsE0762YKR4n598iJRhwY6w>
 <xmx:TwGKaYBTJpgEN93Ul1xug3778KuBEggK7Vo3FRkqf_a4mCDqdiS-9w>
 <xmx:UAGKaQNZcCH3s6ozmFa-nJl1eKBV3hdC5qPnNgEq_OnhEyzJbppUeE0->
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 4EEF72CE0072; Mon,  9 Feb 2026 10:46:23 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ASaOPSC57OEF
Date: Mon, 09 Feb 2026 10:46:03 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Rong Zhang" <i@rong.moe>, "Hans de Goede" <hansg@kernel.org>,
 "Vishnu Sankar" <vishnuocv@gmail.com>
Message-Id: <255c1844-4992-4a7d-9519-39071a208a98@app.fastmail.com>
In-Reply-To: <1dbfcf656cdb4af0299f90d7426d2ec7e2b8ac9e.camel@rong.moe>
References: <20260203232219.11683-1-vishnuocv@gmail.com>
 <30354f74-91c0-4fd6-82b1-15f79ae7a60f@kernel.org>
 <1dbfcf656cdb4af0299f90d7426d2ec7e2b8ac9e.camel@rong.moe>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Feb 8, 2026, at 3:58 PM, Rong Zhang wrote: > Hi Hans,
 Vishnu and Mark, > > On Sun, 2026-02-08 at 11:54 +0100, Hans de Goede wrote:
 >> Hi Vishnu, >> >> On 4-Feb-26 00:22, Vishnu Sankar wrote: > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vpTTA-0003vc-CV
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Add Auto mode support
 with dynamic max_brightness
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.90 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_RECIPIENTS(0.00)[m:i@rong.moe,m:hansg@kernel.org,m:vishnuocv@gmail.com,m:linux-kernel@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:vsankar@lenovo.com,m:ibm-acpi-devel@lists.sourceforge.net,m:derekjohn.clark@gmail.com,m:hmh@hmh.eng.br,m:ilpo.jarvinen@linux.intel.com,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[squebb.ca];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[rong.moe,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,squebb.ca:s=fm1,messagingengine.com:s=fm3];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FREEMAIL_CC(0.00)[vger.kernel.org,lenovo.com,lists.sourceforge.net,gmail.com,hmh.eng.br,linux.intel.com];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,squebb.ca:-,messagingengine.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,app.fastmail.com:mid]
X-Rspamd-Queue-Id: A8132112226
X-Rspamd-Action: no action

CgpPbiBTdW4sIEZlYiA4LCAyMDI2LCBhdCAzOjU4IFBNLCBSb25nIFpoYW5nIHdyb3RlOgo+IEhp
IEhhbnMsIFZpc2hudSBhbmQgTWFyaywKPgo+IE9uIFN1biwgMjAyNi0wMi0wOCBhdCAxMTo1NCAr
MDEwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToKPj4gSGkgVmlzaG51LAo+PiAKPj4gT24gNC1GZWIt
MjYgMDA6MjIsIFZpc2hudSBTYW5rYXIgd3JvdGU6Cj4+ID4gRHluYW1pY2FsbHkgZGV0ZWN0IGtl
eWJvYXJkIGJhY2tsaWdodCBjYXBhYmlsaXRpZXMgYW5kIHNldAo+PiA+IG1heF9icmlnaHRuZXNz
IGNvcnJlY3RseSAoMiBmb3Igb2xkIG1vZGVscywgMyBmb3IgbmV3IG1vZGVscwo+PiA+IHdpdGgg
QXV0byBtb2RlKS4KPj4gCj4+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KPj4gCj4+IElmIEkg
dW5kZXJzdGFuZCB0aGlzIGNvcnJlY3RseSwgd3JpdGluZyAzIGFzIGxldmVsIGRvZXMgbm90Cj4+
IG1ha2UgdGhlIGJhY2tsaWdodCBtb3JlIGJyaWdodCB0aGVuIHdyaXRpbmcgMiwgYnV0IGluc3Rl
YWQKPj4gaXQgcHV0cyB0aGUgYmFja2xpZ2h0IGluIHNvbWUgYXV0byBtb2RlID8KPj4gCj4+IElm
IEkndmUgdGhhdCBjb3JyZWN0IHRoZW4gIHVzZXJzcGFjZSBzaG91bGQga2VlcCBzZWVpbmcKPj4g
YSByYW5nZSBvZiAwIC0gMiBhbmQgdGhlIHNwZWNpYWwgYXV0byBtb2RlIHZhbHVlIHNob3VsZAo+
PiBiZSByZXBvcnRlZCAvIGJlIG1hZGUgc2V0dGFibGUgdGhyb3VnaCBhIHNlcGFyYXRlIGFsc19l
bmFibGVkCj4+IHN5c2ZzIGF0dHJpYnV0ZSB1bmRlciB0aGUgTEVEIGNsYXNzIGRldmljZS4gU2Vl
Ogo+PiAKPj4gRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9zeXNmcy1wbGF0Zm9ybS1kZWxsLWxh
cHRvcAo+PiAKPj4gWW91IGNhbiBhZGQgZXh0cmEgYXR0cmlidXRlcyB0aGVyZSBieSBzZXR0aW5n
IHRoZSBncm91cHMKPj4gbWVtYmVyIG9mIHRoZSBzdHJ1Y3QgbGVkX2NsYXNzZGV2LCBzZWUga2Jk
X2xlZF9ncm91cHNbXQo+PiBpbiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9kZWxsL2RlbGwtbGFwdG9w
LmMsIGV4Y2VwdCB0aGF0Cj4+IHlvdSBzaG91bGQgdXNlIGEgLmlzX3Zpc2libGUgY2FsbGJhY2sg
dG8gb25seSBzaG93IHRoaXMKPj4gb24gaHcgd2hpY2ggc3VwcG9ydHMgaXQgYW5kIHlvdSBvbmx5
IG5lZWQgMSBncm91cCB3aXRoCj4+IDEgYXR0cmlidXRlLgo+Cj4gV2hlbiBJIGltcGxlbWVudGVk
ICJhbHNfZW5hYmxlZCIgZm9yIGlkZWFwYWQtbGFwdG9wLCBNYXJrIFBlYXJzb24KPiBzdWdnZXN0
ZWQgaXQnZCBiZXR0ZXIgdG8gaW50cm9kdWNlICJzb21ldGhpbmcgc2ltaWxhciB0bwo+IExFRF9C
UklHSFRfSFdfQ0hBTkdFRCLCoHJhdGhlciB0aGFuIHVzaW5nIGN1c3RvbSBhdHRyaWJ1dGVzLCBh
cyAidGhpcyBpcwo+IGdvaW5nIHRvIGJlIGEgY29tbW9uIGZlYXR1cmUgYWNyb3NzIG11bHRpcGxl
IHZlbmRvcnMgaXQgbWlnaHQgbmVlZAo+IGRvaW5nIGF0IGEgY29tbW9uIGxheWVyIi4gQWxzbywg
YXV0byBtb2RlIGNhbiBiZSBhY3RpdmF0ZWQgYnkgSFcgYXMgYQo+IHJlc3VsdCBvZiB1c2VyIGlu
cHV0LCBzbyB3ZSBuZWVkIGFuIGFwcHJvYWNoIHRvIG5vdGlmeSB1c2Vyc3BhY2UganVzdAo+IGxp
a2Ugd2hhdCBMRURfQlJJR0hUX0hXX0NIQU5HRUQgZG9lcy4gTW9yZSBpbXBvcnRhbnRseSwgdGhl
IHJlYWQgdmFsdWUKPiBvZiB0aGUgYnJpZ2h0bmVzcyBhdHRyaWJ1dGUgYmVjb21lcyBub25zZW5z
ZSB3aGVuIGF1dG8gbW9kZSBpcyBvbi4gVGhpcwo+IG1hdGNoZXMgdGhlIHNlbWFudGljIG9mIGh3
IGNvbnRyb2wgdHJpZ2dlci4KPgo+IEkgYWdyZWVkIHdpdGggTWFyayBhbmQgaGFkIGEgcHJvcG9z
YWwgb2YgYWxsb3dpbmcgSFcgdG8gaW5pdGlhdGUgYQo+IHRyYW5zaXRpb24gZnJvbSAibm9uZSIg
dG8gaHcgY29udHJvbCB0cmlnZ2VyIGFuZCB2aWNlIHZlcnNhLiBTZWUgdGhlCj4gdGhyZWFkIGlu
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzA4NTgwZWM1LTFkN2ItNDYxMi04YTNmLTc1
YmMyZjQwYWFkMkBhcHAuZmFzdG1haWwuY29tLwo+Cj4gSSBoYWRuJ3QgcHVzaCBpdCBmdXJ0aGVy
IGR1ZSB0byBvdGhlciB0aGluZ3MgdGFraW5nIHRoZSBwcmlvcml0eSwKPiB0aG91Z2ggSSBhbHJl
YWR5IGhhZCBhIFBvQyBiYWNrIHRvIHRoZW4uIEkgcXVpY2tseSByZWJhc2VkIHRoZSBQb0Mgd2l0
aAo+IHNvbWUgY2xlYW51cHMgYW5kIHB1dCBpdCBoZXJlIGZvciBwcmV2aWV3Ogo+Cj4gaHR0cHM6
Ly9naXRodWIuY29tL1Jvbmdyb25nZ2c5L2xpbnV4L3RyZWUvbGVkcy10cmlnZ2VyLWh3LWNoYW5n
ZWQKPgo+IEkgd2lsbCBmaW5kIHNvbWUgdGltZSB0byByZWZpbmUgaXQgYW5kIHNlbmQgYW4gUkZD
IHNlcmllcy4KPgpIaSBSb25nLAoKVGhhbmtzIGZvciBoaWdobGlnaHRpbmcgdGhpcyAoaGF2ZSB0
byBiZSBob25lc3QgLSBJJ2QgZm9yZ290dGVuIHdlJ2QgZGlzY3Vzc2VkIGl0KS4KSSB0aGluayBt
eSBzdWdnZXN0aW9uIG1heSBoYXZlIGJlZW4gdW5kZXJzdG9vZCBhbmQgSSB3b25kZXIgeW91ciBh
cHByb2FjaCBpcyBtb3JlIGNvbXBsaWNhdGVkIHRoYW4gbmVlZGVkLgoKSSB3YXMgdGhpbmtpbmcg
d2UgYWRkIGEgbmV3IGZsYWcgdG8gdGhlIGxlZF9jbGFzc2Rldi4gZS5nCiNkZWZpbmUgTEVEX0FV
VE9fQlJJR0hUTkVTUyAgICAgICAgIEJJVCgyNikKClRoZW4gdGhlIHBsYXRmb3JtIGRyaXZlciBj
YW4gc2V0IHRoaXMgZmxhZyBhbmQgaW4gbGVkX2NsYXNzZGV2X3JlZ2lzdGVyX2V4dCB3ZSdkIGhh
bmRsZSBpdCBhcHByb3ByaWF0ZWx5IHRvIGNyZWF0ZSBhIHN5c2ZzIChlLmcuIGF1dG9fYnJpZ2h0
bmVzc19jYXBhYmxlKSBub2RlIHNvIHVzZXIgc3BhY2Uga25vd3MgYXV0byBpcyBzdXBwb3J0ZWQu
Ck90aGVyIHRoYW4gdGhhdDoKIC0gV2hlbiB0aGUgYnJpZ2h0bmVzcyBpcyByZWFkIGFuZCBhdXRv
biBpcyBiZWluZyB1c2VkIC0gcmV0dXJuICJhdXRvIiBpbnN0ZWFkIG9mIGEgdmFsdWUuIEhvcGVm
dWxseSB0aGF0IGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcgZm9yIHVzZXIgc3BhY2U/CiAtIFdoZW4g
dGhlIGJyaWdodG5lc3MgaXMgc2V0LCB5b3UgY2FuIHVzZSBhIHZhbHVlIG9yICdhdXRvIiBhcyB5
b3UgZGVzaXJlIChEb2N1bWVudGF0aW9uIHdvdWxkIG5lZWQgdXBkYXRpbmcgdG8gYWxsb3cgdGhp
cykKClJlYWxseSBJIHdhcyBqdXN0IGxvb2tpbmcgZm9yIGEgd2F5IHRvIGFkdmVydGlzZSB0byB1
c2VyIHNwYWNlIHRoYXQgYSBhdXRvIG9wdGlvbiB3b3VsZCBiZSBzdXBwb3J0ZWQgOikKCk1hcmsK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0t
YWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3Bp
LWRldmVsCg==
