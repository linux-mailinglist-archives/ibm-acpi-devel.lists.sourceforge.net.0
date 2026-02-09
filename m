Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBEDEicvimm3IAAAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 09 Feb 2026 20:01:59 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BFF113E80
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 09 Feb 2026 20:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AH1eeWcIzDAsLGBdp/1aWLKu6BvBR5Jw17R+8Boww2g=; b=knfX81/gA0lSu0+GshLmWcVG1m
	iBOPLNjwCz6nR5Vl3RuVwaB7uJHsuAKsBlWOmxoRRKdtGdQV8cKkD3iam2wh4c96EGm87HXODccKg
	8mvQlWzYlAni07ZRS94jyhXdvhzMou9xWbqe1J/g0lZGFR7BGQfMOmEq3Gu55PwrClFU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vpWVj-00062y-NV;
	Mon, 09 Feb 2026 19:01:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1vpWVi-00062d-3n
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Feb 2026 19:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HVhhygkkbTYhnT8bUYBWhIB/JMubQNQ+fbcAH1FscIs=; b=LPEmYK3CRrnXVkiNmF7Q0vC9W6
 Sa6TPSgh6dp+fGnC17jizvvREyStPTUGUKYuMvQMDFSWlUXVkUnK8B8UDjwDv47tYdK9h49ZuceKV
 Ru9dKWZFsIqoDGW6ux8/AyQDm2vCSYdzDVEd+STGNmDMXCIykeeWgCIpOOt2mqVynBnE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HVhhygkkbTYhnT8bUYBWhIB/JMubQNQ+fbcAH1FscIs=; b=DlSDYM04nKFlZ/DJqYyiKvozo4
 Ye/WZABlXOHDAXMbqPh+KZ8TsE6cYFc5KS5bz7yYP3klOub4ZFUUFdF542HBnzfRTj0sowRAd1X9D
 gCVPyAm2qf8vKqLN6sAmXHuKYnQWSfAolri1HvmwtWFwY2x/jb9CHAiMLchmSlRTV2AU=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vpWVg-0006gW-Mb for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Feb 2026 19:01:26 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id D397D14000A2;
 Mon,  9 Feb 2026 13:44:41 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Mon, 09 Feb 2026 13:44:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1770662681;
 x=1770749081; bh=HVhhygkkbTYhnT8bUYBWhIB/JMubQNQ+fbcAH1FscIs=; b=
 DRSo4+XrtK0JC5WTK66BtSJA3ZlYxdVZy/q+L8kFO9I2/0JVpgfNepmAT02Gopcd
 7o6fQvVqkS/kuIq2iVFmPzWcpups+0Uj6NEdB10ZIf8lsr333F7bOY8ih+CcvECW
 0NjLRIVE9ydkXLQvJjdlfX642kjr9xHH1Gq9DOmlJisfzFtOHv3M2CM2h/WFn1RW
 bX5qwRF7Kr4/uSh1+2CfRE24L5QMvIK0UOzGnwdueDYfuBkRwnm04nlU2qX0qyMu
 o6er1lnU3bRf1Gl7r0WpRZ8vh+jipe6Ytvi4nq/obYkJeJOTmQczBN8GVV1t/2ft
 KMujURRtcdpD0Ua6oEj7fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770662681; x=
 1770749081; bh=HVhhygkkbTYhnT8bUYBWhIB/JMubQNQ+fbcAH1FscIs=; b=G
 Lf/z7/Hly2Sq5WkDDjkpNrpuxENzIrWf+a4Ujz5Pls0QBqcROhhqicTvcuC3Vjz3
 5acd158ettq+W13ByxX/Y62iclcv9seTwaxbGu3zNuTRgPeJWTUtCOFWD+t0BT8W
 NoJdgzRFyS5pnf+/aj1Klevu09V68K/2y3h1MSbV+Yw6kziFThRGDJeiKSbtCYwA
 F8sR35rXunncyVPPIy+iffcxuUuyoaRAbV9gefKXnvOFRyGhgDFjrqFWCEi9mQCa
 4AD78MHs+FTvI4qTmxbb5oeCWrOsLT7mYO+SSXs6lnR8PZJeeRIb1v4odKeIVPYA
 NuhS+Ar6GnktNklAge15w==
