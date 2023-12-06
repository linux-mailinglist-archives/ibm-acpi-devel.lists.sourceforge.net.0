Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB458073B5
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Dec 2023 16:31:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rAtrA-0007uB-5b;
	Wed, 06 Dec 2023 15:30:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rAtr8-0007u4-Et
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 15:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=80e+XLcHO99ogy+giG09/e8EEtyWh91qVmx7XJKBeOk=; b=GqDzpCNdw5qMOM1DdXvT2TVpvL
 IUic9NEby9zahiLyoJpKXnc1Ug9IX5Ekp/W5SRLIImobX4fxFH6zkrvdj2gxXVdbFy5LFWHVSBCmo
 iCJYLC2+REz5eFaDqhi8OjzF5NJBCjnS+HsmAvU6/p+MerLZCdy7JzEc8sbM47oNTQyw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=80e+XLcHO99ogy+giG09/e8EEtyWh91qVmx7XJKBeOk=; b=S+AmAK85supOrz95RKBip9n5WC
 dg314/X9gXXLZGNYqeiKN05R4kcuR9adO0eOdb7ZShRJXkObXjfwYtSfg6IJAa1WWIem+CMi96Iiv
 6Ue3RL0ej+wUvnb7wkAlf9CdOCPmDoRazqcHUKSuMPpUwdcH43uDt2QUHca6sD2r3/dc=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAtr6-000679-JZ for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 15:30:34 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3E3B75C02E1;
 Wed,  6 Dec 2023 10:30:25 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 06 Dec 2023 10:30:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1701876625; x=1701963025; bh=80e+XLcHO99ogy+giG09/e8EEtyWh91qVmx
 7XJKBeOk=; b=DbfQ5TQMeaGQdvdtC9sqCqYix0G8ohyuf7ANxIXcMdNyvbMFJyk
 a/g+1LPluFgmf6zZzQqOhNGUeqcr+OP9/vzu/6GPfR0SK+xgk34k62fNnJLppBJp
 c2JlPx9lB4FmcIKH/5zksu4z32QmwkR2+ix8mpWhoOZA8xyQ+h8XRXy8DqWpkc9f
 cTPXCcrkFf4HsVIs9nw9MIVaTNvL3roZgu41ccUQS+uZ6ur8wAvL40tmoHTU37Fr
 95XMYtVNBk6zyyNAHevubF8NQlslt54hQPJUgSSGmq4NW1lRjuusc+bUxdbas23M
 vr/QTc0DhTi88MKaLCDqTJ0ZST58XOs4rhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1701876625; x=1701963025; bh=80e+XLcHO99ogy+giG09/e8EEtyWh91qVmx
 7XJKBeOk=; b=MguKT8A09cpa9LzwSF5zP2Kag6PENk3WgpBA3J5D+Qbs87ESgdX
 uvJ+TXk0T0FpMqf6sR9htDHnOajGFeJMDpgy3tngNrd12/V0SxkUQ7AQmBN/wL8R
 c/sIuQtqPSp3WniqLXn9K6SVsvB3vufmJdjH23EhYuDtII+bRYHVr9gob9W50o2z
 +yNhxipiYbmg0+6+JBpPGAa9Bh9y7LY7bxfQ6NiNSoos1oH6jXpZYYOpPWxxTX0P
 tsPUQHwEJhSqiFZr7ZcMIUhO1/SAZ6nhHSwfxuQBGPhJPXJGgf8rbw+b2mtJDoT0
 1vuX7DRrrvmC29v0xPUJlMRIYZbcAsIfueg==
