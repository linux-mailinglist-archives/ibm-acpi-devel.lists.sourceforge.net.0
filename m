Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AECABACF385
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  5 Jun 2025 17:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sHgxUVCyyNl72EaKBL+tOmtJNxOtWctKlA3ANXBnadM=; b=JNGFBtbwrLK/5vqmm6iqn25FYJ
	Uxz0ttfhVd5eAq4pN8GyYbd+gajqZJduyj4+m00LQzsOSs0xz7kmkGozS1pUqg152xkG/zfq3IkQG
	bJ9FmQRV7C4wqCt/0JnjgTfIDXfrutu2ROXKujYPmy88wS5rWknWff/ccjdpvR+OX08Y=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNCy0-00082w-21;
	Thu, 05 Jun 2025 15:57:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uNCxy-00082l-HJ
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 15:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i36Nkr/BYr7tE7XmsmYgh9umetnEHRPzzI0WI95Neu8=; b=VCvFjz86xPxo7NFLB9paobse8G
 ZTqYaX7HU12TBaXyvCacDi15RKhA7F3UlsYVQ39FYJKgt0VPbgQnetg2FGWTRrfiJ/gF/al1gF+ep
 0Jfd2lI/kQ2XpHelnzNiTSsx/s/cKFwsttOvyTSJst5PfvUDKVLKjbCee8ZEYfQ+4RdM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i36Nkr/BYr7tE7XmsmYgh9umetnEHRPzzI0WI95Neu8=; b=PAin0TnlAER824o0T//jFhw8Fd
 COo3lZLiUv0Oox0qm0quyMPJhMqVpfYHe/o7GdnjsEsL88B349RBhp/FTZZ6d+q6L2FXBe+idY1QT
 5EoyyJDdpWcJVdRWPCR5AW+5ipKTDe6ru4A/UkBQwspLTjYMhS4bA8aepbv7i9f9PQ9E=;
Received: from fout-a5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNCxy-0002Yj-4N for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 15:57:18 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id 72978138031A;
 Thu,  5 Jun 2025 11:57:12 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Thu, 05 Jun 2025 11:57:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749139032;
 x=1749225432; bh=i36Nkr/BYr7tE7XmsmYgh9umetnEHRPzzI0WI95Neu8=; b=
 QpTguXxYJt+tlZ/cGftoTjnyeu8tvD8Dc/RJW/HFcC73A1okUfCdjdhfyuVB9W+/
 NSnxfWnwTPaQ7G+ru0qyyQF63hzqH/tmMpwZvzzPGdxIe4SJJMN7+yAbYa0K7mtT
 A2SWXWDqkQfT+cJzuM1wqdc02PWWKbRXwopnw678uVmALGhWDrtQ8dNOqe+jwAvE
 KMwtuGTCD18rQEBwzgAJ47AGwH43N2A0Y4ksPSQWB+kHz8GZ4tsT53QHDNg0WRSK
 fQF279Jn18ilNO055tdodh21OTQA1Jph3LjfwQovnxb0FBzCexbXWP5O4xs4gUG7
 eq+OCq/boUtWWFOx6hDXQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749139032; x=
 1749225432; bh=i36Nkr/BYr7tE7XmsmYgh9umetnEHRPzzI0WI95Neu8=; b=S
 6T+XHo7AwD6M4dmbUVcmICQCGk6iZZuDyUXaM48afdbLXgxx8XySadhmncA+oFop
 B8eAjx7dAEOdF9rL8BvLWB8xKEUuDtpdJyJKUE57NaffCakEs6QxrPO2MFfwkGSW
 34gDP9yeYLUYASomfCuIwucIBbfPk4oFExTUWFNWGHqFqrM7P46n5wcTXZY09muj
 NSe6UPj/RJJiRynAIvBj5tqvy4E2lB6+5pS0WbzvXgyC4OSMKR70MRwLGKZ2lwp6
 2fejhypXcJNGls8eLAU2Rkr/J1OphKRlcg/bJBZAwsmhr6i5yB1rk5xHCRG8RJt/
 STR++sohnI5NTeLLhR1sw==
X-ME-Sender: <xms:V75BaMAv4H3eukwV-sxwQaUFHdJdzQN6iXeiEtuL17FvMxWGjovVmg>
 <xme:V75BaOjwUNBBmjee_uephyNOFxaby04reLg8SFCVpOkdhFCe5a0GRZh7QVvGZpokz
 4-UPjsaZqTSFZsmA3o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdefkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdej
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhveekjeeuueekfefh
 leeljeehuedugfetffdvteekffejudelffdvjeekfeehvdenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepihhkvghprghnhhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohep
 figprghrmhhinhesghhmgidruggvpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsg
 hrpdhrtghpthhtoheprghnughrihihrdhshhgvvhgthhgvnhhkoheslhhinhhugidrihhn
 thgvlhdrtghomhdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnsehlihhnuhigrd
 hinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheptghorhgsvghtsehlfi
 hnrdhnvghtpdhrtghpthhtohephhguvghgohgvuggvsehrvgguhhgrthdrtghomhdprhgt
 phhtthhopehlihhnuhigqdguohgtsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:V75BaPlaJ6iOAtj5fbammoZONO5J36WkP9qPoprU6AjpxYg3LuYAkQ>
 <xmx:V75BaCze7ATTTbjAyOdZWoqFKRDRu7YL_ULE-o6Y8vqQvQS2ILnuxA>
 <xmx:V75BaBTlSR1fyR4_SnZMWoWp5treq-hukxLoNwsFZa6pTmr4Arom_w>
 <xmx:V75BaNYdneM1M-ZUDFLrLtTM4NEaJvp2rhvL2zl7lrNnT-7qT051Dw>
 <xmx:WL5BaFcU5x9TKTJtIbko64iu5BV2QuPXtQgp0ELSXOmMjuNycj1-oWrP>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id B31352CE0062; Thu,  5 Jun 2025 11:57:11 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Thu, 05 Jun 2025 11:56:51 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <63e00b35-361f-41ac-8341-f30c2e9dade9@app.fastmail.com>
