Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 950187E9FAF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Nov 2023 16:13:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r2Ycr-0001ya-Oe;
	Mon, 13 Nov 2023 15:13:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r2Ycq-0001yS-IB
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 15:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h5gaOu9/r6aDVdzTcY5rzq2g/nscqXBm93g9IH/eB1g=; b=AdSshZ+G5DCIZZZafg1PldjhHI
 ZbcgjKF+GCLbE1ez5zrz5uOWq/u1Fy6oHAk+2YCtw+otNVsui/Unbv8WXJRsJkj02NHM2PeK1EoeV
 kvwa3Gj1SK5LLDjiDay5FD3WLCBgKPBK/EYl8gTKT7wE8F/LfvyvrXQrK1/X34WoMgEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h5gaOu9/r6aDVdzTcY5rzq2g/nscqXBm93g9IH/eB1g=; b=FI75oGzHGhEwhulBE8P3bPf6Ki
 F2Ki7eArgcjUjFaLWkGFfdA9d/8QkyyQz8JKj7DmcAZ5QSmizDFBZ5SbEbgGNG/53feUx7405WnmS
 w47V9OX4sXZir868m9zw7hig+PKAIWFzgzGCkRIFyahbhlFxZrY3D0z8cN3nkgl+rX2U=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r2Ycc-0008Vi-7k for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 15:13:19 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1FC675C0191;
 Mon, 13 Nov 2023 10:12:58 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 13 Nov 2023 10:12:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm1; t=
 1699888378; x=1699974778; bh=h5gaOu9/r6aDVdzTcY5rzq2g/nscqXBm93g
 9IH/eB1g=; b=Wr5KTRS2KYDrJQKU9/f8YOA8VDRMx3/+UdzMx3G/ZoeS9yAgWdC
 oDyroXRpYIHZMX+tNteCjBp7Sl1I2GAFxvAy4zXnbKrmuiF0ODRnsLV7C73kaffa
 Je5gLl5Uw4lDYNJrn07yHDKkdwnLKI68B1jAE8UJw5rypsSBBssgwavbxG5wpBA+
 9JkY9teH8nSW+RIXOeJIcI8dUUrYmFssucD8FC/WWCGEgq5t5ZZ5BfFfdiTWyAs0
 H17eRD2WGN7AXVGoVF3Wf53na6S84Ok0T6+xCbYLGZiTzIGRFtM3Gu6iLRpzsYKG
 kX4kT12mvfALgZ2869JsAyfzAzYZqbKGPrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1699888378; x=1699974778; bh=h5gaOu9/r6aDVdzTcY5rzq2g/nscqXBm93g
 9IH/eB1g=; b=E34KAyv0E9BAx4q/E1QiunOy+cU/vAaPZwq2lk5Q9wKE9r5eSFc
 G+MHHuI4g3WvVAMmZ37Lo3PIX5fQU4WewY4uCnVze/IzBsAaB9vHPjPzgTuKvc6y
 lb8w09W8GWjnLVXHeIF+MW75dGQizKZ+PaPQEs69FLdzKq/iXddra4K0mowPsp+N
 SnoWrFcHJzoRtQnDfAD0bJt7MsE2HO+mhG8Unxq8EnEG6aAZNypB4upl4qda8wGH
 vGI0z/E/gM6PC63jiF5tQWEj3ng1XDjUbGeGDoTgiCV0kDTrs6m3W8ITcSVhJ1+M
 sOiDbdPqVvauzDWaCfRcCfVTkqif/sFpTqA==
X-ME-Sender: <xms:-TxSZY2tD1OZeLtSt0vEH9fMLlG_0sSkgZMYW7ngQDlA8aY13FB5BQ>
 <xme:-TxSZTGvi_8mT3W0xf6m8E5jH_7nmTw4ZemLpEVsP0fa3H7gpKrbY54z6gLfR-ZEp
 csaF4xArz7NF3Et5J0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgjeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhephfefgedufeetgfetlefgkefgvdejleelvefg
 hfejfffhtdeitdejfeekvdeugfeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgt
 rg
