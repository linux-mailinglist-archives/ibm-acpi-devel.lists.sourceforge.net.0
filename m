Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF26AAFD0A
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 16:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rmKISmfTtvumktIoPpqBhivNMIcSRlYH6a3obzw7ypA=; b=AIaKbkU/AF3C5yKR71BfdkZwql
	azEsXpeyph/91WW623FnGOELOF1yeEKESuXwXiGEzUkyjeWqiRwWOeE0X6L0Z3Dk6TnBk3oJ+w8xz
	yCsZjkAP8PyGKtEnicF8MbBaQxC+voBGN4rfPuoUH1GoHE+jA7UAaZqBu+i+uPq0UCnc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2GG-0002dB-54;
	Thu, 08 May 2025 14:30:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uD2GE-0002d3-8K
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DcHjOqdnh+Xex6RmxNcgjS2apgt7qHKdJ+jb4u1qvVM=; b=LeiPNaygP86VBYUFazJhz6Q0Kf
 zWrwBDzZoXyyo3bLww99h21YZuXqBZc5xncZavQtFS7XFZnbO6Cou/XpJFS2M0TEo5H86c1QJVtVq
 Zt6ieOENJoMQeHqrN7gxmagTGB/SJr9Tp3wuSiDMwAU7dV53fTUDLxjJ387I471QeHs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DcHjOqdnh+Xex6RmxNcgjS2apgt7qHKdJ+jb4u1qvVM=; b=JjHUtnFKtcgQWnzAsRiDpZ0k+Z
 TKGk0OrfCM8P57ltU+mqPE8fjW9ZZCTN3zb09Af2Rg7dEADyK1RLg4hEppqfyLFEq+xf4x468FR5m
 2khrXNPwXyZ/WtJgZHP8WaZ58lr5aBlEnO4gtn8KwB+ylEYG8B3hfrAKzBTkJ8v470Ic=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2GD-0005Q4-9d for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:30:05 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id A9DFB11400D7;
 Thu,  8 May 2025 10:29:59 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-12.internal (MEProxy); Thu, 08 May 2025 10:29:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1746714599;
 x=1746800999; bh=DcHjOqdnh+Xex6RmxNcgjS2apgt7qHKdJ+jb4u1qvVM=; b=
 FqoEeRH0h7idbGeEW/ut26OgMbCHLp4XoWqIs6ePtXkChQ4CL52wPa/zO8mKSpJy
 sAyqnShiRQe4C+o9lxMO1tszz5dC1yP9f1RKYMEkhR3CBPRQnN6UgNARUrRWhKD9
 CLO6q4YYAL9+XQprDJKVZmxECXI5x6hJ1umWl6oRoF7yDhULbmDtAnAedXQuOw5o
 510VdKVJpFxqiSMCdnMc2WS6nqLovQ8S5APNWF4KFZ4xKrW3xHxK++rkr4DfrJA5
 bCJx2UiM0WqghuG1Wk5RWt2bL4R04YrFiQzNiHdkx2j9qGvA++XKbHmuiT5cTZWH
 IiF7JX5uxABrj6vMbCrFBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746714599; x=
 1746800999; bh=DcHjOqdnh+Xex6RmxNcgjS2apgt7qHKdJ+jb4u1qvVM=; b=X
 bQXS9BRltyXY6kajquFPzeFVhafGC1o3miMRRctXAaVxBy7bkaOZlzLMZDPAOreH
 zLu+rk3c+G6tXB47Z8EOcnXXV4PsWX2Oe4h5T9A5IFDu57ukEUYWbi6VSdmmXOmE
 6xG1BSBbw2TNThqk1IDoHzlqYhGb7hazhx1/EplF/Gx/yU3bQ8KKPM+7P+K07v+i
 j7vhQzLeVdRtl+qw3rmQbqIDAZ2w1IluX5JjZlqw1F9XFzrbNENZhPcLhBHGEO+l
 0F2z78WCaxVOZrNa8mjU2wXc0eyEaSe47hn3llgJhVm6rxCNQCsKp3kQkWVWfvov
 F3VvhEzwb6cMIgGWKhMDQ==
