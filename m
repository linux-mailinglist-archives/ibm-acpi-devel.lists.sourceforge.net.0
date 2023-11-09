Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 966707E70FA
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  9 Nov 2023 18:58:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r19I7-0006Uy-2t;
	Thu, 09 Nov 2023 17:58:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r19I5-0006Ur-Gy
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 09 Nov 2023 17:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DiNtMHCvJlBRRcs2/MdFSEzoHFVrfsJaMw1wJMAOpZk=; b=kZTfOMaAt0Kwk6iN025RQ7Wnj1
 hqa9sc7DoRsdqS5l2RKOk4PJADoeEO95VGGmmOlh8RboQgjPGrzMTZYsu5L2/8OShCByZE7Ge0O4x
 uBrwqxABEv4493+64EZ4VyoLrYYgSy6G5gUrtGQCsRP0+df5WC4MIPnokBLwGY8H37Yg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DiNtMHCvJlBRRcs2/MdFSEzoHFVrfsJaMw1wJMAOpZk=; b=QWHTmFN5XHdceKqvW7vhEVIft9
 0V5hvG6A+QHM5jGWwcIUHEwvqDWJtVpruz/vYLhGiMgVTHxbFtpg5+1L4QIftOBPGJTiLdoEzFfMc
 ahhIQCpw7speGMB9bXyCh1f32sYkZvZNRwhT6LZISgMVe85Ah0zZKYY+mFxnnIgNdJ0k=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r19I2-001IDQ-IC for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 09 Nov 2023 17:58:04 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id C224E3200B2D;
 Thu,  9 Nov 2023 12:57:54 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Thu, 09 Nov 2023 12:57:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm1; t=
 1699552674; x=1699639074; bh=DiNtMHCvJlBRRcs2/MdFSEzoHFVrfsJaMw1
 wJMAOpZk=; b=G3VWv0Y9OSMHGJvQl6bnJxRC+tebRx8pnrMDdh175KCFmek4ggO
 AWFseQdJSeyGQfPHWd5qRK5Wv13RdvP7H5hD5prKKDvwZ9WSR0J/4IF1pm3CrkyP
 9ZzMBOUZk1NMKnkqS0XOIqyOgaqlgVNGh/wOhpZx4aA9jeu1oIkdw+P/NuVjcBj9
 g8W3m5M4Xjjr/1C9EnlipmUBlD44Za7331NYD2UZu28AFthnc/N2Kq5OH59zKHsx
 HCrUu9j8U/DLuUOaNzdTZiDzBwpVECGl8m/siWbCOoO3HcZHIdkf2/itb1V3loPO
 eQERe1/ryOuRWbcRxMsTtQriu4aAXsyBI8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1699552674; x=1699639074; bh=DiNtMHCvJlBRRcs2/MdFSEzoHFVrfsJaMw1
 wJMAOpZk=; b=TButnu4I5d+rX4MhOPvEM38bOEtkUzCEoqhy0Sc5AQmM/m+HyOO
 4CDIMP6Z4iITCHCqofk3dsHQTErbYiqsCrSRxpbR3A0RrK7AjxBkWhKUatlnAPll
 Ixl4FodszVvolKrB755HaQaQZmW4ueyyFPLvmWRAdjlHrGbhmjpkPpQu9f38DxaO
 2GZ8Ic6Eb/53QD9dWfoSIEUqzb4WIdnRCxIgF+xG3Jxd+n8TKxoS/0ugyx0tna4+
 wvomgeB12OYQOMyUkGmlhVHMqGfuzCaANFfR/EgBeTA0IZ19q2GuzSccU/WBmkEw
 RRxbu6QjZk9hAkBMlE1lsvVALkyP9XW36Dw==
X-ME-Sender: <xms:oh1NZZeX1ddrEYo-ZKonttVS7qgdXOYOg_9MyVi__J_GQ6f3s61NLw>
 <xme:oh1NZXNRTcX-ST8yGvnb_rsINBbqS15vXUl_jLpjXfPpBOGpBMVihFFdo6k5M4lYe
 QGOoBMX0JO_5krcYRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedruddvuddguddthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpedf
 ofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvg
 gssgdrtggrqeenucggtffrrghtthgvrhhnpefhfeegudeftefgteelgfekgfdvjeelleev
 gffhjeffhfdtiedtjeefkedvuefgkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdr
 tggr
