Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8883BAAFCDA
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 16:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0XObJO7OZ14st70pSrsgoXQvZFR6vmQK7LZClwKQ2NA=; b=NEzdCtJnH3gjW5nv3uRpkxON3s
	8Sl7F9oX05enW83nbFl9Lh8M0Ll9C5uMk3iCo1ZVfRANhSF1wshv1aeMKvFxTYxe3TmBZR2QB57iO
	940Tnx4St0gBNq2kPGsvvHIVWApnlZV5JLICF205jijk0qbHBlz5aRQmopW3zAG/gnOQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2BC-00045g-Nr;
	Thu, 08 May 2025 14:24:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uD2BB-00045P-4E
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q0vNQd2Navs1dNhoZrI0O4YE+DAKDw3Xmj33t2DJSJs=; b=SD0HdltD2CKhTvFpo5omUACmGZ
 m1lCpfEzpu/caUpwPaLctQBr/XdCpmUFRXm09RutJRPMDR65SWyJ0WbCk5y5FEhCxj3TEpVkuKUmw
 gOlbRksvpCyv8SOEA8U8oKH45gYOnKLZ6M8+lrxtTQkS566xXqLdviTq+g968hcYhSZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q0vNQd2Navs1dNhoZrI0O4YE+DAKDw3Xmj33t2DJSJs=; b=AeJw2GkOaDK11BoNGUBHp9a+8X
 h/+m2lH0HHw6ejuA7eyC9IyONqvhdANk1TSjhOZUTknRIS6t1ngq2ElloLIBoQjeAhd6oWl6Xobkc
 Tgy76i6cy6eVOGwYBzudlnLsSC+pPyBiugQ+TcddCDlsNOevWrdYQrLPWYXNFfMNfzvk=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2B9-0004t8-Lv for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:24:53 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id E985C13802BC;
 Thu,  8 May 2025 10:24:45 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-12.internal (MEProxy); Thu, 08 May 2025 10:24:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1746714285;
 x=1746800685; bh=Q0vNQd2Navs1dNhoZrI0O4YE+DAKDw3Xmj33t2DJSJs=; b=
 FQsq2XS5/co2bITztDh089EDWC4W37xb52Q7sSU8jXVkSa/EKf0tKuCJJ0Y6FdIQ
 BjjlUgbexMwClKOW2rmV4zOS4WgO4h/xL2iLXDk+kQ2skpdlh8rBy4mansGFKFjt
 LKY2sg3TiOr9yPnMSJnHZFKezs9pGZ1G8qQH1DIzVug3EgYaSeHYSUC+drewvI8z
 eK6q0oYYEb/s5BPxs1ouJjLabGJpyCXr5ZkaN8nYC9TpFqsFEhzY2bhbM0B1V+S0
 bwHroBChMWu/sR1J8IvZbjD2sHSDKELk616uR7w8XY3Mal2xX7e3cGIr3SI2OWQV
 Y8gfiMom5/D4YD7c4floEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746714285; x=
 1746800685; bh=Q0vNQd2Navs1dNhoZrI0O4YE+DAKDw3Xmj33t2DJSJs=; b=h
 XYaV1kgDFdobPupy8zBJH/SvzpJfNlO2/Tctx8hlc8zBVm/wfs7i8MckEkhU0r9V
 fYCew9KSvlQ5lEvSwfqqmoR2KZ6Nk+qz/ZM1fcD2S84vCJ51xm8mHj+QBZJOmf20
 rGUlm8k3CDXIezCIznSp8qxqX6rn9SPut99gmevB7h66MXcHKP130hkFcyWLBj1l
 YntrMJNpS6YKtKxpwSovileBbY6IiUjMS3TpZHZOMW2hIDDy9+AtLNf293GlRbNn
 xTxj/XGmr954Csj6Kfk9txzqr8/jqNLNIgssno+Nz5SHFU2ntJFUsrcCDzTkpA5x
 r3UBQ1lm2/UqdvrBqZwKg==