X-ME-Sender: <xms:j5NwZWyU7mIxTBfVl9-gF3IxsMI_5MB7RkNQrvbaV_OYta4_p_nHdw>
 <xme:j5NwZSRWdDyh2LWR89sfz8bpA8mee_ZWiNfh8IHVYD_V4V4wtaSp2ayJhbORrxcqF
 i8vVqmnUJhvq1pYlGk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudektddgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepofgfggfkjghffffhvfev
 ufgtgfesthhqredtreerjeenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomh
 hpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghr
 nhepieeltdeihefgfeeihedvgedtueeuieefvddtteetffejvefgieeghfeiheeilefgne
 cuffhomhgrihhnpehsohhurhgtvghfohhrghgvrdhnvghtnecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvoh
 esshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:j5NwZYVdfdu1Q5I4r9TrPkDQU-Fz-RrEtYDbgpf10pYX_QYkF-Mh9g>
 <xmx:j5NwZci75ef7UctUSpuWYjR4es17FC3zKFX22ODMw4TAwpZN5fpIgQ>
 <xmx:j5NwZYBoKuy9t-R1NOdRlaTO8H3a86HKcUp9Jckrg32umw73d79Cbg>
 <xmx:kZNwZb9lFUQifvYfcu06YX1LsAFQRlAgws9FrsgiKPfBsnil3quhxQ>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B589EC6008B; Wed,  6 Dec 2023 10:30:23 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1178-geeaf0069a7-fm-20231114.001-geeaf0069
