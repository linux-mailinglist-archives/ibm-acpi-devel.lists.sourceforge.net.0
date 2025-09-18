Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9798CB82EB9
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Sep 2025 06:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f0XoWzLF1fKnoy5Y1peYGDWtMjG8TXC3YHbhbWGrZXk=; b=aYWPXsEmexfA85mL8gx7z8be8G
	Kff+lxTpBq5+xmGklpuNq7NULZtTaacTxAOpeF3gpA/A42QBQhKiooW42QywOQGoTNOZYaeYyB6x3
	vKJyZUmIfQy8h6z/NNUcCgOx/AfrQivM90SEh19sZ+e3QI7xQClOXRWXUMXKKwidm9Lk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uz6i0-0002d9-Aq;
	Thu, 18 Sep 2025 04:57:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1uz6hy-0002d2-GJ
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 04:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WGymaOnCc4o9eO/QJxcY/8uIl/0McYtbmQsOfMiDvkQ=; b=jyaogcN31dXmxcmcZlJz8CWuqo
 obJ1WEkNX/kszbdYW2s09PwI1kTPSvYeSKHWwPw+pmmq2+AYf8/GWXb8LRlmaE/ZsMqMCDA2zrPOr
 GJqDiXWAUhIAfQguSJRyBBmWriXZC900VGjKqSZkjgmIugXvLHVB7NDbqa6sHDgD/yDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WGymaOnCc4o9eO/QJxcY/8uIl/0McYtbmQsOfMiDvkQ=; b=Ijr+bTBPmLv9JOFBG21/TQov0o
 Nx97BT4vklj8M9StX8juYxd4upb9i1Kfogl9i39BLYVnVi3zkQvXynYPSWN6VbNjmo1pNrO+B5Loe
 ck6NrwnvAu5E3b7nSWgKSrAemXG8nGamaqs5LRq1V9dy+3I2v+4zrxpLaMKCv05k61Ac=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uz6hx-0006qp-C2 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 04:57:26 +0000
Received: by mail-pg1-f178.google.com with SMTP id
 41be03b00d2f7-b54a74f9150so409166a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 17 Sep 2025 21:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758171435; x=1758776235; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WGymaOnCc4o9eO/QJxcY/8uIl/0McYtbmQsOfMiDvkQ=;
 b=LVJeDFNrBpx2iZc3hR+N/hhtx9ta9w2Xpq+ITOq0rl8qnyq00Dyxaq7y9O5+StMIQm
 9zFxFm32VcSgMD+W7mp/xNYSjloD3csdO7dBNtnLFUILqPURcBwtZDyqbTakfPO8R7iV
 hS5eTHAZyqfXx1R1QVs6YwBCPjo/UCsgN1TbZy1YukuSYztf6JQ76Hca4rxK/LP+JoKS
 Tv1szaviVzsdBlVxchNA6ld75aCc6qIci4oQkm9HBjxJ9DiSh1ObEm2vFDltZSKL4Sbg
 0WQJU+lRgFIVToGEPoQj9a5BDW23gUfIqUhB3Dx9U5XRP87OiP4bxemdNn24CTieB4Sm
 3wTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758171435; x=1758776235;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WGymaOnCc4o9eO/QJxcY/8uIl/0McYtbmQsOfMiDvkQ=;
 b=p5gEEDCkFiK5BUItPivEPafq/DwmVcwPkQmjszqTkNqOBo9ziNncv6DKYOsu91L/9J
 lrYuSDbifXQLiP5peQbOnLCfkTNIleW2HX1Ny/HlqdzF45+wJkOS+JNVFkRaNpIWhJTL
 /Ji03RGFZ7ACq/B9EXY+916eAU2fg2jfgWV6KLP0T+266bfK8THts+bn8HxZ0Rhdx27P
 FPi2dq9Df9cgmDFZYRHjgSfMJnRyHdjtoQwCv7CSf8vkymMgJlhcJFrgzsk00fkha3TV
 cq4qyO9pyfzK31F/ecI/XbGCNZYLxytuQmqXrBcqcTn+TOgmn/pjcimpADFSjzBlyHgP
 gGbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPluBloj5iL7Eax7qtMgnc5Fy/jL4EffrqJ9XVLV+vgm2oMI8Jz8nZRpdbo69ii+Jp1HYn3g+azZ1uv3aBEg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyJej6ZPGf5FMgLgsJ5nOLsitQSct0+CKWMdo4ALw/BFt8p4mKJ
 WjR40RrM3IdrFfjZ7fmFzG9P1p6T2xwGiOL8aXhPJBdy+Y2POSmz12Wi