X-ME-Sender: <xms:rb4caKc9DNiWDiKKwSGq0YrfTzwJNZyueeMgct_yaksgqErWJbCBSA>
 <xme:rb4caENmhOy3XwWZrurUdynBABfBqwreFEbGxyHlc3Q0Rh3rIEROAv06vwa2O77-Z
 LHDwSU69n3WdP0shdE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeelleejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertder
 tdejnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlh
 gvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhveekjeeuueek
 fefhleeljeehuedugfetffdvteekffejudelffdvjeekfeehvdenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhho
 vhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthho
 peifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopegrnhgurhhihidrshhhvghvtg
 hhvghnkhhosehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhj
 rghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqd
 grtghpihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgt
 phhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtoheplhhinh
 hugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphhl
 rghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:rb4caLgUZP_3e46bl1oOhOHCfi2UCqDCrsiwTvHK8X2DSM66g2i0fw>
 <xmx:rb4caH-OvZaPmVG8DeHsYoORSfHCd1BZJ1tfmtWeKyDnCYb8_nua8w>
 <xmx:rb4caGuKEziKBeW7cEFW0hOWRajsnAWTqP8amv05Dswkj2jtn0nrYg>
 <xmx:rb4caOGtOFSclgaDN-ZbZnerTslv0wkAkOk1oAmiaqsWLfnizB0zUw>
 <xmx:rb4caADtx346jJ0GYDqPX-1vaCv__rLG9KhYn0mUmqjyJC21FPqixo5A>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 0A6E93C0069; Thu,  8 May 2025 10:24:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Thu, 08 May 2025 10:23:47 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <6d4f3523-0d3a-4f1a-bec9-d053fad8a509@app.fastmail.com>
