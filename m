Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0868FE4A09
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 25 Oct 2019 13:34:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iNxqg-0006vC-Gu; Fri, 25 Oct 2019 11:33:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali.rohar@gmail.com>) id 1iNxqe-0006v5-Oq
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 25 Oct 2019 11:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1E+wk7tN6ruu9vGXxSj1MPfDYALqcvFUI2R29nV/OK0=; b=dfc3V1Kh9clyMm7ZGja5NppFvG
 p+s33eC8xz0c4Si1L+35QHko8FrAkVP5mjFo4McCDLXwpyTz+HT7WMzu9iV2c2kx0x+sZHw7j/T2X
 CBPRAR775BWZW8O0soitTEirPCr9pz0uVtFGayr4Aag76lbl+qKCi1M+0Dv2ApJ+93KE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1E+wk7tN6ruu9vGXxSj1MPfDYALqcvFUI2R29nV/OK0=; b=OVmrLu7DKV9fZ/YWcFJhOJAvz6
 bD2r6kTOsuswkrSihxwC3YVZ/mdcfRlOXF8DmTgPgYpAg82o70GzN2rjxOIYY56b838KL2rcdbxAe
 Ezuc/Mg0O48WSe6F+40iIL3bg5KyynDW9ye9AG53C2V6BIWFD9BtnwpOYhMX21ctOxAc=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iNxqd-00Gg2E-BU
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 25 Oct 2019 11:33:40 +0000
Received: by mail-wr1-f65.google.com with SMTP id z11so1907770wro.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 25 Oct 2019 04:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=1E+wk7tN6ruu9vGXxSj1MPfDYALqcvFUI2R29nV/OK0=;
 b=aLRz6zK+qwK1To06Ikpf/PxpE5iCftMw05p4pVWa2NF3jct64Siqu5I3IgZUyxiCwk
 BbtzchuXBBA2oT0ihStDXZKFUI1HR/iw8eb3SK9eLp/Un5pf5WXHAeTo3VZyvmJimCRn
 mR76a22qrY7dl2FCxmN+Xx9jG48X5nJDk9d7HWyihzlGehk0St3mcBRlDXKEe/2hoeKO
 a3xDhJ0Yji7ew3mwcz5kZEMwpsNeboB1EBcsMOcslBvIKOG6Vk8frY/66N+AWk+HB/qb
 H5shYLV8R5aIKgOwlY5clt7Gr+kAkc2rEG3Sav/fLc5rZc6eZlx6VU63sHDbT5nmeTvz
 hj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=1E+wk7tN6ruu9vGXxSj1MPfDYALqcvFUI2R29nV/OK0=;
 b=un71O32cyLJi5Ns0efFKSHmz966LgioXSyvehQNWCyxcjUcZ8m3eMBnxfEAcMkzQqf
 hCinv2NcGJpxl+mq95p+hQylSm24v8VOD8HinT3cQtGTcS6e7n6ldIMcrmun8rzbt7rf
 ZiJNmClqaTHuSoQudUejduwo+Y0cBMje3/cSeGmfZjdvpwi46hj183STzDznDHRWbFU0
 QigoSZ6U9iG02Nk6FlfQ9oEC0kIig1xXM5J9mFfEyjmjNHvnmt32b3w/U+QvoV629oAK
 +XDLG2DHW3wNxcQOM33Hs4wVfiYYoU6Rx81BL0A86iJfi13yInFDvxHiiV9XIQcozods
 4xzA==
X-Gm-Message-State: APjAAAXGzJXoKWqoN9qd7ZEhxgJ4XjLqwm0kLNPCxhVG5BU1X+Omq0q3
 xURpwB84eYnIRGA5DzTEw3o=
X-Google-Smtp-Source: APXvYqxRhHmrs4rz4Pa11Szlu1P8A6xZdLzLXbNVQQUQfN2YEqkkhr/iPdtzWeg7UqXGd7AgngqIrA==
X-Received: by 2002:adf:e651:: with SMTP id b17mr2068175wrn.191.1572003212775; 
 Fri, 25 Oct 2019 04:33:32 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id o25sm2214942wro.21.2019.10.25.04.33.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 25 Oct 2019 04:33:31 -0700 (PDT)