X-Gm-Gg: ASbGncs/GnfVcv8xyLV804xIAtEAzH0KhjnSj/Zf3cJw4zSlx1Wwe0fcOtXs5WC1wJ6
 7hNKT8hsNfftQZVLSe+Oj9KtxUg1Dr8FJwFWRv0yqZVdbxp5W5oH+7e3o6zrcYK/Fzns0lf8KfZ
 LyBx4aOkgmk/YvKZx5+kIc4o2L4FPVTTleJ35jaZFTB/hYxpuj5aU+9aJWFdyQ2EWsW0EJjxWEC
 Y5y3Ln5BTZloU37Tvuykb9NJGirP/0sbNnHwkNAQ77ur1aJcXRxgAVaNix551nVcZh83hgEAo+o
 1EMBeIhVr57u4Qpx/Ftx1f2hz/c/k5Li49elHkSw5jpl9zFUbTH2AEMWTFbK4lu7wGj7MLoGh0w
 KUCLPHtdQBo3UxSuqWdKUJV9MdRYk0MwntgTCRWCV8RIghaYxn0bW
X-Google-Smtp-Source: AGHT+IF+Aq/tQGZ2xe55EOY/2o43Lc1MLCWnLjxi4HUvMhJ5KCylwUxEphTLkETS8bUOBSE9459K6w==
X-Received: by 2002:a17:903:2312:b0:269:603f:41e2 with SMTP id
 d9443c01a7336-269603f4366mr45706565ad.21.1758171434394; 
 Wed, 17 Sep 2025 21:57:14 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:194b:8358:5c91:3d3d])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2698016c081sm12493815ad.41.2025.09.17.21.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Sep 2025 21:57:14 -0700 (PDT)
Date: Wed, 17 Sep 2025 21:57:11 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vishnu Sankar <vishnuocv@gmail.com>
Message-ID: <cr7jgtztf65balwxu6cpu6hqzzzluitrwu2f66o75kcip5k2zd@sxixvhotead5>
References: <20250901135308.52340-1-vishnuocv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250901135308.52340-1-vishnuocv@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Vishnu, On Mon, Sep 01, 2025 at 10:53:05PM +0900, Vishnu
 Sankar wrote: > Add support for enabling and disabling doubletap on TrackPoint
 devices > that support this functionality. The feature is detected using
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uz6hx-0006qp-C2
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
Cc: derekjohn.clark@gmail.com, linux-kernel@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, mpearson-lenovo@squebb.ca,
 ilpo.jarvinen@linux.intel.com, platform-driver-x86@vger.kernel.org,
 hansg@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVmlzaG51LAoKT24gTW9uLCBTZXAgMDEsIDIwMjUgYXQgMTA6NTM6MDVQTSArMDkwMCwgVmlz
