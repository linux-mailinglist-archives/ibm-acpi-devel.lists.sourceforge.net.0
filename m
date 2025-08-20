Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F971B2D08D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 20 Aug 2025 02:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MCbUo2Zn6sm92sA4adEAwUTa7Ohm9fguumkxkIi0Lws=; b=e6nOjKvBLmJjVtqcIagg1ReCC9
	16/inXtyLy8SxteKsXIL/pY6xtCkCJWe6tt6rvW6YOThw25Q60ICP4j+Qktydur1YghSN/7/r1j9R
	X/eiaHds9uT8v+dGs3RASak2GfoahbzlN9VH4BUOjkRG5vgtBlRqYmtPTSbNNDDJJ3KM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uoWJJ-0005db-Sp;
	Wed, 20 Aug 2025 00:04:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uoWJI-0005dK-8q
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 20 Aug 2025 00:04:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C7/xsP6JXaTn1kxkdK4oQA4QKuzCOWwwmlrg9UlnRZM=; b=WYAlkB7e+wv0vUOQlfgXRnwLU+
 OgwYeu72M+VO2mRBuRCSQ9LPIUmkMssTu18m3ow0aHhZDcE6wx7rNCWiLwt1YZGTmeg82NCzYQ3xz
 wwAtEpbuiF1BDZwjBNcwsrHtT9RucqdWEviVhZosjGhGu4VYezK8VbUDWmz9WXUq+M14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C7/xsP6JXaTn1kxkdK4oQA4QKuzCOWwwmlrg9UlnRZM=; b=fgvAEvMp6ftOXkEu5Y5sNpIkMJ
 q1wHBVq4srD53gQcv8bg1CSgn/XFBB9pTn/2AnLIAsKpIpJ+CLMqngM/gNVE9DSBhkQaq5I87eKxt
 P8AAjsXRXou8AwopBnxAgksYd6TVcCXZZMB8jDu5Q1yPK2qVq7H4Z1lgX0I684fL6cQk=;
Received: from fhigh-a7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uoWJI-0003JD-04 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 20 Aug 2025 00:04:12 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 5D5AF14003B1;
 Tue, 19 Aug 2025 20:04:01 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Tue, 19 Aug 2025 20:04:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1755648241;
 x=1755734641; bh=C7/xsP6JXaTn1kxkdK4oQA4QKuzCOWwwmlrg9UlnRZM=; b=
 MAqj4r0x5eqIUrzeesC6J4Nh/IkGGJLdMXc1nztoo1OYE64j9ornLHWHt4hQ4vfG
 juWuYwp11ylKZ8tgfXKHUu74Tbl/zfMQkwF9yx5wnjjJUCeIFIRHXyF1NKDu9Gtu
 dS4bcNp5kzl3awBFaWVRBlV2ZNj6x21X5OooCROmuhV2o063PxGdTZ1mplrW0u3D
 YYak3azSmccl1N5zts+sbIMoRwUeJ5nh51uHCG7RFin6BBE3/CoSNmTrkVTO+upF
 hMe7J0nVseP/SSZJ4wCDHXGzCYMnutNAvx1xyDcFsfm7DZR7ppceGN42ZOssMWmJ
 +zxmX3jc7Cu5HwJcwoeVfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1755648241; x=
 1755734641; bh=C7/xsP6JXaTn1kxkdK4oQA4QKuzCOWwwmlrg9UlnRZM=; b=i
 rguvTzxntiytSSVIRK2qmEy0beC9nvZHgAvdO+pFr95lyrfxzOR7g2nSj5rxOi44
 KzIp8Xu/KDptfUNMvmTNY0JuXy+8ugwRFY3mUKUAsaD230jrs6KRogh0tD/jSWrp
 4B2K9LVn2flwFSQ/WRgXaY4lsjVE3oCoaCea73pvzQs2uu+PJV6dDZQj/GlfYQVY
 5EKev3vC/g1mOEKYdQ90bbWQ5tkJjfoQvEDjS53dJ/1m+HgeBUfvmC1iPf7IXZ5v
 GPlaqGjFcyZwpCPq/Ah+I919kv8nmNjMKqt0V5YDQI0UCDsM/ihBiwmC8SW0MQgz
 194bYoOhDpr9P5rzgREdQ==
