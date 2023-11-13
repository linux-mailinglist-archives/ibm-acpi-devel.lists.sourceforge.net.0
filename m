Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C497EA1BF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Nov 2023 18:16:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r2aXQ-00058G-6D;
	Mon, 13 Nov 2023 17:15:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r2aXN-000589-Si
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 17:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xjl3PNRx506qQQwOSRwtutB1hA6UYpeEKoxJbO5Gnkw=; b=NRfZD8VQagWHxZDCB2BpZ1b0Dw
 HMmD/VnBQ0GPFi8dZOjx/142h/nMxQev8lfTEuNgZbID8PZnJH7yG4/kV4tuEjjE/s/4Zg7resNCI
 ARA2SAu8XKKMA43QP1nBPs0Ml0Ldl+aVtvUS9JVOWgKTRDgCERuRZ6xbHnEMbBNbno/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xjl3PNRx506qQQwOSRwtutB1hA6UYpeEKoxJbO5Gnkw=; b=P62jgsnHHHE3E3ajNcLadJSthe
 ICZFkM05hqgYBCXgAxcO66d5GaF8bYMRvoS2CpcsXeSj73PjTN6lXrUY0uE/7w1P1BptuHnkn0jD4
 cwHGomzNoNipxgPPChhQ3PTuc5X1I3yvhCTVzczZG/noMJ/4rGuIsXwwN7w8ZqmC2EWA=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r2aXN-004v1c-2C for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 17:15:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BFFFD5C0217;
 Mon, 13 Nov 2023 12:15:41 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 13 Nov 2023 12:15:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm1; t=
 1699895741; x=1699982141; bh=Xjl3PNRx506qQQwOSRwtutB1hA6UYpeEKox
 JbO5Gnkw=; b=VVJnelt04xr7An3ZNx3CBH8DA55apBOBObvi4RSzti0koVspfE1
 qNbJpl06bYm8WqP24Y5eLizWnUoI+vGaVzSYPd9GRpCmkvpIL949ZPzIho0guXj0
 MQa/E1k0HBKCNyLLD0ITtbJ6XejDTATfhv/WManOXewwFdX1ErNUH+oqTQWPcMYr
 BBahN0bncWgKmOH1yP3Zn6q0J8i+J8OFt4ftwi+xc8jOWWR0FKQzLAIwAnZglAMs
 zufP2XOOlY0RDlrfMwYXCXpq+oDRQnGGaaN9dTw7XfCtggQpdfCQW2eMVa8qwl1n
 NysQ6xPUFiVRxZwhcqalvbbaYMVvWqKblDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1699895741; x=1699982141; bh=Xjl3PNRx506qQQwOSRwtutB1hA6UYpeEKox
 JbO5Gnkw=; b=ZWod9TPuyH01dQsK7C6Old4FnZ9V4sTNrKGhmIdG6Rmdf1ixPMy
 fHyKQ6H+IrOr/oEdQhbLRX1aB019oSqyzD80r7SaHfqcXKcvdYHWYBYmx3DxrOw0
 fbvLizZMfrZagVqUeKe4M20Ffk1c3YdmcTRuLTQqMGW8iGzUfOgWfMaHoXMVa++Y
 U9342ROppG5YQ2bDv7GB8lQFvjghep8NWayx7ep8s6X1A7lVvqwaZBt2TRkxPWuA
 Nbz+qVorOtRLtphr94TZNtSOCOe1S5O1+FqNyuLsbzV8uX1Xp1UwU1vANtV9IUpi
 DquuK1AzIH395IFSlCkc5C54E07KMPNG9VA==
X-ME-Sender: <xms:vVlSZTBYjVGxdNmO0S4PYQjm2WpFuODVCMjfB8gUsN8fzv8ioNwm5A>
 <xme:vVlSZZjIn-o1XIlMoGv73gRaWPgTpnRDK__QbsQAZ5GqCFbXCdW-vA22tk1-ZAtJz
 Y99cSQ_cqnGeu3xp0E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhephfefgedufeetgfetlefgkefgvdejleelvefg
 hfejfffhtdeitdejfeekvdeugfeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgt
 rg