X-ME-Sender: <xms:GSuKaUDkzBCIYWrCDmXTWbFvSZ3K5gmPdxAgdALpzAKFvmo5rKWpyg>
 <xme:GSuKaRWD3QKnxXw62L8IksOAMj8Ks_dDizqaJsftXL5u0X2JPlLUnzuiYl6EnKMk1
 kT2qGnPwQCvQsP6EPFXRTpAKKz_1NXaC6l3gShlCbq2W9uibRK516w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduleejheeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedfofgrrhhk
 ucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtg
 grqeenucggtffrrghtthgvrhhnpeelvddvleeuieevhefgudekleetheffvdejiedtkedv
 tdefffehhfdvfffffeffveenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgihhthh
 husgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprhgtph
 htthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggvrhgvkhhjohhh
 nhdrtghlrghrkhesghhmrghilhdrtghomhdprhgtphhtthhopehvihhshhhnuhhotghvse
 hgmhgrihhlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpdhrtghp
 thhtohephhgrnhhsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepvhhsrghnkhgrrh
 eslhgvnhhovhhordgtohhmpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslhhi
 nhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehisehrohhn
 ghdrmhhovgdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrgh
X-ME-Proxy: <xmx:GSuKaRkpKfVJ1KidfRMCp6DupXrCgdutX2lu2DMKZgsoTwv3JzL28Q>
 <xmx:GSuKaYvIY-XuOUP1VPKziqejfpsrUhyB8u7kis-CiY2TMAd7mA0Yqg>
 <xmx:GSuKaUpgmIv4hRm1Bbt90HW4P2Z8692WnHXCWMVoqOmI7WZISuNYjA>
 <xmx:GSuKaWfmzAP4SHFT3KfNJP0O--cN9AhA4M4n-ys5HT9zUfZFvAEFlg>
 <xmx:GSuKaTpFKtrrSpHKsXFH0nVzukJJ1MD-0qVaVynqo3V0JrTBjWWzGpDg>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 249982CE0072; Mon,  9 Feb 2026 13:44:41 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ASaOPSC57OEF
Date: Mon, 09 Feb 2026 13:44:19 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Rong Zhang" <i@rong.moe>, "Hans de Goede" <hansg@kernel.org>,
 "Vishnu Sankar" <vishnuocv@gmail.com>