X-ME-Sender: <xms:578caNcCgRfu7tHEAqf9VUvsO2A73_FRa3UDdgc-5alj_VcyZZB6vA>
 <xme:578caLN7pULQKe5zvMI_TBwHRWifLWtVCrVAPiNNGqFnk6jO7EvuZ4_LvxUXLad9k
 OiOnJSa8NUUIWPbFzc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeelleekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertder
 tdejnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlh
 gvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhveekjeeuueek
 fefhleeljeehuedugfetffdvteekffejudelffdvjeekfeehvdenucevlhhushhtvghruf
 hiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhho
 vhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthho
 peifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopegrnhgurhhihidrshhhvghvtg
 hhvghnkhhosehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhj
 rghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqd
 grtghpihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgt
 phhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtoheplhhinh
 hugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphhl
 rghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:578caGjV_EdeQ-Nj0GG9cFf-jNl2q25_a8UBFzmIaxG9pK5GBUGNNQ>
 <xmx:578caG-5Jf_glbov0agCyaA79uJ49hZ0Bb4KJbJnzqcS9kE8ZBk4lA>
 <xmx:578caJtyQfgrOZJQqyO-c-zwj1OQAmdwnrVb54Ib_XbrM2BAo4ujAQ>
 <xmx:578caFGqnxJzIgYynYwY9IoqKt8DGaOX2fsozpbwi0a2NLR5qua6bA>
 <xmx:578caHCmjUvJfeyPUChZ-tBKSg8JoEq0yhxAmw5oyUrvDP_ks2a8clok>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 5FE7F3C006B; Thu,  8 May 2025 10:29:59 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Thu, 08 May 2025 10:29:39 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <4bc5e9f7-0ab7-4bdd-b822-34f8a0587f57@app.fastmail.com>
