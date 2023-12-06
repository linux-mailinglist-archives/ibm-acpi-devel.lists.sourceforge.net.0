Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 351FE8075B4
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Dec 2023 17:49:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rAv5R-00075W-JD;
	Wed, 06 Dec 2023 16:49:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rAv5Q-00075O-DJ
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 16:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7aSOj3X2VbHYlfk00jEHrfDd+wxD+4TJMdmEbRvMRgI=; b=f09DUtJnvCQrQxAsMo/i12nJNJ
 a0/fS7NMGUn482qK+DIpffQi3E83VE3JpMHj3I5XLAGsBDZAreoW35KTWM8/21S6EjBeVIaItC4aS
 xVbLiuNNJx5dA4mSnTnmsJK3ShMMtegdaHJXKtYPwANVVgEp8Z/UWqtIwey4epqMC3yk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7aSOj3X2VbHYlfk00jEHrfDd+wxD+4TJMdmEbRvMRgI=; b=jPmMhWSWpq61pR2/EQ/dZqqmQN
 uQ4HKY+rkjNHKMWhV2A9zk5m9A0xVsfXL1de0Crm+fFB9sU8DzdCR2GmCoaiwDKNkVZe6q820gWY3
 ggtirfdP7mdJkiwgtddhBONnSevb9NxzOk+R2tYYKrmsyDbdIBbBb2RChR8JBQBzOQNE=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAv5O-000479-6L for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 16:49:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 06AB05C02A6;
 Wed,  6 Dec 2023 11:49:09 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 06 Dec 2023 11:49:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1701881349; x=1701967749; bh=7aSOj3X2VbHYlfk00jEHrfDd+wxD+4TJMdm
 EbRvMRgI=; b=vbvt0mvFqhAdQ50sUdsgJxlqEus0ZX9rvJkQEVzN5690fPeDo6v
 wZ7maIKIbTvI+Pu7N2qcayfrQjG415Rudv71DXP8eZwXdDY9ea+O7CL5vGhdReef
 xd4sIaG48U0PvP9SYM1XH49B/ixAkpN1MxzSrR512gsy3PHJNc/9XuXRzGeWx/wj
 RDW/giPGaEKkcjkvN+xZU8Hi1+Y5Y5mxi1zUSKlWqAH0C/5wcLpbO4zvty043P8R
 qBKVc1JsoXwMXaiznhlo/pJm0IRZf4qpQ0LOXSSyWQc5UxNPP+kVkxJqwg1P4XvU
 hIF0yi+/KRpfqU95+RmnFUC5CPtieX+FPPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1701881349; x=1701967749; bh=7aSOj3X2VbHYlfk00jEHrfDd+wxD+4TJMdm
 EbRvMRgI=; b=YkoQOY4rhF2/BK5kUSvkkjgZ3ul3mb1TNJUwCTQKbHkS+QvFDkx
 eJ8vkxQ6EQHTtpg+Z5ho29jKdtjcsgH6FuE5DOen7wn+80CYiJ/3NQTm/DGSMTfn
 8Ehe+d3lCWz61O032jZkwHj8pyYDTkkpoa7hmK2/IMg2BpDlz7Zc6q/wk2TaWUxr
 2HW9ts7hIGNFExRb1XKE93YKvlZpTxMDuaw9jRLej1PNpXnszX6IRlajop0sKCwD
 zXI215F72ybQ9mT5Ym1pGYkSScja69ONag/0gOtJqjG5+wwZlkTy6MhAhLn/wbvA
 ciLx2LznH+BfyRVLFYCo9TEHDVwTRSe44Fw==
X-ME-Sender: <xms:BKZwZdOSsXDkstPIaORKi3OgtO5NbDkq1p8fr2bA3PgF9mBeGOm9qQ>
 <xme:BKZwZf8x_yHHCEJTvnaL8n_9zxTu1EEAjnlySDHIhJyeDB58cM6XxggNdjQDtgQMZ
 1k6UTwov8vqKzZI99g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudektddgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepofgfggfkjghffffhvfev
 ufgtgfesthhqredtreerjeenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomh
 hpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghr
 nhepieeltdeihefgfeeihedvgedtueeuieefvddtteetffejvefgieeghfeiheeilefgne
 cuffhomhgrihhnpehsohhurhgtvghfohhrghgvrdhnvghtnecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvoh
 esshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:BKZwZcS7B_E__hQjN-8mSSwnmot6snBRG2vjYiduzLAaw6WisbUcow>
 <xmx:BKZwZZt2kOh--nBpMpK_At6E3gyj0dgbjBJ7lcE74EplFTqeAvGKnw>
 <xmx:BKZwZVeGOc2uu8F0yb9Do5ENDr6xoA1ZoqDWwW7JEeA-jz7NwJioeQ>
 <xmx:BaZwZc6f7DXnpyCnrqzALhetbtSZ_87cJPyk1vT8F_tCdBvP21-19g>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7AC07C6008B; Wed,  6 Dec 2023 11:49:08 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1178-geeaf0069a7-fm-20231114.001-geeaf0069
