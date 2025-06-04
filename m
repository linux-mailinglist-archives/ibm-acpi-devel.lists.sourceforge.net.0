Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 895E7ACE1C9
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  4 Jun 2025 17:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UhtIK8KXaFE0ciFtipHvDuKLFUIzlhwiClpJ4n1LITw=; b=JK+IdOJRnq0w5Mh1P/p/NzXxie
	s0KiQ9QTkEbJZ+n3h28UKUog51Qgm34bn7ZK6+/wCixZcwaiH4YeyFlDSW2WuW1bYuLnzEmMvVnoH
	qmfn8Y4huh9qIprj8m3uVnJ6MOBb8Hy4cSeuIRiDCi1FCXfn4CwBUXBZBBEKNtsB3e2c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uMqNo-000415-1A;
	Wed, 04 Jun 2025 15:50:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gdamjan@gmail.com>) id 1uMqNm-00040t-Qa
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 04 Jun 2025 15:50:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qFWr79JXh9UhuN0hsembFTfgWFvajnT+YaTKaHw1PxY=; b=DE3x55RA0zq/CMcnvJH7OwokF7
 4zV99LTP/ahy31kKENnjRyoEhlchb5aB/lBEfNV02Zdb0rLzcFOgVxrUcA/V7QrpMV7O34yFj6O5C
 5lB0e5ODkYx99JiyGUhMjUnrQM8YX6Zft1M4sx3m4S2dXwBxGguNmqJTjdnS5kgplDos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qFWr79JXh9UhuN0hsembFTfgWFvajnT+YaTKaHw1PxY=; b=WFwz1Y61TaWac21oxjlFJb7qM1
 cSV1O4Ad9Xsr3KoSxlbcHsMctnhApzCcDk1J0gEphXLJl5aYY/EGksu2MwJ5jOw0HlToYwYuPOlmr
 Z/3nwtPkIWz4L5Ieny1TYLUyxO18p8PsdzDpy+5TAL/UkTl0TsMlgFQO6Ps7q9nf8zzU=;
