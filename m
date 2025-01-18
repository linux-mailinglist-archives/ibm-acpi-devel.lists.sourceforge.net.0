Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA5EA15AE0
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 18 Jan 2025 02:34:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tYxin-00014k-JU;
	Sat, 18 Jan 2025 01:33:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tYxil-00014Y-Ky
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 18 Jan 2025 01:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qoddUFhq/lgON2Zrn1iVZyM28ggkXNmUyx7bGlTekec=; b=g6bp6Sw+Tw7R0h5BMGzCp2+/zO
 +vQt/pRMET+2GoSZ5jzSplBYVmOrGzhPG1fN0ioVSizFZy3ojnYUGoSP6I0JHYMakfaa7Luz8TXlK
 NsG4slvHJMJrI5C7oQIpMftHpykmFJABPLu4MDvusDaceZoJsL4JOg048BrZuzdaLru4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qoddUFhq/lgON2Zrn1iVZyM28ggkXNmUyx7bGlTekec=; b=U94U8uDWVkStMbEu79lJv3Yviv
 AdbwXOb2TbLwFx4pebpjfbft3Rtef6QYZD34xYPJ/bFT448JTWtSOSiIaS5ma0H4W1cBcEKP3dpOm
 1PSihQQ4W3Pb/6UuoY6ZTm/Fc4VKQSj6otcUXuRYPeKGoazq4eYrclB5GMAihxLmztDI=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYxik-0007tT-AY for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 18 Jan 2025 01:33:55 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 9F4E2114028A;
 Fri, 17 Jan 2025 20:33:43 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 17 Jan 2025 20:33:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1737164023;
 x=1737250423; bh=qoddUFhq/lgON2Zrn1iVZyM28ggkXNmUyx7bGlTekec=; b=
 4uwD3SzZFOTuBWvSX4NfJKGPzkVScMSn/np/K5qoL9qAi2H24Zx6FK2MOnemKvl3
 wGqo4b0f7Ca2pYrlosPA4cnYQfmJ2na4OHf5CF0tZfUWX86JgZ7NEY26MrUhCXXI
 ZJVw15KBeTpqvgmE9tYLgmYe2TwvVj2hkKvTI42pwa+DXU313xExlw5/sJ1/9HHt
 nYU69filcsOhceAuYe9pEbBwnBuM2Pi6uursxrkiBqeWBwnn72uRghfEGJBCFCB2
 0mKMV+yxAd3wYtOhTcFiej1GtbHO2GBKQubLMCI19i4JOTitYwbQg6Posr8SNv3I
 trsjMvcARdvTTim87Z+d8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1737164023; x=
 1737250423; bh=qoddUFhq/lgON2Zrn1iVZyM28ggkXNmUyx7bGlTekec=; b=I
 guSTfn2nmOdymXi8nqs2kLuHO2iSnM6gCzlq9lg9XSSnluonPqp9JOm6/zmLumCm
 0BeG+BK1D/cPik0hdy6xhmHXhFIXRQAaGu1gP9W8p4MBAuB+9a8sxTdt50DGjrCg
 8db0lIQ/janm0L8Z/crwCTgwD8m8BlcQj48q77tovGrUDpHI6H+19lFbiBM6g5BE
 DEAV409ia4y5HcMHVw+m3tcq2tleH47GgupV7IHayqWSo2o2ot2X9G3fZPA/JWxu
 PdZLvn82WFoExupjoOpndYeKbBJYONf+hlzdSKFvcrHsktvJ2y3S2iJTm+0SLRHE
 uDPjEilPkkyK4y9SRQGjQ==
