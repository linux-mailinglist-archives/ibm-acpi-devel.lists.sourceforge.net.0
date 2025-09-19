Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBBDB87936
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 19 Sep 2025 03:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8DItvXH/tbwVIBwtLPVw/sjNpDvyIZprS/tnDYtLOkM=; b=JPjnRAjFIlz/EdG8JdB7dQNWlv
	sezQcq+A0oLp6a+FLve/FtkdKBwXQAGlLf5TYp1QOz68/zOXLba+8lU9F5HNv4cyHSXpYWUO8/k2R
	Cq/dTNdXOrw1+Jk4MVDr0l61g0o6HVXRL0WUH315y/LDe/Z0qp1fQkZbYPUlzj46UfMY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uzPg3-0004My-Ox;
	Fri, 19 Sep 2025 01:12:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1uzPg1-0004Mr-Ol
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Sep 2025 01:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A48yMdinMY4TsMoA5WhtjSNisYijRwjFPVTZOj60lQ0=; b=VcznuUSObWwt0hIADBLcNPhUu1
 fbkAtc3rzEtKwSmaGYVxA4Grhp/GMUxmLQ9wyfhTu9BfIEdPiUyUSmoWHnpakXi/m7e0iLvE3s8YT
 y66fIlUA3WLU6j7iaH+0yS8Ji558ukaspCbhcK427M8SEX03KquV/RA+oLjJL5y6Q1D8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A48yMdinMY4TsMoA5WhtjSNisYijRwjFPVTZOj60lQ0=; b=Zqy28F8oqlqLhYY9fncD0mNtB9
 AbVVJwOZIDu/mn8sElKKfLgpaE+Hl5Y4+neA2nKxifCznG/GMI+BvqmxzuNBfNlMwTkmlvZ6vXuII
 LpzLTq1esfPRgN+VxHIZcMyro0nravJ0km28Zt1hJ6E8RxF8OgAXcV/mkOSYv6zyZFuQ=;
Received: from mail-pf1-f180.google.com ([209.85.210.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzPg1-0000aY-Ce for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Sep 2025 01:12:41 +0000
Received: by mail-pf1-f180.google.com with SMTP id
 d2e1a72fcca58-77716518125so907216b3a.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 18 Sep 2025 18:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758244351; x=1758849151; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=A48yMdinMY4TsMoA5WhtjSNisYijRwjFPVTZOj60lQ0=;
 b=QdtxyRNgE6rlrFJX0hYdzvMsCF3INL+3FfJr3mnvkL6Bk52kmvSPe1RCxennDlAbuU
 pFqtZ2gK+vozLZlpBtZI3Zix80hZn3AY7Jo1xko4lmuRkr8Ie/96s2JoJficQZ92PB7I
 BNbVzVjDasFYSq05aHI5+siqR1m8+5jtS5Okj//1NYt9BH4KwJC8WAKAaGmg8kfmSOzv
 KIrXMjfDPFbwqv3leq2Q67tQXlkItwKg+3yDzdC52HCfdpQc6By6WqpLGOA6TkDntZbf
 7Jn6/z6VfcnmWQk9P8SC0FM42Fpqqf7xZ4NG9xVKp8TZuZhhycaympM/1rx95x/d3IVX
 oxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758244351; x=1758849151;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=A48yMdinMY4TsMoA5WhtjSNisYijRwjFPVTZOj60lQ0=;
 b=nWUN2kyXpyxvG899lGlShutVTwM9w5omNvmspHz1z6rMmoHDrVAc/yNl/Bsy0lmImz
 zO08Yle6qs99tNhSQdGxz+/bcTmRl4E5TaBow6Tvs+6Sq+5e2N8KBPUH83L+jOz8qNDu
 w4cFs2PvNFc/OvPCXaC6mvFyAG9tNial1W7wLHQ4x80C2NBICFS1tCALgk/Xu63qFrT4
 o7T37ZSFwKSX3XVF3e2T18w7auhofe9fL6wIVDzuLn7P3QCbnlo4P0jY5/xMWfCX/8or
 akQa8CpOpIONkXTxdcj+pBOps69UGGPyFKRcjqWUf80qrUFEZHkzs+opigoS7cMneuyC
 Cw3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCW4kQk2m8BBKK6vElEcbd0R7fCqW4/g/bSZe9mqi4zJU4AUj8ZW55tPBkG5R3VokLw3v+rt1sME4/3/CG/q8w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy0GRHNO0eaw5Xs6zyT9xsiuAaAV+iEJULpIZJQE7NhY8veYwLc
 Yco1lm0IiL39o1XiILXGmBNAa/PWIyC5YRMhu3v783lKum854PCGCCRl
X-Gm-Gg: ASbGncu3Or2bbcHXsOcHnEdc7dC6EqQOT6RpIA72rA/e/Udh4Q8z2iwGLp9eJqqz+jk
 1ODRpdsp81WGYKiNXwyCzd86kkXdaxE2ZEo9eCuIMJjKE89R0K0hdMncld5ZHPIpdEOT+stLARj
 ymZch8GNcRQufEtLuFtMwvdT0Kd/nrUKh5T8GxqGTJ+PWwwENAm0fy4tDGk/95/gPNzAavmCgjg
 z6AEGorxCGY00ZO33q2s0hujK1R0klHzZbjrX27oWx3l2/kQ9lwR+Sj+oxG3XfpI5+Vh+eEp/wu
 7KTHHYoxHDYVlDIRs4TrSRGV2vgmFp0c/qLRKBIUgBd0wkAzbn1FCoX/2TDR7Y2OZuf2GWVve1V
 /siox4mliqa+qft1ba3oh37U=
X-Google-Smtp-Source: AGHT+IGjYX11oCrTtfxdx4vWRKTaE6PAVgpbO6Y8EQGn0PtwNPXtesJFTQwPRO+jaBSBsmPP7H+GGQ==
X-Received: by 2002:a17:903:944:b0:24c:b39f:baaa with SMTP id
 d9443c01a7336-269ba579989mr18144535ad.49.1758244350465; 
 Thu, 18 Sep 2025 18:12:30 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:8e3e:e1c9:1151:50c3])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b55199e08f1sm402995a12.24.2025.09.18.18.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Sep 2025 18:12:29 -0700 (PDT)
