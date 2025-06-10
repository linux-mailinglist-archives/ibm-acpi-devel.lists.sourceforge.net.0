Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A90AD3C54
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 17:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdT4lrDMjlHRNbtiR54UH25mO5JrLnOgx5Oqt5z2lbI=; b=OR01dMDvTWzF22ybvIJaBwBcn+
	qtbSss9pDy3g7XBLngAKqKlZaRRkFUHdZUM9tgs9puzvkxOSqDVpjAhi0awlQ4+EXW1qJsUL8BEY/
	97nHXKUT1doSKvLPBSxsdSrMVZxYOmRYmFif4vgWZs66QjoXzpVxiyLb9j5LpIOe05mg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP0dE-0005iD-9v;
	Tue, 10 Jun 2025 15:11:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uP0dD-0005i5-8l
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 15:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0KTzhdLUwJk/RA13SFXN+xVrwh40xkCwJtg+vK9uD0=; b=bjoHItpSA9sEPyZueBctyUnfji
 gYzg+TWKJGNAMf891z3IBQFgDuJ2d0nA0MwiLsiPM/DJ1nzuRU1LGddf6mRqyXF1mofHS40hMkwBI
 epl3kwrqHhrV6EIdMQ78YXoT5AswQhZLxVJfnfWNpUlZ/onyVCw+SknG8RYbI1o9kzT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b0KTzhdLUwJk/RA13SFXN+xVrwh40xkCwJtg+vK9uD0=; b=jOJnZ+Lr61+KfUDvgkrh6tVsv4
 N/E1Ih6hiyV4P5/15236+8pFxATkkVturSD17RcbnhCIprphnHkCu/+ydGqEAhfVeuPlWOOGjWMbx
 ES+y+R9m7R6V4eNoFPE4ntmZZSE+k/OvrkG26ag6GyBgZZyGM3Oywp97gRxvmnLh1nrE=;
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP0dB-0002hP-QM for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 15:11:19 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 3F4692540105;
 Tue, 10 Jun 2025 08:29:11 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Tue, 10 Jun 2025 08:29:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749558551;
 x=1749644951; bh=b0KTzhdLUwJk/RA13SFXN+xVrwh40xkCwJtg+vK9uD0=; b=
 SQHIPIgZzfBrshp4cxz+AB5A778efV2gH0zQ2/lJ9RPmwKPasv3t/YtcYc8G+Mqh
 ULw6AXTRxXrLL0R0eT0Y+PO3OX+Bu5msiAmyLY640iaXQW7gNqKjk9MdT26pkah6
 8FaPOwmoiUHB84BqvGAFPX8ZdGT8jXh7dLA6Nzr5gVLHb1d/tmPwk1V4rSodEJoC
 VBccAx1AYw6h8/p/LdL8DKVjjC3IhZuQlRFEohbwbk5rzhedtoXmzhZ3ViokvutE
 HMryuSGG1x6x+Fpg9cC8aFIWTyGUHg1Ve2J3lkY32/ietD12FxfriHNRMuwSC1z9
 E+/5IziFbmxUQR7JgHmqHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749558551; x=
 1749644951; bh=b0KTzhdLUwJk/RA13SFXN+xVrwh40xkCwJtg+vK9uD0=; b=H
 zuuaZn9g6Q7jc7zlV7wtU/xVlh4ExQcCROsAxd5szo+vDar+59MY5uBIkm3lE8aD
 vgYnDVKN0KDlmnbIXVVmsbuRFlbxjbTxDqsqhDaXuVQnn/v58GMKDzO7Hb4RMHs8
 PWxOLz3T46MhzHyYBW94mlF88OtaH9GU9P39GRMyZ/3jphG5mhubjngFwcwB+Pzg
 A0zAzfh1fFx+TjhF6FJgoBzUWbncJZ9EbaUtgxj6DnKR2R7u3Md0qafqqA7eUMo6
 DeVmxIVoJebyMYzMv8cS0a0GMKqt7is3ZSHJ64RMq7uMHgs8A41Ljk8CG/wkrpwG
 MDDV4TsVT8K+zImFI+Hyw==
