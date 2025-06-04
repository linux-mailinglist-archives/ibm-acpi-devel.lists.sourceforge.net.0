Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAACACE2D7
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  4 Jun 2025 19:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UPgTfgf6oOicZOqMBlnHgkirYKmGUCwdv5tBWKjebvs=; b=DKpF5jScxZY3sGYRGv4uKZA86Q
	XJ4+8LtZaaVNxeHSifdyIzjqMSfN/lfWcJJLX7gf39e8k+GxgUMvIHYg2XVDF0C780FI/168MlUiF
	8ABRz7bciuRAagOdB6V/kx+9PP9dVUi5ePVvui67buKGfoHsPh5MkboDx0piDTkblQfg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uMrhR-0002IW-IM;
	Wed, 04 Jun 2025 17:14:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uMrhP-0002IG-RZ
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 04 Jun 2025 17:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8q3CvFGGt37GrOlmFIP1BkiOV3Ur8rMz7l7sXOzK/Q4=; b=B0hpRDMd5ZJ2Md6ukc5a5uOr1W
 Woo8OHfWmcBOxZBEV3T5Qaej37/kjfIfthCpVCaHZ+heBr6cEGyWU9th/My1Z1vRpehAzyktDi9Z7
 QsxzT4myEhNovYsQFznEwXJmK3igDSp9CX5vGOCX2mDV9Q5Em1KHJM+rnZhYytDuTO0A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8q3CvFGGt37GrOlmFIP1BkiOV3Ur8rMz7l7sXOzK/Q4=; b=GZeXjGxqG3nQ56UUqGROVP7rQp
 MaUeHi8yGLXKNvpWVY8OVgEpZDbAOOqC6+2/U1peXRrN8sWES3rC1Yhxwkx/omRtB1WDLCrJYC49L
 WuT/6rEYhul43hmAUhZlKTs1UD3WUvQ3kRGvS2epy6wkBr5qd1qBeI4JruYWqdjyVG7g=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uMrhP-0002is-Eg for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 04 Jun 2025 17:14:47 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.stl.internal (Postfix) with ESMTP id B4E3E114013E;
 Wed,  4 Jun 2025 13:14:41 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Wed, 04 Jun 2025 13:14:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749057281;
 x=1749143681; bh=8q3CvFGGt37GrOlmFIP1BkiOV3Ur8rMz7l7sXOzK/Q4=; b=
 N6SquT4kvN9pnV4WHwvUb/TUJrAf94oguFgR7EkDiE+s02bagQ4/mDxcCgZNbzed
 C3q9+c5z419Tg09n4NwAsKN+LF7UGLN9MFNIOIvpgwqCLMcL1OqvTu3hty2/5Zlk
 cdPGodAYoRxYh7Xg61wR7vEdAsD21xeD5QYZInDh0KpGhfvwoKVDNdZ+f9c5q1lG
 /2yuSBVDr5lNTaBjCXEwBGiS1Mpie60w+feDh/UBMcJBUo3FodshGOzhXZBeZtUs
 JpKIEj1VLuOt+qnfcNe1tcM/u3HWDkFVJwIZY+ut/4pS56U2Sv2/Tx7p+WxrYOvc
 LK+yxz8h8w73f2quUrLN2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749057281; x=1749143681; bh=8
 q3CvFGGt37GrOlmFIP1BkiOV3Ur8rMz7l7sXOzK/Q4=; b=CICvQdURIKOV6Y6N5
 ALfpj97l6MhIXjlnFb4wUGeHk9bqDi/3t63M0AOHv6J/ARgEAf89k3s+xK0f2tLZ
 x5Ygjclir5AiMq9rT6PBYiZsKnkapgZUJC6Egzn8+6LQjQw2FzncLkjpxYUQXkyt
 sLiWlUvhu+pp/5i1Gn51dEQMqXVue0tR8/e6FDsiGjZ8+Q0kpXZ4N8ySQzhDIpKC
 v522EH+dMyw1r9STwNsCMEEIG/IYcy0CdA35dXhkfef+jfkReI1VWexfeUWW/dzz
 Nn1f7Nea/mxWhfy3H0Gd7wQ/+7TOB+5FR8MtqaNxLjXW2a1WMLhXLxB+XquBB4xd
 bYjbw==
