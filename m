Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D23FE7E9E00
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Nov 2023 15:01:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r2XUa-0002iq-Bj;
	Mon, 13 Nov 2023 14:00:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r2XUY-0002id-2D
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 14:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VHi4AcLP1FDKeL87EkRURIskb7aetmZpaGyD5PsyTw4=; b=dw65bX5ptghrpRrfxemyCBVaLO
 jReUSCbhUcd5sU1TVpYVH9GA8/wjKsvW3Rg7h4mtB52EWULmghK7cSBkhe+gu6leHtDlkcnwcFfRR
 UdVgaoSP7aUXODcRdJmPcfgGBT06AhZHz/JkD184KXjtvQk07x5UaL72BPFku/nb3qsQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VHi4AcLP1FDKeL87EkRURIskb7aetmZpaGyD5PsyTw4=; b=Vsc1OrImTPvvMiC5dnfpsfLCyX
 kT7bgyI2hDtnv2KHDwl/Tzf9XsSByeETG2Po9NHCmvgyf2/Cu4gQYHDBNB/JozJMfqPmdET4uzoqE
 2E+6h33P6VrT8IMWBTmizpo+XFqC2GGqJUQj7JAt5VB28kc/iwXABkQTRgl+BdlaaWgM=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r2XUV-004hHm-4A for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Nov 2023 14:00:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 951165C0197;
 Mon, 13 Nov 2023 09:00:33 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 13 Nov 2023 09:00:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm1; t=
 1699884033; x=1699970433; bh=VHi4AcLP1FDKeL87EkRURIskb7aetmZpaGy
 D5PsyTw4=; b=UKHbwcnuM/BZH8xYYa01WFOkHvkc0Ykh+riEPbcRNA4Ue6MEqgg
 Yngz1rptFsb2T1SGQTDOrhFlGMREQzDv1jsVqwl+fkinpQhPK85oU6SM6w+gRFfK
 4bkEuGB8MBTWMkiGf3QQ1uoAR2fDICfXaQYJJhKtAwb7ZGoJPBKloiC7GK66Uq80
 oaAWWkyERR6iDEZfGMevzJ3akjdRb7SLA21K47fKjkAjlGMaea34fm1HllX6RtKO
 WBrCaFK5d2+ZuSkBs3qj9r3MnD+RLsap2hJriXNDyLaayHsIX0QJABVphYUFatFI
 bvoWpA89qNtFTai+RVKZkf5rboWy86Z5wqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1699884033; x=1699970433; bh=VHi4AcLP1FDKeL87EkRURIskb7aetmZpaGy
 D5PsyTw4=; b=h8PcPdtouGcX3pGAqzjnnhYdawg1vKxyv6p7zvDS2vR6ZGJYYJS
 R8ltnI3/eZFkmO6Y1fCJSu00gKLEsVnWwM++O5DkxmNS5CqQ+R85e3wOhUF09lyS
 L7Xn3yJg9bGlntMfayO80f+hWkTKtDfALgJOkh3tWc1M0AhvGE1Bvb8RuSefZd0x
 EshqCGYtPFCUwIng185hZYDNTSMftwDr+W7dFEyH7vbIPnhNn0fWUeCvJGOXgUNL
 ffxN+B0trJz75vaqhCglsfDWv+uL/cRyRj+LGUlKUqxhRZKz+fcm4wxlxCLCC/UB
 RALIp6KbvW9OWlr75Ykx+aqobVXo4KJFbxA==
X-ME-Sender: <xms:_ytSZX4V_aVb4SgcDRcz6_nIDlDLvj203gd2cO4HsyEdwgveWNkpwg>
 <xme:_ytSZc52L2ruNEkwyuss0fZUTcLQEgYc7bRcLMnMBvPlu6Dm1yLh82ESndTU0xI6A
 pn4Mgxi5UkT5ciKOUY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgheeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhephfefgedufeetgfetlefgkefgvdejleelvefg
 hfejfffhtdeitdejfeekvdeugfeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgt
 rg