Date: Thu, 18 Sep 2025 18:12:27 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hansg@kernel.org>
Message-ID: <fgizjuhcnl6rfawrqnabkhijf5uzbczen6k5zp6z44hycjqylx@6qzi54baxivx>
References: <20250901135308.52340-1-vishnuocv@gmail.com>
 <CABxCQKtEcFozTtuV3sutU3OyobTbpA82Uy=MyU0FQePPT7S2Wg@mail.gmail.com>
 <6e834cb7-565b-4a4b-bf90-4765f5fc9cc9@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e834cb7-565b-4a4b-bf90-4765f5fc9cc9@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 18, 2025 at 09:31:47AM +0200,
 Hans de Goede wrote:
 > Hi Vishnu, > > On 18-Sep-25 4:37 AM, Vishnu Sankar wrote: > > Hello all,
 > > > > Do we have any questions or concerns? > > Thanks in ad [...] 
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
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uzPg1-0000aY-Ce
Subject: Re: [ibm-acpi-devel] [PATCH v3 1/3] input: mouse: trackpoint: Add
 doubletap enable/disable support
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
Cc: Vishnu Sankar <vishnuocv@gmail.com>, derekjohn.clark@gmail.com,
 linux-kernel@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, mpearson-lenovo@squebb.ca,
 ilpo.jarvinen@linux.intel.com, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVGh1LCBTZXAgMTgsIDIwMjUgYXQgMDk6MzE6NDdBTSArMDIwMCwgSGFucyBkZSBHb2VkZSB3
