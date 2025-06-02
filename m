Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22048ACB2A8
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  2 Jun 2025 16:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QuA+2gLQGl/b+w7ExChNWDwF17ElJraXuh7qzgOxBts=; b=cwixgSTRKYyPFB3gYVGsfN3+YP
	tnPbvhcUnyL9GyRZY1FAL/9s8o6KXXjQVVSJVuycwxe2rK2tx008uF/xuTyJnYmeSPChV+puXw3sT
	ienZwau87Mz/kL7J65CslRCnwvLNqw8HdZ5XaOSTXaVfF/YQplL5rk3UnX91sbtgAUt0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uM6ER-0002Uu-11;
	Mon, 02 Jun 2025 14:33:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uM6EP-0002Um-3o
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 02 Jun 2025 14:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kKZS7IhlOLby3H8PGPBO+OvAUFFDZA/RrkLObvlJtQY=; b=XScJsXi1RJj3y1TZMybFI+eE2T
 A2DBWEpV67OLWOvsgjyh1oEiz282QpNlrw1IJtPgZPUvenW5X9Hs2i2AzDgmbUBViTip1c+dsXfST
 YEJ8jHfKNZZN/P9rJydZfEaJUPTiOt1qE4krf9a76Ck4QI6ulGEvgd4GZwamYr17Atjc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kKZS7IhlOLby3H8PGPBO+OvAUFFDZA/RrkLObvlJtQY=; b=MVqriljq2/HB3FphmEh+Ix+hCh
 Uq8mbZkqMTthCsyOj7VuzMfWNBj7/BIAVlM7GoHczz8wgzMkBLdiWrK1yTQcLwKmjfmMarDlgVZUx
 ciXnK+gFGBR6Gj54ruFgLHqepzkYgHPnjUQPYJMHuhvByx2X3rhKSFYFffiU26S+5X7g=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uM6EN-00030r-V3 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 02 Jun 2025 14:33:41 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.stl.internal (Postfix) with ESMTP id 5ABD91140101
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon,  2 Jun 2025 10:33:29 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Mon, 02 Jun 2025 10:33:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1748874809;
 x=1748961209; bh=kKZS7IhlOLby3H8PGPBO+OvAUFFDZA/RrkLObvlJtQY=; b=
 KXZgiewLa6aBwIR1EvemNaCoOL5NwxKDpiRsSDuwsYJkqQbjuRPqqGIJTL1oZ84F
 xwVcz4+CobdciRyfsNSDcQqrl61FNp5sGm1d3wIbEaMWkoSGSSms1mTnmdUvlMfv
 dT0mFSf6q0Ss9tZse/IyD6KYuKecM6MopkCwmWHr+pdAwv81Hs/0ydb+bNkvzLrK
 Jpn7QBu+F3SR8mdOwx7Z54Ne62Ea2DuzrocbPNCiYo6F3pDkToxnQNR7hjnonmRU
 WX8sXq6fvgcB5Uoy9DeVwzuBhNHZZ35s57HUR0W2HdJ7IDZBySaJ4ARdqY7tl5l+
 syqY3NElSvFaAzWLkzINlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1748874809; x=1748961209; bh=k
 KZS7IhlOLby3H8PGPBO+OvAUFFDZA/RrkLObvlJtQY=; b=BrQqypVeBhyurlylz
 VNJprDruC9yd3XkLW515jQtiAh7vq3gC/XIo2ej1mS/d0UqAokiDGn5MNUoZSeAK
 FDpgZ3OzdywvSxHGy7aOkPsoARxSBcUPLgtTGeGIs33a2HbNiXdM1vMYw1H/BQdw
 poxZ2c6ZMoFwRbbclsLKSOwIlAN8Ox0vFdjDvjQ29py0feVJWUK2attGC2nTdMkl
 LiTpdZJaW1L7FIsy5xAB57UHyF5ZfZr2WP+lnZ4Yl9Pr7815ufpn6ohY5bScvPn/
 3vAovXxlXF0jJqo2gUYCzZcLUmrP4fEtKxG3PVLANRt3KKnOBPuN+7/wAITT7hhL
 wMMQA==
