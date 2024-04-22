Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECAD8ACC18
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 22 Apr 2024 13:36:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryrxs-0008Or-H1;
	Mon, 22 Apr 2024 11:36:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1ryrxp-0008Oh-FF
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 11:36:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pzj5YK1Bd80oPjOtv0BzKMOOVvRtSlpXAgwXFAF8hIg=; b=dZG/8QjGjSKCmOX0y6LsGUv2rv
 aNhz9EfGVktedt5PWvkKjXinUneyXvxV0p7qXJ7CdPQUutTtS4TE5houOda/Hdz5KMpwZlAbN2UTx
 1zik/KIoat4jX+5N5sVXFqVk8Q772CnKVITVMIv+3ry+4NYBIUzw1jUeCLeYlortq9wM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pzj5YK1Bd80oPjOtv0BzKMOOVvRtSlpXAgwXFAF8hIg=; b=MfybAwNIZ3nZEaFzsqrCryLIJ6
 WHspcg4ONv6jpuxAsJuks56c0zn7DViZlSvlztkAKKYSfjctR08TCjHdSHguTRWc7QZOjC7v+lSsJ
 YYV7g1OGuTOA+hUUv5FnR9odxtfljjBPA1bVlwmkF2v2lIM0dBy8utb5n7jsi6yGNHKs=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ryrxo-0002mA-6y for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 11:36:01 +0000
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-572158af3c3so201591a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 22 Apr 2024 04:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713785749; x=1714390549; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pzj5YK1Bd80oPjOtv0BzKMOOVvRtSlpXAgwXFAF8hIg=;
 b=A6c9O2fKyBua934ktfmF7B2LqSFaqWt5MYs1gK1yUPYVYGsz5suEsjcCkXB14SbRsm
 Q3aZ0wt9VVptwrtKSflDYmGvDr8wxlpXEt1sSCU/BcX/b1Aa2vqgdRTNEOHVQ2d42O6A
 NLH9qNRFgL4eMb/Fces+SQqxIncwqVF1cX2GWdKGgi+xhHK8iTP+4eBSBLWi34hXthwt
 dgDCpcqqgUwhLG1kNE4IlfStBufeN2iC5QeLh1wzPW65kVW1fGdgJ3T0Nts3sLHbqwIg
 PKQrslMWJU65Il1GhZTE4Uq+sUWqJtAiKwInETiFWqGRnvyuJ6OMHq4UcndYhtN+Z4MY
 LWwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713785749; x=1714390549;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pzj5YK1Bd80oPjOtv0BzKMOOVvRtSlpXAgwXFAF8hIg=;
 b=HLU72AWhALWcpAl1okzJu5Y3zbECXDqMemSDO7ZDa4/zVRp5otHKkbp1qP06wG0SUD
 r1y1zqsomH314Rcm/s7F4JdTcNbbmkpfnsjm1r+n4bTY4iL9aHYVy33fRASTcIE92HNc
 T6CpOfNnBWKggyUdJlrJZHBcceVu2JcOnD5SXD3FR/EQ3RNmRVVh9Qymh+AQ8fVrwUPP
 3kFbo3+E1YKxzpKInt95VrD2fjful5DFP9HGKq2rq/OaEfLj1Bc854fqllcRR1AwnNxh
 Ot7s/z5PXaXzR382MR/UgzZNHtPq+TyO+UrSdxok2w7GR5/90e55LWFUF6CPRsLX/bOH
 7v6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXN55J8NSJ9FNu+Jia8sMlG0emiOsXM4BPs+DsRgTasGYx2OPnW439nnTVn+XOtdsJKhtnU/dMo2jWOwlMaDCb2tcm0NDTqCsP988nts/Uk5NecdyU=