X-ME-Sender: <xms:8BClaGSQYnKUB8aBQerYJXkeOdwe1u3mz_g14nDE8_uvtEx1snvY0Q>
 <xme:8BClaLxu110gwCPwydFMdrZuoVlExsKoprBX5YJr6bNtoTjF2qoHR42R2GQKL24Al
 NqWEnWlNKGrleB0BLw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheeikeejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedfofgrrhhk
 ucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtg
 grqeenucggtffrrghtthgvrhhnpeegvdegueffhfdtleeigfejhffggfeivdejgeelueej
 uedtudetheejudehtdeitdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhn
 qdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepjedpmhhouggvpe
 hsmhhtphhouhhtpdhrtghpthhtohepuggvrhgvkhhjohhhnhdrtghlrghrkhesghhmrghi
 lhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprhgtphhtthhope
 hhrghnshhgsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehilhhpohdrjhgrrhhvihhn
 vghnsehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohep
 mhgrrhgtrdgsuhhrkhhhrghrughtsehprhhothhotghordgtohhnshhulhhtihhnghdprh
 gtphhtthhopehplhgrthhfohhrmhdqughrihhvvghrqdigkeeisehvghgvrhdrkhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:8BClaEi1vQ3pGWiq-PVM9X9TSCAMVapo5xT27u2alqz25HPG4nk9zQ>
 <xmx:8BClaCNuQwFS4qrhmu0EtqgzaBFHY3-gs9lEc8CsGCMueD7cMQMQRQ>
 <xmx:8BClaM9UpeFSxidW7U5dAdu2M9lrFIo9r1Py2cg07h38LXAFIi-pyw>
 <xmx:8BClaLdmLtGtZZn7K3f0vYyVlyWQzCTQ5PJuUOu44DemQUtmIfKEUA>
 <xmx:8RClaKm6dw-Nui_6ah0HDR-qXHAyBujMZvft4lYvmAOqU1vQziHbutpS>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 061DE2CE0071; Tue, 19 Aug 2025 20:04:00 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AqlvLU1YwUxg