MIME-Version: 1.0
Message-Id: <ea94a2d7-a13c-4f08-9979-48a8f33a47fc@app.fastmail.com>
In-Reply-To: <20231206060144.8260-1-rdunlap@infradead.org>
References: <20231206060144.8260-1-rdunlap@infradead.org>
Date: Wed, 06 Dec 2023 10:30:03 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Randy Dunlap" <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Randy On Wed, Dec 6, 2023, at 1:01 AM, Randy Dunlap wrote:
 > Add a function's return description and don't misuse "/**" for >
 non-kernel-doc
 comments to prevent warnings from scripts/kernel-doc. > > thinkpa [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rAtr6-000679-JZ
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

SGkgUmFuZHkKCk9uIFdlZCwgRGVjIDYsIDIwMjMsIGF0IDE6MDEgQU0sIFJhbmR5IER1bmxhcCB3
cm90ZToKPiBBZGQgYSBmdW5jdGlvbidzIHJldHVybiBkZXNjcmlwdGlvbiBhbmQgZG9uJ3QgbWlz
dXNlICIvKioiIGZvcgo+IG5vbi1rZXJuZWwtZG9jIGNvbW1lbnRzIHRvIHByZXZlbnQgd2Fybmlu
Z3MgZnJvbSBzY3JpcHRzL2tlcm5lbC1kb2MuCj4KPiB0aGlua3BhZF9hY3BpLmM6NTIzOiB3YXJu
aW5nOiBObyBkZXNjcmlwdGlvbiBmb3VuZCBmb3IgcmV0dXJuIHZhbHVlIG9mIAo+ICd0cGFjcGlf
Y2hlY2tfcXVpcmtzJwo+IHRoaW5rcGFkX2FjcGkuYzo5MzA3OiB3YXJuaW5nOiBUaGlzIGNvbW1l
bnQgc3RhcnRzIHdpdGggJy8qKicsIGJ1dCAKPiBpc24ndCBhIGtlcm5lbC1kb2MgY29tbWVudC4g
UmVmZXIgRG9jdW1lbnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRvYy5yc3QKPiB0aGlua3BhZF9h
Y3BpLmM6OTMwNzogd2FybmluZzogbWlzc2luZyBpbml0aWFsIHNob3J0IGRlc2NyaXB0aW9uIG9u
IAo+IGxpbmU6Cj4gICogVGhpcyBldmFsdWF0ZXMgYSBBQ1BJIG1ldGhvZCBjYWxsIHNwZWNpZmlj
IHRvIHRoZSBiYXR0ZXJ5Cj4KPiBTaWduZWQtb2ZmLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBA
aW5mcmFkZWFkLm9yZz4KPiBDYzogSGVucmlxdWUgZGUgTW9yYWVzIEhvbHNjaHVoIDxobWhAaG1o
LmVuZy5icj4KPiBDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KPiBDYzog
IklscG8gSsOkcnZpbmVuIiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ0M6IGli
bS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IENDOiBwbGF0Zm9ybS1kcml2ZXIt
eDg2QHZnZXIua2VybmVsLm9yZwo+IC0tLQo+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3Bh
ZF9hY3BpLmMgfCAgICA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYyAKPiBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+IC0t
LSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+ICsrKyBiL2RyaXZlcnMv
cGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+IEBAIC01MTIsMTAgKzUxMiwxMCBAQCBzdHJ1
Y3QgdHBhY3BpX3F1aXJrIHsKPiAgICogSXRlcmF0ZXMgb3ZlciBhIHF1aXJrcyBsaXN0IHVudGls
IG9uZSBpcyBmb3VuZCB0aGF0IG1hdGNoZXMgdGhlCj4gICAqIFRoaW5rUGFkJ3MgdmVuZG9yLCBC
SU9TIGFuZCBFQyBtb2RlbC4KPiAgICoKPiAtICogUmV0dXJucyAwIGlmIG5vdGhpbmcgbWF0Y2hl
cywgb3RoZXJ3aXNlIHJldHVybnMgdGhlIHF1aXJrcyBmaWVsZCBvZgo+ICsgKiBSZXR1cm5zOiAl
MCBpZiBub3RoaW5nIG1hdGNoZXMsIG90aGVyd2lzZSByZXR1cm5zIHRoZSBxdWlya3MgZmllbGQg
CgpKdXN0IGJlaW5nIG5vc3kgLSB3aGF0IGRvZXMgJTAgZG8/CkkgYXNzdW1lIGl0IGhlbHBzIHdp
dGggdGhlIHJldHVybiB2YWx1ZSBidXQgd2FzIGludHJpZ3VlZCBob3cgaXQgaXMgdXNlZCBhbmQg
d2hlcmUKCj4gb2YKPiAgICogdGhlIG1hdGNoaW5nICZzdHJ1Y3QgdHBhY3BpX3F1aXJrIGVudHJ5
Lgo+ICAgKgo+IC0gKiBUaGUgbWF0Y2ggY3JpdGVyaWEgaXM6IHZlbmRvciwgZWMgYW5kIGJpb3Mg
bXVjaCBtYXRjaC4KPiArICogVGhlIG1hdGNoIGNyaXRlcmlhIGlzOiB2ZW5kb3IsIGVjIGFuZCBi
aW9zIG11c3QgbWF0Y2guCkkgY2FuJ3QgZm9yIHRoZSBsaWZlIG9mIG1lIHNlZSB3aGF0IGlzIGRp
ZmZlcmVudCBoZXJlLiBXaGF0IGFtIEkgbWlzc2luZz8gCgo+ICAgKi8KPiAgc3RhdGljIHVuc2ln
bmVkIGxvbmcgX19pbml0IHRwYWNwaV9jaGVja19xdWlya3MoCj4gIAkJCWNvbnN0IHN0cnVjdCB0
cGFjcGlfcXVpcmsgKnFsaXN0LAo+IEBAIC05MzAzLDcgKzkzMDMsNyBAQCBzdGF0aWMgc3RydWN0
IHRwYWNwaV9iYXR0ZXJ5X2RyaXZlcl9kYXRhCj4gCj4gIC8qIEFDUEkgaGVscGVycy9mdW5jdGlv
bnMvcHJvYmVzICovCj4gCj4gLS8qKgo+ICsvKgo+ICAgKiBUaGlzIGV2YWx1YXRlcyBhIEFDUEkg
bWV0aG9kIGNhbGwgc3BlY2lmaWMgdG8gdGhlIGJhdHRlcnkKPiAgICogQUNQSSBleHRlbnNpb24u
IFRoZSBzcGVjaWZpY3MgYXJlIHRoYXQgYW4gZXJyb3IgaXMgbWFya2VkCj4gICAqIGluIHRoZSAz
MnJkIGJpdCBvZiB0aGUgcmVzcG9uc2UsIHNvIHdlIGp1c3QgY2hlY2sgdGhhdCBoZXJlLgo+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGlibS1h
Y3BpLWRldmVsIG1haWxpbmcgbGlzdAo+IGlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1h
Y3BpLWRldmVsCgpUaGFua3MKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZl
bEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