Received: from mail-yb1-f170.google.com ([209.85.219.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uMqNm-00069D-6b for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 04 Jun 2025 15:50:26 +0000
Received: by mail-yb1-f170.google.com with SMTP id
 3f1490d57ef6-e8134dee405so24563276.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 04 Jun 2025 08:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749052220; x=1749657020; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qFWr79JXh9UhuN0hsembFTfgWFvajnT+YaTKaHw1PxY=;
 b=GxDKLscLMzvNvbi3A4R3cLKJx+gkcahCwdTmDEv3JSUK6HxhbSGkfyrFb+jOrxTa/H
 T18x9CpfmA55TrjKJ+FcNth7dGsdamX1SNxpswcjogtNVx+WshysdicDpQDfnzb4us9y
 5Fx0oum+NaiIOquZTPr14TdFXV92o4xlLPMOEoo1tx6iRmTnEWz+BpXtRcwzs4SwnJyt
 chg+SozLk3/Pw8gjt0mNMJ+wwyDKnbu6C3dEKMKfK9PShUxnJRikQIzhjGsj5p6cD/6I
 bw7jF2SL7iVNg/yqlleQLjGbI+blxz6iePRYqlxfp6IJT2oBSznNcL4zs4Y8FhsFZhSJ
 R61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749052220; x=1749657020;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qFWr79JXh9UhuN0hsembFTfgWFvajnT+YaTKaHw1PxY=;
 b=kgMUzv0LKlv8UhYLETe6RPnwtorvQ/6a+5bylFPHx8XLSeWbp+kqN4wBYZ+sVuTF7P
 bO5UA9Wl0yRANHGi4EPz75hdSWAOVn5VTAF6drDsejgwD6KZ8YfLONbJRTikQhs+eQKE
 GeO0kuqBZtmH7HIALAEEiaD75dMuOJHykR+JX/YF18fQWJEatxilWmAI691if26V5cbb
 6SCJlNTUmPPCpmZoyC8e6SuvVAV7jzlj2lyeWn7aInq3g0i0pGzSZDqOP2HjsU/yZT46
 JogCmm2iET9OxlxVBtdELFzo/vRp0TLSJrt94AgCAL6wsqDnrd/pzgU0UxAHzJSQCj64
 /6iQ==
X-Gm-Message-State: AOJu0YxHX4i+cc814hXEBHJ+tiSp3C76BN7HYzrXpOifUAbyuRwy/Izv
 TV0jJS1inh1U7ExHZut3qyan+oQ/6BVL2XgDLYuU8QisEUOyylbjqEXkRqOKuixiQuYenwjUEGW
 gQOeYsYfMmpckVlaA8wt0XQZ7J2SEZlSTT/bX
X-Gm-Gg: ASbGncuSNyvtGaPqn2R7Oeu6bv2nHrUIJmQwi68uPR+azpILEeXbup8mu5e8afoKGno
 DMXHBxidL1RtjG+sFjsfjTtBkTfJR1FBdW5FtNaCL60VYfwffRYr/Xe6xqeTDYKjlPvvaC2l1hW
 ypGXXP1xWMuvD7C9MXcJ9xSDSQ1tXl6DkSUeq40ptbnB4=
X-Google-Smtp-Source: AGHT+IFSFTlLLcoZ7wywGeoisC6BZlqyhxIbDa9wVschMLTXE5F9+MbmLxjonfa0UZRN69ID7OG0ZwPy0k7KZ3hVe8w=
X-Received: by 2002:a05:6902:c0a:b0:e7d:59e0:f65e with SMTP id
 3f1490d57ef6-e8179c1d540mr4524479276.1.1749052220061; Wed, 04 Jun 2025
 08:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEk1YH7cj=UH5DPCscXZdj8OTA6D+7AzyOS8XpPFYqvkXCE6JQ@mail.gmail.com>
 <242f96d8-0850-4642-8492-deb98b1111d7@app.fastmail.com>
In-Reply-To: <242f96d8-0850-4642-8492-deb98b1111d7@app.fastmail.com>
From: Damjan Georgievski <gdamjan@gmail.com>
Date: Wed, 4 Jun 2025 17:50:08 +0200
X-Gm-Features: AX0GCFv8oOmGpuoWx4eAoe351QJ0oF9N-WmuCIzGw7qwotaLbxSABzfNg57vArU
Message-ID: <CAEk1YH4k9hNk7=c9_9J5OwOSsQfwErSve602dR1mDP1YVVaJxA@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2 Jun 2025 at 16:34, Mark Pearson wrote: > > On Fri, 
 May 30, 2025, at 5:39 PM, Damjan Georgievski wrote: > > On the Thinkpad X9-14
 Gen 1 (2025) > > DMI: LENOVO 21QA0048RM/21QA0048RM, BIOS N4 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gdamjan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.219.170 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.219.170 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.170 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1uMqNm-00069D-6b
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

T24gTW9uLCAyIEp1biAyMDI1IGF0IDE2OjM0LCBNYXJrIFBlYXJzb24gPG1wZWFyc29uLWxlbm92
b0BzcXVlYmIuY2E+IHdyb3RlOgo+Cj4gT24gRnJpLCBNYXkgMzAsIDIwMjUsIGF0IDU6MzkgUE0s
IERhbWphbiBHZW9yZ2lldnNraSB3cm90ZToKPiA+IE9uIHRoZSBUaGlua3BhZCBYOS0xNCBHZW4g
MSAoMjAyNSkKPiA+IERNSTogTEVOT1ZPIDIxUUEwMDQ4Uk0vMjFRQTAwNDhSTSwgQklPUyBONERF
VDMwVyAoMS4xMyApIDA0LzAyLzIwMjUKPiA+Cj4gPiBwcmVzc2luZyB0aGUgRm4rRjExIGJ1dHRv
biwgaXQgZ2VuZXJhdGVzIHRoZSBzY2FuY29kZSAweDE0MDIgd2hpY2gKPiA+IHRoaW5rcGFkX2Fj
cGkgY29tcGxhaW5zIGFib3V0Lgo+ID4KPiA+IFRoZSBkb2N1bWVudGF0aW9uIGFib3V0IHRoZSBz
aG9ydGN1dCBzYXlzOgo+ID4gIkxhdW5jaCB0aGUgU21hcnQgU2hhcmUgZmVhdHVyZSBpbiB0aGUg
SW50ZWzCriBVbmlzb27ihKIgYXBwLiIKPiA+Cj4gPiBodHRwczovL2Rvd25sb2FkLmxlbm92by5j
b20vbWFudWFsL3RoaW5rcGFkX3g5XzE0L3VzZXJfZ3VpZGUvZW4vVXNlX3RoZV9rZXlib2FyZF9z
aG9ydGN1dHMuaHRtbAo+ID4KPiA+IG5vdCBzdXJlIHdoaWNoIExpbnV4IGtleSBjb2RlIGlzIG1v
c3QgYXBwcm9wcmlhdGUgaGVyZS4KPiA+IEtFWV9WRU5ET1IgcGVyaGFwcz8hCj4gPgo+IE9uIFdp
bmRvd3MgaXQncyBsYXVuY2hlcyBzb21lIHNvcnQgb2YgdW5pZmllZCBhcHAgd2hlcmUgeW91IGNh
biBjb25uZWN0IHlvdXIgcGhvbmUgYW5kIFBDIHRvZ2V0aGVyIC0gd2UgZG9uJ3QgaGF2ZSBhbiBl
cXVpdmFsZW50IChtYXliZSBLREUgY29ubmVjdD8pCj4KPiBTdWdnZXN0IEtFWV9MSU5LX1BIT05F
IHdvdWxkIGJlIGEgZ29vZCBmaXQ/CgpJIGRvbid0IHdhbnQgdG8gYmlrZXNoZWQgaXQsIG5vciBk
byBJIGhhdmUgYSBzdHJvbmcgb3BpbmlvbiBvbiBpdCAtCnRoYXQgYmVpbmcgc2FpZOKApiA6KSwK
dGhlIGltYWdlIG9uIHRoZSBrZXkgZG9lc24ndCBsb29rIGxpa2UgYW55dGhpbmcgcGhvbmUgcmVs
YXRlZCAtIGF0CmxlYXN0IG9uIHRoZSBYOS0xNCAoc2VlIHRoZSBhYm92ZSBtYW51YWwpLgoKdGhh
dCBiZWluZyBzYWlkLCAgMWJlYmM3ODY5Yzk5ZDQ2NmY4MTlkZDJjZmZhZWYwZWRmN2Q3YTAzNSBh
ZGRlZApLRVlfTElOS19QSE9ORSBmb3IgRjExIG9uIFRoaW5rcGFkcyBUMTQgR2VuIDUsIFQxNiBH
ZW4gMywgYW5kIFAxNHMgR2VuCjUgLSB3aGVyZSB0aGUgaW1hZ2UgZG9lc24ndCBsb29rIGxpa2Ug
YSBwaG9uZSBlaXRoZXIgKGFuZCBpdCBzYXlzCiJPcGVuIE1pY3Jvc29mdMKuIFBob25lIExpbmsi
KSBzbyBJIGd1ZXNzIGl0J3MgZmluZS4KCj4gTGV0IG1lIGtub3cgaWYgeW91IHdhbnQgdG8gZG8g
YSBwYXRjaCB0byBmaXggdGhpcyAtIG90aGVyd2lzZSBJJ20gaGFwcHkgdG8gZG8gc28gKEkgc2hv
dWxkIGhhdmUgZG9uZSBpdCBwcmV2aW91c2x5LCB0aGlzIGtleSBzaG93cyB1cCBvbiBhIGJ1bmNo
IG9mIHBsYXRmb3JtcykKCmZlZWwgZnJlZSB0byBkbyBpdC4KCgotLSAKZGFtamFuCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwg
bWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