MIME-Version: 1.0
Message-Id: <90220e8f-12e1-4b76-a438-f333fdedce9e@app.fastmail.com>
In-Reply-To: <f734ff9e-6005-4d47-959d-fab34c71c6e0@infradead.org>
References: <20231206060144.8260-1-rdunlap@infradead.org>
 <ea94a2d7-a13c-4f08-9979-48a8f33a47fc@app.fastmail.com>
 <f734ff9e-6005-4d47-959d-fab34c71c6e0@infradead.org>
Date: Wed, 06 Dec 2023 11:48:44 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Randy Dunlap" <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 6, 2023, at 11:45 AM, Randy Dunlap wrote: > Hi
 Mark, > > On 12/6/23 07:30, Mark Pearson wrote: >> Hi Randy >> >> On Wed,
 Dec 6, 2023, at 1:01 AM, Randy Dunlap wrote: >>> Add a function's r [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAv5O-000479-6L
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: fix
 kernel-doc warnings
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

CgpPbiBXZWQsIERlYyA2LCAyMDIzLCBhdCAxMTo0NSBBTSwgUmFuZHkgRHVubGFwIHdyb3RlOgo+
IEhpIE1hcmssCj4KPiBPbiAxMi82LzIzIDA3OjMwLCBNYXJrIFBlYXJzb24gd3JvdGU6Cj4+IEhp
IFJhbmR5Cj4+IAo+PiBPbiBXZWQsIERlYyA2LCAyMDIzLCBhdCAxOjAxIEFNLCBSYW5keSBEdW5s
YXAgd3JvdGU6Cj4+PiBBZGQgYSBmdW5jdGlvbidzIHJldHVybiBkZXNjcmlwdGlvbiBhbmQgZG9u
J3QgbWlzdXNlICIvKioiIGZvcgo+Pj4gbm9uLWtlcm5lbC1kb2MgY29tbWVudHMgdG8gcHJldmVu
dCB3YXJuaW5ncyBmcm9tIHNjcmlwdHMva2VybmVsLWRvYy4KPj4+Cj4+PiB0aGlua3BhZF9hY3Bp
LmM6NTIzOiB3YXJuaW5nOiBObyBkZXNjcmlwdGlvbiBmb3VuZCBmb3IgcmV0dXJuIHZhbHVlIG9m
IAo+Pj4gJ3RwYWNwaV9jaGVja19xdWlya3MnCj4+PiB0aGlua3BhZF9hY3BpLmM6OTMwNzogd2Fy
bmluZzogVGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcvKionLCBidXQgCj4+PiBpc24ndCBhIGtl
cm5lbC1kb2MgY29tbWVudC4gUmVmZXIgRG9jdW1lbnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRv
Yy5yc3QKPj4+IHRoaW5rcGFkX2FjcGkuYzo5MzA3OiB3YXJuaW5nOiBtaXNzaW5nIGluaXRpYWwg
c2hvcnQgZGVzY3JpcHRpb24gb24gCj4+PiBsaW5lOgo+Pj4gICogVGhpcyBldmFsdWF0ZXMgYSBB
Q1BJIG1ldGhvZCBjYWxsIHNwZWNpZmljIHRvIHRoZSBiYXR0ZXJ5Cj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+Cj4+PiBDYzogSGVucmlx
dWUgZGUgTW9yYWVzIEhvbHNjaHVoIDxobWhAaG1oLmVuZy5icj4KPj4+IENjOiBIYW5zIGRlIEdv
ZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+Pj4gQ2M6ICJJbHBvIErDpHJ2aW5lbiIgPGlscG8u
amFydmluZW5AbGludXguaW50ZWwuY29tPgo+Pj4gQ0M6IGlibS1hY3BpLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldAo+Pj4gQ0M6IHBsYXRmb3JtLWRyaXZlci14ODZAdmdlci5rZXJuZWwub3Jn
Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCAgICA2
ICsrKy0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4+Pgo+Pj4gZGlmZiAtLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGku
YyAKPj4+IGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+PiAtLS0gYS9k
cml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGxh
dGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4gQEAgLTUxMiwxMCArNTEyLDEwIEBAIHN0cnVj
dCB0cGFjcGlfcXVpcmsgewo+Pj4gICAqIEl0ZXJhdGVzIG92ZXIgYSBxdWlya3MgbGlzdCB1bnRp
bCBvbmUgaXMgZm91bmQgdGhhdCBtYXRjaGVzIHRoZQo+Pj4gICAqIFRoaW5rUGFkJ3MgdmVuZG9y
LCBCSU9TIGFuZCBFQyBtb2RlbC4KPj4+ICAgKgo+Pj4gLSAqIFJldHVybnMgMCBpZiBub3RoaW5n
IG1hdGNoZXMsIG90aGVyd2lzZSByZXR1cm5zIHRoZSBxdWlya3MgZmllbGQgb2YKPj4+ICsgKiBS
ZXR1cm5zOiAlMCBpZiBub3RoaW5nIG1hdGNoZXMsIG90aGVyd2lzZSByZXR1cm5zIHRoZSBxdWly
a3MgZmllbGQgCj4+IAo+PiBKdXN0IGJlaW5nIG5vc3kgLSB3aGF0IGRvZXMgJTAgZG8/Cj4+IEkg
YXNzdW1lIGl0IGhlbHBzIHdpdGggdGhlIHJldHVybiB2YWx1ZSBidXQgd2FzIGludHJpZ3VlZCBo
b3cgaXQgaXMgdXNlZCBhbmQgd2hlcmUKPgo+IEl0IGNhdXNlcyB0aGUgb3V0cHV0IHRvIGJlIGZv
cm1hdHRlZCBhcyBhIENPTlNUQU5UIChwcm9iYWJseSBtb25vc3BhY2VkIGZvbnQsCj4gYnV0IG5v
IGd1YXJhbnRlZXMgb24gdGhhdCkuCkFoIC0gY29vbC4gVGhhbmtzIQo+Cj4+IAo+Pj4gb2YKPj4+
ICAgKiB0aGUgbWF0Y2hpbmcgJnN0cnVjdCB0cGFjcGlfcXVpcmsgZW50cnkuCj4+PiAgICoKPj4+
IC0gKiBUaGUgbWF0Y2ggY3JpdGVyaWEgaXM6IHZlbmRvciwgZWMgYW5kIGJpb3MgbXVjaCBtYXRj
aC4KPj4+ICsgKiBUaGUgbWF0Y2ggY3JpdGVyaWEgaXM6IHZlbmRvciwgZWMgYW5kIGJpb3MgbXVz
dCBtYXRjaC4KPj4gSSBjYW4ndCBmb3IgdGhlIGxpZmUgb2YgbWUgc2VlIHdoYXQgaXMgZGlmZmVy
ZW50IGhlcmUuIFdoYXQgYW0gSSBtaXNzaW5nPyAKPgo+IHMvbXVjaC9tdXN0LwpNYW4uLi4uSSBu
ZWVkIHRvIGdvIHRvIHRoZSBvcHRpY2lhbnMgOikKCj4KPj4gCj4+PiAgICovCj4+PiAgc3RhdGlj
IHVuc2lnbmVkIGxvbmcgX19pbml0IHRwYWNwaV9jaGVja19xdWlya3MoCj4+PiAgCQkJY29uc3Qg
c3RydWN0IHRwYWNwaV9xdWlyayAqcWxpc3QsCj4+PiBAQCAtOTMwMyw3ICs5MzAzLDcgQEAgc3Rh
dGljIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kcml2ZXJfZGF0YQo+Pj4KPj4+ICAvKiBBQ1BJIGhl
bHBlcnMvZnVuY3Rpb25zL3Byb2JlcyAqLwo+Pj4KPj4+IC0vKioKPj4+ICsvKgo+Pj4gICAqIFRo
aXMgZXZhbHVhdGVzIGEgQUNQSSBtZXRob2QgY2FsbCBzcGVjaWZpYyB0byB0aGUgYmF0dGVyeQo+
Pj4gICAqIEFDUEkgZXh0ZW5zaW9uLiBUaGUgc3BlY2lmaWNzIGFyZSB0aGF0IGFuIGVycm9yIGlz
IG1hcmtlZAo+Pj4gICAqIGluIHRoZSAzMnJkIGJpdCBvZiB0aGUgcmVzcG9uc2UsIHNvIHdlIGp1
c3QgY2hlY2sgdGhhdCBoZXJlLgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0Cj4+
PiBpYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPj4+IGh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCj4+IAo+PiBUaGFu
a3MKPj4gTWFyawo+Cj4gLS0gCj4gflJhbmR5CgpMb29rcyBnb29kIHRvIG1lISAKUmV2aWV3ZWQt
Ynk6IG1wZWFyc29uLWxlbm92b0BzcXVlYmIuY2EKCk1hcmsKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QK
aWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