X-ME-Sender: <xms:AX9AaOMl-TCUjOQzAjlWCLYuFmfni1Fk9109VFOFwNuFP59ZYYDTlw>
 <xme:AX9AaM8vWcGf0cQIxrJxIgUA8YjpwdrsCeEjHOx-u8vfJD7ZtFNtmTwTozfc3q9Pf
 Gd7emr5gNFCh-5CGCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvgeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvffkjghfufgtgfesthhqredtredtjeen
 ucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnoh
 hvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnheptdfhffevhfehfffhteet
 teekvefhheegudetudevheetteeukeeuudetvefhieehnecuffhomhgrihhnpehlvghnoh
 hvohdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprhgtph
 htthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehguggrmhhjrghnsehg
 mhgrihhlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhsth
 hsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:AX9AaFStIQAdVgBZUvt6nKao-Wk1CvnwMPwONJvbdMrigraOhTUvvg>
 <xmx:AX9AaOuwYzbnOJz4AbytAjI4g0GHsrvFy2XlXzCKh0I8g9wqhIl2uQ>
 <xmx:AX9AaGc6Tdjc0UNA144YPN7GuXdch-IDzOYfP1M3PsOfgDf0TkYPlA>
 <xmx:AX9AaC0ENSXfjtNMtSp_tXnTalgKJDR_eQpIpdeyiKQv5kx-v4hOoA>
 <xmx:AX9AaFGhlO0f3UifLqIbnNrs8wc39J_Hpm-GW6wXA92T0W726i3QIRke>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 42F172CE0060; Wed,  4 Jun 2025 13:14:41 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T7b2f9b9cea78e8d0
Date: Wed, 04 Jun 2025 13:14:21 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Damjan Georgievski" <gdamjan@gmail.com>,
 ibm-acpi-devel@lists.sourceforge.net
Message-Id: <866f0155-6616-4f92-a970-5e2070db0caa@app.fastmail.com>
In-Reply-To: <CAEk1YH4k9hNk7=c9_9J5OwOSsQfwErSve602dR1mDP1YVVaJxA@mail.gmail.com>
References: <CAEk1YH7cj=UH5DPCscXZdj8OTA6D+7AzyOS8XpPFYqvkXCE6JQ@mail.gmail.com>
 <242f96d8-0850-4642-8492-deb98b1111d7@app.fastmail.com>
 <CAEk1YH4k9hNk7=c9_9J5OwOSsQfwErSve602dR1mDP1YVVaJxA@mail.gmail.com>
