Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C76AD5B02
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 11 Jun 2025 17:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bm6CKQyZspvPYLklTPcclNhf1d5inSFaTp4FpAZN10c=; b=jCaXuWHOymGJABbDXd1AK1ZuUX
	JAo8vd9VdR/72Yj6wdqTVOxMY/6sbODV9xlq6IvQgsp6DdazwXR5SxEWzX/2hWq0vR5Ie7o+67J7C
	JcyzDDf+mOcqf9IAcbMhAi07xkc6QPKoPSuNXHs3xqxVOW3Gf9LhleBtnIZahY9oivDE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uPNgd-0005er-Dz;
	Wed, 11 Jun 2025 15:48:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uPNgc-0005ej-4Q
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 11 Jun 2025 15:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQQEGVz2oEM93X69eaFCEcRjw0sJxSCN2d+An8i2jGA=; b=Ndqsyd9PxvYGbt1312xQX5iRnk
 5He88+CyQsjSbffYqmJLA+Cl36ZUTSnibVhAgRw+ll5Z3ZBCiiQaLFn8FjDa3sjv/pjWIr4R3soPH
 NPfEsIQzbE4nYjn0blin62PY3qxDUxdj2BxFfyhr3xrFnNF43o0RMKtH8eRFMpkTOMsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hQQEGVz2oEM93X69eaFCEcRjw0sJxSCN2d+An8i2jGA=; b=RWOGn43evAWLqXDYFh6I/TfIGE
 ds4RqgaPnlfUvPP7kio1uMdCLLNuiI3x8qRWivhQFYZ3EEQre2X473UDR7tIIFD7YZckrLTgHp23L
 Ek9gRP3Q/vrw/uj1/B2WVexSOJjSn4f9t+swwK2cFnDk6kExYtUVNrQeKtA02Xnyj1rM=;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uPNgb-0006ak-AD for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 11 Jun 2025 15:48:22 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.stl.internal (Postfix) with ESMTP id 7032C1140266;
 Wed, 11 Jun 2025 11:48:10 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Wed, 11 Jun 2025 11:48:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749656890;
 x=1749743290; bh=hQQEGVz2oEM93X69eaFCEcRjw0sJxSCN2d+An8i2jGA=; b=
 X3Of+/XD76EZIVDzVoWaLE3lOKmT33GxAwSp4oCQd9JYvsAbpj6pc/53HRBC6dyj
 eho5L7RW+SdUFiI6yG9eiVfvl+xYk9EBoxPmvnA6pE3C1p0grSRUEZyjk6W0c3G/
 Ova/tbsGCya0ZF3dDXz5XatqhlPfdS7/puj/YRI8bw7X76SGFRbe0/bZdCW+zx2j
 njDcGFak9UerxLuhj+EzK4HIsoi1/y7pSYgbedM5nVXWuUHPnPrVScM4D0ZwIoaj
 93IEaZRP7EOQ8cE1XfFeTuW6s69v/vXAuInDaY3CKPKkN4JszILZ7/GWKmC6xza9
 HlQq/etTI4cYbQxA2dcURw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749656890; x=
 1749743290; bh=hQQEGVz2oEM93X69eaFCEcRjw0sJxSCN2d+An8i2jGA=; b=J
 Qp98/A2TiwuTjKWF+0D2igDXosCZzZFVY0MKIWUaiNxfyTbGNvYZ8H4G38cMqaNG
 9yMeng+MXA/HGX4e7UM/MzxT4v5cn3mzgj0cxgvq/YMv/SOAF97Aad8r68CxyEeI
 MTYj0seofskEb7FbaO5Ln5qeyND0nZA4NcMayW55IE/tS6Jbx5mJ/z8w072XfnFc
 fXzCGUDAz8wMtHkymQqiHguWkzbMfKtBYyDH/lMXi7SlwVirz2RlHdDFX9lSyUyX
 UPtgdW+abJIU/7l9dQX8b3NqHRpbpN5UdJdiD27R0AKkY9PqpAG2DOS5jVl93OgS
 o9CgMqy2wPRLeDVwSzHMQ==