X-ME-Proxy: <xmx:vVlSZelQwSe6UBOUu5fHM5coyocRTmri4TDlbjxeXSGubU2V2xJVuQ>
 <xmx:vVlSZVw1sIXRGWmhgXzVY-ulyippl2Yz8NqRQ9donS1_SG1CbgHpoA>
 <xmx:vVlSZYQkC3FaJycU9YnJkx4Jx5jQ9AhGwURM1SCC5wlETzyHWY_D9w>
 <xmx:vVlSZedwNdNuKwXvamJpeI4M47o05GDyJXn5NeUWmRjhAxaZRU7uaA>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4CF54C6008B; Mon, 13 Nov 2023 12:15:41 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1108-g3a29173c6d-fm-20231031.005-g3a29173c
MIME-Version: 1.0
Message-Id: <36bb8aaf-643c-4736-abe5-e5a911f24aa1@app.fastmail.com>
In-Reply-To: <c8a025e-2da2-693f-aa94-679aba79827b@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20231113165453.6335-1-mpearson-lenovo@squebb.ca>
 <c8a025e-2da2-693f-aa94-679aba79827b@linux.intel.com>
Date: Mon, 13 Nov 2023 12:15:20 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks Ilpo, On Mon, Nov 13, 2023, at 11:59 AM, Ilpo Järvinen
    wrote: > On Mon, 13 Nov 2023, Mark Pearson wrote: > >> Some new Thinkpads
    have a new improved performance mode available. >> Add support to make this
    [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [66.111.4.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r2aXN-004v1c-2C
Subject: Re: [ibm-acpi-devel] [PATCH v3] platform/x86: Add support for
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

VGhhbmtzIElscG8sCgpPbiBNb24sIE5vdiAxMywgMjAyMywgYXQgMTE6NTkgQU0sIElscG8gSsOk
cnZpbmVuIHdyb3RlOgo+IE9uIE1vbiwgMTMgTm92IDIwMjMsIE1hcmsgUGVhcnNvbiB3cm90ZToK
Pgo+PiBTb21lIG5ldyBUaGlua3BhZHMgaGF2ZSBhIG5ldyBpbXByb3ZlZCBwZXJmb3JtYW5jZSBt
b2RlIGF2YWlsYWJsZS4KPj4gQWRkIHN1cHBvcnQgdG8gbWFrZSB0aGlzIG1vZGUgdXNhYmxlLgo+
PiAKPj4gVG8gYXZvaWQgaGF2aW5nIHRvIGNyZWF0ZSBhIG5ldyBwcm9maWxlLCBqdXN0IHVzZSB0
aGUgaW1wcm92ZWQgcGVyZm9ybWFuY2UKPj4gbW9kZSBpbiBwbGFjZSBvZiB0aGUgZXhpc3Rpbmcg
cGVyZm9ybWFuY2UgbW9kZSwgd2hlbiBhdmFpbGFibGUuCj4+IAo+PiBUZXN0ZWQgb24gUDE0cyBB
TUQgRzQgQU1ELgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogTWFyayBQZWFyc29uIDxtcGVhcnNvbi1s
ZW5vdm9Ac3F1ZWJiLmNhPgo+PiAtLS0KPj4gQ2hhbmdlcyBpbiB2MjogdXBkYXRlZCBpbXBsZW1l
bnRhdGlvbiBmb3IgRFlUQ19VUF9TVVBQT1JUIGRlZmluZQo+PiBDaGFuZ2VzIGluIHYzOiAKPj4g
IC0gQWRkIGluIG1pc3NpbmcgQklUIGZvciBkZWZpbmUsIHNvbWVob3cgbG9zdCBpbiBwcmV2aW91
cyBjb21taXQKPj4gIC0gQ29zbWV0aWMgY2xlYW4tdXBzCj4+IAo+PiAgZHJpdmVycy9wbGF0Zm9y
bS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
PiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPj4gCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4
Ni90aGlua3BhZF9hY3BpLmMKPj4gaW5kZXggYWQ0NjA0MTdmOTAxLi4zYTlkMmNjNzFiNmEgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+PiArKysg
Yi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4gQEAgLTEwMTM2LDYgKzEw
MTM2LDcgQEAgc3RhdGljIHN0cnVjdCBpYm1fc3RydWN0IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEg
PSB7Cj4+ICAKPj4gICNkZWZpbmUgRFlUQ19DTURfU0VUICAgICAgICAgIDEgLyogVG8gZW5hYmxl
L2Rpc2FibGUgSUMgZnVuY3Rpb24gbW9kZSAqLwo+PiAgI2RlZmluZSBEWVRDX0NNRF9NTUNfR0VU
ICAgICAgOCAvKiBUbyBnZXQgY3VycmVudCBNTUMgZnVuY3Rpb24gYW5kIG1vZGUgKi8KPj4gKyNk
ZWZpbmUgRFlUQ19DTURfVVBfQ0FQICAgICAweEEgLyogVG8gZ2V0IFVsdHJhLXBlcmZvcm1hbmNl
IGNhcGFiaWxpdHkgKi8KPj4gICNkZWZpbmUgRFlUQ19DTURfUkVTRVQgICAgMHgxZmYgLyogVG8g
cmVzZXQgYmFjayB0byBkZWZhdWx0ICovCj4+ICAKPj4gICNkZWZpbmUgRFlUQ19DTURfRlVOQ19D
QVAgICAgIDMgLyogVG8gZ2V0IERZVEMgY2FwYWJpbGl0aWVzICovCj4+IEBAIC0xMDE1Miw2ICsx
MDE1Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBwcm94c2Vuc29yX2RyaXZlcl9kYXRh
ID0gewo+PiAgCj4+ICAjZGVmaW5lIERZVENfRlVOQ1RJT05fU1REICAgICAwICAvKiBGdW5jdGlv
biA9IDAsIHN0YW5kYXJkIG1vZGUgKi8KPj4gICNkZWZpbmUgRFlUQ19GVU5DVElPTl9DUUwgICAg
IDEgIC8qIEZ1bmN0aW9uID0gMSwgbGFwIG1vZGUgKi8KPj4gKyNkZWZpbmUgRFlUQ19GVU5DVElP
Tl9UTVMgICAgIDkgIC8qIEZ1bmN0aW9uID0gOSwgVE1TIG1vZGUgKi8KPj4gICNkZWZpbmUgRFlU
Q19GVU5DVElPTl9NTUMgICAgIDExIC8qIEZ1bmN0aW9uID0gMTEsIE1NQyBtb2RlICovCj4+ICAj
ZGVmaW5lIERZVENfRlVOQ1RJT05fUFNDICAgICAxMyAvKiBGdW5jdGlvbiA9IDEzLCBQU0MgbW9k
ZSAqLwo+PiAgI2RlZmluZSBEWVRDX0ZVTkNUSU9OX0FNVCAgICAgMTUgLyogRnVuY3Rpb24gPSAx
NSwgQU1UIG1vZGUgKi8KPj4gQEAgLTEwMTYzLDExICsxMDE2NSwxNCBAQCBzdGF0aWMgc3RydWN0
IGlibV9zdHJ1Y3QgcHJveHNlbnNvcl9kcml2ZXJfZGF0YSA9IHsKPj4gICNkZWZpbmUgRFlUQ19N
T0RFX01NQ19MT1dQT1dFUiAzICAvKiBMb3cgcG93ZXIgbW9kZSAqLwo+PiAgI2RlZmluZSBEWVRD
X01PREVfTU1DX0JBTEFOQ0UgIDB4RiAgLyogRGVmYXVsdCBtb2RlIGFrYSBiYWxhbmNlZCAqLwo+
PiAgI2RlZmluZSBEWVRDX01PREVfTU1DX0RFRkFVTFQgIDAgIC8qIERlZmF1bHQgbW9kZSBmcm9t
IE1NQ19HRVQsIGFrYSBiYWxhbmNlZCAqLwo+PiArI2RlZmluZSBEWVRDX05PTU9ERSAgICAgICAg
ICAgIDB4RiAgLyogV2hlbiBGdW5jdGlvbiBkb2VzIG5vdCBoYXZlIGEgbW9kZSAqLwo+PiAgCj4+
ICAjZGVmaW5lIERZVENfTU9ERV9QU0NfTE9XUE9XRVIgMyAgLyogTG93IHBvd2VyIG1vZGUgKi8K
Pj4gICNkZWZpbmUgRFlUQ19NT0RFX1BTQ19CQUxBTkNFICA1ICAvKiBEZWZhdWx0IG1vZGUgYWth
IGJhbGFuY2VkICovCj4+ICAjZGVmaW5lIERZVENfTU9ERV9QU0NfUEVSRk9STSAgNyAgLyogSGln
aCBwb3dlciBtb2RlIGFrYSBwZXJmb3JtYW5jZSAqLwo+PiAgCj4+ICsjZGVmaW5lIERZVENfVVBf
U1VQUE9SVCAgICBCSVQoOCkgIC8qIFVsdHJhLXBlcmZvcm1hbmNlIChUTVMpIG1vZGUgc3VwcG9y
dCAqLwo+PiArCj4+ICAjZGVmaW5lIERZVENfRVJSX01BU0sgICAgICAgMHhGICAvKiBCaXRzIDAt
MyBpbiBjbWQgcmVzdWx0IGFyZSB0aGUgZXJyb3IgcmVzdWx0ICovCj4+ICAjZGVmaW5lIERZVENf
RVJSX1NVQ0NFU1MgICAgICAxICAvKiBDTUQgY29tcGxldGVkIHN1Y2Nlc3NmdWwgKi8KPj4gIAo+
PiBAQCAtMTAxODUsNiArMTAxOTAsNyBAQCBzdGF0aWMgZW51bSBwbGF0Zm9ybV9wcm9maWxlX29w
dGlvbiBkeXRjX2N1cnJlbnRfcHJvZmlsZTsKPj4gIHN0YXRpYyBhdG9taWNfdCBkeXRjX2lnbm9y
ZV9ldmVudCA9IEFUT01JQ19JTklUKDApOwo+PiAgc3RhdGljIERFRklORV9NVVRFWChkeXRjX211
dGV4KTsKPj4gIHN0YXRpYyBpbnQgZHl0Y19jYXBhYmlsaXRpZXM7Cj4+ICtzdGF0aWMgYm9vbCBk
eXRjX3VsdHJhcGVyZl9jYXA7Cj4+ICBzdGF0aWMgYm9vbCBkeXRjX21tY19nZXRfYXZhaWxhYmxl
Owo+PiAgc3RhdGljIGludCBwcm9maWxlX2ZvcmNlOwo+PiAgCj4+IEBAIC0xMDM1NSw2ICsxMDM2
MSwxNyBAQCBzdGF0aWMgaW50IGR5dGNfcHJvZmlsZV9zZXQoc3RydWN0IHBsYXRmb3JtX3Byb2Zp
bGVfaGFuZGxlciAqcHByb2YsCj4+ICAJaWYgKGVycikKPj4gIAkJZ290byB1bmxvY2s7Cj4+ICAK
Pj4gKwkvKiBTZXQgVE1TIG1vZGUgYXBwcm9wcmlhdGVseSAoZW5hYmxlIGZvciBwZXJmb3JtYW5j
ZSksIGlmIGF2YWlsYWJsZSAqLwo+PiArCWlmIChkeXRjX3VsdHJhcGVyZl9jYXApIHsKPj4gKwkJ
aW50IGNtZDsKPj4gKwo+PiArCQljbWQgPSBEWVRDX1NFVF9DT01NQU5EKERZVENfRlVOQ1RJT05f
VE1TLCBEWVRDX05PTU9ERSwKPj4gKwkJCQkgICAgICAgcHJvZmlsZSA9PSBQTEFURk9STV9QUk9G
SUxFX1BFUkZPUk1BTkNFKTsKPj4gKwkJZXJyID0gZHl0Y19jb21tYW5kKGNtZCwgJm91dHB1dCk7
Cj4+ICsJCWlmIChlcnIpCj4+ICsJCQlyZXR1cm4gZXJyOwo+PiArCX0KPj4gKwo+PiAgCWlmIChk
eXRjX2NhcGFiaWxpdGllcyAmIEJJVChEWVRDX0ZDX01NQykpIHsKPj4gIAkJaWYgKHByb2ZpbGUg
PT0gUExBVEZPUk1fUFJPRklMRV9CQUxBTkNFRCkgewo+PiAgCQkJLyoKPj4gQEAgLTEwNDI5LDYg
KzEwNDQ2LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIgZHl0Y19w
cm9maWxlID0gewo+PiAgc3RhdGljIGludCB0cGFjcGlfZHl0Y19wcm9maWxlX2luaXQoc3RydWN0
IGlibV9pbml0X3N0cnVjdCAqaWlibSkKPj4gIHsKPj4gIAlpbnQgZXJyLCBvdXRwdXQ7Cj4+ICsJ
aW50IGNtZDsKPj4gIAo+PiAgCS8qIFNldHVwIHN1cHBvcnRlZCBtb2RlcyAqLwo+PiAgCXNldF9i
aXQoUExBVEZPUk1fUFJPRklMRV9MT1dfUE9XRVIsIGR5dGNfcHJvZmlsZS5jaG9pY2VzKTsKPj4g
QEAgLTEwNDg0LDYgKzEwNTAyLDE2IEBAIHN0YXRpYyBpbnQgdHBhY3BpX2R5dGNfcHJvZmlsZV9p
bml0KHN0cnVjdCBpYm1faW5pdF9zdHJ1Y3QgKmlpYm0pCj4+ICAJCWRiZ19wcmludGsoVFBBQ1BJ
X0RCR19JTklULCAiTm8gRFlUQyBzdXBwb3J0IGF2YWlsYWJsZVxuIik7Cj4+ICAJCXJldHVybiAt
RU5PREVWOwo+PiAgCX0KPj4gKwllcnIgPSBkeXRjX2NvbW1hbmQoRFlUQ19DTURfVVBfQ0FQLCAm
b3V0cHV0KTsKPgo+IEhtbSwgYXJlIHlvdSBtaXNzaW5nIGVycm9yIGhhbmRsaW5nIGhlcmU/Cj4K
RG9oLi4uLnllcywgaXQgc2hvdWxkIGNoZWNrIHRoYXQuIE15IGJhZC4KCkknbGwgaG9sZCBvZmYg
YSBkYXkgb3IgdHdvIG9uIHRoZSBuZXh0IHBhdGNoIHNvIEknbSBub3Qgc3BhbW1pbmcgdGhlIGxp
c3QgaW4gY2FzZSB0aGVyZSBpcyBvdGhlciBmZWVkYmFjaywgYW5kIGRvIGEgZml4IGZvciB0aGF0
LiAKSSBkb24ndCB3YW50IHRoZSBkcml2ZXIgdG8gZXJyb3Igb3V0IG9uIHRoaXMgLSBidXQgaXQg
c2hvdWxkbid0IGNoZWNrIChhbmQgcG90ZW50aWFsbHkgZW5hYmxlKSB0aGUgZmVhdHVyZSBpZiB0
aGF0IHJlZ2lzdGVyIHJlYWQgZmFpbHMuIEkgd2lsbCBnbyBhbmQgZG91YmxlIGNoZWNrIG9uIHNv
bWUgb2xkZXIgcGxhdGZvcm1zIHRvbyBhcyBhIHNhbml0eSBjaGVjay4KClRoYW5rcyBmb3IgdGhl
IHJldmlldy4KTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vaWJtLWFjcGktZGV2ZWwK