Date: Fri, 25 Oct 2019 13:33:30 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Alexander Schremmer <alex@alexanderweb.de>
Message-ID: <20191025113330.6wmi5lcm7mzlkl5a@pali>
References: <CAHp75VdMZMxGJpmi6wQMa8FJdzpkPq7nA=kFf4pUSrskrTtFeA@mail.gmail.com>
 <20190822114833.29885-1-alex@alexanderweb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822114833.29885-1-alex@alexanderweb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alexanderweb.de]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (pali.rohar[at]gmail.com)
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2a02:2b88:2:1:0:0:5cc6:2f listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iNxqd-00Gg2E-BU
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: Add Lenovo ThinkPad
 PrivacyGuard.
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
Cc: ibm-acpi-devel@lists.sourceforge.net, andy.shevchenko@gmail.com,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVGh1cnNkYXkgMjIgQXVndXN0IDIwMTkgMTM6NDg6MzMgQWxleGFuZGVyIFNjaHJlbW1lciB3
cm90ZToKPiBUaGlzIGZlYXR1cmUgaXMgZm91bmQgb3B0aW9uYWxseSBpbiBUNDgwcywgVDQ5MCwg
VDQ5MHMuCj4gCj4gVGhlIGZlYXR1cmUgaXMgY2FsbGVkIGxjZHNoYWRvdyBhbmQgdmlzaWJsZSB2
aWEKPiAvcHJvYy9hY3BpL2libS9sY2RzaGFkb3cuCj4gCj4gVGhlIEFDUEkgbWV0aG9kcyBcX1NC
LlBDSTAuTFBDQi5FQy5IS0VZLntHU1NTLFNTU1MsVFNTUyxDU1NTfSBhcmUKPiBhdmFpbGFibGUg
aW4gdGhlc2UgbWFjaGluZXMuIFRoZXkgZ2V0LCBzZXQsIHRvZ2dsZSBvciBjaGFuZ2UgdGhlIHN0
YXRlCj4gYXBwYXJlbnRseS4KPiAKPiBUaGUgcGF0Y2ggd2FzIHRlc3RlZCBvbiBhIDUuMCBzZXJp
ZXMga2VybmVsIG9uIGEgVDQ4MHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNjaHJl
bW1lciA8YWxleEBhbGV4YW5kZXJ3ZWIuZGU+Cj4gLS0tCj4gIC4uLi9hZG1pbi1ndWlkZS9sYXB0
b3BzL3RoaW5rcGFkLWFjcGkucnN0ICAgICB8ICAyMyArKysrCj4gIGRyaXZlcnMvcGxhdGZvcm0v
eDg2L3RoaW5rcGFkX2FjcGkuYyAgICAgICAgICB8IDExMiArKysrKysrKysrKysrKysrKysKPiAg
MiBmaWxlcyBjaGFuZ2VkLCAxMzUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2FkbWluLWd1aWRlL2xhcHRvcHMvdGhpbmtwYWQtYWNwaS5yc3QgYi9Eb2N1bWVu
dGF0aW9uL2FkbWluLWd1aWRlL2xhcHRvcHMvdGhpbmtwYWQtYWNwaS5yc3QKPiBpbmRleCBhZGVh
MGJmMmFjYzUuLjgyMjkwN2RjYzg0NSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWlu
LWd1aWRlL2xhcHRvcHMvdGhpbmtwYWQtYWNwaS5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL2xhcHRvcHMvdGhpbmtwYWQtYWNwaS5yc3QKPiBAQCAtNDksNiArNDksNyBAQCBk
ZXRhaWxlZCBkZXNjcmlwdGlvbik6Cj4gIAktIEZhbiBjb250cm9sIGFuZCBtb25pdG9yaW5nOiBm
YW4gc3BlZWQsIGZhbiBlbmFibGUvZGlzYWJsZQo+ICAJLSBXQU4gZW5hYmxlIGFuZCBkaXNhYmxl
Cj4gIAktIFVXQiBlbmFibGUgYW5kIGRpc2FibGUKPiArCS0gTENEIFNoYWRvdyAoUHJpdmFjeUd1
YXJkKSBlbmFibGUgYW5kIGRpc2FibGUKPiAgCj4gIEEgY29tcGF0aWJpbGl0eSB0YWJsZSBieSBt
b2RlbCBhbmQgZmVhdHVyZSBpcyBtYWludGFpbmVkIG9uIHRoZSB3ZWIKPiAgc2l0ZSwgaHR0cDov
L2libS1hY3BpLnNmLm5ldC8uIEkgYXBwcmVjaWF0ZSBhbnkgc3VjY2VzcyBvciBmYWlsdXJlCj4g
QEAgLTE0MDksNiArMTQxMCwyOCBAQCBTeXNmcyBub3Rlcwo+ICAJRG9jdW1lbnRhdGlvbi9kcml2
ZXItYXBpL3Jma2lsbC5yc3QgZm9yIGRldGFpbHMuCj4gIAo+ICAKPiArTENEIFNoYWRvdyBjb250
cm9sCj4gKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICsKPiArcHJvY2ZzOiAvcHJvYy9hY3BpL2libS9s
Y2RzaGFkb3cKPiArCj4gK1NvbWUgbmV3ZXIgVDQ4MHMgYW5kIFQ0OTBzIFRoaW5rUGFkcyBwcm92
aWRlIGEgZmVhdHVyZSBjYWxsZWQKPiArUHJpdmFjeUd1YXJkLiBCeSB0dXJuaW5nIHRoaXMgZmVh
dHVyZSBvbiwgdGhlIHVzYWJsZSB2ZXJ0aWNhbCBhbmQKPiAraG9yaXpvbnRhbCB2aWV3aW5nIGFu
Z2xlcyBvZiB0aGUgTENEIGNhbiBiZSBsaW1pdGVkIChhcyBpZiBzb21lIHByaXZhY3kKPiArc2Ny
ZWVuIHdhcyBhcHBsaWVkIG1hbnVhbGx5IGluIGZyb250IG9mIHRoZSBkaXNwbGF5KS4KPiArCj4g
K3Byb2NmcyBub3Rlcwo+ICteXl5eXl5eXl5eXl4KPiArCj4gK1RoZSBhdmFpbGFibGUgY29tbWFu
ZHMgYXJlOjoKPiArCj4gKwllY2hvICcwJyA+L3Byb2MvYWNwaS9pYm0vbGNkc2hhZG93Cj4gKwll
Y2hvICcxJyA+L3Byb2MvYWNwaS9pYm0vbGNkc2hhZG93Cj4gKwo+ICtUaGUgZmlyc3QgY29tbWFu
ZCBlbnN1cmVzIHRoZSBiZXN0IHZpZXdpbmcgYW5nbGUgYW5kIHRoZSBsYXR0ZXIgb25lIHR1cm5z
Cj4gK29uIHRoZSBmZWF0dXJlLCByZXN0cmljdGluZyB0aGUgdmlld2luZyBhbmdsZXMuCj4gKwo+
ICsKPiAgRVhQRVJJTUVOVEFMOiBVV0IKPiAgLS0tLS0tLS0tLS0tLS0tLS0KCkhlbGxvISBJcyBu
b3QgdGhlIHdob2xlIC9wcm9jL2FwY2kvaWJtIEFQSSBmb3IgbmV3IHRoaW5ncyBvYnNvbGV0ZWQg
b3IgZGVwcmVjYXRlZD8KQW5kIHNob3VsZCBub3QgcmF0aGVyIGl0IHVzZSBwbGF0Zm9ybSBkcml2
ZXIgaW4gL3N5cy8gKGNsYXNzPykgbmFtZXNwYWNlPwoKLS0gClBhbGkgUm9ow6FyCnBhbGkucm9o
YXJAZ21haWwuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9pYm0tYWNwaS1kZXZlbAo=