X-ME-Proxy: <xmx:oh1NZShYfUBC-7IlGLAwrgQAtoI8zLGeLXyWpT8OZCNIoJwkliXAEA>
 <xmx:oh1NZS_lVUzNGOG_7ZpFYddECLYgXw-II2xDedGZB4d-KMFuwN5Ebw>
 <xmx:oh1NZVuTEvLu5tE1zpiZf4il6ByDUylBOdJYrUiMWdgg-3JBMne-7Q>
 <xmx:oh1NZdKShoUxn__ZikJVILpTWbAiPuQ_CrfB1OIOFVX5_BpfvgLXzA>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id F10DCC6008B; Thu,  9 Nov 2023 12:57:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1108-g3a29173c6d-fm-20231031.005-g3a29173c
MIME-Version: 1.0
Message-Id: <14312000-6369-4669-bcc9-4fa2abb5a98f@app.fastmail.com>
In-Reply-To: <8b29ab8-fef4-8a60-e6c5-447f31f144a7@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20231108162039.13737-1-mpearson-lenovo@squebb.ca>
 <8b29ab8-fef4-8a60-e6c5-447f31f144a7@linux.intel.com>
Date: Thu, 09 Nov 2023 12:57:33 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo, On Thu, Nov 9, 2023, at 5:10 AM, Ilpo Järvinen wrote:
    > On Wed, 8 Nov 2023, Mark Pearson wrote: > >> Some new Thinkpads have a
   new improved performance mode available. >> Add support to make this mod [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: messagingengine.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [64.147.123.25 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [64.147.123.25 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r19I2-001IDQ-IC
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: Add support for improved
 performance mode
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

SGkgSWxwbywKCk9uIFRodSwgTm92IDksIDIwMjMsIGF0IDU6MTAgQU0sIElscG8gSsOkcnZpbmVu
IHdyb3RlOgo+IE9uIFdlZCwgOCBOb3YgMjAyMywgTWFyayBQZWFyc29uIHdyb3RlOgo+Cj4+IFNv
bWUgbmV3IFRoaW5rcGFkcyBoYXZlIGEgbmV3IGltcHJvdmVkIHBlcmZvcm1hbmNlIG1vZGUgYXZh
aWxhYmxlLgo+PiBBZGQgc3VwcG9ydCB0byBtYWtlIHRoaXMgbW9kZSB1c2FibGUuCj4+IAo+PiBU
byBhdm9pZCBoYXZpbmcgdG8gY3JlYXRlIGEgbmV3IHByb2ZpbGUsIGp1c3QgdXNlIHRoZSBpbXBy
b3ZlZCBwZXJmb3JtYW5jZQo+PiBtb2RlIGluIHBsYWNlIG9mIHRoZSBleGlzdGluZyBwZXJmb3Jt
YW5jZSBtb2RlLCB3aGVuIGF2YWlsYWJsZS4KPj4gCj4+IFRlc3RlZCBvbiBUMTQgQU1EIEc0IEFN
RC4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IE1hcmsgUGVhcnNvbiA8bXBlYXJzb24tbGVub3ZvQHNx
dWViYi5jYT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMg
fCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjgg
aW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3Ro
aW5rcGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+PiBp
bmRleCBhZDQ2MDQxN2Y5MDEuLmViYTcwMWFiMzQwZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9w
bGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2
L3RoaW5rcGFkX2FjcGkuYwo+PiBAQCAtMTAxMzYsNiArMTAxMzYsNyBAQCBzdGF0aWMgc3RydWN0
IGlibV9zdHJ1Y3QgcHJveHNlbnNvcl9kcml2ZXJfZGF0YSA9IHsKPj4gIAo+PiAgI2RlZmluZSBE
WVRDX0NNRF9TRVQgICAgICAgICAgMSAvKiBUbyBlbmFibGUvZGlzYWJsZSBJQyBmdW5jdGlvbiBt
b2RlICovCj4+ICAjZGVmaW5lIERZVENfQ01EX01NQ19HRVQgICAgICA4IC8qIFRvIGdldCBjdXJy
ZW50IE1NQyBmdW5jdGlvbiBhbmQgbW9kZSAqLwo+PiArI2RlZmluZSBEWVRDX0NNRF9VUF9DQVAg
ICAgIDB4QSAvKiBUbyBnZXQgVWx0cmEtcGVyZm9ybWFuY2UgY2FwYWJpbGl0eSAqLwo+PiAgI2Rl
ZmluZSBEWVRDX0NNRF9SRVNFVCAgICAweDFmZiAvKiBUbyByZXNldCBiYWNrIHRvIGRlZmF1bHQg
Ki8KPj4gIAo+PiAgI2RlZmluZSBEWVRDX0NNRF9GVU5DX0NBUCAgICAgMyAvKiBUbyBnZXQgRFlU
QyBjYXBhYmlsaXRpZXMgKi8KPj4gQEAgLTEwMTUyLDYgKzEwMTUzLDcgQEAgc3RhdGljIHN0cnVj
dCBpYm1fc3RydWN0IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEgPSB7Cj4+ICAKPj4gICNkZWZpbmUg
RFlUQ19GVU5DVElPTl9TVEQgICAgIDAgIC8qIEZ1bmN0aW9uID0gMCwgc3RhbmRhcmQgbW9kZSAq
Lwo+PiAgI2RlZmluZSBEWVRDX0ZVTkNUSU9OX0NRTCAgICAgMSAgLyogRnVuY3Rpb24gPSAxLCBs
YXAgbW9kZSAqLwo+PiArI2RlZmluZSBEWVRDX0ZVTkNUSU9OX1RNUyAgICAgOSAgLyogRnVuY3Rp
b24gPSA5LCBUTVMgbW9kZSAqLwo+PiAgI2RlZmluZSBEWVRDX0ZVTkNUSU9OX01NQyAgICAgMTEg
LyogRnVuY3Rpb24gPSAxMSwgTU1DIG1vZGUgKi8KPj4gICNkZWZpbmUgRFlUQ19GVU5DVElPTl9Q
U0MgICAgIDEzIC8qIEZ1bmN0aW9uID0gMTMsIFBTQyBtb2RlICovCj4+ICAjZGVmaW5lIERZVENf
RlVOQ1RJT05fQU1UICAgICAxNSAvKiBGdW5jdGlvbiA9IDE1LCBBTVQgbW9kZSAqLwo+PiBAQCAt
MTAxNjMsMTEgKzEwMTY1LDE0IEBAIHN0YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBwcm94c2Vuc29y
X2RyaXZlcl9kYXRhID0gewo+PiAgI2RlZmluZSBEWVRDX01PREVfTU1DX0xPV1BPV0VSIDMgIC8q
IExvdyBwb3dlciBtb2RlICovCj4+ICAjZGVmaW5lIERZVENfTU9ERV9NTUNfQkFMQU5DRSAgMHhG
ICAvKiBEZWZhdWx0IG1vZGUgYWthIGJhbGFuY2VkICovCj4+ICAjZGVmaW5lIERZVENfTU9ERV9N
TUNfREVGQVVMVCAgMCAgLyogRGVmYXVsdCBtb2RlIGZyb20gTU1DX0dFVCwgYWthIGJhbGFuY2Vk
ICovCj4+ICsjZGVmaW5lIERZVENfTk9NT0RFICAgICAgICAgICAgMHhGICAvKiBXaGVuIEZ1bmN0
aW9uIGRvZXMgbm90IGhhdmUgYSBtb2RlICovCj4+ICAKPj4gICNkZWZpbmUgRFlUQ19NT0RFX1BT
Q19MT1dQT1dFUiAzICAvKiBMb3cgcG93ZXIgbW9kZSAqLwo+PiAgI2RlZmluZSBEWVRDX01PREVf
UFNDX0JBTEFOQ0UgIDUgIC8qIERlZmF1bHQgbW9kZSBha2EgYmFsYW5jZWQgKi8KPj4gICNkZWZp
bmUgRFlUQ19NT0RFX1BTQ19QRVJGT1JNICA3ICAvKiBIaWdoIHBvd2VyIG1vZGUgYWthIHBlcmZv
cm1hbmNlICovCj4+ICAKPj4gKyNkZWZpbmUgRFlUQ19VUF9TVVBQT1JUX0JJVCAgICA4ICAvKiBC
aXQgOCAtIDEgPSBzdXBwb3J0ZWQsIDAgPSBub3QgKi8KPgo+IEl0IHdvdWxkIGJlIHByZWZlcnJh
YmxlIHRvIGNvbW1lbnQgd2hhdCBpcyBzdXBwb3J0ZWQgcmF0aGVyIHRoYW4gaGF2ZSBhIAo+IGNv
bW1lbnQgbGlrZSBhYm92ZSB3aGljaCBpc24ndCBwYXJ0aWN1bGFybHkgaGVscGZ1bC4KCk9LIC0g
c28gIGp1c3QgaGF2ZToKI2RlZmluZSBEWVRDX1VQX1NVUFBPUlRfQklUICAgIDggIC8qIFVsdHJh
LXBlcmZvcm1hbmNlIChUTVMpIG1vZGUgc3VwcG9ydCAqLwoKT3IuLi5yZWFkaW5nIGFoZWFkIGlu
IHRoZSByZXZpZXcgdGhpcyBzaG91bGQgYWN0dWFsbHkgYmUKI2RlZmluZSBEWVRDX1VQX1NVUFBP
UlRfQklUICAgIEJJVCg4KSAgLyogVWx0cmEtcGVyZm9ybWFuY2UgKFRNUykgbW9kZSBzdXBwb3J0
ICovCgo+Cj4+ICAjZGVmaW5lIERZVENfRVJSX01BU0sgICAgICAgMHhGICAvKiBCaXRzIDAtMyBp
biBjbWQgcmVzdWx0IGFyZSB0aGUgZXJyb3IgcmVzdWx0ICovCj4+ICAjZGVmaW5lIERZVENfRVJS
X1NVQ0NFU1MgICAgICAxICAvKiBDTUQgY29tcGxldGVkIHN1Y2Nlc3NmdWwgKi8KPj4gIAo+PiBA
QCAtMTAxODUsNiArMTAxOTAsNyBAQCBzdGF0aWMgZW51bSBwbGF0Zm9ybV9wcm9maWxlX29wdGlv
biBkeXRjX2N1cnJlbnRfcHJvZmlsZTsKPj4gIHN0YXRpYyBhdG9taWNfdCBkeXRjX2lnbm9yZV9l
dmVudCA9IEFUT01JQ19JTklUKDApOwo+PiAgc3RhdGljIERFRklORV9NVVRFWChkeXRjX211dGV4
KTsKPj4gIHN0YXRpYyBpbnQgZHl0Y19jYXBhYmlsaXRpZXM7Cj4+ICtzdGF0aWMgYm9vbCBkeXRj
X3VsdHJhcGVyZl9jYXA7IC8qIHVsdHJhIHBlcmZvcm1hbmNlIGNhcGFibGUgKi8KPj4gIHN0YXRp
YyBib29sIGR5dGNfbW1jX2dldF9hdmFpbGFibGU7Cj4+ICBzdGF0aWMgaW50IHByb2ZpbGVfZm9y
Y2U7Cj4+ICAKPj4gQEAgLTEwMzU1LDYgKzEwMzYxLDE3IEBAIHN0YXRpYyBpbnQgZHl0Y19wcm9m
aWxlX3NldChzdHJ1Y3QgcGxhdGZvcm1fcHJvZmlsZV9oYW5kbGVyICpwcHJvZiwKPj4gIAlpZiAo
ZXJyKQo+PiAgCQlnb3RvIHVubG9jazsKPj4gIAo+PiArCS8qIFNldCBUTVMgbW9kZSBhcHByb3By
aWF0ZWx5IChlbmFibGUgZm9yIHBlcmZvcm1hbmNlKSwgaWYgYXZhaWxhYmxlICovCj4+ICsJaWYg
KGR5dGNfdWx0cmFwZXJmX2NhcCkgewo+PiArCQlpbnQgY21kOwo+PiArCj4+ICsJCWNtZCA9IERZ
VENfU0VUX0NPTU1BTkQoRFlUQ19GVU5DVElPTl9UTVMsIERZVENfTk9NT0RFLAo+PiArCQkJCSAg
ICAgICBwcm9maWxlID09IFBMQVRGT1JNX1BST0ZJTEVfUEVSRk9STUFOQ0UpOwo+PiArCQllcnIg
PSBkeXRjX2NvbW1hbmQoY21kLCAmb3V0cHV0KTsKPj4gKwkJaWYgKGVycikKPj4gKwkJCXJldHVy
biBlcnI7Cj4+ICsJfQo+PiArCj4+ICAJaWYgKGR5dGNfY2FwYWJpbGl0aWVzICYgQklUKERZVENf
RkNfTU1DKSkgewo+PiAgCQlpZiAocHJvZmlsZSA9PSBQTEFURk9STV9QUk9GSUxFX0JBTEFOQ0VE
KSB7Cj4+ICAJCQkvKgo+PiBAQCAtMTA0MjksNiArMTA0NDYsNyBAQCBzdGF0aWMgc3RydWN0IHBs
YXRmb3JtX3Byb2ZpbGVfaGFuZGxlciBkeXRjX3Byb2ZpbGUgPSB7Cj4+ICBzdGF0aWMgaW50IHRw
YWNwaV9keXRjX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgaWJtX2luaXRfc3RydWN0ICppaWJtKQo+PiAg
ewo+PiAgCWludCBlcnIsIG91dHB1dDsKPj4gKwlpbnQgY21kOwo+PiAgCj4+ICAJLyogU2V0dXAg
c3VwcG9ydGVkIG1vZGVzICovCj4+ICAJc2V0X2JpdChQTEFURk9STV9QUk9GSUxFX0xPV19QT1dF
UiwgZHl0Y19wcm9maWxlLmNob2ljZXMpOwo+PiBAQCAtMTA0ODQsNiArMTA1MDIsMTYgQEAgc3Rh
dGljIGludCB0cGFjcGlfZHl0Y19wcm9maWxlX2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAq
aWlibSkKPj4gIAkJZGJnX3ByaW50ayhUUEFDUElfREJHX0lOSVQsICJObyBEWVRDIHN1cHBvcnQg
YXZhaWxhYmxlXG4iKTsKPj4gIAkJcmV0dXJuIC1FTk9ERVY7Cj4+ICAJfQo+PiArCWVyciA9IGR5
dGNfY29tbWFuZChEWVRDX0NNRF9VUF9DQVAsICZvdXRwdXQpOwo+PiArCWR5dGNfdWx0cmFwZXJm
X2NhcCA9IG91dHB1dCAmIEJJVChEWVRDX1VQX1NVUFBPUlRfQklUKSA/IHRydWUgOiBmYWxzZTsK
Pgo+IEl0IHdvdWxkIGJlIGJldHRlciB0byBwdXQgdGhpcyBCSVQoKSBpbnRvIHRoZSBkZWZpbmUg
aXRzZWxmIGFuZCByZW1vdmUgCj4gX0JJVCBmcm9tIHRoZSBuYW1lIGJlY2F1c2UgaXQgZG9lc24n
dCByZWFsbHkgYWRkIHRoYXQgbXVjaCBpbmZvcm1hdGlvbi4KPiBTaW5jZSB5b3UncmUgYXNzaWdu
aW5nIHRvIGJvb2wsID8gdHJ1ZSA6IGZhbHNlIGNvbnN0cnVjdCBpcyBub3QgcmVxdWlyZWQgCj4g
YnV0IGltcGxpY2l0IGNhc3Qgd2lsbCBoYW5kbGUgaXQgZm9yIHlvdS4gU28gaW4gdGhlIGVuZCwg
dGhpcyBsaW5lIHdvdWxkIAo+IGJlOgo+Cj4gCWR5dGNfdWx0cmFwZXJmX2NhcCA9IG91dHB1dCAm
IERZVENfVVBfU1VQUE9SVDsKCkFncmVlZC4gSSB3aWxsIG1ha2UgdGhhdCBjaGFuZ2UuCkknbGwg
d2FpdCBhbmQgc2VlIGlmIHRoZXJlIGlzIGFueSBtb3JlIGZlZWRiYWNrIGFuZCB0aGVuIGRvIHRo
YXQgd2l0aCBhIHYyIHBhdGNoLgoKPgo+IExvb2tpbmcgaW50byB0aGUgZHJpdmVyIGEgYml0IG1v
cmUsIHRoZXJlIGFyZSBhIGZldyBvdGhlciBkZWZpbmVzIHdoaWNoIAo+IGNvdWxkIGFsc28gbW92
ZSBCSVQoKSBmcm9tIHRoZSBjb2RlIGludG8gZGVmaW5lcy4gUGxlYXNlIHRlbGwgaWYgeW91J3Jl
IAo+IGdvaW5nIHRvIGxvb2sgYXQgdGhvc2UgYmVjYXVzZSBpZiBub3QsIEkgbWlnaHQgdHJ5IHRv
IG1ha2UgdGhlIHBhdGNoZXMuCgpIYXBweSB0byBsb29rIGF0IGRvaW5nIHRoYXQgYXMgSSdtIHBs
YXlpbmcgYXJvdW5kIHdpdGggdGhpcyBkcml2ZXIgYW55d2F5LgoKVGhhbmtzIGZvciB0aGUgcmV2
aWV3IQpNYXJrCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
aWJtLWFjcGktZGV2ZWwK
