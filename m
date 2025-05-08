Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E76B0AAFCFD
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 16:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h9UjEt1AODtOWuTIHiVxHJ6HVm/zEKOyb1kECiResw4=; b=kxOX1DHZiHZib/1RhC1HzKCVXZ
	oJtgWFmFD3rXALuxPe6Ag/GcKMjPLXWK2PBtkQJBQO9+2/w1y5IcI59SsSoqPIc7Nosbck+Ufbnrh
	7Hsy5yZDTQIAudaNdFKurrAX4ainzfG/tcdAWDULtm34S7CcZj+02b4EEYTg79zSDSD0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2FA-0004Ri-BC;
	Thu, 08 May 2025 14:29:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uD2F8-0004RS-Jw
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xOaFwawQMziTPg9wQ4vcKv9MzhcDJIeOZNOeITnoaf0=; b=V9BuF9AiNrNEta8BLMo3kEtG73
 LtHI7UOU4bhrbxZJBlCV2xsuku+zNZO5VuW+/wJ+Dz2PaRfBYNv9qSI6S/9Ynsey/9qhRoDv9NcrI
 oA5Sm/wdtLmrfsUGSFOEQT/MgF2NlAIogc4kY5TK0TomlBht3zKiE+6Hxb7oolQACIAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xOaFwawQMziTPg9wQ4vcKv9MzhcDJIeOZNOeITnoaf0=; b=UgfKEyMXbEv05ACGCPn85JO4Z3
 sRln6BBRj2noO+WAtU1sCq/ic2/SoZdlzQZ6GxOYa6KesGokkxb7t+lQiTh3vPDHKKjIHGwRiM5aK
 qlQxVjd0GQlqNpiO10qN+BokHn88wLa8lOZwkmyqyRymbFihAxACue/sPTnhWrkM1Eyk=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2F8-0005KR-3C for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:28:58 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 5382A11400C4;
 Thu,  8 May 2025 10:28:47 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-12.internal (MEProxy); Thu, 08 May 2025 10:28:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1746714527;
 x=1746800927; bh=xOaFwawQMziTPg9wQ4vcKv9MzhcDJIeOZNOeITnoaf0=; b=
 i4rSzw0YvHWJiU6f0AFwSVryA3sXnyFbpUkUWykF1efGVUxwFpM506fJd3PMrq2c
 yAiz2XHNSKJ1g/OseHrjVfcGKf+Q7bvKEkEE/uBffNZj/55KHblCEbroohLwOT4d
 URpTsqwr68+Sh/eBa4qbEEGTxowquFXcK/SBFgaPBF9mZW+oc8ddr66XX3Ro241u
 VeaAFeaAgOONZj16xFChi2Y91OJGOSTSoBHSMtaAM3aygDSk2dDBEBXJrT3q+tyc
 X8zXk0deJ3XvjfflB1xca6MHawUZAZu/N75Ki2DDxarwtvG/+A5E9R0y+o4LREB4
 gP95cqTOvIc/BNo6qi1jgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746714527; x=
 1746800927; bh=xOaFwawQMziTPg9wQ4vcKv9MzhcDJIeOZNOeITnoaf0=; b=S
 TPkeAE+ZrLX6imXSrksuuLDxU1ReczKmZdVtEhe51EWoeIec7OSBtgEXqYZOOPRu
 na/a2p9q2OQN/hKYOZFNlOU8MCvjf312R7u8bzyq44uhrdTOnB33I5Itwdi2tKT8
 t5eLpZ2dQd371TBtk8TqdtHXTqaSlz33sJhJWUvZOWx5k2NyxsuQhgHACDqXSW6p
 2mCMQa9bVR0nB4uvZxUH82AT/9mxqcQTDZZaVi6Y1Eg73EanOckqSt01nOueralW
 BehU0M3oPTZQ6wmsY7ndbZe12R8fqyRCFQfIRM7AjyMdjMJ/af6KsyYUJo5xSRDn
 rPX/t5whl4cFakCr7VGUw==