X-ME-Proxy: <xmx:ACxSZecBO_wERmCSDE5ojDm3bJ3MKcmn6Thw91YWL9pT4HLnNjzOLw>
 <xmx:ACxSZYLFrMAC_fSRKepvrcLPfxsjJCvaTilPdg9ywR-sMW5XrChNYA>
 <xmx:ACxSZbKoHk8tD2kOz6crp3vsj0HxmEfEXgqfuo3Fo0IgPVRDmBFVAA>
 <xmx:ASxSZT2pEed5RqwJt1orGOA0hml5A9qyqy_TvRV2Btzr8hQL53ibsQ>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C1861C6008B; Mon, 13 Nov 2023 09:00:31 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1108-g3a29173c6d-fm-20231031.005-g3a29173c
MIME-Version: 1.0
Message-Id: <b3167aca-032d-4ec4-b438-38416a5d8a10@app.fastmail.com>
In-Reply-To: <abecd774-30a4-f11b-e1f-dcae9f1cf7df@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20231108162039.13737-1-mpearson-lenovo@squebb.ca>
 <8b29ab8-fef4-8a60-e6c5-447f31f144a7@linux.intel.com>
 <14312000-6369-4669-bcc9-4fa2abb5a98f@app.fastmail.com>
 <abecd774-30a4-f11b-e1f-dcae9f1cf7df@linux.intel.com>
Date: Mon, 13 Nov 2023 09:00:09 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo On Fri, Nov 10, 2023, at 7:37 AM, Ilpo Järvinen wrote:
    > On Thu, 9 Nov 2023, Mark Pearson wrote: >> On Thu, Nov 9, 2023, at 5:10
    AM, Ilpo Järvinen wrote: >> > On Wed, 8 Nov 2023, Mark Pearson wrote: [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [66.111.4.28 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r2XUV-004hHm-4A
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

SGkgSWxwbwoKT24gRnJpLCBOb3YgMTAsIDIwMjMsIGF0IDc6MzcgQU0sIElscG8gSsOkcnZpbmVu
IHdyb3RlOgo+IE9uIFRodSwgOSBOb3YgMjAyMywgTWFyayBQZWFyc29uIHdyb3RlOgo+PiBPbiBU
aHUsIE5vdiA5LCAyMDIzLCBhdCA1OjEwIEFNLCBJbHBvIErDpHJ2aW5lbiB3cm90ZToKPj4gPiBP
biBXZWQsIDggTm92IDIwMjMsIE1hcmsgUGVhcnNvbiB3cm90ZToKPHNuaXA+Cj4+IAo+PiA+Cj4+
ID4gTG9va2luZyBpbnRvIHRoZSBkcml2ZXIgYSBiaXQgbW9yZSwgdGhlcmUgYXJlIGEgZmV3IG90
aGVyIGRlZmluZXMgd2hpY2ggCj4+ID4gY291bGQgYWxzbyBtb3ZlIEJJVCgpIGZyb20gdGhlIGNv
ZGUgaW50byBkZWZpbmVzLiBQbGVhc2UgdGVsbCBpZiB5b3UncmUgCj4+ID4gZ29pbmcgdG8gbG9v
ayBhdCB0aG9zZSBiZWNhdXNlIGlmIG5vdCwgSSBtaWdodCB0cnkgdG8gbWFrZSB0aGUgcGF0Y2hl
cy4KPj4gCj4+IEhhcHB5IHRvIGxvb2sgYXQgZG9pbmcgdGhhdCBhcyBJJ20gcGxheWluZyBhcm91
bmQgd2l0aCB0aGlzIGRyaXZlciBhbnl3YXkuCj4KPiBPa2F5LCB0aGFua3MuCj4KSnVzdCBhIHF1
aWNrIG5vdGUgLSBJIHB1c2hlZCB2MiBmb3IgdGhpcyBwYXRjaCwgYW5kIEknbGwgdGFja2xlIHRo
ZSBvdGhlciBCSVQgY2hhbmdlcyBzZXBhcmF0ZWx5IChyYXRoZXIgdGhhbiBhZGRpbmcgaXQgYXMg
cGFydCBvZiBhIHNlcmllcykuIExvb2tpbmcgdGhyb3VnaCB0aGUgY29kZSBJIHdhbnRlZCB0byBz
cGVuZCBtb3JlIHRpbWUgb24gdGhhdCBwaWVjZSAtIEknbSBub3QgaWdub3JpbmcgaXQgOikKCk1h
cmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0t
YWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3Bp
LWRldmVsCg==
