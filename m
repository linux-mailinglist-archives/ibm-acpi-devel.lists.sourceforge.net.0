Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D863FAEE728
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 30 Jun 2025 21:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jTX17BTmU1niToPpWwVNjACRYfQxGmGUgPElZhDjyQk=; b=cHsxaHGUyQpyA3/qwDYiww7Vtt
	ufe9jQrQsHRkWs3Z73By+wPqyKpL0ruDOsSwNx5d4dS0Sbh68Geq5ld76vrMAL47ILrYBPuUdER2u
	sSpPDqqETzvXMXRjJR1kF3W8Nksm/WJ9otoVXHFlxalA8mScHwIys80ID+Y+55JkmE0Y=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uWJmy-0000mN-K1;
	Mon, 30 Jun 2025 19:03:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1uWJmw-0000m7-Rp
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 30 Jun 2025 19:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qwXEzUcg0o/ClzyKHDQ0wbQbJMCGH+I0kvtI5qnjlnE=; b=Ag4BZ7qjI13/vRIAvxlOWZzrBk
 aVh6pi03sL8NsppdXywPRbHDK+0w+mh+NsaoCHBmWAovisTsZIWY1unV/jZ586UCGhh3Ld/1JYgtx
 nbsPv6CAUY4Cyvtp/2vZJDK5Z1YLv0YZ9ncoULFJi2pnpFRKr91p9vkgn2RHajzZS688=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qwXEzUcg0o/ClzyKHDQ0wbQbJMCGH+I0kvtI5qnjlnE=; b=M+WDFjSst1q0S0klxfNHh/t0jQ
 AnDJnmD52tGURClQyHZBLXlZ4CyE2SClw3XwJGOgntrjFk1jygvu8o2OUkU8gMJGX130hSBcQVkzm
 H1FIh7PFB6f+g+jrn0mQhp+nxhjY9wuY25JmOI5tzd/LBi/iyNL2J7v2/sTELuVjCpmA=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uWJmu-0004vZ-M5 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 30 Jun 2025 19:03:34 +0000
Received: by mail-pf1-f181.google.com with SMTP id
 d2e1a72fcca58-748f54dfa5fso4251118b3a.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 30 Jun 2025 12:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751310202; x=1751915002; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=qwXEzUcg0o/ClzyKHDQ0wbQbJMCGH+I0kvtI5qnjlnE=;
 b=BZzNMb36mOwxVbyOMHyExeE/1c5ToM1HZBTJbgodJBBG7gWLLMrYkurrT1eDkC60+I
 iwBWzsBm7eMF5NaPej7seEi4LmIeX9VMFM98RUCwq2YYVncVX14cCdzDwgSU3SocpiMD
 OvZftQnRYde+w2olg4yoAFIED5eHj70NqxUDu9tLeA6M3wnnS2pcaU9OKWG/Olkic3Ko
 Qij5KMStTbDS9uFGAGRRpxED6Fd5ovkZ3YkWp3L9Rs/6lnP6DGw1YbmP1ItqgCrYMUbB
 kmEY8rSKQ5qKhr50XVZMqzWoQHdex1Yn+4OrTPMQZxwzwfVH0Maizv2cw3XeOcnX2k1K
 h8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751310202; x=1751915002;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qwXEzUcg0o/ClzyKHDQ0wbQbJMCGH+I0kvtI5qnjlnE=;
 b=EeRUJwFRrHvEONx2Tw6ApGsiiUxfE1XxcuCqqpenusXX7ZHiVSXJLKC+BW02natAVR
 TauwoKKt0etkuBJkSeevAVi7FmVt5bKkdjyz49n6nHZR1egtWrup/MPO/G4wmVgklORm
 6nRw6EEV3K5wtErY3pyFqCf2xE16DBx26cOEGM+DGbCxw25Y0vC3Y4mF2DdMxyGAgvbm
 cRdK+fElnPE2/jc5zk/ar6g9wuy1rBBW8C6wTyil/Dzv1eVN0u12lk5cu1J2wdfZfnqD
 +fc+gq0AvBnV42D04IChyVxqe+SXVvGAbQhzm2Uc4lu3LFSasoHHTEOE+fKfmRz7BgvQ
 gkcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCURVHLeIEhSVLEjnCo6eE6/v0fk0k3Mnqte1XOYtA3E5X4bXQ4sQRrAW1tlpYWfT9uNfzWYotEJn0ecaaM/eQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzRD/4WG1aTAuTVIgmhTUM3G1V52ZE26kpIJo+QRwrNdFPXcPJj
 OwXHsDPEgoD/5KQYcvGaeNrDGd0AQfBBYLSy9BPZrPVB880f1dG0M7/n