X-ME-Sender: <xms:nr8caDlNVBMmHrunLCVm-zQApT2geFm4Y7kxHgNcw4DtFPTPyKp29A>
 <xme:nr8caG0zyN5dMXrz6-rKxJ2zetBHiUpQDj_iA5PlMOi6HJWTSzdUqhvQV5n9smUtl
 ZWvmrRlsDxwAvbcvwI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeelleekucetufdoteggodetrf
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
X-ME-Proxy: <xmx:nr8caJorTp9M0OBHlfIrDxX89JFOzNWqUa2WZfgRV4yxfsDuzivsUA>
 <xmx:nr8caLlYUBLSYXDVNtp1UgRRWxIHylkU2MkUH4NoV6IepX4Gg9DnCw>
 <xmx:nr8caB3Bu3CDUB_lkgehWHuG1j_aZ9UpOPUU76K_lGWrWYtvSq_ZTw>
 <xmx:nr8caKvjE11Qm4k2nSCZQJO_2g0ERCC0GF-eXmoLzKFfZUzRbt2fQQ>
 <xmx:n78caKov3FfwzfHdQSl7Vu6dnD3UzRpZTdYW3hpWx-gQYL-sKzqLK9_s>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id CEB2E3C0068; Thu,  8 May 2025 10:28:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T747cf12b99a35bad