X-ME-Sender: <xms:9QSLZzJDfwK9z9lh4G5tbskSHbo_ZIVlAEPX6NByfe_oiQtIMlZecQ>
 <xme:9QSLZ3KknPx7PNUSKWohxyKmcrWLcDtges34MA3KcwiS4tSjTDSRHiuSyHWNJafo2
 062T79gjLYrj-du5uE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudeigedgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdej
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpeegvdegueffhfdtleei
 gfejhffggfeivdejgeelueejuedtudetheejudehtdeitdenucffohhmrghinhepkhgvrh
 hnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtg
 hpthhtohepvdehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehshhihrghmqdhs
 uhhnuggrrhdrshdqkhesrghmugdrtghomhdprhgtphhtthhopehmrghrihhordhlihhmoh
 hntghivghllhhosegrmhgurdgtohhmpdhrtghpthhtohepihhkvgdrphgrnhestggrnhho
 nhhitggrlhdrtghomhdprhgtphhtthhopeguvghllhdrtghlihgvnhhtrdhkvghrnhgvlh
 esuggvlhhlrdgtohhmpdhrtghpthhtoheprghlvgigsggvlhhmgeeksehgmhgrihhlrdgt
 ohhmpdhrtghpthhtoheptghorhgvnhhtihhnrdgthhgrrhihsehgmhgrihhlrdgtohhmpd
 hrtghpthhtohepuggvrhgvkhhjohhhnhdrtghlrghrkhesghhmrghilhdrtghomhdprhgt
 phhtthhopehkuhhurhhtsgesghhmrghilhdrtghomhdprhgtphhtthhopehluhiimhgrgi
 himhhilhhirghnsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:9QSLZ7vI6LaPZIGEBG3Wx6fICiX4NEEO50LWvbd5e2b5L8ReI_htQA>
 <xmx:9QSLZ8blvIBfhB6vykIw_Zll7G0rGIhwZ572oDXZLjcn20Demo8ZYA>
 <xmx:9QSLZ6Z9qUnHa6jMAaQG2-uWvX-BFtZmjg-3ipsp-3JO--PxgVGB3w>
 <xmx:9QSLZwBA_O26KtWpSJ0bPzcPAgGNCCwYNOdLIQKDp4pqr0jyOorOOg>
 <xmx:9wSLZ2KkAQYmdZpST6FqIHbHP9mqkxq-NgMyz_5EclO8zUVH0oYpwfEj>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id AAF203C0066; Fri, 17 Jan 2025 20:33:41 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 17 Jan 2025 20:33:21 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Kurt Borja" <kuurtb@gmail.com>