X-ME-Sender: <xms:OaVJaHzghqFRVqOiOLkIyjSWB_lXpi8sDr5tDjt26U_yUmrWYH7eFg>
 <xme:OaVJaPQYY7Zb12KWq0TPeyarazm60DI-3RfJwCigbgX37AIOvJb2Vu2z5NSOP5ril
 rEDKv-u-Tc4-veBvgM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdduvdehkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthhqredtredt
 jeenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfevkeejueeukeef
 hfelleejheeuudfgteffvdetkeffjeduleffvdejkeefhedvnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhv
 ohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddtpdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthho
 peifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrd
 gsrhdprhgtphhtthhopegrnhgurhhihidrshhhvghvtghhvghnkhhosehlihhnuhigrdhi
 nhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslhhinhhugi
 drihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlheslhhi
 shhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehhuggvghhovgguvg
 esrhgvughhrghtrdgtohhmpdhrtghpthhtohepjhhvrghnuggvrhifrggrsehrvgguhhgr
 thdrtghomhdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrgh
X-ME-Proxy: <xmx:OaVJaBUw7UBc8EJ9EMMIOoXlBIDNET9Kb1sqbHAXm7o00BfarBfZRw>
 <xmx:OaVJaBjDb4xy3kppbzzMqEEf4DLP3vdwnauMy7nQM-1ukHSTT_MIPw>
 <xmx:OaVJaJBlQRthaqR2Oeo8iQ04htQkswflgyx2O0RsmwCG5p8nVD4brg>
 <xmx:OaVJaKI6vl1McZNEeHnYonA6eFhtOwtO02EoBNO5MAu-E6NFkFAYPw>
 <xmx:OqVJaPtrdSdDe6kTahyWgyQR-9H_uVKYQ-KZtohpLPpMQL0x4uY4Qepz>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id ABFE12CE0066; Wed, 11 Jun 2025 11:48:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Wed, 11 Jun 2025 11:47:49 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <dbdcd6fb-a84d-47fa-b3d8-d161d8a1b361@app.fastmail.com>