X-Headers-End: 1uMrhP-0002is-Eg
Subject: Re: [ibm-acpi-devel] thinkpad_acpi: unhandled HKEY event 0x1402
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgRGFtamFuCgpPbiBXZWQsIEp1biA0LCAyMDI1LCBhdCAxMTo1MCBBTSwgRGFtamFuIEdlb3Jn
aWV2c2tpIHdyb3RlOgo+IE9uIE1vbiwgMiBKdW4gMjAyNSBhdCAxNjozNCwgTWFyayBQZWFyc29u
IDxtcGVhcnNvbi1sZW5vdm9Ac3F1ZWJiLmNhPiB3cm90ZToKPj4KPj4gT24gRnJpLCBNYXkgMzAs
IDIwMjUsIGF0IDU6MzkgUE0sIERhbWphbiBHZW9yZ2lldnNraSB3cm90ZToKPj4gPiBPbiB0aGUg
VGhpbmtwYWQgWDktMTQgR2VuIDEgKDIwMjUpCj4+ID4gRE1JOiBMRU5PVk8gMjFRQTAwNDhSTS8y
MVFBMDA0OFJNLCBCSU9TIE40REVUMzBXICgxLjEzICkgMDQvMDIvMjAyNQo+PiA+Cj4+ID4gcHJl
c3NpbmcgdGhlIEZuK0YxMSBidXR0b24sIGl0IGdlbmVyYXRlcyB0aGUgc2NhbmNvZGUgMHgxNDAy
IHdoaWNoCj4+ID4gdGhpbmtwYWRfYWNwaSBjb21wbGFpbnMgYWJvdXQuCj4+ID4KPj4gPiBUaGUg
ZG9jdW1lbnRhdGlvbiBhYm91dCB0aGUgc2hvcnRjdXQgc2F5czoKPj4gPiAiTGF1bmNoIHRoZSBT
bWFydCBTaGFyZSBmZWF0dXJlIGluIHRoZSBJbnRlbMKuIFVuaXNvbuKEoiBhcHAuIgo+PiA+Cj4+
ID4gaHR0cHM6Ly9kb3dubG9hZC5sZW5vdm8uY29tL21hbnVhbC90aGlua3BhZF94OV8xNC91c2Vy
X2d1aWRlL2VuL1VzZV90aGVfa2V5Ym9hcmRfc2hvcnRjdXRzLmh0bWwKPj4gPgo+PiA+IG5vdCBz
dXJlIHdoaWNoIExpbnV4IGtleSBjb2RlIGlzIG1vc3QgYXBwcm9wcmlhdGUgaGVyZS4KPj4gPiBL
RVlfVkVORE9SIHBlcmhhcHM/IQo+PiA+Cj4+IE9uIFdpbmRvd3MgaXQncyBsYXVuY2hlcyBzb21l
IHNvcnQgb2YgdW5pZmllZCBhcHAgd2hlcmUgeW91IGNhbiBjb25uZWN0IHlvdXIgcGhvbmUgYW5k
IFBDIHRvZ2V0aGVyIC0gd2UgZG9uJ3QgaGF2ZSBhbiBlcXVpdmFsZW50IChtYXliZSBLREUgY29u
bmVjdD8pCj4+Cj4+IFN1Z2dlc3QgS0VZX0xJTktfUEhPTkUgd291bGQgYmUgYSBnb29kIGZpdD8K
Pgo+IEkgZG9uJ3Qgd2FudCB0byBiaWtlc2hlZCBpdCwgbm9yIGRvIEkgaGF2ZSBhIHN0cm9uZyBv
cGluaW9uIG9uIGl0IC0KPiB0aGF0IGJlaW5nIHNhaWTigKYgOiksCj4gdGhlIGltYWdlIG9uIHRo
ZSBrZXkgZG9lc24ndCBsb29rIGxpa2UgYW55dGhpbmcgcGhvbmUgcmVsYXRlZCAtIGF0Cj4gbGVh
c3Qgb24gdGhlIFg5LTE0IChzZWUgdGhlIGFib3ZlIG1hbnVhbCkuCj4KPiB0aGF0IGJlaW5nIHNh
aWQsICAxYmViYzc4NjljOTlkNDY2ZjgxOWRkMmNmZmFlZjBlZGY3ZDdhMDM1IGFkZGVkCj4gS0VZ
X0xJTktfUEhPTkUgZm9yIEYxMSBvbiBUaGlua3BhZHMgVDE0IEdlbiA1LCBUMTYgR2VuIDMsIGFu
ZCBQMTRzIEdlbgo+IDUgLSB3aGVyZSB0aGUgaW1hZ2UgZG9lc24ndCBsb29rIGxpa2UgYSBwaG9u
ZSBlaXRoZXIgKGFuZCBpdCBzYXlzCj4gIk9wZW4gTWljcm9zb2Z0wq4gUGhvbmUgTGluayIpIHNv
IEkgZ3Vlc3MgaXQncyBmaW5lLgo+Cj4+IExldCBtZSBrbm93IGlmIHlvdSB3YW50IHRvIGRvIGEg
cGF0Y2ggdG8gZml4IHRoaXMgLSBvdGhlcndpc2UgSSdtIGhhcHB5IHRvIGRvIHNvIChJIHNob3Vs
ZCBoYXZlIGRvbmUgaXQgcHJldmlvdXNseSwgdGhpcyBrZXkgc2hvd3MgdXAgb24gYSBidW5jaCBv
ZiBwbGF0Zm9ybXMpCj4KPiBmZWVsIGZyZWUgdG8gZG8gaXQuCj4KTm8gcHJvYmxlbSAtIHRoYW5r
cyBmb3IgcmVwb3J0aW5nIHRoaXMuCgpNYXJrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3Bp
LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