Message-Id: <01d3c53e-666a-46d8-b629-ba8a089011ee@app.fastmail.com>
In-Reply-To: <f4e08213-0f42-4f35-a150-a75bf91537bf@app.fastmail.com>
References: <20250116002721.75592-1-kuurtb@gmail.com>
 <1eb2720a-c9af-4e5c-8df2-c4ce3c017d5c@app.fastmail.com>
 <3aab5072-f032-7458-56af-1d45e89a5d44@linux.intel.com>
 <D74IM4AZ87C9.1R1S1KOA89PX7@gmail.com>
 <f8678f9c-56c2-b3a9-f24d-04c9433dba9f@linux.intel.com>
 <f4e08213-0f42-4f35-a150-a75bf91537bf@app.fastmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Jan 17, 2025, at 3:45 PM, Mark Pearson wrote: > Hi,
    > > On Fri, Jan 17, 2025, at 12:19 PM, Ilpo Järvinen wrote: >> On Fri, 17
    Jan 2025, Kurt Borja wrote: >> >>> On Fri Jan 17, 2025 at 11:42 A [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [103.168.172.156 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [103.168.172.156 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [103.168.172.156 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1tYxik-0007tT-AY
Subject: Re: [ibm-acpi-devel] [PATCH v4 00/19] Hide platform_profile_handler
 from consumers
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
Cc: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, "Limonciello,
 Mario" <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Ike Panhc <ike.pan@canonical.com>, Alexis Belmonte <alexbelm48@gmail.com>,
 "Luke D . Jones" <luke@ljones.dev>, Lyndon Sanche <lsanche@lyndeno.ca>,
 Ai Chao <aichao@kylinos.cn>, "Derek J . Clark" <derekjohn.clark@gmail.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Gergo Koteles <soyer@irl.hu>, Len Brown <lenb@kernel.org>,
 Lee Chun-Yi <jlee@suse.com>, Hans de Goede <hdegoede@redhat.com>,
 Dell.Client.Kernel@dell.com, Joshua Grisham <josh@joshuagrisham.com>,
 Armin Wolf <W_Armin@gmx.de>, LKML <linux-kernel@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

CgpPbiBGcmksIEphbiAxNywgMjAyNSwgYXQgMzo0NSBQTSwgTWFyayBQZWFyc29uIHdyb3RlOgo+
IEhpLAo+Cj4gT24gRnJpLCBKYW4gMTcsIDIwMjUsIGF0IDEyOjE5IFBNLCBJbHBvIErDpHJ2aW5l
biB3cm90ZToKPj4gT24gRnJpLCAxNyBKYW4gMjAyNSwgS3VydCBCb3JqYSB3cm90ZToKPj4KPj4+
IE9uIEZyaSBKYW4gMTcsIDIwMjUgYXQgMTE6NDIgQU0gLTA1LCBJbHBvIErDpHJ2aW5lbiB3cm90
ZToKPj4+ID4gT24gVGh1LCAxNiBKYW4gMjAyNSwgTWFyayBQZWFyc29uIHdyb3RlOgo+Pj4gPgo+
Pj4gPiA+IEhpCj4+PiA+ID4gCj4+PiA+ID4gT24gV2VkLCBKYW4gMTUsIDIwMjUsIGF0IDc6Mjcg
UE0sIEt1cnQgQm9yamEgd3JvdGU6Cj4+PiA+ID4gPiBIaSA6KQo+Pj4gPiA+ID4KPj4+ID4gPiA+
IFRoZSBtZXJnZSB3aW5kb3cgaXMgYWJvdXQgdG8gb3Blbiwgc28gSSByZWJhc2VkIHRoaXMgcGF0
Y2hzZXQgb24gdG9wIG9mCj4+PiA+ID4gPiBwZHg4Ni9yZXZpZXctaWxwby1uZXh0IHRvIHBpY2sg
dXAgYWNlci13bWkgbGF0ZXN0IGNvbW1pdHMsIGluIGNhc2Ugd2UKPj4+ID4gPiA+IG1hbmFnZSB0
byBzcXVlZXplIHRoaXMgaW50byB2Ni4xNC4KPj4+ID4gPiA+Cj4+PiA+ID4gPiB+IEt1cnQKPj4+
ID4gPiA+IC0tLQo+Pj4gPiA+ID4gdjMgLT4gdjQ6Cj4+PiA+ID4gPgo+Pj4gPiA+ID4gWzA5LzE5
XQo+Pj4gPiA+ID4gICAtIFJlcGxhY2UgZXJyb3IgbWVzc2FnZSB3aXRoIGEgdXNlci1mcmllbmRs
eSBvbmUKPj4+ID4gPiA+Cj4+PiA+ID4gPiB2MzogCj4+PiA+ID4gPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9wbGF0Zm9ybS1kcml2ZXIteDg2LzIwMjUwMTE1MDcxMDIyLjQ4MTUtMS1rdXVydGJA
Z21haWwuY29tLwo+Pj4gPiA+ID4KPj4+ID4gPiA+IEt1cnQgQm9yamEgKDE5KToKPj4+ID4gPiA+
ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogUmVwbGFjZSAqY2xhc3NfZGV2IG1lbWJlciB3aXRo
IGNsYXNzX2Rldgo+Pj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBMZXQgZHJpdmVy
cyBzZXQgZHJ2ZGF0YSB0byB0aGUgY2xhc3MgZGV2aWNlCj4+PiA+ID4gPiAgIEFDUEk6IHBsYXRm
b3JtX3Byb2ZpbGU6IFJlbW92ZSBwbGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIgZnJvbSBjYWxsYmFj
a3MKPj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogQWRkIGBvcHNgIG1lbWJlciB0
byBoYW5kbGVycwo+Pj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBBZGQgYHByb2Jl
YCB0byBwbGF0Zm9ybV9wcm9maWxlX29wcwo+Pj4gPiA+ID4gICBwbGF0Zm9ybS9zdXJmYWNlOiBz
dXJmYWNlX3BsYXRmb3JtX3Byb2ZpbGU6IFVzZQo+Pj4gPiA+ID4gICAgIGRldm1fcGxhdGZvcm1f
cHJvZmlsZV9yZWdpc3RlcigpCj4+PiA+ID4gPiAgIHBsYXRmb3JtL3g4NjogYWNlci13bWk6IFVz
ZSBkZXZtX3BsYXRmb3JtX3Byb2ZpbGVfcmVnaXN0ZXIoKQo+Pj4gPiA+ID4gICBwbGF0Zm9ybS94
ODY6IGFtZDogcG1mOiBzcHM6IFVzZSBkZXZtX3BsYXRmb3JtX3Byb2ZpbGVfcmVnaXN0ZXIoKQo+
Pj4gPiA+ID4gICBwbGF0Zm9ybS94ODY6IGFzdXMtd21pOiBVc2UgZGV2bV9wbGF0Zm9ybV9wcm9m
aWxlX3JlZ2lzdGVyKCkKPj4+ID4gPiA+ICAgcGxhdGZvcm0veDg2OiBkZWxsLXBjOiBVc2UgZGV2
bV9wbGF0Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKCkKPj4+ID4gPiA+ICAgcGxhdGZvcm0veDg2OiBp
ZGVhcGFkLWxhcHRvcDogVXNlIGRldm1fcGxhdGZvcm1fcHJvZmlsZV9yZWdpc3RlcigpCj4+PiA+
ID4gPiAgIHBsYXRmb3JtL3g4NjogaHAtd21pOiBVc2UgZGV2bV9wbGF0Zm9ybV9wcm9maWxlX3Jl
Z2lzdGVyKCkKPj4+ID4gPiA+ICAgcGxhdGZvcm0veDg2OiBpbnNwdXJfcGxhdGZvcm1fcHJvZmls
ZTogVXNlCj4+PiA+ID4gPiAgICAgZGV2bV9wbGF0Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKCkKPj4+
ID4gPiA+ICAgcGxhdGZvcm0veDg2OiB0aGlua3BhZF9hY3BpOiBVc2UgZGV2bV9wbGF0Zm9ybV9w
cm9maWxlX3JlZ2lzdGVyKCkKPj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogUmVt
b3ZlIHBsYXRmb3JtX3Byb2ZpbGVfaGFuZGxlciBmcm9tIGV4cG9ydGVkCj4+PiA+ID4gPiAgICAg
c3ltYm9scwo+Pj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBNb3ZlIHBsYXRmb3Jt
X3Byb2ZpbGVfaGFuZGxlcgo+Pj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBDbGVh
biBwbGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIKPj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJv
ZmlsZTogQWRkIGRvY3VtZW50YXRpb24KPj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmls
ZTogQWRkIGEgcHJlZml4IHRvIGxvZyBtZXNzYWdlcwo+Pj4gPiA+ID4KPj4+ID4gPiA+ICAuLi4v
QUJJL3Rlc3Rpbmcvc3lzZnMtY2xhc3MtcGxhdGZvcm0tcHJvZmlsZSAgfCAgNDQgKysrKysKPj4+
ID4gPiA+ICBkcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jICAgICAgICAgICAgICAgfCAx
NzIgKysrKysrKysrKysrKy0tLS0tCj4+PiA+ID4gPiAgLi4uL3N1cmZhY2Uvc3VyZmFjZV9wbGF0
Zm9ybV9wcm9maWxlLmMgICAgICAgIHwgIDQ4ICsrLS0tCj4+PiA+ID4gPiAgZHJpdmVycy9wbGF0
Zm9ybS94ODYvYWNlci13bWkuYyAgICAgICAgICAgICAgIHwgMTE0ICsrKysrKy0tLS0tLQo+Pj4g
PiA+ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FtZC9wbWYvY29yZS5jICAgICAgICAgICB8ICAg
MSAtCj4+PiA+ID4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9wbWYuaCAgICAgICAg
ICAgIHwgICAzICstCj4+PiA+ID4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9zcHMu
YyAgICAgICAgICAgIHwgIDUxICsrKy0tLQo+Pj4gPiA+ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2
L2FzdXMtd21pLmMgICAgICAgICAgICAgICB8ICA1NSArKystLS0KPj4+ID4gPiA+ICBkcml2ZXJz
L3BsYXRmb3JtL3g4Ni9kZWxsL2FsaWVud2FyZS13bWkuYyAgICAgfCAgMzQgKystLQo+Pj4gPiA+
ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2RlbGwvZGVsbC1wYy5jICAgICAgICAgICB8ICA2MCAr
KystLS0KPj4+ID4gPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9ocC9ocC13bWkuYyAgICAgICAg
ICAgICAgfCAgODMgKysrKystLS0tCj4+PiA+ID4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvaWRl
YXBhZC1sYXB0b3AuYyAgICAgICAgIHwgIDQ1ICsrKy0tCj4+PiA+ID4gPiAgLi4uL3BsYXRmb3Jt
L3g4Ni9pbnNwdXJfcGxhdGZvcm1fcHJvZmlsZS5jICAgIHwgIDQ4ICsrKy0tCj4+PiA+ID4gPiAg
ZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jICAgICAgICAgIHwgIDM3ICsrLS0K
Pj4+ID4gPiA+ICBpbmNsdWRlL2xpbnV4L3BsYXRmb3JtX3Byb2ZpbGUuaCAgICAgICAgICAgICAg
fCAgMzcgKystLQo+Pj4gPiA+ID4gIDE1IGZpbGVzIGNoYW5nZWQsIDQ5NSBpbnNlcnRpb25zKCsp
LCAzMzcgZGVsZXRpb25zKC0pCj4+PiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtY2xhc3MtcGxhdGZvcm0tcHJvZmlsZQo+Pj4gPiA+ID4K
Pj4+ID4gPiA+Cj4+PiA+ID4gPiBiYXNlLWNvbW1pdDogZDk4YmY2YTZlZDYxYTgwNDdlMTk5NDk1
YjA4ODdjY2UzOTJmOGU1Ygo+Pj4gPiA+ID4gLS0gCj4+PiA+ID4gPiAyLjQ4LjEKPj4+ID4gPiAK
Pj4+ID4gPiBGb3IgdGhlIHNlcmllcyB1cCB0byB2NCBjb21taXQgMTUvMTk6Cj4+PiA+ID4gUmV2
aWV3ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bXBlYXJzb24tbGVub3ZvQHNxdWViYi5jYT4KPj4+ID4g
PiAKPj4+ID4gPiBJIG5lZWQgdG8gZ28gb3ZlciB0aGUgbGFzdCBmZXcgY29tbWl0cyBqdXN0IG9u
Y2UgbW9yZSwgYXMgdGhlcmUgYSBmZXcgCj4+PiA+ID4gcGllY2VzIEkgbmVlZCB0byBnZXQgbXkg
aGVhZCBhcm91bmQgLSBhbmQgSSdtIG5vdCBnb2luZyB0byBnZXQgaXQgZG9uZSAKPj4+ID4gPiB0
aGlzIGV2ZW5pbmcuIEhvcGUgaXQncyBPSyB0byBhZGQgcmV2aWV3IGZvciB0aGUgYml0cyB0aGF0
IEkgaGF2ZSBkb25lLgo+Pj4gPgo+Pj4gPiBJLCBmb3IgdGhlIGZpcnN0IHRpbWUgZXZlciwgdGVz
dGVkIGZpbHRlci1icmFuY2ggYW5kIGFmdGVyIHNvbWUgaW5pdGlhbCAKPj4+ID4gaGlja3VwcyBv
biBob3cgdG8gc3BlY2lmeSB0aGUgY29tbWl0IHJhbmdlLCBnb3QgeW91ciBSZXZpZXdlZC1ieXMg
YWRkZWQKPj4+ID4gd2l0aCBzaW5nbGUgY29tbWFuZCA6LSkuCj4+PiAKPj4+IEF3ZXNvbWUhIEkg
YmVsaWV2ZSBjb21taXQgMTUvMTkKPj4+IAo+Pj4gYTIxMzEwOGMwMWUwICgiQUNQSTogcGxhdGZv
cm1fcHJvZmlsZTogUmVtb3ZlIHBsYXRmb3JtX3Byb2ZpbGVfaGFuZGxlciBmcm9tIGV4cG9ydGVk
IHN5bWJvbHMiKQo+Pj4gCj4+PiBpcyBzdGlsbCBtaXNzaW5nIGEgcmV2LWJ5IGJ5IE1hcmssIGlm
IHRoZXJlIGlzIHN0aWxsIHRpbWUuCj4+Cj4+IFRoYW5rcyBmb3Igbm90aWNpbmcgdGhpcy4gSSBq
dXN0IHJlY2FsbGVkIHRoZSBwYXRjaCBudW1iZXJpbmcgd3JvbmcuCj4+Cj4+IEl0IHNob3VsZCBi
ZSBmaXhlZCBub3cuCj4+Cj4+IC0tIAo+PiAgaS4KPgo+IEkgZmluaXNoZWQgbXkgcmV2aWV3LCBh
bmQgbm8gY29uY2VybnMuIEZvciB0aGUgc2VyaWVzOgo+IFJldmlld2VkLWJ5OiBNYXJrIFBlYXJz
b24gPG1wZWFyc29uLWxlbm92b0BzcXVlYmIuY2E+Cj4KPiBOb3RlIC0gSSdtIGJ1aWxkaW5nIGFu
ZCB3aWxsIGdpdmUgaXQgYSBzbmlmZiB0ZXN0IHRvbywgYnV0IHRoYXQgd2lsbCAKPiB0YWtlIGEg
Yml0IGxvbmdlci4KPgo+IFRoYW5rcyBmb3IgeW91ciB3b3JrIG9uIHRoaXMgS3VydAo+ClJhbiB0
aGUgc2VyaWVzIG9uIGFuIFgxIENhcmJvbiBHMTIgYW5kIHByb2ZpbGVzIHdvcmtpbmcgd2VsbC4g
V2FzIGFibGUgdG8gY2hlY2sgdGhlIG5ldyBjbGFzcyBhbmQgZGlkbid0IGZpbmQgYW55IGlzc3Vl
cy4KRm9yIHRoZSBzZXJpZXM6ClRlc3RlZC1ieTogTWFyayBQZWFyc29uIDxtcGVhcnNvbi1sZW5v
dm9Ac3F1ZWJiLmNhPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vaWJtLWFjcGktZGV2ZWwK