Date: Thu, 08 May 2025 10:28:26 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <c8ad9e6d-772d-4954-a3b9-ecafe7e3bdc7@app.fastmail.com>
In-Reply-To: <6feeae5a-3928-8198-7ed6-2080c929d7c5@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
 <6feeae5a-3928-8198-7ed6-2080c929d7c5@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo, On Thu, May 8, 2025, at 10:03 AM, Ilpo Järvinen
   wrote: > On Wed, 7 May 2025, Mark Pearson wrote: > >> Add API to be able to
    get the thinkpad_acpi various handles. >> >> Will use this to start pulling
    [...] 
 
 Content analysis details:   (-0.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [103.168.172.153 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [103.168.172.153 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uD2F8-0005KR-3C
Subject: Re: [ibm-acpi-devel] [PATCH 2/2] platform/x86: export thinkpad_acpi
 handles
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

SGkgSWxwbywKCk9uIFRodSwgTWF5IDgsIDIwMjUsIGF0IDEwOjAzIEFNLCBJbHBvIErDpHJ2aW5l
biB3cm90ZToKPiBPbiBXZWQsIDcgTWF5IDIwMjUsIE1hcmsgUGVhcnNvbiB3cm90ZToKPgo+PiBB
ZGQgQVBJIHRvIGJlIGFibGUgdG8gZ2V0IHRoZSB0aGlua3BhZF9hY3BpIHZhcmlvdXMgaGFuZGxl
cy4KPj4gCj4+IFdpbGwgdXNlIHRoaXMgdG8gc3RhcnQgcHVsbGluZyBzb21lIG9mIHRoZSB0aGlu
a3BhZF9hY3BpIGZ1bmN0aW9uYWxpdHkKPj4gaW50byBzZXBhcmF0ZSBtb2R1bGVzIGluIHRoZSBm
dXR1cmUuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJrIFBlYXJzb24gPG1wZWFyc29uLWxlbm92
b0BzcXVlYmIuY2E+Cj4+IC0tLQo+PiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvbGVub3ZvL3RoaW5r
cGFkX2FjcGkuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwo+PiAgaW5jbHVkZS9saW51eC90aGlu
a3BhZF9hY3BpLmggICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysrKysrKysrCj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNs
dWRlL2xpbnV4L3RoaW5rcGFkX2FjcGkuaAo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxh
dGZvcm0veDg2L2xlbm92by90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni9s
ZW5vdm8vdGhpbmtwYWRfYWNwaS5jCj4+IGluZGV4IDdkZDRhYmY0N2Y2MS4uMGViMzNiNGM5OWNm
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni9sZW5vdm8vdGhpbmtwYWRfYWNw
aS5jCj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L2xlbm92by90aGlua3BhZF9hY3BpLmMK
Pj4gQEAgLTY3LDYgKzY3LDcgQEAKPj4gICNpbmNsdWRlIDxsaW51eC9zdHJpbmcuaD4KPj4gICNp
bmNsdWRlIDxsaW51eC9zdHJpbmdfaGVscGVycy5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3N5c2Zz
Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvdGhpbmtwYWRfYWNwaS5oPgo+PiAgI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvdWFjY2Vzcy5oPgo+PiAgI2luY2x1ZGUg
PGxpbnV4L3VuaXRzLmg+Cj4+IEBAIC02MDYsNiArNjA3LDIzIEBAIFRQQUNQSV9IQU5ETEUoaGtl
eSwgZWMsICJcXF9TQi5IS0VZIiwJLyogNjAwZS94LCA3NzBlLCA3NzB4ICovCj4+ICAgKiBBQ1BJ
IGhlbHBlcnMKPj4gICAqLwo+PiAgCj4+ICtpbnQgdHBfYWNwaV9nZXRfaGFuZGxlKGVudW0gdHBf
YWNwaV9oYW5kbGVfaWQgaGFuZGxlX2lkLCBhY3BpX2hhbmRsZSAqaGFuZGxlKQo+PiArewo+PiAr
CXN3aXRjaCAoaGFuZGxlX2lkKSB7Cj4+ICsJY2FzZSBUUF9ST09UX0hBTkRMRToKPj4gKwkJKmhh
bmRsZSA9IHJvb3RfaGFuZGxlOwo+PiArCQlyZXR1cm4gMDsKPj4gKwljYXNlIFRQX0VDX0hBTkRM
RToKPj4gKwkJKmhhbmRsZSA9IGVjX2hhbmRsZTsKPj4gKwkJcmV0dXJuIDA7Cj4+ICsJY2FzZSBU
UF9IS0VZX0hBTkRMRToKPj4gKwkJKmhhbmRsZSA9IGhrZXlfaGFuZGxlOwo+PiArCQlyZXR1cm4g
MDsKPj4gKwl9Cj4+ICsJcmV0dXJuIC1FTk9ERVY7Cj4+ICt9Cj4+ICtFWFBPUlRfU1lNQk9MX0dQ
TCh0cF9hY3BpX2dldF9oYW5kbGUpOwo+Cj4gUGxlYXNlIHB1dCB0aGVzZSBzeW1ib2xzIGludG8g
YSBuYW1lc3BhY2UuCgpTb3JyeSwgbm90IHF1aXRlIHN1cmUgd2hhdCB5b3UgbWVhbiBoZXJlLiBD
b3VsZCB5b3UgcG9pbnQgbWUgYXQgYW4gZXhhbXBsZT8KCj4KPj4gKwo+PiAgc3RhdGljIGludCBh
Y3BpX2V2YWxmKGFjcGlfaGFuZGxlIGhhbmRsZSwKPj4gIAkJICAgICAgaW50ICpyZXMsIGNoYXIg
Km1ldGhvZCwgY2hhciAqZm10LCAuLi4pCj4+ICB7Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L3RoaW5rcGFkX2FjcGkuaCBiL2luY2x1ZGUvbGludXgvdGhpbmtwYWRfYWNwaS5oCj4+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWI1MjczNDY0NjU4Cj4+
IC0tLSAvZGV2L251bGwKPj4gKysrIGIvaW5jbHVkZS9saW51eC90aGlua3BhZF9hY3BpLmgKPj4g
QEAgLTAsMCArMSwxNyBAQAo+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b3ItbGF0ZXIgKi8KPj4gKy8qCj4+ICsgKiBUaGlua3BhZCBBQ1BJIGRyaXZlciBBUEkKPj4gKyAq
Lwo+PiArCj4+ICsjaWZuZGVmIF9UUF9BQ1BJX0hfCj4+ICsjZGVmaW5lIF9UUF9BQ1BJX0hfCj4+
ICsKPj4gK2VudW0gdHBfYWNwaV9oYW5kbGVfaWQgewo+PiArCVRQX1JPT1RfSEFORExFLAo+PiAr
CVRQX0VDX0hBTkRMRSwKPj4gKwlUUF9IS0VZX0hBTkRMRSwKPj4gK307Cj4+ICsKPj4gK2ludCB0
cF9hY3BpX2dldF9oYW5kbGUoZW51bSB0cF9hY3BpX2hhbmRsZV9pZCBoYW5kbGVfaWQsIGFjcGlf
aGFuZGxlICpoYW5kbGUpOwo+PiArCj4+ICsjZW5kaWYgLyogX1RQX0FDUElfSCAqLwo+PiAKPgo+
IEkgc3VnZ2VzdCB5b3Ugc2VuZCB0aGlzIGluIHRoZSBzZXJpZXMgdGhhdCBpbnRyb2R1Y2VzIGFu
IHVzZXIgZm9yIHRoaXMgCj4gaW50ZXJmYWNlLgoKT0sgLSB3aWxsIGRvLiAKU2lkZSBub3RlIC0g
SSBkbyBoYXZlIG9uZSBwbGFubmVkIChuZXcgYmF0dGVyeSBBQ1BJIGludGVyZmFjZSB0aGF0IGdp
dmVzIHNvbWUgZXh0cmEgYmF0dGVyeSByZWxhdGVkIGluZm9ybWF0aW9uKS4KClRoYW5rcyBmb3Ig
dGhlIHJldmlldwpNYXJrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9pYm0tYWNwaS1kZXZlbAo=