X-ME-Sender: <xms:FiVIaD1p4SHd_Ol7AIJrdF3aCDwxTwnOzEIeR-C0lCPLLQX5qUOEqQ>
 <xme:FiVIaCG5uCPvHYYfdSIAp5AbFmhEI9uqQqxboi9Jrak6CVy9CNNpA35eHyERPTxFK
 ZyEv6jdOOIwx1K4ECY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddutdejgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthhqredtredt
 jeenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhepgedvgeeufffhtdel
 iefgjefhgffgiedvjeegleeujeeutdduteehjeduhedtiedtnecuffhomhgrihhnpehkvg
 hrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprh
 gtphhtthhopeduvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepihhkvghprghn
 hhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohepfigprghrmhhinhesghhmgidruggvpd
 hrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpdhrtghpthhtoheplhhkphesihhn
 thgvlhdrtghomhdprhgtphhtthhopegrnhgurhhihidrshhhvghvtghhvghnkhhosehlih
 hnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnhes
 lhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghpihdquggvvh
 gvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopegtohhr
 sggvtheslhifnhdrnhgvthdprhgtphhtthhopehhuggvghhovgguvgesrhgvughhrghtrd
 gtohhm
X-ME-Proxy: <xmx:FiVIaD7RxmtHxMynnUN8zHb7dflxNnYKtL1YzN2d5z3nArN4N6r5RQ>
 <xmx:FiVIaI03sHHcoqn41xDZOXyD7KpDhGFmAPuFdUMlbPACTMpmGt_XIQ>
 <xmx:FiVIaGEZMHKlc1Ma8crv7vr0ybroCqlOU4sVUmImkV0R3xkL9huROg>
 <xmx:FiVIaJ-QmtmUwgm5Iosg0B3oz9qxAvmOe9bd0YyudIq4vywN8Nwr0w>
 <xmx:FyVIaNUPQ_RaKZ61HuNj6fZFZuijvSnE6BDgT_fH-FZ0-iXL4YYD63WG>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 09BB62CE0063; Tue, 10 Jun 2025 08:29:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T95b0e86a2866f664