In-Reply-To: <aEmbwiciy81fL58O@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-2-mpearson-lenovo@squebb.ca>
 <aEiVHXI4vS9BDOPW@smile.fi.intel.com>
 <002d39fe-44ed-45a4-9410-4fecf1c2163f@app.fastmail.com>
 <b8af4da0-bd7f-1d65-8645-73dbd08ff3a8@linux.intel.com>
 <aEmbwiciy81fL58O@smile.fi.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jun 11, 2025, at 11:07 AM, Andy Shevchenko wrote:
   > On Wed, Jun 11, 2025 at 06:01:36PM +0300, Ilpo Järvinen wrote: >> On Tue,
    10 Jun 2025, Mark Pearson wrote: >> > On Tue, Jun 10, 2025, at 4: [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1uPNgb-0006ak-AD
Subject: Re: [ibm-acpi-devel] [PATCH v4 2/2] platform/x86: Move Lenovo files
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
Cc: Armin Wolf <W_Armin@gmx.de>, Hans de Goede <hdegoede@redhat.com>,
 ikepanhc@gmail.com, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Jelle van der Waa <jvanderwaa@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gV2VkLCBKdW4gMTEsIDIwMjUsIGF0IDExOjA3IEFNLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gV2VkLCBKdW4gMTEsIDIwMjUgYXQgMDY6MDE6MzZQTSArMDMwMCwgSWxwbyBKw6Rydmlu
ZW4gd3JvdGU6Cj4+IE9uIFR1ZSwgMTAgSnVuIDIwMjUsIE1hcmsgUGVhcnNvbiB3cm90ZToKPj4g
PiBPbiBUdWUsIEp1biAxMCwgMjAyNSwgYXQgNDoyNyBQTSwgQW5keSBTaGV2Y2hlbmtvIHdyb3Rl
Ogo+PiA+ID4gT24gVHVlLCBKdW4gMTAsIDIwMjUgYXQgMDM6Mjg6MjVQTSAtMDQwMCwgTWFyayBQ
ZWFyc29uIHdyb3RlOgo+PiA+ID4+IENyZWF0ZSBsZW5vdm8gc3ViZGlyZWN0b3J5IGZvciBob2xk
aW5nIExlbm92byBzcGVjaWZpYyBkcml2ZXJzLgo+PiA+ID4KPj4gPiA+IEFzc3VtaW5nIEtjb25m
aWcgZW50cmllcyBoYXZlIG1vc3RseSBiZWVuIGNvcGllZCduJ3Bhc3RlZCwgdGhlIHJlc3QgTEdU
TSwKPj4gPiAKPj4gPiBZZXMgLSBubyBjaGFuZ2VzIGZyb20gd2hhdCB0aGV5IHdlcmUgcHJldmlv
dXNseS4KPj4gCj4+IEluZGVlZCwgbm8gY2hhbmdlcywgdG9vIGJhZCB0aGF0IHRoZSBhZGRpdGlv
biAiZGVwZW5kcyBvbiBETUkiIHdhcyBtaXNzZWQgCj4+IGJlY2F1c2Ugb2YgdGhhdCA7LSkuIEkn
dmUgZml4ZWQgdGhpcyBmb3IgeW91IHRvIG5vdCBkZWxheSB0aGlzIHBhdGNoIAo+PiBmdXJ0aGVy
Lgo+Cj4gT2gsIHRoYW5rcyEKPgpPb29wcyAtIHNvcnJ5ISBUaGF0IHdhcyBiYWQgOiggVGhhbmtz
IGZvciBmaXhpbmcuCgo+PiBBIGRpZmYtb2YtcHJlL3Bvc3QgbWFnaWMgdHJpY2sgaGVscHMgdG8g
dmFsaWRhdGUgd2hpbGUgcHJlcGFyaW5nIGFuZCAKPj4gcmV2aWV3IG1vdmUgY2hhbmdlcyBsaWtl
IHRoaXM6Cj4+IAo+PiBkaWZmIC11IDwoZ3JlcCAnXlstXScgcGF0Y2gucGF0Y2ggfCBjdXQgLWIg
Mi0gfCBzb3J0KSA8KGdyZXAgJ15bK10nIHBhdGNoLnBhdGNoIHwgY3V0IC1iIDItIHwgc29ydCkK
Pgo+IEFGQUlLIEdpdCBjYW4gZG8gc29tZXRoaW5nIGxpa2UgdGhpcyBmb3IgeW91IChwYXRjaCB0
byB0aGUgcGF0Y2gpIG9yIGBiNGAuCj4gTmV2ZXIgdXNlZCBwZXJzb25hbGx5LCBidXQgaW50ZXJl
c3RlZCB0byB0cnkgaWYgc29tZWJvZHkgdGVsbHMgbWUgd2hhdCB0bwo+IGRvIDotKQo+Cj4+IFRo
ZSBzb3J0aW5nIGlzIG5vdCBhbHdheXMgbmVlZGVkIGlmIG5vIGNvcmUgcmVvcmRlcmluZyBpcyBk
b25lIGluIHRoZSAKPj4gcGF0Y2ggYnV0IHJlZ2FyZGxlc3Mgb2Ygc29ydGluZyBvciBub3QsIHRo
ZSB1bmV4cGVjdGVkIGRpZmZlcmVuY2VzIGFyZSAKPj4gdXN1YWxseSBwcmV0dHkgZWFzeSB0byBz
cG90IGZyb20gdGhlIG91dHB1dCBvZiB0aGF0IGNvbW1hbmQuIEl0J3MgaG93IEkgCj4+IGZvdW5k
IG91dCB0aGUgbGFjayBvZiBkZXBlbmRzIG9uIERNSSBvbiB0aGUgcG9zdCBzaWRlIGFuZCBoYXZl
IGZvdW5kIAo+PiBwbGVudHkgb2Ygc2ltaWxhciBpc3N1ZSB3aGVuIGNoYW5nZXMgYXJlIHJlYmFz
ZWQvcmVvcmRlcmVkIGluIGEgc2VyaWVzIAo+PiB0aGF0IGRvZXMgY29udGFpbiBhIG1vdmUgY2hh
bmdlLgo+PiAKPj4gV2hpbGUgYXBwbHlpbmcgdGhpcywgSSByZWFsaXplZCBJJ2QgdGFrZW4gSmVs
bGUncyBpZGVhcGFkIHBhdGNoIHdoaWNoIAo+PiByZXN1bHRlZCBpbiB0aGlzIG1vdmUgcGF0Y2gg
bm90IGFwcGx5aW5nIGNsZWFubHksIHNvIEkgZW5kZWQgdXAgbW92aW5nIAo+PiBKZWxsZSdzIHBh
dGNoIGFmdGVyIHRoaXMgY2hhbmdlIHRvIG1ha2UgdGhpbmdzIGVhc2llciBmb3IgbWUuCj4+IAoK
VGhhbmtzIC0gaG9wZWZ1bGx5IHRoaXMgZG9lc24ndCBjYXVzZSB5b3UgaGVhZGFjaGVzIGZvciB0
aGUgcmVzdCBvZiB0aGUgd2luZG93LgoKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNw
aS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