cm90ZToKPiBIaSBWaXNobnUsCj4gCj4gT24gMTgtU2VwLTI1IDQ6MzcgQU0sIFZpc2hudSBTYW5r
YXIgd3JvdGU6Cj4gPiBIZWxsbyBhbGwsCj4gPiAKPiA+IERvIHdlIGhhdmUgYW55IHF1ZXN0aW9u
cyBvciBjb25jZXJucz8KPiA+IFRoYW5rcyBpbiBhZHZhbmNlIQo+ID4gCj4gPiBPbiBNb24sIFNl
cCAxLCAyMDI1IGF0IDEwOjUz4oCvUE0gVmlzaG51IFNhbmthciA8dmlzaG51b2N2QGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPj4KPiA+PiBBZGQgc3VwcG9ydCBmb3IgZW5hYmxpbmcgYW5kIGRpc2FibGlu
ZyBkb3VibGV0YXAgb24gVHJhY2tQb2ludCBkZXZpY2VzCj4gPj4gdGhhdCBzdXBwb3J0IHRoaXMg
ZnVuY3Rpb25hbGl0eS4gVGhlIGZlYXR1cmUgaXMgZGV0ZWN0ZWQgdXNpbmcgZmlybXdhcmUKPiA+
PiBJRCBhbmQgZXhwb3NlZCB2aWEgc3lzZnMgYXMgYGRvdWJsZXRhcF9lbmFibGVkYC4KPiAKPiBI
bW0sIHlvdSBzZWVtIHRvIGJlIHVzaW5nIGEgZmlybXdhcmUgSUQgcHJlZml4IG1hdGNoLCBjb21i
aW5lZCB3aXRoCj4gYSBkZW55IGxpc3Qgb2Ygc29tZSBmaXJtd2FyZSBJRHMgd2l0aCB0aGF0IHBy
ZWZpeCB3aGljaCBkbyBub3Qgc3VwcG9ydAo+IHRoaXMuIEhvdyBkbyB3ZSBrbm93IHRoaXMgZGVu
eSBsaXN0IGlzIGNvbXBsZXRlPwo+IAo+IEFsc28gYXMgRG1pdHJ5IHNheXMgeW91IHJlYWxseSBz
aG91bGQgdXNlIHRoZSBpc192aXNpYmxlKCkgY2FsbGJhY2sKPiB0byBub3Qgc2hvdyB0aGUgYXR0
cmlidXRlIGF0IGFsbCBvbiB1bnN1cHBvcnRlZCBzeXN0ZW1zLgo+IAo+ID4+IFRoZSBmZWF0dXJl
IGlzIG9ubHkgYXZhaWxhYmxlIG9uIG5ld2VyIFRoaW5rUGFkcyAoMjAyMyBhbmQgbGF0ZXIpLlRo
ZSBkcml2ZXIKPiA+PiBleHBvc2VzIHRoaXMgY2FwYWJpbGl0eSB2aWEgYSBuZXcgc3lzZnMgYXR0
cmlidXRlOgo+ID4+ICIvc3lzL2J1cy9zZXJpby9kZXZpY2VzL3NlcmlveC9kb3VibGV0YXBfZW5h
YmxlZCIuCj4gPj4KPiA+PiBUaGUgYXR0cmlidXRlIGlzIG9ubHkgY3JlYXRlZCBpZiB0aGUgZGV2
aWNlIGlzIGRldGVjdGVkIHRvIGJlIGNhcGFibGUgb2YKPiA+PiBkb3VibGV0YXAgdmlhIGZpcm13
YXJlIGFuZCB2YXJpYW50IElEIGNoZWNrcy4gVGhpcyBmdW5jdGlvbmFsaXR5IHdpbGwgYmUKPiA+
PiB1c2VkIGJ5IHBsYXRmb3JtIGRyaXZlcnMgc3VjaCBhcyB0aGlua3BhZF9hY3BpIHRvIGV4cG9z
ZSBhbmQgY29udHJvbCBkb3VibGV0YXAKPiA+PiB2aWEgdXNlciBpbnRlcmZhY2VzLgo+IAo+IEht
bSwgeW91IHJlZmVyIHRvIHRoaW5rcGFkX2FjcGkgYXMgYSBwb3NzaWJsZSBjb25zdW1lciBvZiB0
aGlzCj4gZnVuY3Rpb25hbGl0eS4gQnV0IHlvdSBvbmx5IGFkZCBhIHN5c2ZzIGludGVyZmFjZS4K
PiAKPiB0aGlua3BhZF9hY3BpIHdpbGwgbmVlZCBzb21lIGluIGtlcm5lbCBpbnRlcmZhY2UgdG8g
dXNlIHRoaXMuCj4gCj4gV2hpY2ggYnJpbmdzIG1lIHRvIG15IG1haW4gcXVlc3Rpb246IHRoaW5r
cGFkX2FjcGkgaXMgdGhlIGRyaXZlcgo+IHJlY2VpdmluZyB0aGUgZG91YmxldGFwIGV2ZW50cyBz
aW5jZSB0aGVzZSBhcmUgc2VuZCBvdXQtb2YtYm91bmQKPiBhbmQgbm90IHRocm91Z2ggdGhlIHBz
LzIgdHJhY2twb2ludCBwcm90b2NvbC4KPiAKPiB0aGlua3BhZF9hY3BpIGFscmVhZHkgaGFzIHRo
ZSBjYXBhYmlsaXR5IHRvIGZpbHRlciBvdXQgdGhlc2UgZG91YmxldGFwCj4gZXZlbnRzIGFuZCBy
ZXBvcnQgbm90aGluZy4gV2h5IGlzIGl0IG5lY2Vzc2FyeSAvIGJldHRlciB0byBkaXNhYmxlCj4g
dGhlIGRvdWJsZXRhcCBhdCB0aGUgdHJhY2twb2ludCBmdy1sZXZlbCwgcmF0aGVyIHRoZW4ganVz
dCBmaWx0ZXJpbmcKPiBpdCBhdCB0aGUgdGhpbmtwYWRfYWNwaSBsZXZlbCA/Cj4gCj4gSSBkb24n
dCByZWFsbHkgc2VlIGEgYmlnIGFkdmFudGFnZSBpbiBmaWx0ZXJpbmcgdGhlc2UgZXZlbnRzIGF0
Cj4gdGhlIGZ3LWxldmVsIHJhdGhlciB0aGVuIGluIHRoZSBrZXJuZWwgYW5kIHdlIGFscmVhZHkg
aGF2ZSB0aGUKPiBpbiBrZXJuZWwgZmlsdGVyaW5nLgoKVGhhdCBpcyBhbiBleGNlbGxlbnQgb2Jz
ZXJ2YXRpb24sIHRoYW5rIHlvdSBIYW5zLiBUaGUgZnJlcXVlbmN5IG9mIHRoZXNlCmV2ZW50cyBz
aG91bGQgYmUgZXh0cmVtZWx5IGxvdywgc28gY29zdCBvZiBzaW1wbHkgaWdub3JpbmcgZXZlbnRz
IHNob3VsZApiZSBtaW5pc2N1bGUuLi4KClRoYW5rcy4KCi0tIApEbWl0cnkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWls
aW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