Date: Tue, 10 Jun 2025 08:28:49 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <f3b5c138-5576-4c01-b177-7450f1e91d24@app.fastmail.com>
In-Reply-To: <b792059e-44d2-82c0-574c-76c3f6a3129d@linux.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-2-mpearson-lenovo@squebb.ca>
 <b792059e-44d2-82c0-574c-76c3f6a3129d@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo, On Tue, Jun 10, 2025, at 3:35 AM, Ilpo Järvinen
   wrote: > On Mon, 9 Jun 2025, Mark Pearson wrote: > >> Fix issues reported
   by kernel test robot. >> - Require DMI for think-lmi. >> - Check return from
    [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
X-Headers-End: 1uP0dB-0002hP-QM
Subject: Re: [ibm-acpi-devel] [PATCH v3 2/2] platform/x86: thinklmi:
 improved DMI handling
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
Cc: Armin Wolf <W_Armin@gmx.de>, kernel test robot <lkp@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgSWxwbywKCk9uIFR1ZSwgSnVuIDEwLCAyMDI1LCBhdCAzOjM1IEFNLCBJbHBvIErDpHJ2aW5l
biB3cm90ZToKPiBPbiBNb24sIDkgSnVuIDIwMjUsIE1hcmsgUGVhcnNvbiB3cm90ZToKPgo+PiBG
aXggaXNzdWVzIHJlcG9ydGVkIGJ5IGtlcm5lbCB0ZXN0IHJvYm90Lgo+PiAgLSBSZXF1aXJlIERN
SSBmb3IgdGhpbmstbG1pLgo+PiAgLSBDaGVjayByZXR1cm4gZnJvbSBnZXR0aW5nIHNlcmlhbCBz
dHJpbmcKPj4gCj4+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT4KPj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjUw
NjA2MjMxOS5GMElwRHhGNi1sa3BAaW50ZWwuY29tLwo+PiAKPj4gU2lnbmVkLW9mZi1ieTogTWFy
ayBQZWFyc29uIDxtcGVhcnNvbi1sZW5vdm9Ac3F1ZWJiLmNhPgo+PiAtLS0KPj4gIC0gTmV3IHBh
dGNoIGFkZGVkIHRvIHNlcmllcy4KPj4gCj4+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9sZW5vdm8v
S2NvbmZpZyAgICAgfCAxICsKPj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2xlbm92by90aGluay1s
bWkuYyB8IDggKysrKystLS0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L2xl
bm92by9LY29uZmlnIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvbGVub3ZvL0tjb25maWcKPj4gaW5k
ZXggYTRiNTY1MjgzNzY4Li4yMDdkZDdmODhlZDAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGxh
dGZvcm0veDg2L2xlbm92by9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L2xl
bm92by9LY29uZmlnCj4+IEBAIC0xOTcsNiArMTk3LDcgQEAgY29uZmlnIFRISU5LUEFEX0FDUElf
SE9US0VZX1BPTEwKPj4gIGNvbmZpZyBUSElOS1BBRF9MTUkKPj4gIAl0cmlzdGF0ZSAiTGVub3Zv
IFdNSS1iYXNlZCBzeXN0ZW1zIG1hbmFnZW1lbnQgZHJpdmVyIgo+PiAgCWRlcGVuZHMgb24gQUNQ
SV9XTUkKPj4gKwlkZXBlbmRzIG9uIERNSQo+PiAgCXNlbGVjdCBGV19BVFRSX0NMQVNTCj4+ICAJ
aGVscAo+PiAgCSAgVGhpcyBkcml2ZXIgYWxsb3dzIGNoYW5naW5nIEJJT1Mgc2V0dGluZ3Mgb24g
TGVub3ZvIG1hY2hpbmVzIHdob3NlCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4
Ni9sZW5vdm8vdGhpbmstbG1pLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni9sZW5vdm8vdGhpbmst
bG1pLmMKPj4gaW5kZXggMTQzZDlmZGVkYjY1Li44ZjcwYzYwZjc5MWYgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvcGxhdGZvcm0veDg2L2xlbm92by90aGluay1sbWkuYwo+PiArKysgYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni9sZW5vdm8vdGhpbmstbG1pLmMKPj4gQEAgLTc3Miw2ICs3NzIsNyBAQCBz
dGF0aWMgc3NpemVfdCBjZXJ0aWZpY2F0ZV9zdG9yZShzdHJ1Y3Qga29iamVjdCAqa29iaiwKPj4g
IAlzdHJ1Y3QgdGxtaV9wd2Rfc2V0dGluZyAqc2V0dGluZyA9IHRvX3RsbWlfcHdkX3NldHRpbmco
a29iaik7Cj4+ICAJZW51bSBjZXJ0X2luc3RhbGxfbW9kZSBpbnN0YWxsX21vZGUgPSBUTE1JX0NF
UlRfSU5TVEFMTDsKPj4gIAljaGFyICphdXRoX3N0ciwgKm5ld19jZXJ0Owo+PiArCWNvbnN0IGNo
YXIgKnNlcmlhbDsKPj4gIAljaGFyICpzaWduYXR1cmU7Cj4+ICAJY2hhciAqZ3VpZDsKPj4gIAlp
bnQgcmV0Owo+PiBAQCAtNzg5LDkgKzc5MCwxMCBAQCBzdGF0aWMgc3NpemVfdCBjZXJ0aWZpY2F0
ZV9zdG9yZShzdHJ1Y3Qga29iamVjdCAqa29iaiwKPj4gIAkJCXJldHVybiAtRUFDQ0VTOwo+PiAg
Cj4+ICAJCS8qIEZvcm1hdDogJ3NlcmlhbCMsIHNpZ25hdHVyZScgKi8KPj4gLQkJYXV0aF9zdHIg
PSBjZXJ0X2NvbW1hbmQoc2V0dGluZywKPj4gLQkJCQkJZG1pX2dldF9zeXN0ZW1faW5mbyhETUlf
UFJPRFVDVF9TRVJJQUwpLAo+PiAtCQkJCQlzZXR0aW5nLT5zaWduYXR1cmUpOwo+PiArCQlzZXJp
YWwgPSBkbWlfZ2V0X3N5c3RlbV9pbmZvKERNSV9QUk9EVUNUX1NFUklBTCk7Cj4+ICsJCWlmICgh
c2VyaWFsKQo+PiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4KPiBUaGlzIHNob3VsZCBub3QgcmV0dXJu
IC1FSU5WQUwgYXMgaXQgaXMgbm90IGEgcHJvYmxlbSB3aXRoIHRoZSBpbnB1dCAKPiBwYXJhbWV0
ZXJzLiBQZXJoYXBzIC1FTk9ERVYgd291bGQgbWFrZSBzZW5zZSBpbnN0ZWFkPwo+CgpHb29kIHBv
aW50LgpVbmxlc3MgQW5keSBzdHJvbmdseSB0aGlua3MgSSBzaG91bGQgZHJvcCB0aGlzIGJpdCwg
SSdsbCBmaXggaW4gdGhlIG5leHQgdmVyc2lvbgoKVGhhbmtzCk1hcmsKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5n
IGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