Date: Tue, 19 Aug 2025 20:03:38 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Marc Burkhardt" <marc.burkhardt@protoco.consulting>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net
Message-Id: <196b8004-3b09-48d4-891a-80eee2efbf3c@app.fastmail.com>
In-Reply-To: <20250818204353.857304-1-marc.burkhardt@protoco.consulting>
References: <20250818204353.857304-1-marc.burkhardt@protoco.consulting>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Marc, On Mon, Aug 18, 2025, at 4:39 PM, Marc Burkhardt
 wrote: > While moving an existing Icinga installation to a Lenovo P15 20SU
 I came > across broken JSON output from a "sensors -Aj" command consumed
 by [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uoWJI-0003JD-04
Subject: Re: [ibm-acpi-devel] [RFC PATCH v1] platform/x86: thinkpad_acpi:
 Add parameter to suppress invalid thermal sensors
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
Cc: Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTWFyYywKCk9uIE1vbiwgQXVnIDE4LCAyMDI1LCBhdCA0OjM5IFBNLCBNYXJjIEJ1cmtoYXJk
dCB3cm90ZToKPiBXaGlsZSBtb3ZpbmcgYW4gZXhpc3RpbmcgSWNpbmdhIGluc3RhbGxhdGlvbiB0
byBhIExlbm92byBQMTUgMjBTVSBJIGNhbWUKPiBhY3Jvc3MgYnJva2VuIEpTT04gb3V0cHV0IGZy
b20gYSAic2Vuc29ycyAtQWoiIGNvbW1hbmQgY29uc3VtZWQgYnkgdGhlCj4gSWNpbmdhIGNoZWNr
X2xtX3NlbnNvcnMgcGx1Z2luLiBBZnRlciBmaWRkbGluZyBhcm91bmQgdHJ5aW5nIHRvIGJ1aWxk
IGEKPiBmaXggaW4gZWl0aGVyIGxtX3NlbnNvcnMgb3IgSWNpbmdhIEkgZm91bmQgb3V0IHRoZSBl
cnJvciB3YXMgcm9vdGVkIGluCj4gc29tZSBzeXNmcyBmaWxlIHRoYXQgd2FzIGNyZWF0ZWQgYnV0
IHRocmV3IGVycm9ycyB3aGlsZSBiZWluZyByZWFkLiBPbiBteQo+IExlbm92byBUaGlua1BhZCB0
aGUgZGVmYXVsdCBmYWxsYmFjayB0byA4IHRlbXBlcmF0dXJlIHNlbnNvcnMgY3JlYXRlcwo+IHN5
c2ZzIGVudHJpZXMgbGlrZSBpbiBteSBjYXNlICJ0ZW1wOF9pbnB1dCIgdGhhdCBmYWlsIHdoZW4g
cmVhZCwgY2F1c2luZwo+IHRoZSBpc3N1ZSBpbiB1c2VyLXNwYWNlLgo+Cj4gVGhpcyBwYXRjaCBh
ZGRzIGEgbW9kdWxlIHBhcmFtZXRlciAoc3VwcHJlc3Nfc2Vuc29yKSB1c2luZwo+IG1vZHVsZV9w
YXJhbV9hcnJheSgpIHRvIGFsbG93IHVzZXJzIHRvIHNwZWNpZnkgYSBjb21tYS1zZXBhcmF0ZWQg
bGlzdCBvZgo+IHplcm8tYmFzZWQgc2Vuc29yIGluZGljZXMgdG8gc3VwcHJlc3Mgc3lzZnMgZmls
ZSBjcmVhdGlvbiAoZS5nLgo+IHN1cHByZXNzX3NlbnNvcj0zLDcpLiBJbnN0ZWFkIG9mIGEgbW9k
ZWwtc3BlY2lmaWMgcXVpcmssIHRoaXMgcHJvdmlkZXMKPiBmbGV4aWJsZSBjb25maWd1cmF0aW9u
IGZvciBhbnkgVGhpbmtQYWQgd2l0aCBzaW1pbGFyIGlzc3VlcyBhbmQgaXMgd29ya2luZwo+IG91
dC1vZi10aGUtYm94IHdpdGhvdXQgYWRkaXRpb25hbCBtb2RlbHMgYmVpbmcgbWFya2VkIGZvciB0
aGUgcXVpcmsuIFRoZQo+IHBhcmFtZXRlciB1c2VzIGEgZml4ZWQtc2l6ZSBhcnJheSBiYXNlZCBv
biBUUEFDUElfTUFYX1RIRVJNQUxfU0VOU09SUyAoMTYpCj4gY29uc2lzdGVudCB3aXRoIHRoZSBk
cml2ZXLigJlzIHRoZXJtYWwgc2Vuc29yIGhhbmRsaW5nIChpZS4KPiBpYm1fdGhlcm1hbF9zZW5z
b3JzX3N0cnVjdCBvciBzZW5zb3JfZGV2X2F0dHJfdGhlcm1hbF90ZW1wX2lucHV0KS4KPgo+IExv
Z2dpbmcgdmlhIHByX2luZm8oKSByZXBvcnRzIHRoZSBudW1iZXIgb2Ygc3VwcHJlc3NlZCBzZW5z
b3JzIGF0IG1vZHVsZQo+IGluaXRpYWxpemF0aW9uLCBhbmQgcHJfaW5mbygpIGxvZ3MgZWFjaCBz
dXBwcmVzc2VkIHNlbnNvciBkdXJpbmcgc3lzZnMKPiBhdHRyaWJ1dGUgY3JlYXRpb24uIEludmFs
aWQgc2Vuc29yIGluZGljZXMgYXJlIGxvZ2dlZCBvbmNlIHZpYSBwcl93YXJuKCkKPiB0byBhdm9p
ZCByZXBldGl0aXZlIHdhcm5pbmdzLiBUZXN0ZWQgb24gYSBUaGlua1BhZCBQMTUgd2l0aAo+IHN1
cHByZXNzX3NlbnNvcj0zLDcsIGNvbmZpcm1pbmcgc3VwcHJlc3Npb24gb2YgdGVtcDRfaW5wdXQg
YW5kIHRlbXA4X2lucHV0Cj4gd2l0aCBubyBzeXNmcyBlcnJvcnMuIEJvdW5kcyBjaGVja2luZyBm
b3IgdW5jb21tb24gdmFsdWVzIGlzIGluIHBsYWNlIG9yCj4gd2lsbCBiZSBsb2dnZWQuCj4KPiBU
aGUgcGF0Y2ggYXBwbGllcyB0byB0aGUgY3VycmVudAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCBhbHRob3VnaAo+IGl0
IHdhcyBpbml0aWFsbHkgd3JpdHRlbiBmb3IgYSA2LjE2LjAga2VybmVsLgo+Cj4gSSBsb29rIGZv
cndhcmQgdG8gYW55IGZlZWRiYWNrIG9uIHRoZSBwYXRjaCBhbmQvb3IgaGFuZGxpbmcgb2Ygc3Vi
bWlzc2lvbi4KPiBQbGVhc2UgQ0M6IGZvciBub3cgYXMgSSBhbSBub3QgKHlldCkgc3Vic2NyaWJl
ZC4gVGhhbmsgeW91Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyYyBCdXJraGFyZHQgPG1hcmMuYnVy
a2hhcmR0QHByb3RvY28uY29uc3VsdGluZz4KPiAtLS0KPiBOb3RlczoKPiBJIGhhdmVuJ3QgcG9z
dGVkIG9uIExLTUwgb3Igc2VuZCBhIHBhdGNoIGZvciBvdmVyIGEgZGVjYWRlIG5vdyBzbwo+IHBs
ZWFzZSBmb3JnaXZlIGFueSBwb3NzaWJsZSBtaXN0YWtlcyBJIG1hZGUgcmVnYXJkaW5nIGN1cnJl
bnQgY29kaW5nCj4gY29udmVudGlvbnMgb3IgbW9yZSBnZW5lcmFsbHkgaW4gc3VibWl0dGluZyB0
aGlzIHBhdGNoLiBUaGUgcGF0Y2ggd2FzCj4gcnVubmluZyBmb3Igc29tZSB0aW1lIGhlcmUgd2l0
aCBmYXVsdHkgc2Vuc29ycyByZW1vdmVkIGZyb20gc3lzZnMgYW5kIG5vCj4gcHJvYmxlbXMgb3Ro
ZXJ3aXNlIGRldGVjdGVkIGFuZCB3YXMgc3VyZWx5IHJ1biB0aHJvdWdoIGNoZWNrcGF0Y2gucGwg
YmVmb3JlCj4gc3VibWlzc2lvbi4gZ2V0X21haW50YWluZXIucGwgd2FzIGhlbHBmdWwgdG8gZmlu
ZCB0aGUgaG9wZWZ1bGx5IHJpZ2h0Cj4gcGVvcGxlIGZvciBDQzppbmcgYnV0IEkgYW0gb3RoZXJ3
ZWlzZSB0b3RhbGx5IHVuYXdhcmUgb2YgYW55IGN1cnJlbnQKPiBwcm9jZWR1cmVzIG9yIGJlc3Qt
cHJhY3RpY2VzIHdoZW4gaXQgY29tZXMgdG8gc3VibWl0dGluZyBhIHBhdGNoLgo+Cj4gZHJpdmVy
cy9wbGF0Zm9ybS94ODYvbGVub3ZvL3RoaW5rcGFkX2FjcGkuYyB8IDM1ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvbGVub3ZvL3RoaW5rcGFkX2FjcGkuYyAK
PiBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L2xlbm92by90aGlua3BhZF9hY3BpLmMKPiBpbmRleCBj
YzE5ZmU1MjBlYTkuLjMwZmYwMWY4NzQwMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BsYXRmb3Jt
L3g4Ni9sZW5vdm8vdGhpbmtwYWRfYWNwaS5jCj4gKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYv
bGVub3ZvL3RoaW5rcGFkX2FjcGkuYwo+IEBAIC02MDE5LDYgKzYwMTksMzAgQEAgc3RydWN0IGli
bV90aGVybWFsX3NlbnNvcnNfc3RydWN0IHsKPiAgCXMzMiB0ZW1wW1RQQUNQSV9NQVhfVEhFUk1B
TF9TRU5TT1JTXTsKPiAgfTsKPiAKPiArc3RhdGljIGludCBzdXBwcmVzc19zZW5zb3JbVFBBQ1BJ
X01BWF9USEVSTUFMX1NFTlNPUlNdOwo+ICtzdGF0aWMgdW5zaWduZWQgaW50IHN1cHByZXNzX3Nl
bnNvcl9jb3VudDsKPiArCj4gK3N0YXRpYyBib29sIGlzX3NlbnNvcl9zdXBwcmVzc2VkKGludCBp
bmRleCkKPiArewo+ICsJdW5zaWduZWQgaW50IGk7Cj4gKwlib29sIGxvZ2dlZCA9IGZhbHNlOwo+
ICsKPiArCWZvciAoaSA9IDA7IGkgPCBzdXBwcmVzc19zZW5zb3JfY291bnQ7IGkrKykgewo+ICsJ
CWlmIChzdXBwcmVzc19zZW5zb3JbaV0gPT0gaW5kZXgpCj4gKwkJCXJldHVybiB0cnVlOwo+ICsK
PiArCQlpZiAoIWxvZ2dlZCAmJgo+ICsJCQkoc3VwcHJlc3Nfc2Vuc29yW2ldIDwgMAo+ICsJCQkJ
fHwgc3VwcHJlc3Nfc2Vuc29yW2ldID49IFRQQUNQSV9NQVhfVEhFUk1BTF9TRU5TT1JTKSkgewo+
ICsJCQlwcl93YXJuKCJJbnZhbGlkIHNlbnNvciBpbmRleCAlZCBpbiBzdXBwcmVzc19zZW5zb3Jc
biIsCj4gKwkJCQlzdXBwcmVzc19zZW5zb3JbaV0pOwo+ICsJCQlsb2dnZWQgPSB0cnVlOwo+ICsJ
CX0KPiArCX0KPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gK30KPiArCj4gIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgdHBhY3BpX3F1aXJrIHRoZXJtYWxfcXVpcmtfdGFibGVbXSBfX2luaXRjb25zdCA9IHsK
PiAgCS8qIE5vbi1zdGFuZGFyZCBhZGRyZXNzIGZvciB0aGVybWFsIHJlZ2lzdGVycyBvbiBzb21l
IFRoaW5rUGFkcyAqLwo+ICAJVFBBQ1BJX1FfTE5WMygnUicsICcxJywgJ0YnLCB0cnVlKSwJLyog
TDEzIFlvZ2EgR2VuIDIgKi8KPiBAQCAtNjMxMyw2ICs2MzM3LDExIEBAIHN0YXRpYyB1bW9kZV90
IHRoZXJtYWxfYXR0cl9pc192aXNpYmxlKHN0cnVjdCAKPiBrb2JqZWN0ICprb2JqLAo+IAo+ICAJ
aW50IGlkeCA9IHNlbnNvcl9hdHRyLT5pbmRleDsKPiAKPiArCWlmIChpc19zZW5zb3Jfc3VwcHJl
c3NlZChpZHgpKSB7Cj4gKwkJcHJfaW5mbygiU2Vuc29yICVkIHN1cHByZXNzZWRcbiIsIGlkeCk7
Cj4gKwkJcmV0dXJuIDA7Cj4gKwl9Cj4gKwo+ICAJc3dpdGNoICh0aGVybWFsX3JlYWRfbW9kZSkg
ewo+ICAJY2FzZSBUUEFDUElfVEhFUk1BTF9OT05FOgo+ICAJCXJldHVybiAwOwo+IEBAIC0xMTY1
Myw2ICsxMTY4Miw5IEBAIHN0YXRpYyB2b2lkIF9faW5pdCAKPiB0aGlua3BhZF9hY3BpX2luaXRf
YmFubmVyKHZvaWQpCj4gIAkJCXRoaW5rcGFkX2lkLm1vZGVsX3N0ciwKPiAgCQkJKHRoaW5rcGFk
X2lkLm51bW1vZGVsX3N0cikgPwo+ICAJCQkJdGhpbmtwYWRfaWQubnVtbW9kZWxfc3RyIDogInVu
a25vd24iKTsKPiArCj4gKwlwcl9pbmZvKCJTdXBwcmVzc2luZyAlZCB1c2VyLXN1cHBsaWVkIHNl
bnNvcihzKSB2aWEgcGFyYW1ldGVyIAo+IHN1cHByZXNzX3NlbnNvclxuIiwKPiArCQlzdXBwcmVz
c19zZW5zb3JfY291bnQpOwo+ICB9Cj4gCj4gIC8qIE1vZHVsZSBpbml0LCBleGl0LCBwYXJhbWV0
ZXJzICovCj4gQEAgLTExNzg1LDYgKzExODE3LDkgQEAgTU9EVUxFX1BBUk1fREVTQyhleHBlcmlt
ZW50YWwsCj4gIG1vZHVsZV9wYXJhbV9uYW1lZChkZWJ1ZywgZGJnX2xldmVsLCB1aW50LCAwKTsK
PiAgTU9EVUxFX1BBUk1fREVTQyhkZWJ1ZywgIlNldHMgZGVidWcgbGV2ZWwgYml0LW1hc2siKTsK
PiAKPiArbW9kdWxlX3BhcmFtX2FycmF5KHN1cHByZXNzX3NlbnNvciwgaW50LCAmc3VwcHJlc3Nf
c2Vuc29yX2NvdW50LCAwNDQ0KTsKPiArTU9EVUxFX1BBUk1fREVTQyhzdXBwcmVzc19zZW5zb3Is
ICJDb21tYS1zZXBhcmF0ZWQgc2Vuc29yIGluZGljZXMgdG8gCj4gc3VwcHJlc3MgKGUuZy4sIDMs
NykiKTsKPiArCj4gIG1vZHVsZV9wYXJhbShmb3JjZV9sb2FkLCBib29sLCAwNDQ0KTsKPiAgTU9E
VUxFX1BBUk1fREVTQyhmb3JjZV9sb2FkLAo+ICAJCSAiQXR0ZW1wdHMgdG8gbG9hZCB0aGUgZHJp
dmVyIGV2ZW4gb24gYSBtaXMtaWRlbnRpZmllZCBUaGlua1BhZCB3aGVuIAo+IHRydWUiKTsKClRo
ZSBQMTUgaXMgb25lIG9mIHRoZSBMaW51eCBjZXJ0aWZpZWQgcGxhdGZvcm1zLi4udGhvdWdoIGl0
J3MgYSBiaXQgb2xkZXIgbm93LgoKSSdkIGJlIG1vcmUgaW50ZXJlc3RlZCBpbiBmaWd1cmluZyBv
dXQgd2hpY2ggc2Vuc29ycyBhcmUgcmV0dXJuaW5nIGFuIGVycm9yIGFuZCBmaWd1cmluZyBvdXQg
aG93IHdlIGFkZHJlc3MgdGhhdC4gSSBoYXZlIGFjY2VzcyB0byB0aGUgRlcgYW5kIHBsYXRmb3Jt
IHRlYW0gZm9yIHF1ZXN0aW9ucyAodGhvdWdoIHRoaXMgcGxhdGZvcm0gaXMgYSBiaXQgb2xkZXIg
bm93LCBzbyBpZiB3ZSBuZWVkIEZXIGZpeGVzIHRoYXQgd2lsbCBiZSB0cmlja2llcikuIE15IGd1
dCBmZWVsaW5nIGlzIHdlIHNob3VsZG4ndCBiZSBjcmVhdGluZyBzeXNmcyBlbnRyaWVzIGlmIHRo
ZSBzZW5zb3JzIGRvbid0IGV4aXN0IG9yIGFyZW4ndCBhY2Nlc3NpYmxlLgoKSSBkbyBoYXZlIGEg
UDE1IHNvIGNhbiBjaGVjayBpdCBvdXQgKEknbSBnb2luZyB0byBoYXZlIHRvIGJsb3cgc29tZSBk
dXN0IG9mZiBpdCkuIElmIHlvdSd2ZSBnb3QgdGhlIGRldGFpbHMgb24gd2hpY2ggc2Vuc29ycyBu
ZWVkIHN1cHByZXNzaW5nIHRoYXQgd291bGQgYmUgdXNlZnVsLiBJIGhhdmUgc2VlbiBwcmV2aW91
c2x5IHdoZXJlIGl0J3MgdHJ5aW5nIHRvIGFjY2VzcyBhIEdQVSBzZW5zb3Igb24gYSBVTUEgbW9k
ZWwuCgpNYXJrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9p
Ym0tYWNwaS1kZXZlbAo=