X-ME-Sender: <xms:OLY9aDCZ3baRzOOIbTelZFzs12l3Hl8o0PsjEefa9VQBCRnIppG1hQ>
 <xme:OLY9aJh1MRQgI61Dg6HMipPwGgMw6hw0d5HtbJtydOIkiE27pwN_nPysa-jVlM6KO
 Gca_ZeTPmSOItZfoUU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgdefjeelvdculddtuddrgeefvddrtd
 dtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggft
 fghnshhusghstghrihgsvgdpuffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftd
 dtnecunecujfgurhepofggfffhvffkjghfufgtgfesthhqredtredtjeenucfhrhhomhep
 fdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquh
 gvsggsrdgtrgeqnecuggftrfgrthhtvghrnheptdfhffevhfehfffhteetteekvefhheeg
 udetudevheetteeukeeuudetvefhieehnecuffhomhgrihhnpehlvghnohhvohdrtghomh
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgv
 rghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedupd
 hmohguvgepshhmthhpohhuthdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlhes
 lhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:OLY9aOn5NThkTz5dAr9EfMveKws892pUkJ-EbyZxagwjElm3ssB5Aw>
 <xmx:ObY9aFwqMiPNUFGC3YVTRqA1a7dcLilPeTgcWUGCBwHKSUVdN_htFA>
 <xmx:ObY9aIR1fh-rWElN60lJ5DsdUvRRM4eTCKhNgVx3DQMpNKO1tZtLCw>
 <xmx:ObY9aIY9A1WvoTYat6Rhh8iVjKsKSoAX90sDRbmjhfrrz8kFn2uXJA>
 <xmx:ObY9aHGqoz6xIRL_q2PfZ5EE6Ft3HsCtWfM0lTqxNJgxpUUw4DzQlKQR>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id D9BB82CE0060; Mon,  2 Jun 2025 10:33:28 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T7b2f9b9cea78e8d0
Date: Mon, 02 Jun 2025 10:33:08 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: ibm-acpi-devel@lists.sourceforge.net
Message-Id: <242f96d8-0850-4642-8492-deb98b1111d7@app.fastmail.com>
In-Reply-To: <CAEk1YH7cj=UH5DPCscXZdj8OTA6D+7AzyOS8XpPFYqvkXCE6JQ@mail.gmail.com>
References: <CAEk1YH7cj=UH5DPCscXZdj8OTA6D+7AzyOS8XpPFYqvkXCE6JQ@mail.gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 30, 2025, at 5:39 PM, Damjan Georgievski wrote:
 > On the Thinkpad X9-14 Gen 1 (2025) > DMI: LENOVO 21QA0048RM/21QA0048RM,
 BIOS N4DET30W (1.13 ) 04/02/2025 > > pressing the Fn+F11 button, i [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.148 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.148 listed in sa-trusted.bondedsender.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.148 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.148 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uM6EN-00030r-V3
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

T24gRnJpLCBNYXkgMzAsIDIwMjUsIGF0IDU6MzkgUE0sIERhbWphbiBHZW9yZ2lldnNraSB3cm90
ZToKPiBPbiB0aGUgVGhpbmtwYWQgWDktMTQgR2VuIDEgKDIwMjUpCj4gRE1JOiBMRU5PVk8gMjFR
QTAwNDhSTS8yMVFBMDA0OFJNLCBCSU9TIE40REVUMzBXICgxLjEzICkgMDQvMDIvMjAyNQo+Cj4g
cHJlc3NpbmcgdGhlIEZuK0YxMSBidXR0b24sIGl0IGdlbmVyYXRlcyB0aGUgc2NhbmNvZGUgMHgx
NDAyIHdoaWNoCj4gdGhpbmtwYWRfYWNwaSBjb21wbGFpbnMgYWJvdXQuCj4KPiBUaGUgZG9jdW1l
bnRhdGlvbiBhYm91dCB0aGUgc2hvcnRjdXQgc2F5czoKPiAiTGF1bmNoIHRoZSBTbWFydCBTaGFy
ZSBmZWF0dXJlIGluIHRoZSBJbnRlbMKuIFVuaXNvbuKEoiBhcHAuIgo+Cj4gaHR0cHM6Ly9kb3du
bG9hZC5sZW5vdm8uY29tL21hbnVhbC90aGlua3BhZF94OV8xNC91c2VyX2d1aWRlL2VuL1VzZV90
aGVfa2V5Ym9hcmRfc2hvcnRjdXRzLmh0bWwKPgo+IG5vdCBzdXJlIHdoaWNoIExpbnV4IGtleSBj
b2RlIGlzIG1vc3QgYXBwcm9wcmlhdGUgaGVyZS4KPiBLRVlfVkVORE9SIHBlcmhhcHM/IQo+Ck9u
IFdpbmRvd3MgaXQncyBsYXVuY2hlcyBzb21lIHNvcnQgb2YgdW5pZmllZCBhcHAgd2hlcmUgeW91
IGNhbiBjb25uZWN0IHlvdXIgcGhvbmUgYW5kIFBDIHRvZ2V0aGVyIC0gd2UgZG9uJ3QgaGF2ZSBh
biBlcXVpdmFsZW50IChtYXliZSBLREUgY29ubmVjdD8pCgpTdWdnZXN0IEtFWV9MSU5LX1BIT05F
IHdvdWxkIGJlIGEgZ29vZCBmaXQ/CgpMZXQgbWUga25vdyBpZiB5b3Ugd2FudCB0byBkbyBhIHBh
dGNoIHRvIGZpeCB0aGlzIC0gb3RoZXJ3aXNlIEknbSBoYXBweSB0byBkbyBzbyAoSSBzaG91bGQg
aGF2ZSBkb25lIGl0IHByZXZpb3VzbHksIHRoaXMga2V5IHNob3dzIHVwIG9uIGEgYnVuY2ggb2Yg
cGxhdGZvcm1zKQoKVGhhbmtzCk1hcmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2
ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