Message-Id: <1acdc04a-e692-4ea6-8580-13f0b6d24f44@app.fastmail.com>
In-Reply-To: <69b9a9df97f4d10e2d11d6b0eb81bbf41fb4cbde.camel@rong.moe>
References: <20260203232219.11683-1-vishnuocv@gmail.com>
 <30354f74-91c0-4fd6-82b1-15f79ae7a60f@kernel.org>
 <1dbfcf656cdb4af0299f90d7426d2ec7e2b8ac9e.camel@rong.moe>
 <255c1844-4992-4a7d-9519-39071a208a98@app.fastmail.com>
 <69b9a9df97f4d10e2d11d6b0eb81bbf41fb4cbde.camel@rong.moe>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Rong On Mon, Feb 9, 2026, at 1:14 PM,
 Rong Zhang wrote:
 > Hi Mark, > > Thanks for your reply. > > On Mon, 2026-02-09 at 10:46 -0500,
 Mark Pearson wrote: >> >> On Sun, Feb 8, 2026, at 3:58 PM, Rong Zhang wr
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vpWVg-0006gW-Mb
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Add Auto mode support
 with dynamic max_brightness
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.90 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_RECIPIENTS(0.00)[m:i@rong.moe,m:hansg@kernel.org,m:vishnuocv@gmail.com,m:linux-kernel@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:vsankar@lenovo.com,m:ibm-acpi-devel@lists.sourceforge.net,m:derekjohn.clark@gmail.com,m:hmh@hmh.eng.br,m:ilpo.jarvinen@linux.intel.com,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[squebb.ca];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[rong.moe,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,squebb.ca:s=fm1,messagingengine.com:s=fm3];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FREEMAIL_CC(0.00)[vger.kernel.org,lenovo.com,lists.sourceforge.net,gmail.com,hmh.eng.br,linux.intel.com];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,squebb.ca:-,messagingengine.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[app.fastmail.com:mid]
X-Rspamd-Queue-Id: 54BFF113E80
X-Rspamd-Action: no action

VGhhbmtzIFJvbmcKCk9uIE1vbiwgRmViIDksIDIwMjYsIGF0IDE6MTQgUE0sIFJvbmcgWmhhbmcg
d3JvdGU6Cj4gSGkgTWFyaywKPgo+IFRoYW5rcyBmb3IgeW91ciByZXBseS4KPgo+IE9uIE1vbiwg
MjAyNi0wMi0wOSBhdCAxMDo0NiAtMDUwMCwgTWFyayBQZWFyc29uIHdyb3RlOgo+PiAKPj4gT24g
U3VuLCBGZWIgOCwgMjAyNiwgYXQgMzo1OCBQTSwgUm9uZyBaaGFuZyB3cm90ZToKPj4gPiBIaSBI
YW5zLCBWaXNobnUgYW5kIE1hcmssCj4+ID4gCj4+ID4gT24gU3VuLCAyMDI2LTAyLTA4IGF0IDEx
OjU0ICswMTAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+PiA+ID4gSGkgVmlzaG51LAo+PiA+ID4g
Cj4+ID4gPiBPbiA0LUZlYi0yNiAwMDoyMiwgVmlzaG51IFNhbmthciB3cm90ZToKPj4gPiA+ID4g
RHluYW1pY2FsbHkgZGV0ZWN0IGtleWJvYXJkIGJhY2tsaWdodCBjYXBhYmlsaXRpZXMgYW5kIHNl
dAo+PiA+ID4gPiBtYXhfYnJpZ2h0bmVzcyBjb3JyZWN0bHkgKDIgZm9yIG9sZCBtb2RlbHMsIDMg
Zm9yIG5ldyBtb2RlbHMKPj4gPiA+ID4gd2l0aCBBdXRvIG1vZGUpLgo+PiA+ID4gCj4+ID4gPiBU
aGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCj4+ID4gPiAKPj4gPiA+IElmIEkgdW5kZXJzdGFuZCB0
aGlzIGNvcnJlY3RseSwgd3JpdGluZyAzIGFzIGxldmVsIGRvZXMgbm90Cj4+ID4gPiBtYWtlIHRo
ZSBiYWNrbGlnaHQgbW9yZSBicmlnaHQgdGhlbiB3cml0aW5nIDIsIGJ1dCBpbnN0ZWFkCj4+ID4g
PiBpdCBwdXRzIHRoZSBiYWNrbGlnaHQgaW4gc29tZSBhdXRvIG1vZGUgPwo+PiA+ID4gCj4+ID4g
PiBJZiBJJ3ZlIHRoYXQgY29ycmVjdCB0aGVuICB1c2Vyc3BhY2Ugc2hvdWxkIGtlZXAgc2VlaW5n
Cj4+ID4gPiBhIHJhbmdlIG9mIDAgLSAyIGFuZCB0aGUgc3BlY2lhbCBhdXRvIG1vZGUgdmFsdWUg
c2hvdWxkCj4+ID4gPiBiZSByZXBvcnRlZCAvIGJlIG1hZGUgc2V0dGFibGUgdGhyb3VnaCBhIHNl
cGFyYXRlIGFsc19lbmFibGVkCj4+ID4gPiBzeXNmcyBhdHRyaWJ1dGUgdW5kZXIgdGhlIExFRCBj
bGFzcyBkZXZpY2UuIFNlZToKPj4gPiA+IAo+PiA+ID4gRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGlu
Zy9zeXNmcy1wbGF0Zm9ybS1kZWxsLWxhcHRvcAo+PiA+ID4gCj4+ID4gPiBZb3UgY2FuIGFkZCBl
eHRyYSBhdHRyaWJ1dGVzIHRoZXJlIGJ5IHNldHRpbmcgdGhlIGdyb3Vwcwo+PiA+ID4gbWVtYmVy
IG9mIHRoZSBzdHJ1Y3QgbGVkX2NsYXNzZGV2LCBzZWUga2JkX2xlZF9ncm91cHNbXQo+PiA+ID4g
aW4gZHJpdmVycy9wbGF0Zm9ybS94ODYvZGVsbC9kZWxsLWxhcHRvcC5jLCBleGNlcHQgdGhhdAo+
PiA+ID4geW91IHNob3VsZCB1c2UgYSAuaXNfdmlzaWJsZSBjYWxsYmFjayB0byBvbmx5IHNob3cg
dGhpcwo+PiA+ID4gb24gaHcgd2hpY2ggc3VwcG9ydHMgaXQgYW5kIHlvdSBvbmx5IG5lZWQgMSBn
cm91cCB3aXRoCj4+ID4gPiAxIGF0dHJpYnV0ZS4KPj4gPiAKPj4gPiBXaGVuIEkgaW1wbGVtZW50
ZWQgImFsc19lbmFibGVkIiBmb3IgaWRlYXBhZC1sYXB0b3AsIE1hcmsgUGVhcnNvbgo+PiA+IHN1
Z2dlc3RlZCBpdCdkIGJldHRlciB0byBpbnRyb2R1Y2UgInNvbWV0aGluZyBzaW1pbGFyIHRvCj4+
ID4gTEVEX0JSSUdIVF9IV19DSEFOR0VEIsKgcmF0aGVyIHRoYW4gdXNpbmcgY3VzdG9tIGF0dHJp
YnV0ZXMsIGFzICJ0aGlzIGlzCj4+ID4gZ29pbmcgdG8gYmUgYSBjb21tb24gZmVhdHVyZSBhY3Jv
c3MgbXVsdGlwbGUgdmVuZG9ycyBpdCBtaWdodCBuZWVkCj4+ID4gZG9pbmcgYXQgYSBjb21tb24g
bGF5ZXIiLiBBbHNvLCBhdXRvIG1vZGUgY2FuIGJlIGFjdGl2YXRlZCBieSBIVyBhcyBhCj4+ID4g
cmVzdWx0IG9mIHVzZXIgaW5wdXQsIHNvIHdlIG5lZWQgYW4gYXBwcm9hY2ggdG8gbm90aWZ5IHVz
ZXJzcGFjZSBqdXN0Cj4+ID4gbGlrZSB3aGF0IExFRF9CUklHSFRfSFdfQ0hBTkdFRCBkb2VzLiBN
b3JlIGltcG9ydGFudGx5LCB0aGUgcmVhZCB2YWx1ZQo+PiA+IG9mIHRoZSBicmlnaHRuZXNzIGF0
dHJpYnV0ZSBiZWNvbWVzIG5vbnNlbnNlIHdoZW4gYXV0byBtb2RlIGlzIG9uLiBUaGlzCj4+ID4g
bWF0Y2hlcyB0aGUgc2VtYW50aWMgb2YgaHcgY29udHJvbCB0cmlnZ2VyLgo+PiA+IAo+PiA+IEkg
YWdyZWVkIHdpdGggTWFyayBhbmQgaGFkIGEgcHJvcG9zYWwgb2YgYWxsb3dpbmcgSFcgdG8gaW5p
dGlhdGUgYQo+PiA+IHRyYW5zaXRpb24gZnJvbSAibm9uZSIgdG8gaHcgY29udHJvbCB0cmlnZ2Vy
IGFuZCB2aWNlIHZlcnNhLiBTZWUgdGhlCj4+ID4gdGhyZWFkIGluCj4+ID4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzA4NTgwZWM1LTFkN2ItNDYxMi04YTNmLTc1YmMyZjQwYWFkMkBhcHAu
ZmFzdG1haWwuY29tLwo+PiA+IAo+PiA+IEkgaGFkbid0IHB1c2ggaXQgZnVydGhlciBkdWUgdG8g
b3RoZXIgdGhpbmdzIHRha2luZyB0aGUgcHJpb3JpdHksCj4+ID4gdGhvdWdoIEkgYWxyZWFkeSBo
YWQgYSBQb0MgYmFjayB0byB0aGVuLiBJIHF1aWNrbHkgcmViYXNlZCB0aGUgUG9DIHdpdGgKPj4g
PiBzb21lIGNsZWFudXBzIGFuZCBwdXQgaXQgaGVyZSBmb3IgcHJldmlldzoKPj4gPiAKPj4gPiBo
dHRwczovL2dpdGh1Yi5jb20vUm9uZ3JvbmdnZzkvbGludXgvdHJlZS9sZWRzLXRyaWdnZXItaHct
Y2hhbmdlZAo+PiA+IAo+PiA+IEkgd2lsbCBmaW5kIHNvbWUgdGltZSB0byByZWZpbmUgaXQgYW5k
IHNlbmQgYW4gUkZDIHNlcmllcy4KPj4gPiAKPj4gSGkgUm9uZywKPj4gCj4+IFRoYW5rcyBmb3Ig
aGlnaGxpZ2h0aW5nIHRoaXMgKGhhdmUgdG8gYmUgaG9uZXN0IC0gSSdkIGZvcmdvdHRlbiB3ZSdk
IGRpc2N1c3NlZCBpdCkuCj4+IEkgdGhpbmsgbXkgc3VnZ2VzdGlvbiBtYXkgaGF2ZSBiZWVuIHVu
ZGVyc3Rvb2QgYW5kIEkgd29uZGVyIHlvdXIgYXBwcm9hY2ggaXMgbW9yZSBjb21wbGljYXRlZCB0
aGFuIG5lZWRlZC4KPgo+IElmIHRoZXJlIGlzIGEgbWVjaGFuaXNtIHRvIHNldCB0aGUgYnJpZ2h0
bmVzcyBvbiBzcGVjaWZpYyBldmVudHMgb3IKPiBjb25kaXRpb25zLCBpdCBpcyBhIHRyaWdnZXIu
IElmIHRoZSB0cmlnZ2VyIGlzIGNvbnRyb2xsZWQgYnkgaGFyZHdhcmUsCj4gaXQncyBhIGh3IGNv
bnRyb2wgdHJpZ2dlci4gVGhhdCdzIHdoeSBJIHByb3Bvc2UgdXNpbmcgYSBwcml2YXRlIGh3Cj4g
Y29udHJvbCB0cmlnZ2VyIHRvIHJlcHJlc2VudCB0aGlzIHRvIG1ha2UgaXQgc2VtYW50aWNhbGx5
IGNvcnJlY3QuCj4KCkFoLiBJIHRoaW5rIGl0IHdpbGwgYmUgY29uZnVzaW5nIGZvciBtb3N0IHVz
ZXJzLiBUaGV5J3JlIG5vdCBnb2luZyB0byB0aGluayBvZiBpdCBhcyBhIHRyaWdnZXIgKHRoYXQn
cyBteSBndWVzcyBhbnl3YXkpCgo+PiBJIHdhcyB0aGlua2luZyB3ZSBhZGQgYSBuZXcgZmxhZyB0
byB0aGUgbGVkX2NsYXNzZGV2LiBlLmcKPj4gI2RlZmluZSBMRURfQVVUT19CUklHSFRORVNTICAg
ICAgICAgQklUKDI2KQo+Cj4gSW1wbGVtZW50aW5nIGl0IHRoaXMgd2F5IGlzIHN0aWxsIGNvbXBs
aWNhdGVkIGFzIGZhciBhcyBJIGNhbiBpbWFnaW5lOgo+Cj4gLSBBIG5ldyBhdHRyaWJ1dGUgdG8g
ZXhwb3NlIHRoZSBjYXBhYmlsaXR5IGFzIHlvdSd2ZSBzYWlkLgo+IC0gV2UgbmVlZCB0byBleHRl
bmQgYnJpZ2h0bmVzc19nZXQvYnJpZ2h0bmVzc19zZXRbX2Jsb2NraW5nXSBpbnRlcmZhY2VzCj4g
dG8gYWNjZXB0L2VtaXQgYSBzcGVjaWFsIGJyaWdodG5lc3MgdmFsdWUgdG8gcmVwcmVzZW50IGF1
dG8gbW9kZS4KPiAtIFdlIHNob3VsZCBoYW5kbGUgYnJpZ2h0bmVzcyBzZXR0aW5nIHJlcXVlc3Rz
IGZyb20gdXNlcnNhcGNlIGFuZCBmcm9tCj4gbGVkIHRyaWdnZXJzIHNlcGFyYXRlbHk6IHRoZSBm
b3JtZXIgY2FuIHB1dCB0aGUgTEVEIGludG8gYXV0byBtb2RlCj4gd2hpbGUgdGhlIGxhdHRlciBj
YW5ub3QuCj4gLSBEZXByZWNhdGUgYnJpZ2h0bmVzcyBhbmQgYnJpZ2h0bmVzc19od19jaGFuZ2Vk
IHdoaWxlIGludHJvZHVjaW5nIG5ldwo+IGF0dHJpYnV0ZXMuIFdlIGNhbid0IGV4dGVuZCBleGlz
dGluZyBhdHRyaWJ1dGVzIGFzIEkgd2lsbCBleHBsYWluCj4gbGF0ZXIuIFRoYXQncyB0aGUgbW9z
dCBmcnVzdHJhdGluZyBwYXJ0IDotLwo+Cj4gQW5kIHRoaXMgYXBwcm9hY2ggYmVjb21lcyBhIGJp
dCB3ZWlyZCBpZiBhIGZ1dHVyZSBTS1UgY29tZXMgd2l0aCBpdHMKPiBhdXRvIG1vZGUgdHVuYWJs
ZTogeW91IHdpbGwgaGF2ZSBzb21lIGRldmljZSBhdHRyaWJ1dGVzIHdoaWNoIGFyZSBvbmx5Cj4g
bWVhbmluZ2Z1bCB3aGVuIGF1dG8gbW9kZSBpcyBhY3RpdmUuIFRoaXMgaXMgYWxsIGJlY2F1c2Ug
dGhleSBhcmUKPiBmdW5kYW1lbnRhbGx5IHRyaWdnZXIgYXR0cmlidXRlcyBpbiB0aGUgZmlyc3Qg
cGxhY2UuLi4KPgo+PiBUaGVuIHRoZSBwbGF0Zm9ybSBkcml2ZXIgY2FuIHNldCB0aGlzIGZsYWcg
YW5kIGluIGxlZF9jbGFzc2Rldl9yZWdpc3Rlcl9leHQgd2UnZCBoYW5kbGUgaXQgYXBwcm9wcmlh
dGVseSB0byBjcmVhdGUgYSBzeXNmcyAoZS5nLiBhdXRvX2JyaWdodG5lc3NfY2FwYWJsZSkgbm9k
ZSBzbyB1c2VyIHNwYWNlIGtub3dzIGF1dG8gaXMgc3VwcG9ydGVkLgo+PiBPdGhlciB0aGFuIHRo
YXQ6Cj4+ICAtIFdoZW4gdGhlIGJyaWdodG5lc3MgaXMgcmVhZCBhbmQgYXV0b24gaXMgYmVpbmcg
dXNlZCAtIHJldHVybiAiYXV0byIgaW5zdGVhZCBvZiBhIHZhbHVlLiBIb3BlZnVsbHkgdGhhdCBk
b2Vzbid0IGJyZWFrIGFueXRoaW5nIGZvciB1c2VyIHNwYWNlPwo+Cj4gSXQgd2lsbCBsaWtlbHkg
YnJlYWsgc29tZXRoaW5nLsKgV2UgY2FuJ3QgZXh0ZW5kIGFuIGludGVyZmFjZSB3aXRoIG5ldwo+
IGRhdGEgdHlwZXMuCj4KPiBGb3IgZXhhbXBsZSwgZXhpc3RpbmcgdXNlcnNwYWNlIHByb2dyYW1z
IG1heSBoYXZlIGJlaW5nIHVzaW5nIHRoZXNlIGZvcgo+IGxvbmc6IAo+Cj4gLSBQT1NJWCBzaGVs
bDogWyAtZXEsIC1uZSwgLWd0LCAtZ2UsIC1sdCwgLWxlIF0KPiAtIEJhc2g6IGxldCwgKCggKSkK
PiAtIEM6IGF0b2koKSwgYXRvbCgpLCBhdG9sbCgpLCBmc2NhbmYoKSwgdmZzY2FuZigpCj4gLSBQ
eXRob246IGludCgpCj4gLSBSZWdleDogWzAtOV0sIFxkIChQQ1JFKSwgW1s6ZGlnaXQ6XV0gKFBP
U0lYKQo+IC0gLi4uIEFuZCBtb3JlIHNpbWlsYXIgdGhpbmdzIGRlYWxpbmcgd2l0aCBpbnRlZ2Vy
cwo+Cj4gSSB0aGluayBpdCdzIG5vdCB3b3J0aCBkZXByZWNhdGluZyB0aGUgZXhpc3RpbmcgaW50
ZXJmYWNlIGp1c3QgdG8KPiBpbnRyb2R1Y2Ugc29tZXRoaW5nIHRoYXQgaXMgbm90IGZ1bmRhbWVu
dGFsbHkgImJyaWdodG5lc3MiLgo+CgpZZWFoIC0gdGhhdCdzIGZhaXIuIFlvdSdyZSByaWdodCAt
IHdlIHNob3VsZG4ndCBjaGFuZ2UgdGhlIGJyaWdodG5lc3MgZmllbGQuCgpTbywgaG93IGFib3V0
IGFkZGluZyB0d28gc3lzZnMgbm9kZXMgdG8gdGhlIExFRCBjbGFzcz8KIC0gYXV0b19icmlnaHRu
ZXNzX2NhcGFibGUgLSBpbmRpY2F0ZXMgdGhlIExFRCBicmlnaHRuZXNzIGNhbiBnbyBpbnRvIGFu
IGF1dG8gY29udHJvbCBtb2RlCiAtIGF1dG9fYnJpZ2h0bmVzc19lbmFibGVkIC0gaW5kaWNhdGVz
IGlmIHRoZSBMRUQgaXMgaW4gdGhlIGF1dG9fYnJpZ2h0bmVzcyBjb250cm9sbGVkIHN0YXRlIG9y
IG5vdC4KClRoZW4gaXQncyB1cCB0byB0aGUgaW5kaXZpZHVhbCBkcml2ZXJzICh0aGlua3BhZC9p
ZGVhcGFkL3doYXRldmVyKSB0byBzZXQgdGhlIGZpZWxkcyBhcHByb3ByaWF0ZWx5IGFzIHRoZXkg
Y2hhbmdlIG1vZGVzLgpVc2VyIHNwYWNlIHdpbGwgbmVlZCBjaGFuZ2luZyB0byBoYW5kbGUgdGhl
c2UsIGJ1dCBzdWNoIGlzIGxpZmUuCgo+PiAgLSBXaGVuIHRoZSBicmlnaHRuZXNzIGlzIHNldCwg
eW91IGNhbiB1c2UgYSB2YWx1ZSBvciAnYXV0byIgYXMgeW91IGRlc2lyZSAoRG9jdW1lbnRhdGlv
biB3b3VsZCBuZWVkIHVwZGF0aW5nIHRvIGFsbG93IHRoaXMpCj4+IFJlYWxseSBJIHdhcyBqdXN0
IGxvb2tpbmcgZm9yIGEgd2F5IHRvIGFkdmVydGlzZSB0byB1c2VyIHNwYWNlIHRoYXQgYSBhdXRv
IG9wdGlvbiB3b3VsZCBiZSBzdXBwb3J0ZWQgOikKPgo+IFRoYXQncyBteSBnb2FsIHRvby4KPgo+
IEkgYWRtaXQgdGhhdCBteSBwcm9wb3NhbCBpcyBjb21wbGljYXRlZCBhbmQgbWF5IG5lZWQgYSBs
b3Qgb2YgdGltZSB0bwo+IG1ha2UgaXQgaW50byBpdHMgcmlnaHQgcGF0aC4gSXQgbWF5IGV2ZW4g
YmUgcmVqZWN0ZWQgYnkgTEVEIGZvbGtzLiBCdXQKPiBpdCdzIHRoZSBiZXN0IGFwcHJvYWNoIEkg
Y2FuIHRoaW5rIG9mIGNvbnNpZGVyaW5nIG91ciByZXF1aXJlbWVudHMgb24KPiB0aGUgaW50ZXJm
YWNlOgo+Cj4gMS4gSXQgc2hvdWxkbid0IGJyZWFrIGFueSBleGlzdGluZyBpbnRlcmZhY2VzLgo+
IDIuIEl0J3MgZXhwb3NlZCB0byB1c2Vyc3BhY2UgZm9yIGdldHRpbmcgb3Igc2V0dGluZyBpdHMg
c3RhdHVzLgo+IDMuIEhXIHN0YXR1cyB0cmFuc2l0aW9uIHNob3VsZCByZWFjaCB1c2Vyc3BhY2Ug
KHNpbWlsYXIgdG8KPiBMRURfQlJJR0hUX0hXX0NIQU5HRUQpLgoKSnVzdCB0byBjaGVjayAtIGZv
ciAjMyBkbyB5b3UgbWVhbiBpdCBzaG91bGQgcmVwb3J0IHRoZSBicmlnaHRuZXNzIGNoYW5nZXMg
d2hlbiBpdCdzIGluIGF1dG8gbW9kZSAoaS5lLiBpZiBpdCBnb3QgYnJpZ2h0ZXIgb3IgZGltbWVy
KTsgb3IgaWYgaXQgc2hvdWxkIGp1c3QgcmVwb3J0IGl0IHN3aXRjaGVkIGluL291dCBvZiBhdXRv
IG1vZGUuIApJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8gcmVwb3J0IGV2ZXJ5IGJyaWdodG5lc3Mg
c3RhdHVzIGNoYW5nZSAtIGFuZCBzd2l0Y2hpbmcgbW9kZXMgc2hvdWxkIGJlIHVzZXIgZGlyZWN0
ZWQgc28gaXMgbm8gZGlmZmVyZW50IHRvIGN1cnJlbnRseS4gQW0gSSBtaXNzaW5nIHNvbWV0aGlu
Zz8KClRoYW5rcwpNYXJrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9pYm0tYWNwaS1kZXZlbAo=