In-Reply-To: <d6df0dcf-5786-0ad6-dd30-3a8c9f16426e@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <d6df0dcf-5786-0ad6-dd30-3a8c9f16426e@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo On Thu, Jun 5, 2025, at 4:03 AM, Ilpo Järvinen wrote:
    > On Wed, 4 Jun 2025, Mark Pearson wrote: > >> Create lenovo subdirectory
    for holding Lenovo specific drivers. >> >> Signed-off-by: Mark Pearson [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
                             was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
                              for more information.
                             [103.168.172.148 listed in list.dnswl.org]
X-Headers-End: 1uNCxy-0002Yj-4N
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: Move Lenovo files
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
Cc: Armin Wolf <W_Armin@gmx.de>, Jonathan Corbet <corbet@lwn.net>,
 ikepanhc@gmail.com, linux-doc@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgSWxwbwoKT24gVGh1LCBKdW4gNSwgMjAyNSwgYXQgNDowMyBBTSwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gT24gV2VkLCA0IEp1biAyMDI1LCBNYXJrIFBlYXJzb24gd3JvdGU6Cj4KPj4gQ3Jl
YXRlIGxlbm92byBzdWJkaXJlY3RvcnkgZm9yIGhvbGRpbmcgTGVub3ZvIHNwZWNpZmljIGRyaXZl
cnMuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJrIFBlYXJzb24gPG1wZWFyc29uLWxlbm92b0Bz
cXVlYmIuY2E+Cj4+IC0tLQo+PiBDaGFuZ2VzIGluIHYyOgo+PiAgLSBSZWJhc2VkIHRvIExpbnVz
J3MgbGF0ZXN0IGFzIHJlcXVlc3RlZAo+PiAgLSBVcGRhdGVkIGRvY3VtZW50YXRpb24gcmVmZXJl
bmNlCj4+ICAtIFVwZGF0ZWQgTUFJTlRBSU5FUiBmaWxlCj4+ICAtIFJlbW92ZWQgWDg2X1BMQVRG
T1JNX0RSSVZFUlNfTEVOT1ZPIGFzIEkgd2FzIHdvcnJpZWQgYWJvdXQKPj4gICAgbWFpbnRhaW5p
bmcgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkgZm9yIHRoZSBkaXN0cm9zLgo+PiAgLSBSZW1vdmVk
IDJuZCBwYXRjaCBpbiBzZXJpZXMgc3BsaXR0aW5nIG91dCBoa2V5cy4gVGhhdCB3aWxsIGJlIGZv
cgo+PiAgICB0aGUgZnV0dXJlCj4KPiArIyBMZW5vdm8geDg2IFBsYXRmb3JtLVNwZWNpZmljIERy
aXZlcnMKPiArIyBMZW5vdm8gWDg2IFBsYXRmb3JtIFNwZWNpZmljIERyaXZlcnMKPgo+IEFueSBw
b3NzaWJpbGl0eSB0byBiZSBjb25zaXN0ZW50IGluIGZvcm1hdHRpbmcgdGhhdD8gOi0pCj4KT29v
cHMgLSB5ZXMuIEknbGwgZml4LgoKPiBXaHkgZG9lcyB0aGUgYWRtaW4gZ3VpZGUgY29udGFpbiBh
IGhpc3RvcnkgYm9vaz8/IEl0IHNob3VsZCBiZSBndWlkZSBmb3IgCj4gdGhpcyB2ZXJzaW9uIG9m
IGtlcm5lbCwgbm90IHdoYXQgd2FzIHRoZXJlIGluIDIuNi54IGVyYSA7LUQuIFBsZWFzZSBkb24n
dCAKPiBhZGQgdG8gdGhhdCBhbnkgbW9yZSwgcHJlZmVycmFibHkgcmVtb3ZlIHRoZSBoaXN0b3J5
IHBhcnQgYWZ0ZXJ3YXJkcyBpbiBhIAo+IHNlcGFyYXRlIGNoYW5nZS4KPgoKU3VyZS4gV2lsbCBy
ZW1vdmUgdGhhdCBjaGFuZ2UgZnJvbSB0aGUgY29tbWl0LgoKSSB3YXMganVzdCB0cnlpbmcgdG8g
bWFrZSBzdXJlIEkgdXBkYXRlZCBpbiBhbGwgdGhlIHJpZ2h0IHBsYWNlcyBhbmQgcmVhbGlzZWQg
SSBoYWRuJ3QgY2hlY2tlZCB0aGUgZG9jdW1lbnRhdGlvbiBmaWxlcyBhbmQgZm91bmQgdGhhdCBy
ZWZlcmVuY2UuCgo+IE90aGVyIHRoYW4gdGhvc2UgbWVudGlvbmVkIGFib3ZlLCBkaWZmaW5nIHBl
ciB2cyBwb3N0IHNlZW1lZCBjbGVhbiAoSSAKPiBkaWRuJ3QgY2hlY2sgd2hlcmUgdGhlIGVtcHR5
IGxpbmVzIGdvdCBhZGRlZCwgQW5keSBzZWVtaW5nbHkgZGlkIGFscmVhZHkgCj4gOi0pKS4KPgpU
aGFua3MgZm9yIHRoZSByZXZpZXcuCk1hcmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGkt
ZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