aG51IFNhbmthciB3cm90ZToKPiBBZGQgc3VwcG9ydCBmb3IgZW5hYmxpbmcgYW5kIGRpc2FibGlu
ZyBkb3VibGV0YXAgb24gVHJhY2tQb2ludCBkZXZpY2VzCj4gdGhhdCBzdXBwb3J0IHRoaXMgZnVu
Y3Rpb25hbGl0eS4gVGhlIGZlYXR1cmUgaXMgZGV0ZWN0ZWQgdXNpbmcgZmlybXdhcmUKPiBJRCBh
bmQgZXhwb3NlZCB2aWEgc3lzZnMgYXMgYGRvdWJsZXRhcF9lbmFibGVkYC4KPiAKPiBUaGUgZmVh
dHVyZSBpcyBvbmx5IGF2YWlsYWJsZSBvbiBuZXdlciBUaGlua1BhZHMgKDIwMjMgYW5kIGxhdGVy
KS5UaGUgZHJpdmVyCj4gZXhwb3NlcyB0aGlzIGNhcGFiaWxpdHkgdmlhIGEgbmV3IHN5c2ZzIGF0
dHJpYnV0ZToKPiAiL3N5cy9idXMvc2VyaW8vZGV2aWNlcy9zZXJpb3gvZG91YmxldGFwX2VuYWJs
ZWQiLgo+IAo+IFRoZSBhdHRyaWJ1dGUgaXMgb25seSBjcmVhdGVkIGlmIHRoZSBkZXZpY2UgaXMg
ZGV0ZWN0ZWQgdG8gYmUgY2FwYWJsZSBvZgo+IGRvdWJsZXRhcCB2aWEgZmlybXdhcmUgYW5kIHZh
cmlhbnQgSUQgY2hlY2tzLiBUaGlzIGZ1bmN0aW9uYWxpdHkgd2lsbCBiZQo+IHVzZWQgYnkgcGxh
dGZvcm0gZHJpdmVycyBzdWNoIGFzIHRoaW5rcGFkX2FjcGkgdG8gZXhwb3NlIGFuZCBjb250cm9s
IGRvdWJsZXRhcAo+IHZpYSB1c2VyIGludGVyZmFjZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlz
aG51IFNhbmthciA8dmlzaG51b2N2QGdtYWlsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6IE1hcmsgUGVh
cnNvbiA8bXBlYXJzb24tbGVub3ZvQHNxdWViYi5jYT4KPiBTdWdnZXN0ZWQtYnk6IERtaXRyeSBU
b3Jva2hvdiA8ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHYy
Ogo+IC0gSW1wcm92ZSBjb21taXQgbWVzc2FnZXMKPiAtIFN5c2ZzIGF0dHJpYnV0ZXMgbW92ZWQg
dG8gdHJhY2twb2ludC5jCj4gLSBSZW1vdmVkIHVubmVjZXNzYXJ5IGNvbW1lbnRzCj4gLSBSZW1v
dmVkIHVubmVjZXNzYXJ5IGRlYnVnIG1lc3NhZ2VzCj4gLSBVc2luZyBzdHJzdGFydHMoKSBpbnN0
ZWFkIG9mIHN0cmNtcCgpCj4gLSBpc190cmFja3BvaW50X2R0X2NhcGFibGUoKSBtb2RpZmllZAo+
IC0gUmVtb3ZlZCBfQklUIHN1ZmZpeCBhbmQgdXNlZCBCSVQoKSBkZWZpbmUuCj4gLSBSZXZlcnNl
IHRoZSB0cmFja3BvaW50X2RvdWJsZXRhcF9zdGF0dXMoKSBsb2dpYyB0byByZXR1cm4gZXJyb3Ig
Zmlyc3QuCj4gLSBSZW1vdmVkIGV4cG9ydCBmdW5jdGlvbnMgYXMgYSByZXN1bHQgb2YgdGhlIGRl
c2lnbiBjaGFuZ2UKPiAtIENoYW5nZWQgdHJhY2twb2ludF9kZXYtPnBzbW91c2UgdG8gcGFyZW50
X3BzbW91c2UKPiAtIFRoZSBwYXRoIG9mIHRyYWNrcG9pbnQuaCBpcyBub3QgY2hhbmdlZC4KPiBD
aGFuZ2VzIGluIHYzOgo+IC0gTm8gY2hhbmdlcy4KPiAtLS0KPiAgZHJpdmVycy9pbnB1dC9tb3Vz
ZS90cmFja3BvaW50LmMgfCAxNDkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBk
cml2ZXJzL2lucHV0L21vdXNlL3RyYWNrcG9pbnQuaCB8ICAxNSArKysrCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMTY0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnB1dC9t
b3VzZS90cmFja3BvaW50LmMgYi9kcml2ZXJzL2lucHV0L21vdXNlL3RyYWNrcG9pbnQuYwo+IGlu
ZGV4IDVmNjY0M2I2OWEyYy4uYzZmMTdiMGRlYzNhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaW5w
dXQvbW91c2UvdHJhY2twb2ludC5jCj4gKysrIGIvZHJpdmVycy9pbnB1dC9tb3VzZS90cmFja3Bv
aW50LmMKPiBAQCAtMTYsNiArMTYsOCBAQAo+ICAjaW5jbHVkZSAicHNtb3VzZS5oIgo+ICAjaW5j
bHVkZSAidHJhY2twb2ludC5oIgo+ICAKPiArc3RhdGljIHN0cnVjdCB0cmFja3BvaW50X2RhdGEg
KnRyYWNrcG9pbnRfZGV2OwoKUGxlYXNlIGRvIG5vdCB1c2UgZ2xvYmFscy4KCj4gKwo+ICBzdGF0
aWMgY29uc3QgY2hhciAqIGNvbnN0IHRyYWNrcG9pbnRfdmFyaWFudHNbXSA9IHsKPiAgCVtUUF9W
QVJJQU5UX0lCTV0JCT0gIklCTSIsCj4gIAlbVFBfVkFSSUFOVF9BTFBTXQkJPSAiQUxQUyIsCj4g
QEAgLTYzLDYgKzY1LDIxIEBAIHN0YXRpYyBpbnQgdHJhY2twb2ludF93cml0ZShzdHJ1Y3QgcHMy
ZGV2ICpwczJkZXYsIHU4IGxvYywgdTggdmFsKQo+ICAJcmV0dXJuIHBzMl9jb21tYW5kKHBzMmRl
diwgcGFyYW0sIE1BS0VfUFMyX0NNRCgzLCAwLCBUUF9DT01NQU5EKSk7Cj4gIH0KPiAgCj4gKy8q
IFJlYWQgZnVuY3Rpb24gZm9yIFRyYWNrUG9pbnQgZXh0ZW5kZWQgcmVnaXN0ZXJzICovCj4gK3N0
YXRpYyBpbnQgdHJhY2twb2ludF9leHRlbmRlZF9yZWFkKHN0cnVjdCBwczJkZXYgKnBzMmRldiwg
dTggbG9jLCB1OCAqdmFsKQo+ICt7Cj4gKwl1OCBleHRfcGFyYW1bMl0gPSB7VFBfUkVBRF9NRU0s
IGxvY307Cj4gKwlpbnQgZXJyb3I7Cj4gKwo+ICsJZXJyb3IgPSBwczJfY29tbWFuZChwczJkZXYs
Cj4gKwkJCSAgICBleHRfcGFyYW0sIE1BS0VfUFMyX0NNRCgyLCAxLCBUUF9DT01NQU5EKSk7Cj4g
Kwo+ICsJaWYgKCFlcnJvcikKPiArCQkqdmFsID0gZXh0X3BhcmFtWzBdOwo+ICsKPiArCXJldHVy
biBlcnJvcjsKPiArfQo+ICsKPiAgc3RhdGljIGludCB0cmFja3BvaW50X3RvZ2dsZV9iaXQoc3Ry
dWN0IHBzMmRldiAqcHMyZGV2LCB1OCBsb2MsIHU4IG1hc2spCj4gIHsKPiAgCXU4IHBhcmFtWzNd
ID0geyBUUF9UT0dHTEUsIGxvYywgbWFzayB9Owo+IEBAIC0zOTMsNiArNDEwLDEzMSBAQCBzdGF0
aWMgaW50IHRyYWNrcG9pbnRfcmVjb25uZWN0KHN0cnVjdCBwc21vdXNlICpwc21vdXNlKQo+ICAJ
cmV0dXJuIDA7Cj4gIH0KPiAgCj4gKy8qIExpc3Qgb2Yga25vd24gaW5jYXBhYmxlIGRldmljZSBQ
TlAgSURzICovCj4gK3N0YXRpYyBjb25zdCBjaGFyICogY29uc3QgZHRfaW5jb21wYXRpYmxlX2Rl
dmljZXNbXSA9IHsKPiArCSJMRU4wMzA0IiwKPiArCSJMRU4wMzA2IiwKPiArCSJMRU4wMzE3IiwK
PiArCSJMRU4wMzFBIiwKPiArCSJMRU4wMzFCIiwKPiArCSJMRU4wMzFDIiwKPiArCSJMRU4wMzFE
IiwKPiArfTsKPiArCj4gKy8qCj4gKyAqIGNoZWNrcyBpZiBpdOKAmXMgYSBkb3VibGV0YXAgY2Fw
YWJsZSBkZXZpY2UKPiArICogVGhlIFBOUCBJRCBmb3JtYXQgZWc6IGlzICJQTlA6IExFTjAzMGQg
UE5QMGYxMyIuCj4gKyAqLwo+ICtzdGF0aWMgYm9vbCBpc190cmFja3BvaW50X2R0X2NhcGFibGUo
Y29uc3QgY2hhciAqcG5wX2lkKQo+ICt7Cj4gKwljb25zdCBjaGFyICppZF9zdGFydDsKPiArCWNo
YXIgaWRbOF07Cj4gKwo+ICsJaWYgKCFzdHJzdGFydHMocG5wX2lkLCAiUE5QOiBMRU4wMyIpKQo+
ICsJCXJldHVybiBmYWxzZTsKPiArCj4gKwkvKiBQb2ludHMgdG8gIkxFTjAzeHh4eCIgKi8KPiAr
CWlkX3N0YXJ0ID0gcG5wX2lkICsgNTsKPiArCWlmIChzc2NhbmYoaWRfc3RhcnQsICIlN3MiLCBp
ZCkgIT0gMSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJLyogQ2hlY2sgaWYgaXQncyBibGFj
a2xpc3RlZCAqLwo+ICsJZm9yIChzaXplX3QgaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGR0X2luY29t
cGF0aWJsZV9kZXZpY2VzKTsgKytpKSB7Cj4gKwkJaWYgKHN0cmNtcChpZCwgZHRfaW5jb21wYXRp
YmxlX2RldmljZXNbaV0pID09IDApCj4gKwkJCXJldHVybiBmYWxzZTsKPiArCX0KPiArCXJldHVy
biB0cnVlOwo+ICt9Cj4gKwo+ICsvKiBUcmFja3BvaW50IGRvdWJsZXRhcCBzdGF0dXMgZnVuY3Rp
b24gKi8KPiArc3RhdGljIGludCB0cmFja3BvaW50X2RvdWJsZXRhcF9zdGF0dXMoYm9vbCAqc3Rh
dHVzKQo+ICt7Cj4gKwlzdHJ1Y3QgdHJhY2twb2ludF9kYXRhICp0cCA9IHRyYWNrcG9pbnRfZGV2
Owo+ICsJc3RydWN0IHBzMmRldiAqcHMyZGV2ID0gJnRwLT5wYXJlbnRfcHNtb3VzZS0+cHMyZGV2
Owo+ICsJdTggcmVnX3ZhbDsKPiArCWludCByYzsKPiArCj4gKwkvKiBSZWFkaW5nIHRoZSBEb3Vi
bGV0YXAgcmVnaXN0ZXIgdXNpbmcgZXh0ZW5kZWQgcmVhZCAqLwo+ICsJcmMgPSB0cmFja3BvaW50
X2V4dGVuZGVkX3JlYWQocHMyZGV2LCBUUF9ET1VCTEVUQVAsICZyZWdfdmFsKTsKPiArCWlmIChy
YykKPiArCQlyZXR1cm4gcmM7Cj4gKwo+ICsJKnN0YXR1cyA9IHJlZ192YWwgJiBUUF9ET1VCTEVU
QVBfU1RBVFVTID8gdHJ1ZSA6IGZhbHNlOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICsv
KiBUcmFja3BvaW50IGRvdWJsZXRhcCBlbmFibGUvZGlzYWJsZSBmdW5jdGlvbiAqLwo+ICtzdGF0
aWMgaW50IHRyYWNrcG9pbnRfc2V0X2RvdWJsZXRhcChib29sIGVuYWJsZSkKPiArewo+ICsJc3Ry
dWN0IHRyYWNrcG9pbnRfZGF0YSAqdHAgPSB0cmFja3BvaW50X2RldjsKPiArCXN0cnVjdCBwczJk
ZXYgKnBzMmRldiA9ICZ0cC0+cGFyZW50X3BzbW91c2UtPnBzMmRldjsKPiArCXN0YXRpYyB1OCBk
b3VibGV0YXBfc3RhdGU7Cj4gKwl1OCBuZXdfdmFsOwo+ICsKPiArCWlmICghdHApCj4gKwkJcmV0
dXJuIC1FTk9ERVY7Cj4gKwo+ICsJbmV3X3ZhbCA9IGVuYWJsZSA/IFRQX0RPVUJMRVRBUF9FTkFC
TEUgOiBUUF9ET1VCTEVUQVBfRElTQUJMRTsKPiArCj4gKwlpZiAoZG91YmxldGFwX3N0YXRlID09
IG5ld192YWwpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJZG91YmxldGFwX3N0YXRlID0gbmV3X3Zh
bDsKPiArCj4gKwlyZXR1cm4gdHJhY2twb2ludF93cml0ZShwczJkZXYsIFRQX0RPVUJMRVRBUCwg
bmV3X3ZhbCk7Cj4gK30KPiArCj4gKy8qCj4gKyAqIFRyYWNrcG9pbnQgRG91YmxldGFwIEludGVy
ZmFjZQo+ICsgKiBDb250cm9sL01vbml0b3Jpbmcgb2YgVHJhY2twb2ludCBEb3VibGV0YXAgZnJv
bToKPiArICogL3N5cy9idXMvc2VyaW8vZGV2aWNlcy9zZXJpb3gvZG91YmxldGFwX2VuYWJsZWQK
PiArICovCj4gK3N0YXRpYyBzc2l6ZV90IGRvdWJsZXRhcF9lbmFibGVkX3Nob3coc3RydWN0IGRl
dmljZSAqZGV2LAo+ICsJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1
ZikKPiArewo+ICsJc3RydWN0IHNlcmlvICpzZXJpbyA9IHRvX3NlcmlvX3BvcnQoZGV2KTsKPiAr
CXN0cnVjdCBwc21vdXNlICpwc21vdXNlID0gcHNtb3VzZV9mcm9tX3NlcmlvKHNlcmlvKTsKPiAr
CXN0cnVjdCB0cmFja3BvaW50X2RhdGEgKnRwID0gcHNtb3VzZS0+cHJpdmF0ZTsKPiArCWJvb2wg
c3RhdHVzOwo+ICsJaW50IHJjOwo+ICsKPiArCWlmICghdHAgfHwgIXRwLT5kb3VibGV0YXBfY2Fw
YWJsZSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4gKwlyYyA9IHRyYWNrcG9pbnRfZG91Ymxl
dGFwX3N0YXR1cygmc3RhdHVzKTsKPiArCWlmIChyYykKPiArCQlyZXR1cm4gcmM7Cj4gKwo+ICsJ
cmV0dXJuIHN5c2ZzX2VtaXQoYnVmLCAiJWRcbiIsIHN0YXR1cyA/IDEgOiAwKTsKPiArfQo+ICsK
PiArc3RhdGljIHNzaXplX3QgZG91YmxldGFwX2VuYWJsZWRfc3RvcmUoc3RydWN0IGRldmljZSAq
ZGV2LAo+ICsJCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICsJCQkJCWNvbnN0
IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQo+ICt7Cj4gKwlzdHJ1Y3Qgc2VyaW8gKnNlcmlvID0g
dG9fc2VyaW9fcG9ydChkZXYpOwo+ICsJc3RydWN0IHBzbW91c2UgKnBzbW91c2UgPSBwc21vdXNl
X2Zyb21fc2VyaW8oc2VyaW8pOwo+ICsJc3RydWN0IHRyYWNrcG9pbnRfZGF0YSAqdHAgPSBwc21v
dXNlLT5wcml2YXRlOwo+ICsJYm9vbCBlbmFibGU7Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWlmICgh
dHAgfHwgIXRwLT5kb3VibGV0YXBfY2FwYWJsZSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4g
KwllcnIgPSBrc3RydG9ib29sKGJ1ZiwgJmVuYWJsZSk7Cj4gKwlpZiAoZXJyKQo+ICsJCXJldHVy
biBlcnI7Cj4gKwo+ICsJZXJyID0gdHJhY2twb2ludF9zZXRfZG91YmxldGFwKGVuYWJsZSk7Cj4g
KwlpZiAoZXJyKQo+ICsJCXJldHVybiBlcnI7Cj4gKwo+ICsJcmV0dXJuIGNvdW50Owo+ICt9Cj4g
Kwo+ICtzdGF0aWMgREVWSUNFX0FUVFJfUlcoZG91YmxldGFwX2VuYWJsZWQpOwo+ICsKPiAgaW50
IHRyYWNrcG9pbnRfZGV0ZWN0KHN0cnVjdCBwc21vdXNlICpwc21vdXNlLCBib29sIHNldF9wcm9w
ZXJ0aWVzKQo+ICB7Cj4gIAlzdHJ1Y3QgcHMyZGV2ICpwczJkZXYgPSAmcHNtb3VzZS0+cHMyZGV2
Owo+IEBAIC00MjUsNiArNTY3LDkgQEAgaW50IHRyYWNrcG9pbnRfZGV0ZWN0KHN0cnVjdCBwc21v
dXNlICpwc21vdXNlLCBib29sIHNldF9wcm9wZXJ0aWVzKQo+ICAJcHNtb3VzZS0+cmVjb25uZWN0
ID0gdHJhY2twb2ludF9yZWNvbm5lY3Q7Cj4gIAlwc21vdXNlLT5kaXNjb25uZWN0ID0gdHJhY2tw
b2ludF9kaXNjb25uZWN0Owo+ICAKPiArCXRyYWNrcG9pbnRfZGV2ID0gcHNtb3VzZS0+cHJpdmF0
ZTsKPiArCXRyYWNrcG9pbnRfZGV2LT5wYXJlbnRfcHNtb3VzZSA9IHBzbW91c2U7Cj4gKwo+ICAJ
aWYgKHZhcmlhbnRfaWQgIT0gVFBfVkFSSUFOVF9JQk0pIHsKPiAgCQkvKiBOZXdlciB2YXJpYW50
cyBkbyBub3Qgc3VwcG9ydCBleHRlbmRlZCBidXR0b24gcXVlcnkuICovCj4gIAkJYnV0dG9uX2lu
Zm8gPSAweDMzOwo+IEBAIC00NzAsNiArNjE1LDEwIEBAIGludCB0cmFja3BvaW50X2RldGVjdChz
dHJ1Y3QgcHNtb3VzZSAqcHNtb3VzZSwgYm9vbCBzZXRfcHJvcGVydGllcykKPiAgCQkgICAgIHBz
bW91c2UtPnZlbmRvciwgZmlybXdhcmVfaWQsCj4gIAkJICAgICAoYnV0dG9uX2luZm8gJiAweGYw
KSA+PiA0LCBidXR0b25faW5mbyAmIDB4MGYpOwo+ICAKPiArCXRwLT5kb3VibGV0YXBfY2FwYWJs
ZSA9IGlzX3RyYWNrcG9pbnRfZHRfY2FwYWJsZShwczJkZXYtPnNlcmlvLT5maXJtd2FyZV9pZCk7
Cj4gKwlpZiAodHAtPmRvdWJsZXRhcF9jYXBhYmxlKQo+ICsJCWRldmljZV9jcmVhdGVfZmlsZSgm
cHNtb3VzZS0+cHMyZGV2LnNlcmlvLT5kZXYsICZkZXZfYXR0cl9kb3VibGV0YXBfZW5hYmxlZCk7
CgpQbGVhc2UgdXNlIGV4aXN0aW5nIGZhY2lsaXRpZXMgaW4gcHNtb3VzZSBkcml2ZXIgdG8gZGVm
aW5lIGFuZCByZWdpc3Rlcgpwcm90b2NvbC1zcGVjaWZpYyBhdHRyaWJ1dGVzLiBVc2UgaXNfdmlz
aWJsZSgpIHRvIGNvbnRyb2wgd2hldGhlciB0aGUKYXR0cmlidXRlIGlzIGFjY2Vzc2libGUgb3Ig
bm90LgoKVGhhbmtzLgoKLS0gCkRtaXRyeQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1k
ZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