X-Gm-Message-State: AOJu0YxXO4KJoe2mR2/dS2p67mZpHu4IBOTxiPcOVzSpuaE1E4DDAYMb
 wXSQqhvEixl/nGcRZS1AvvbDPCFrLkFKLFhiVDrbEyKeRB+h4QLZBHFOwgNtndIITZeq7pc7okb
 qtL4AajkewjvLoXx7kgovQKRPQQo=
X-Google-Smtp-Source: AGHT+IGnCelmQzhv9aeURXGp8t89ibUvXDMrPd1ZcoiHxDqfvIn2WOKz1vpyYK01ZmGYWtQ271e52H7pJshnBx7eTmQ=
X-Received: by 2002:a17:907:7b86:b0:a52:5b71:d91f with SMTP id
 ne6-20020a1709077b8600b00a525b71d91fmr8102241ejc.19.1713785749097; Mon, 22
 Apr 2024 04:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-9-hdegoede@redhat.com>
 <a591120c-72c6-7b6c-92ba-c65c36a8d70f@linux.intel.com>
In-Reply-To: <a591120c-72c6-7b6c-92ba-c65c36a8d70f@linux.intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Apr 2024 14:35:13 +0300
Message-ID: <CAHp75VfM8WgZt_cDp3htfJSusvMRyoDb6LoFewb+bc4AD0T-gQ@mail.gmail.com>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Apr 22, 2024 at 11:29 AM Ilpo Järvinen wrote: >
    On Sun, 21 Apr 2024, Hans de Goede wrote: ... > > + int mode = adaptive_keyboard_get_mode();
    > > + > > + if (mode < 0) > > Please try to keep call and it's error handling
    together, it costs one > line but takes less effort to understand: > > int
    [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [andy.shevchenko[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.53 listed in wl.mailspike.net]
X-Headers-End: 1ryrxo-0002mA-6y
Subject: Re: [ibm-acpi-devel] [PATCH 08/24] platform/x86: thinkpad_acpi:
 Move adaptive kbd event handling to tpacpi_driver_event()
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
Cc: Andy Shevchenko <andy@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Vishnu Sankar <vishnuocv@gmail.com>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 Nitin Joshi <njoshi1@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gTW9uLCBBcHIgMjIsIDIwMjQgYXQgMTE6MjnigK9BTSBJbHBvIErDpHJ2aW5lbgo8aWxwby5q
YXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+IE9uIFN1biwgMjEgQXByIDIwMjQsIEhh
bnMgZGUgR29lZGUgd3JvdGU6CgouLi4KCj4gPiArICAgICBpbnQgbW9kZSA9IGFkYXB0aXZlX2tl
eWJvYXJkX2dldF9tb2RlKCk7Cj4gPiArCj4gPiArICAgICBpZiAobW9kZSA8IDApCj4KPiBQbGVh
c2UgdHJ5IHRvIGtlZXAgY2FsbCBhbmQgaXQncyBlcnJvciBoYW5kbGluZyB0b2dldGhlciwgaXQg
Y29zdHMgb25lCj4gbGluZSBidXQgdGFrZXMgbGVzcyBlZmZvcnQgdG8gdW5kZXJzdGFuZDoKPgo+
ICAgICAgICAgaW50IG1vZGU7Cj4KPiAgICAgICAgIG1vZGUgPSBhZGFwdGl2ZV9rZXlib2FyZF9n
ZXRfbW9kZSgpOwo+ICAgICAgICAgaWYgKG1vZGUgPCAwKQo+Cj4gPiArICAgICAgICAgICAgIHJl
dHVybjsKCkFuZCBub3Qgb25seSB0aGF0LiBJbiBsb25nLXRlcm0gbWFpbnRlbmFuY2UgdGhlIG9y
aWdpbmFsIGNvZGUgaXMgcHJvbmUKdG8gc3VidGxlIGVycm9ycyBpbiBjYXNlIHNvbWUgb3RoZXIg
Y29kZSBpcyBzcXVlZXplZCBpbiBiZXR3ZWVuLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5
IFNoZXZjaGVua28KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2libS1hY3BpLWRldmVsCg==