X-Gm-Gg: ASbGncsGH1VQqMPDrMVpiZvGpAqaIom7Tsnfcd6YwsPlg5SwbnkUwxyJpZYPvOYe1pY
 7jJebjEMH29VbaUvsLI2oMXqbKXU9FfwN3fsDfjmTjyUilqDahy47JRBfQUSaQt+SGxtj/JTl7M
 8mpTuuoTfeIV/cdaVK2meGj0oajV3x7D+D7TOEUovXhucXIQLRbvvaYYuZTt6NSmzgYjEzhnszw
 v7Ct5wn5ehq9ILHQGco4xFY5f1UG50e7xboaAtf74ysB1wS+qeMTW9vzdBXsf0cX9fKmV6XsChY
 zY64fLmHUMZLRSZDvC0ZY/KPBF7c1kiX2aLH72s3N+j91KAGhtG0olHj2qaJwg==
X-Google-Smtp-Source: AGHT+IFL1XnMJgpkAglMwM1ySZ2g6LiG8Id+pjQC0xsSxA2iBB/+g1nLfLk/G0wIP+Zj5UEBemi4nw==
X-Received: by 2002:a05:6a00:4fca:b0:742:3fb4:f992 with SMTP id
 d2e1a72fcca58-74af6ed3d64mr19490319b3a.10.1751310201757; 
 Mon, 30 Jun 2025 12:03:21 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:c92b:c666:1f8:990e])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74af541c399sm9956123b3a.52.2025.06.30.12.03.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Jun 2025 12:03:21 -0700 (PDT)