In-Reply-To: <2640c7dc-5870-f57d-e1cd-535f5c48d950@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <09a628d3-5903-5d5d-b874-5e77bbdf939a@linux.intel.com>
 <6d4f3523-0d3a-4f1a-bec9-d053fad8a509@app.fastmail.com>
 <2640c7dc-5870-f57d-e1cd-535f5c48d950@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, May 8, 2025, at 10:27 AM, Ilpo Järvinen wrote: >
   On Thu, 8 May 2025, Mark Pearson wrote: >> On Thu, May 8, 2025, at 10:01 AM,
    Ilpo Järvinen wrote: >> > On Wed, 7 May 2025, Mark Pearson wrote [...] 
 
 Content analysis details:   (-0.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [103.168.172.153 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [103.168.172.153 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uD2GD-0005Q4-9d
Subject: Re: [ibm-acpi-devel] [PATCH 1/2] platform/x86: Move Lenovo files
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
 ikepanhc@gmail.com, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVGh1LCBNYXkgOCwgMjAyNSwgYXQgMTA6MjcgQU0sIElscG8gSsOkcnZpbmVuIHdyb3RlOgo+
IE9uIFRodSwgOCBNYXkgMjAyNSwgTWFyayBQZWFyc29uIHdyb3RlOgo+PiBPbiBUaHUsIE1heSA4
LCAyMDI1LCBhdCAxMDowMSBBTSwgSWxwbyBKw6RydmluZW4gd3JvdGU6Cj4+ID4gT24gV2VkLCA3
IE1heSAyMDI1LCBNYXJrIFBlYXJzb24gd3JvdGU6Cj4+ID4KPj4gPj4gTW92ZSBhbGwgTGVub3Zv
IHNwZWNpZmljIGZpbGVzIGludG8gdGhlaXIgb3duIHN1Yi1kaXJlY3RvcnkgYXMgcGFydAo+PiA+
PiBvZiBjbGVhbi11cCBleGVyY2lzZS4KPj4gPj4gTG9uZ2VyIHRlcm0gZ29hbCBpcyB0byBicmVh
ay11cCB0aGlua3BhZF9hY3BpIHRvIGltcHJvdmUgbWFpbnRhaW5hYmlsaXR5Cj4+ID4+IGFuZCBw
ZXJoYXBzIHNoYXJlIG1vcmUgZnVuY3Rpb25hbGl0eSB3aXRoIG90aGVyIG5vbiB0aGlua3BhZCBM
ZW5vdm8KPj4gPj4gcGxhdGZvcm1zLgo+PiA+PiAKPj4gPj4gU2lnbmVkLW9mZi1ieTogTWFyayBQ
ZWFyc29uIDxtcGVhcnNvbi1sZW5vdm9Ac3F1ZWJiLmNhPgo+PiA+PiAtLS0KPj4gPj4gU29tZSBx
dWVzdGlvbnMgdGhhdCBJIGRpZG4ndCB3YW50IHRvIHB1dCBpbiB0aGUgY29tbWl0IGNvbW1lbnQ6
Cj4+ID4+IAo+PiA+PiAgLSBJIGRpZG4ndCBrbm93IGlmIG5vdyB3YXMgYSBnb29kIHRpbWUgdG8g
cHJvcG9zZSB0aGlzIGNoYW5nZS4gSQo+PiA+PiAgICByZWFsaXNlIGl0IGNvdWxkIGNhdXNlIGhl
YWRhY2hlcyBmb3IgYW55Ym9keSB3aXRoIHBhdGNoZXMgYmVpbmcKPj4gPj4gICAgd29ya2VkIG9u
Lgo+PiA+Cj4+ID4gRG9uJ3Qgd29ycnkgdG9vIG11Y2ggYWJvdXQgb3RoZXIgY2hhbmdlcywgaWYg
eW91IGRvbid0IHJlY2FsbCBhbnl0aGluZyAKPj4gPiBpbW1lZGlhdGVseSwgdGhlcmUgbGlrZWx5
IGlzbid0IGFueXRoaW5nIHRoYXQgc2lnbmlmaWNhbnQuIElmIHdlIGFsd2F5cwo+PiA+IHBvc3Rw
b25lIHVzZWZ1bCByZW9yZ2FuaXphdGlvbnMgaW4gZmVhciB0aGF0IHNvbWUgaHlwb3RoZXRpY2Fs
IHdvcmsgd291bGQgCj4+ID4gaGF2ZSB0byByZWJhc2UsIGl0IG5ldmVyIGdldHMgZG9uZSA6LSku
Cj4+ID4KPj4gPj4gICAgUGxlYXNlIGxldCBtZSBrbm93IHdoYXQgbWFrZXMgaXQgZWFzaWVzdCBm
b3IgbWFpbnRhaW5lcnMKPj4gPj4gICAgYW5kIG90aGVyIGRldmVsb3BlcnMuIElmIHRoZXJlIGlz
IGEgcGFydGljdWxhciBicmFuY2ggdGhhdCB3b3VsZCBiZQo+PiA+PiAgICBiZXR0ZXIgdG8gZG8g
dGhpcyBhZ2FpbnN0IGFsc28gbGV0IG1lIGtub3cuCj4+ID4KPj4gPiBPbmNlIEkndmUgbWVyZ2Vk
IGZpeGVzIGJyYW5jaCBpbnRvIGZvci1uZXh0IChJIHNob3VsZCBkbyB0aGF0IGF0IGxhdGVzdCAK
Pj4gPiBlYXJseSBuZXh0IHdlZWsgaWYgbm90IGFscmVhZHkgdGhpcyB3ZWVrKSwgaXQgc2hvdWxk
IGJlIHByZXR0eSAKPj4gPiBzdHJhaWdodGZvcndhcmQgdG8gaGFuZGxlIHN1Y2ggbW92ZSB3aXRo
b3V0IGNvbmZsaWN0cy4KPj4gPgo+PiAKPj4gT0sgLSB0aGFua3MuIElmIHRoZXJlJ3MgYW55dGhp
bmcgSSBjYW4gZG8gdG8gaGVscCBsZXQgbWUga25vdy4KPj4gCj4+IAo+PiA+PiAgLSBTaG91bGQg
SSBiZSB1cGRhdGluZyB0aGUgTUFJTlRBSU5FUlMgZmlsZT8gSSdtIHN0aWxsIG5vdCBzdXJlIHdo
YXQKPj4gPj4gICAgdGhlIHByb3RvY29sIHRoZXJlIGlzLiBJJ20gdmVyeSBoYXBweSB0byBoZWxw
IHJldmlldyBhbnl0aGluZyBpbiB0aGUKPj4gPj4gICAgbGVub3ZvIGRpcmVjdG9yeSwgYnV0IEkg
ZGlkbid0IHdhbnQgdG8gbWFrZSBhc3N1bXB0aW9ucy4KPj4gPgo+PiA+IFlvdSBzaG91bGQgY2Vy
dGFpbmx5IHVwZGF0ZSBNQUlOVEFJTkVSUyBpbiB0aGUgc2FtZSBwYXRjaCB0byB0aGUgbmV3IAo+
PiA+IHBhdGhzLiBJZiB5b3Ugd2FudCB0byBtYWtlIG90aGVyIGNoYW5nZXMsIHB1dCB0aGVtIHN1
Y2ggYXMgYWRkIHlvdXIgbmFtZSAKPj4gPiBpbnRvIHNvbWUgZW50cnkgb3IgY3JlYXRlIGEgZ2Vu
ZXJpYyBMRU5PVk8gZW50cnksIHB1dCB0aG9zZSBpbnRvIG93biAKPj4gPiBwYXRjaCBhZnRlciB0
aGUgbW92ZSBwbGVhc2UuCj4+ID4KPj4gCj4+IE9LIC0gSSdsbCBzdWJtaXQgYSB2MiB3aXRoIHRo
YXQgY2hhbmdlLiBUaGFua3MgZm9yIHRoZSBndWlkYW5jZQo+Cj4gWWVzIGJ1dCBwbGVhc2Ugd2Fp
dCB1bnRpbCBJJ3ZlIGRvbmUgdGhlIG1lcmdlIHNvIHlvdSBjYW4gYmFzZSB2MiBvbiB0b3Agb2Yg
Cj4gaXQuIFRoYW5rcy4KPgoKV2lsbCBkbwoKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0t
YWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