X-ME-Proxy: <xmx:-TxSZQ72a0QiD_v3rYYW2emAs05rGEjIhAzBRAm-HLL2ez31Kf30Xg>
 <xmx:-TxSZR3E017XfD4gXqKAGdzT2CtrEIuBAQLtGrAUZJN_SF-6uBJJlg>
 <xmx:-TxSZbFSXM9U95fd-YZBDfgkPekkxJVE9E0oTmP-3bLXx_z4bcNu0w>
 <xmx:-jxSZTDkMGnavc8kNE1TzMRUsCxSBZBdWQK7sx1jnEno1Xj4wQWBQQ>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 73E67C6008B; Mon, 13 Nov 2023 10:12:57 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1108-g3a29173c6d-fm-20231031.005-g3a29173c
MIME-Version: 1.0
Message-Id: <46b4a4a2-2cf8-446c-b6d4-993697347e02@app.fastmail.com>
In-Reply-To: <17aa8729-11dd-c04a-fbcb-812121157ae@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20231113135741.4787-1-mpearson-lenovo@squebb.ca>
 <17aa8729-11dd-c04a-fbcb-812121157ae@linux.intel.com>
Date: Mon, 13 Nov 2023 10:12:37 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Nov 13, 2023, at 9:20 AM, Ilpo Järvinen wrote: >
   On Mon, 13 Nov 2023, Mark Pearson wrote: > >> Some new Thinkpads have a new
    improved performance mode available. >> Add support to make this m [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r2Ycc-0008Vi-7k
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: Add support for
 improved performance mode
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
Cc: Hans de Goede <hdegoede@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 "Limonciello, Mario" <mario.limonciello@amd.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

CgpPbiBNb24sIE5vdiAxMywgMjAyMywgYXQgOToyMCBBTSwgSWxwbyBKw6RydmluZW4gd3JvdGU6
Cj4gT24gTW9uLCAxMyBOb3YgMjAyMywgTWFyayBQZWFyc29uIHdyb3RlOgo+Cj4+IFNvbWUgbmV3
IFRoaW5rcGFkcyBoYXZlIGEgbmV3IGltcHJvdmVkIHBlcmZvcm1hbmNlIG1vZGUgYXZhaWxhYmxl
Lgo+PiBBZGQgc3VwcG9ydCB0byBtYWtlIHRoaXMgbW9kZSB1c2FibGUuCj4+IAo+PiBUbyBhdm9p
ZCBoYXZpbmcgdG8gY3JlYXRlIGEgbmV3IHByb2ZpbGUsIGp1c3QgdXNlIHRoZSBpbXByb3ZlZCBw
ZXJmb3JtYW5jZQo+PiBtb2RlIGluIHBsYWNlIG9mIHRoZSBleGlzdGluZyBwZXJmb3JtYW5jZSBt
b2RlLCB3aGVuIGF2YWlsYWJsZS4KPj4gCj4+IFRlc3RlZCBvbiBQMTRzIEFNRCBHNCBBTUQuCj4+
IAo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJrIFBlYXJzb24gPG1wZWFyc29uLWxlbm92b0BzcXVlYmIu
Y2E+Cj4+IC0tLQo+PiBDaGFuZ2VzIGluIHYyOiB1cGRhdGVkIGltcGxlbWVudGF0aW9uIGZvciBE
WVRDX1VQX1NVUFBPUlQgZGVmaW5lCj4+IAo+PiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtw
YWRfYWNwaS5jIHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNo
YW5nZWQsIDI4IGluc2VydGlvbnMoKykKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRm
b3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMKPj4gaW5kZXggYWQ0NjA0MTdmOTAxLi5lZDg4NjBjYWE5YzEgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+PiArKysgYi9kcml2ZXJzL3Bs
YXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4gQEAgLTEwMTM2LDYgKzEwMTM2LDcgQEAgc3Rh
dGljIHN0cnVjdCBpYm1fc3RydWN0IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEgPSB7Cj4+ICAKPj4g
ICNkZWZpbmUgRFlUQ19DTURfU0VUICAgICAgICAgIDEgLyogVG8gZW5hYmxlL2Rpc2FibGUgSUMg
ZnVuY3Rpb24gbW9kZSAqLwo+PiAgI2RlZmluZSBEWVRDX0NNRF9NTUNfR0VUICAgICAgOCAvKiBU
byBnZXQgY3VycmVudCBNTUMgZnVuY3Rpb24gYW5kIG1vZGUgKi8KPj4gKyNkZWZpbmUgRFlUQ19D
TURfVVBfQ0FQICAgICAweEEgLyogVG8gZ2V0IFVsdHJhLXBlcmZvcm1hbmNlIGNhcGFiaWxpdHkg
Ki8KPj4gICNkZWZpbmUgRFlUQ19DTURfUkVTRVQgICAgMHgxZmYgLyogVG8gcmVzZXQgYmFjayB0
byBkZWZhdWx0ICovCj4+ICAKPj4gICNkZWZpbmUgRFlUQ19DTURfRlVOQ19DQVAgICAgIDMgLyog
VG8gZ2V0IERZVEMgY2FwYWJpbGl0aWVzICovCj4+IEBAIC0xMDE1Miw2ICsxMDE1Myw3IEBAIHN0
YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBwcm94c2Vuc29yX2RyaXZlcl9kYXRhID0gewo+PiAgCj4+
ICAjZGVmaW5lIERZVENfRlVOQ1RJT05fU1REICAgICAwICAvKiBGdW5jdGlvbiA9IDAsIHN0YW5k
YXJkIG1vZGUgKi8KPj4gICNkZWZpbmUgRFlUQ19GVU5DVElPTl9DUUwgICAgIDEgIC8qIEZ1bmN0
aW9uID0gMSwgbGFwIG1vZGUgKi8KPj4gKyNkZWZpbmUgRFlUQ19GVU5DVElPTl9UTVMgICAgIDkg
IC8qIEZ1bmN0aW9uID0gOSwgVE1TIG1vZGUgKi8KPj4gICNkZWZpbmUgRFlUQ19GVU5DVElPTl9N
TUMgICAgIDExIC8qIEZ1bmN0aW9uID0gMTEsIE1NQyBtb2RlICovCj4+ICAjZGVmaW5lIERZVENf
RlVOQ1RJT05fUFNDICAgICAxMyAvKiBGdW5jdGlvbiA9IDEzLCBQU0MgbW9kZSAqLwo+PiAgI2Rl
ZmluZSBEWVRDX0ZVTkNUSU9OX0FNVCAgICAgMTUgLyogRnVuY3Rpb24gPSAxNSwgQU1UIG1vZGUg
Ki8KPj4gQEAgLTEwMTYzLDExICsxMDE2NSwxNCBAQCBzdGF0aWMgc3RydWN0IGlibV9zdHJ1Y3Qg
cHJveHNlbnNvcl9kcml2ZXJfZGF0YSA9IHsKPj4gICNkZWZpbmUgRFlUQ19NT0RFX01NQ19MT1dQ
T1dFUiAzICAvKiBMb3cgcG93ZXIgbW9kZSAqLwo+PiAgI2RlZmluZSBEWVRDX01PREVfTU1DX0JB
TEFOQ0UgIDB4RiAgLyogRGVmYXVsdCBtb2RlIGFrYSBiYWxhbmNlZCAqLwo+PiAgI2RlZmluZSBE
WVRDX01PREVfTU1DX0RFRkFVTFQgIDAgIC8qIERlZmF1bHQgbW9kZSBmcm9tIE1NQ19HRVQsIGFr
YSBiYWxhbmNlZCAqLwo+PiArI2RlZmluZSBEWVRDX05PTU9ERSAgICAgICAgICAgIDB4RiAgLyog
V2hlbiBGdW5jdGlvbiBkb2VzIG5vdCBoYXZlIGEgbW9kZSAqLwo+PiAgCj4+ICAjZGVmaW5lIERZ
VENfTU9ERV9QU0NfTE9XUE9XRVIgMyAgLyogTG93IHBvd2VyIG1vZGUgKi8KPj4gICNkZWZpbmUg
RFlUQ19NT0RFX1BTQ19CQUxBTkNFICA1ICAvKiBEZWZhdWx0IG1vZGUgYWthIGJhbGFuY2VkICov
Cj4+ICAjZGVmaW5lIERZVENfTU9ERV9QU0NfUEVSRk9STSAgNyAgLyogSGlnaCBwb3dlciBtb2Rl
IGFrYSBwZXJmb3JtYW5jZSAqLwo+PiAgCj4+ICsjZGVmaW5lIERZVENfVVBfU1VQUE9SVCAgICAg
ICAgOCAgLyogVWx0cmEtcGVyZm9ybWFuY2UgKFRNUykgbW9kZSBzdXBwb3J0ICovCj4KPiBZb3Ug
Zm9yZ290IHRvIGFkZCBCSVQoKSBoZXJlLiAoQnV0IHRvb2sgaXQgYXdheSBmcm9tIHRoZSBvdGhl
ciBwbGFjZSAKPiBzbyB0aGlzIHBhdGNoIGlzIGFjdHVhbGx5IGJyb2tlbiBjdXJyZW50bHkgSSB0
aGluaykuCj4KT2guLi4udGhhdCdzIG9kZC4gSSBkZWZpbml0ZWx5IGFkZGVkIGl0IChhbmQgdGVz
dGVkIGl0KS4uLnNvIEknbSBub3Qgc3VyZSBob3cgSSBtZXNzZWQgdGhhdCB1cCBpbiB0aGUgYWN0
dWFsIGNvbW1pdCA6KAoKQXBvbG9naWVzIC0gSSdsbCByZS1wb3N0IHdpdGggaXQgY29ycmVjdGVk
LgoKPj4gKwo+PiAgI2RlZmluZSBEWVRDX0VSUl9NQVNLICAgICAgIDB4RiAgLyogQml0cyAwLTMg
aW4gY21kIHJlc3VsdCBhcmUgdGhlIGVycm9yIHJlc3VsdCAqLwo+PiAgI2RlZmluZSBEWVRDX0VS
Ul9TVUNDRVNTICAgICAgMSAgLyogQ01EIGNvbXBsZXRlZCBzdWNjZXNzZnVsICovCj4+ICAKPj4g
QEAgLTEwMTg1LDYgKzEwMTkwLDcgQEAgc3RhdGljIGVudW0gcGxhdGZvcm1fcHJvZmlsZV9vcHRp
b24gZHl0Y19jdXJyZW50X3Byb2ZpbGU7Cj4+ICBzdGF0aWMgYXRvbWljX3QgZHl0Y19pZ25vcmVf
ZXZlbnQgPSBBVE9NSUNfSU5JVCgwKTsKPj4gIHN0YXRpYyBERUZJTkVfTVVURVgoZHl0Y19tdXRl
eCk7Cj4+ICBzdGF0aWMgaW50IGR5dGNfY2FwYWJpbGl0aWVzOwo+PiArc3RhdGljIGJvb2wgZHl0
Y191bHRyYXBlcmZfY2FwOyAvKiB1bHRyYSBwZXJmb3JtYW5jZSBjYXBhYmxlICovCj4KPiBJIHRo
aW5rIHRoZSBjb21tZW50IGlzIHJlcGVhdGluZyB0aGUgc2FtZSBpbmZvcm1hdGlvbiBhbHJlYWR5
IGdpdmVuIGluIHRoZSAKPiB2YXJpYWJsZSBuYW1lIHNvIGp1c3QgZHJvcCB0aGUgY29tbWVudC4K
QWNrCgpNYXJrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9p
Ym0tYWNwaS1kZXZlbAo=