Date: Mon, 30 Jun 2025 12:03:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vishnu Sankar <vishnuocv@gmail.com>
Message-ID: <u6exrggeh7wcs76bbecpwc7egixyvsp4q6xi6xxrzvqhdbwdsg@jecmkl5wzeqs>
References: <20250620004209.28250-1-vishnuocv@gmail.com>
 <5jgix7znkfrkopmwnmwkxx35dj2ovvdpplhadcozbpejm32o2j@yxnbfvmealtl>
 <4ad6e1e1-aca8-4774-aa4a-60edccaa6d0e@app.fastmail.com>
 <bviu4igchqy6bvu54fw6afts7ooctlmmcutdq6tc4rutzhjvfs@o56kezrit6un>
 <CABxCQKvJzf1G3XLWmqngpy-Ou9U+a7Lzt6gjwZoEcU-+WL6Apw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABxCQKvJzf1G3XLWmqngpy-Ou9U+a7Lzt6gjwZoEcU-+WL6Apw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 30, 2025 at 08:50:27PM +0900,
 Vishnu Sankar wrote:
 > Hi Dimitry, > > > On Mon, Jun 30, 2025 at 2:20 PM Dmitry Torokhov > wrote:
 > > > > Hi Mark, > > > > On Mon, Jun 30, 2025 at 05:42:45A [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uWJmu-0004vZ-M5
Subject: Re: [ibm-acpi-devel] [PATCH] x86/Mouse: thinkpad_acpi/Trackpoint:
 Trackpoint Doubletap handling
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
Cc: zhoubinbin@loongson.cn, jay_lee@pixart.com, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
 tglx@linutronix.de, jon_xie@pixart.com, pali@kernel.org, mingo@kernel.org,
 hansg@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gTW9uLCBKdW4gMzAsIDIwMjUgYXQgMDg6NTA6MjdQTSArMDkwMCwgVmlzaG51IFNhbmthciB3
cm90ZToKPiBIaSBEaW1pdHJ5LAo+IAo+IAo+IE9uIE1vbiwgSnVuIDMwLCAyMDI1IGF0IDI6MjDi
gK9QTSBEbWl0cnkgVG9yb2tob3YKPiA8ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPgo+ID4gSGkgTWFyaywKPiA+Cj4gPiBPbiBNb24sIEp1biAzMCwgMjAyNSBhdCAwNTo0Mjo0
NUFNICswOTAwLCBNYXJrIFBlYXJzb24gd3JvdGU6Cj4gPiA+IEhpIERtaXRyeSwKPiA+ID4KPiA+
ID4gT24gRnJpLCBKdW4gMjcsIDIwMjUsIGF0IDI6MTQgUE0sIERtaXRyeSBUb3Jva2hvdiB3cm90
ZToKPiA+ID4gPiBIaSBWaXNobnUsCj4gPiA+ID4KPiA+ID4gPiBPbiBGcmksIEp1biAyMCwgMjAy
NSBhdCAwOTo0MjowOEFNICswOTAwLCBWaXNobnUgU2Fua2FyIHdyb3RlOgo+ID4gPiA+PiBOZXdl
ciBUaGlua1BhZHMgaGF2ZSBhIGRvdWJsZXRhcCBmZWF0dXJlIHRoYXQgbmVlZHMgdG8gYmUgdHVy
bmVkCj4gPiA+ID4+IE9OL09GRiB2aWEgdGhlIHRyYWNrcG9pbnQgcmVnaXN0ZXJzLgo+ID4gPiA+
PiBTeXN0ZW1zIHJlbGVhc2VkIGZyb20gMjAyMyBoYXZlIGRvdWJsZXRhcCBkaXNhYmxlZCBieSBk
ZWZhdWx0IGFuZAo+ID4gPiA+PiBuZWVkIHRoZSBmZWF0dXJlIGVuYWJsaW5nIHRvIGJlIHVzZWZ1
bC4KPiA+ID4gPj4KPiA+ID4gPj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIGV4
cG9zaW5nIGFuZCBjb250cm9sbGluZyB0aGUKPiA+ID4gPj4gdHJhY2twb2ludCBkb3VibGV0YXAg
ZmVhdHVyZSB2aWEgYSBzeXNmcyBhdHRyaWJ1dGUuCj4gPiA+ID4+IC9zeXMvZGV2aWNlcy9wbGF0
Zm9ybS90aGlua3BhZF9hY3BpL3RwX2RvdWJsZXRhcAo+ID4gPiA+PiBUaGlzIGNhbiBiZSB0b2dn
bGVkIGJ5IGFuICJlbmFibGUiIG9yIGEgImRpc2FibGUiLgo+ID4gPiA+Pgo+ID4gPiA+PiBXaXRo
IHRoaXMgaW1wbGVtZW50ZWQgd2UgY2FuIHJlbW92ZSB0aGUgbWFza2luZyBvZiBldmVudHMsIGFu
ZCByZWx5IG9uCj4gPiA+ID4+IEhXIGNvbnRyb2wgaW5zdGVhZCwgd2hlbiB0aGUgZmVhdHVyZSBp
cyBkaXNhYmxlZC4KPiA+ID4gPj4KPiA+ID4gPj4gTm90ZSAtIEVhcmx5IFRoaW5rcGFkcyAocHJl
IDIwMTUpIHVzZWQgdGhlIHNhbWUgcmVnaXN0ZXIgZm9yIGh5c3RlcmlzCj4gPiA+ID4+IGNvbnRy
b2wsIENoZWNrIHRoZSBGVyBJRHMgdG8gbWFrZSBzdXJlIHRoZXNlIGFyZSBub3QgYWZmZWN0ZWQu
Cj4gPiA+ID4+Cj4gPiA+ID4+IHRyYWNrcG9pbnQuaCBpcyBtb3ZlZCB0byBsaW51eC9pbnB1dC8u
Cj4gPiA+ID4KPiA+ID4gPiBObywgcGxlYXNlIGtlZXAgZXZlcnl0aGluZyBwcml2YXRlIHRvIHRy
YWNrcG9pbnQuYyBhbmQgZG8gbm90IGludm9sdmUKPiA+ID4gPiB0aGlua3BhZF9hY3BpIGRyaXZl
ci4gQnkgZG9pbmcgc28geW91IGFyZSBpbnRyb2R1Y2luZyB1bndhbnRlZAo+ID4gPiA+IGRlcGVu
ZGVuY2llcyAoZm9yIGJvdGggbW9kdWxlIGxvYWRpbmcsIGRyaXZlciBpbml0aWFsaXphdGlvbiwg
YW5kCj4gPiA+ID4gb3BlcmF0aW9uKSBhbmQgdW5zYWZlIHVzZSBvZiBub24tb3duZWQgcG9pbnRl
cnMvZGFuZ2xpbmcgcG9pbnRlcnMsIGV0Yy4KPiA+ID4gPgo+ID4gPgo+ID4gPiBEbyB5b3UgaGF2
ZSByZWNvbW1lbmRhdGlvbnMgb24gaG93IHRvIGhhbmRsZSB0aGlzIGNhc2UgdGhlbj8KPiA+ID4K
PiA+ID4gVGhpcyBpcyBhIFRoaW5rcGFkIHNwZWNpZmljIGZlYXR1cmUgYW5kIGhlbmNlIHRoZSBs
b2dpYyBmb3IgaW52b2x2aW5nCj4gPiA+IHRoaW5rcGFkX2FjcGkuIFRoZXJlIGFyZSBUaGlua3Bh
ZCBob3RrZXlzIHRoYXQgd2lsbCBlbmFibGUvZGlzYWJsZSB0aGUKPiA+ID4gdHJhY2twb2ludCBk
b3VibGV0YXAgZmVhdHVyZSAtIHNvIHRoZXJlIGlzIHNvbWUgbGlua2FnZS4gSSdtIG5vdCBzdXJl
Cj4gPiA+IGhvdyB0byBhdm9pZCB0aGF0Lgo+ID4gPgo+ID4gPiBJcyB0aGVyZSBhIGNsZWFuZXIg
d2F5IHRvIGRvIHRoaXMgdGhhdCB5b3UnZCByZWNvbW1lbmQgd2UgbG9vayBhdAo+ID4gPiB1c2lu
Zz8gSXQncyBhIGZlYXR1cmUgKGFsYmVpdCBhIG1pbm9yIG9uZSkgb24gdGhlIGxhcHRvcHMgdGhh
dCB3ZSdkCj4gPiA+IGxpa2UgdG8gbWFrZSBhdmFpbGFibGUgdG8gTGludXggdXNlcnMuCj4gPgo+
ID4gSSBiZWxpZXZlIGlmIHlvdSBkZWZpbmUgdGhlIGRvdWJsZXRhcCBhcyBhbiBhdHRyaWJ1dGUg
KHNlZQo+ID4gVFJBQ0tQT0lOVF9JTlRfQVRUUiBvciBUUkFDS1BPSU5UX0JJVF9BVFRSIGluCj4g
PiBkcml2ZXJzL2lucHV0L21vdXNlL3RyYWNrcG9pbnQuYykgdGhlbiB3aGF0ZXZlciBwcm9jZXNz
IGlzIGhhbmRsaW5nIHRoZQo+ID4gaG90IGtleXMgc3dpdGNoaW5nIHRoaXMgZnVuY3Rpb24gb24g
b3Igb2ZmIHNob3VsZCBiZSBhYmxlIHRvIHRvZ2dsZSB0aGUKPiA+IGJlaGF2aW9yLiBUaGUgZGlm
ZmVyZW5jZSBpcyB0aGF0IGl0IHdpbGwgaGF2ZSB0byBsb2NhdGUgdHJhY2twb2ludCBub2RlCj4g
PiBpbiAvc3lzL2J1cy9zZXJpby9kZXZpY2VzLyogKG9yIG1heWJlIHNjYW4KPiA+IC9zeXMvZGV2
aWNlcy9wbGF0Zm9ybS9pODA0Mi9zZXJpbyopIGluc3RlYWQgb2YgZXhwZWN0aW5nIHRoZSBhdHRy
aWJ1dGVzCj4gPiBiZSBhdGFjaGVkIHRvIHRoaW5rcGFkX2FjcGkgaW5zdGFuY2UuCj4gPgo+ID4g
WW91IGp1c3QgZG9uJ3Qgd2FudCB0byBoYXZlIG9uZSBkcml2ZXIgZGlyZWN0bHkgcGVla2luZyBp
bnRvIGFub3RoZXIsCj4gPiBiZWNhdXNlIHRoZW4gaXQgc3RhcnRzIGJyZWFraW5nIGlmIHlvdSB1
bmJpbmQgb3IgZm9yY2UgdXNlIG9mIGEKPiA+IGRpZmZlcmVudCBwcm90b2NvbCwgZXRjLgo+ID4K
PiA+IFRoYW5rcy4KPiA+Cj4gPiAtLQo+ID4gRG1pdHJ5Cj4gCj4gVGhhbmtzIGZvciB0aGUgc3Vn
Z2VzdGlvbi4gSSB1bmRlcnN0YW5kIHRoZSBjb25jZXJuIGFib3V0IGF2b2lkaW5nCj4gZGlyZWN0
IGRyaXZlci10by1kcml2ZXIgY2FsbHMgYW5kIHVud2FudGVkIGRlcGVuZGVuY2llcy4KPiAKPiBK
dXN0IHRvIGNsYXJpZnk6IGlmIHdlIG1vdmUgdGhlIHN5c2ZzIGF0dHJpYnV0ZSB0byB0aGUgdHJh
Y2twb2ludAo+IGRyaXZlciBpdHNlbGYgKHVuZGVyIC9zeXMvYnVzL3NlcmlvL2RldmljZXMvLi4u
KSwgdGhlbiB0aGlua3BhZF9hY3BpCj4gd291bGQgbm8gbG9uZ2VyIGJlIGFibGUgdG8gZGlyZWN0
bHkgZW5hYmxlL2Rpc2FibGUgdGhlIGRvdWJsZXRhcAo+IGZlYXR1cmUgaW4gcmVzcG9uc2UgdG8g
dGhlIEZuK0cgaG90a2V5IHByZXNzLiBEb24ndCB3ZSBuZWVkIHVzZXJzcGFjZQo+IHRvIGxpc3Rl
biBmb3IgdGhlIGhvdGtleSBldmVudCwgZmluZCB0aGUgdHJhY2twb2ludCBzeXNmcyBub2RlLCBh
bmQKPiB0b2dnbGUgdGhlIGF0dHJpYnV0ZSB0aGVyZT8KClllcy4KCj4gVGhhdCdzIHBvc3NpYmxl
LCBvZiBjb3Vyc2UsIGJ1dCBpdCBtZWFucyB0aGUgZmVhdHVyZSB3b24ndCB3b3JrCj4gb3V0LW9m
LXRoZS1ib3ggd2l0aG91dCBleHRyYSB1c2Vyc3BhY2UgaW50ZWdyYXRpb24uIEZvciBleGFtcGxl
LCB0aGVyZQo+IHdvdWxkIGJlIG5vIGF1dG9tYXRpYyBsaW5rYWdlIGJldHdlZW4gcHJlc3Npbmcg
Rm4rRyBhbmQgdG9nZ2xpbmcgdGhlCj4gZmVhdHVyZSB1bmxlc3MgYSB1ZGV2IHJ1bGUgb3IgdXNl
cnNwYWNlIGRhZW1vbiBpcyBjb25maWd1cmVkIHRvIGRvIGl0Lgo+IE9yIGlzIHRoZXJlIGFuIGFw
cHJvYWNoIHlvdSdkIHJlY29tbWVuZCB0byBwcmVzZXJ2ZSB0aGUgYXV0b21hdGljCj4gaG90a2V5
IGludGVncmF0aW9uIHdoaWxlIGF2b2lkaW5nIHRoZSBkaXJlY3QgZGVwZW5kZW5jeSBiZXR3ZWVu
Cj4gdGhpbmtwYWRfYWNwaSBhbmQgdHJhY2twb2ludD8KPiBTb3JyeSwgSSBtaXNzZWQgc29tZXRo
aW5nLgoKV2VsbCwgSSBndWVzcyB5b3UgY2FuIGxvb2sgaW50byBpbnRlcmFjdGluZyB3aXRoIHN5
c2ZzIGZpbGUgZnJvbQp0aGlua3BhZF9hY3BpLmMuLi4gVGhlcmUgaXMga2VybmVsX3JlYWRfZmls
ZV9mcm9tX3BhdGgoKSBhbmQgb3RoZXJzLCB5b3UKd2lsbCBuZWVkIHRvIGltcGxlbWVudCB3cml0
ZSBjb3VudGVycGFydCBvZiBpdC4gUHJldHR5IHVnbHkgYnV0IHNhZmVyCnRoYW4gZm9sbG93aW5n
IHBvaW50ZXJzIHRoYXQgbWF5IGdvIGF3YXkuCgpUaGFua3MuCgotLSAKRG1pdHJ5CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwg
bWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