In-Reply-To: <09a628d3-5903-5d5d-b874-5e77bbdf939a@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <09a628d3-5903-5d5d-b874-5e77bbdf939a@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks Ilpo, On Thu, May 8, 2025, at 10:01 AM, Ilpo Järvinen
    wrote: > On Wed, 7 May 2025, Mark Pearson wrote: > >> Move all Lenovo specific
    files into their own sub-directory as part >> of clean-up exercise. >> L
   [...] 
 
 Content analysis details:   (-0.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [103.168.172.151 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [103.168.172.151 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uD2B9-0004t8-Lv
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

VGhhbmtzIElscG8sCgpPbiBUaHUsIE1heSA4LCAyMDI1LCBhdCAxMDowMSBBTSwgSWxwbyBKw6Ry
dmluZW4gd3JvdGU6Cj4gT24gV2VkLCA3IE1heSAyMDI1LCBNYXJrIFBlYXJzb24gd3JvdGU6Cj4K
Pj4gTW92ZSBhbGwgTGVub3ZvIHNwZWNpZmljIGZpbGVzIGludG8gdGhlaXIgb3duIHN1Yi1kaXJl
Y3RvcnkgYXMgcGFydAo+PiBvZiBjbGVhbi11cCBleGVyY2lzZS4KPj4gTG9uZ2VyIHRlcm0gZ29h
bCBpcyB0byBicmVhay11cCB0aGlua3BhZF9hY3BpIHRvIGltcHJvdmUgbWFpbnRhaW5hYmlsaXR5
Cj4+IGFuZCBwZXJoYXBzIHNoYXJlIG1vcmUgZnVuY3Rpb25hbGl0eSB3aXRoIG90aGVyIG5vbiB0
aGlua3BhZCBMZW5vdm8KPj4gcGxhdGZvcm1zLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogTWFyayBQ
ZWFyc29uIDxtcGVhcnNvbi1sZW5vdm9Ac3F1ZWJiLmNhPgo+PiAtLS0KPj4gU29tZSBxdWVzdGlv
bnMgdGhhdCBJIGRpZG4ndCB3YW50IHRvIHB1dCBpbiB0aGUgY29tbWl0IGNvbW1lbnQ6Cj4+IAo+
PiAgLSBJIGRpZG4ndCBrbm93IGlmIG5vdyB3YXMgYSBnb29kIHRpbWUgdG8gcHJvcG9zZSB0aGlz
IGNoYW5nZS4gSQo+PiAgICByZWFsaXNlIGl0IGNvdWxkIGNhdXNlIGhlYWRhY2hlcyBmb3IgYW55
Ym9keSB3aXRoIHBhdGNoZXMgYmVpbmcKPj4gICAgd29ya2VkIG9uLgo+Cj4gRG9uJ3Qgd29ycnkg
dG9vIG11Y2ggYWJvdXQgb3RoZXIgY2hhbmdlcywgaWYgeW91IGRvbid0IHJlY2FsbCBhbnl0aGlu
ZyAKPiBpbW1lZGlhdGVseSwgdGhlcmUgbGlrZWx5IGlzbid0IGFueXRoaW5nIHRoYXQgc2lnbmlm
aWNhbnQuIElmIHdlIGFsd2F5cwo+IHBvc3Rwb25lIHVzZWZ1bCByZW9yZ2FuaXphdGlvbnMgaW4g
ZmVhciB0aGF0IHNvbWUgaHlwb3RoZXRpY2FsIHdvcmsgd291bGQgCj4gaGF2ZSB0byByZWJhc2Us
IGl0IG5ldmVyIGdldHMgZG9uZSA6LSkuCj4KPj4gICAgUGxlYXNlIGxldCBtZSBrbm93IHdoYXQg
bWFrZXMgaXQgZWFzaWVzdCBmb3IgbWFpbnRhaW5lcnMKPj4gICAgYW5kIG90aGVyIGRldmVsb3Bl
cnMuIElmIHRoZXJlIGlzIGEgcGFydGljdWxhciBicmFuY2ggdGhhdCB3b3VsZCBiZQo+PiAgICBi
ZXR0ZXIgdG8gZG8gdGhpcyBhZ2FpbnN0IGFsc28gbGV0IG1lIGtub3cuCj4KPiBPbmNlIEkndmUg
bWVyZ2VkIGZpeGVzIGJyYW5jaCBpbnRvIGZvci1uZXh0IChJIHNob3VsZCBkbyB0aGF0IGF0IGxh
dGVzdCAKPiBlYXJseSBuZXh0IHdlZWsgaWYgbm90IGFscmVhZHkgdGhpcyB3ZWVrKSwgaXQgc2hv
dWxkIGJlIHByZXR0eSAKPiBzdHJhaWdodGZvcndhcmQgdG8gaGFuZGxlIHN1Y2ggbW92ZSB3aXRo
b3V0IGNvbmZsaWN0cy4KPgoKT0sgLSB0aGFua3MuIElmIHRoZXJlJ3MgYW55dGhpbmcgSSBjYW4g
ZG8gdG8gaGVscCBsZXQgbWUga25vdy4KCgo+PiAgLSBTaG91bGQgSSBiZSB1cGRhdGluZyB0aGUg
TUFJTlRBSU5FUlMgZmlsZT8gSSdtIHN0aWxsIG5vdCBzdXJlIHdoYXQKPj4gICAgdGhlIHByb3Rv
Y29sIHRoZXJlIGlzLiBJJ20gdmVyeSBoYXBweSB0byBoZWxwIHJldmlldyBhbnl0aGluZyBpbiB0
aGUKPj4gICAgbGVub3ZvIGRpcmVjdG9yeSwgYnV0IEkgZGlkbid0IHdhbnQgdG8gbWFrZSBhc3N1
bXB0aW9ucy4KPgo+IFlvdSBzaG91bGQgY2VydGFpbmx5IHVwZGF0ZSBNQUlOVEFJTkVSUyBpbiB0
aGUgc2FtZSBwYXRjaCB0byB0aGUgbmV3IAo+IHBhdGhzLiBJZiB5b3Ugd2FudCB0byBtYWtlIG90
aGVyIGNoYW5nZXMsIHB1dCB0aGVtIHN1Y2ggYXMgYWRkIHlvdXIgbmFtZSAKPiBpbnRvIHNvbWUg
ZW50cnkgb3IgY3JlYXRlIGEgZ2VuZXJpYyBMRU5PVk8gZW50cnksIHB1dCB0aG9zZSBpbnRvIG93
biAKPiBwYXRjaCBhZnRlciB0aGUgbW92ZSBwbGVhc2UuCj4KCk9LIC0gSSdsbCBzdWJtaXQgYSB2
MiB3aXRoIHRoYXQgY2hhbmdlLiBUaGFua3MgZm9yIHRoZSBndWlkYW5jZQoKPj4gIC0gSSBoYXZl
IHRlc3RlZCBvbiBtdWx0aXBsZSBwbGF0Zm9ybXMgYnV0IEkgZG9uJ3QgaGF2ZSBhbnkgaWRlYXBh
ZHMgSQo+PiAgICBjYW4gdXNlLgo+Cj4gR2l2ZW4gaXQncyBqdXN0IG1vdmVzIGZpbGUgdG8gbmV3
IHBsYWNlLCB0aGUgdGhyZWF0IG9mIGJyZWFraW5nIHNvbWV0aGluZyAKPiB0aGF0IGlzbid0IGRl
dGVjdGVkIGJ5IHNpbXBsZSBidWlsZCB0ZXN0LCBpc24ndCB0aGF0IGhpZ2guCj4KQWdyZWVkIC0g
dGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNw
aS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
