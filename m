Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 504A0E4FE8
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 25 Oct 2019 17:15:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iO1J2-0004v3-3Y; Fri, 25 Oct 2019 15:15:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1iO1J0-0004ue-DJ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 25 Oct 2019 15:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OvjkcFtfCEdqWQrcnruJzj2UwHg1E7XfB3n76sw/AQU=; b=mDgmGHQvvJOTwFLckOM9s14CIP
 d30qfesc8oYV0AfmpKGIpvB2DgrAdCloMTRRrVqECA6FWF001AVAspcFRngXTIJk3UuASN5iMRuNQ
 dPsWq9WJd7eFuGvBiu16wFEpkP5mCruUce8VIE7Wvgox5BgK8L2A/x+fx1sJG68WD0y8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OvjkcFtfCEdqWQrcnruJzj2UwHg1E7XfB3n76sw/AQU=; b=kV78rjM0U6aMBxJfoFZ36Lg6S6
 7vNQ4V1UeHWHuj9Am1TfnSXKzi8pd8lWxA1jtq1DhdjByBvt2K3aUGok1oh+BRWFPOO2Nc9Vb8gC5
 mmxdkUqCekLGs3V484z7seqyOT1MPLHR8D4pYM7dToHWT7tIxCXusWuA4KNdpJA9pUd0=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iO1Iy-003NWd-HU
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 25 Oct 2019 15:15:10 +0000
Received: by mail-pl1-f194.google.com with SMTP id q16so1137565pll.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 25 Oct 2019 08:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OvjkcFtfCEdqWQrcnruJzj2UwHg1E7XfB3n76sw/AQU=;
 b=qobRyMKxgMCHYqZLMbHZGmo+SxOBYKXhrDvtx8GRQV0uZdolYKPJalarOcPO0o0U/y
 tNsv44Zg/gduL627ELf9QCPSOTnBd04ZmC3SUFFI4oIf22q8RNna1GFegTNNyO+b4HSw
 ywt/waYvRDL8dzMMdCyn5VFCajTROjTZCjtwHaxFTVDeVedPiqqERfowxu7a8Pexr4VI
 H387yU49zHdcIHGHKt3jh5V5P6n5lOQwDhT84IUiA+FxizsucfpIIBAMYchxSPb0w+xq
 J0l3Tg/TU3GROPQRc5T9l8FKxom8PXYaQU9AGio+twt+O9Bni04iOoXg4UXcn51eMIhG
 /qow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OvjkcFtfCEdqWQrcnruJzj2UwHg1E7XfB3n76sw/AQU=;
 b=H/IecKJNRhXjXNwrwkUBRfACK4+9ZqcCVEx2Jeq0x+v1gppmyMu9ZOtJjeJawtfT8a
 hKGkzchNvKYBcXYoYiAbURS8LkmvksUwPMi5D1BrAkVYVZg8ySJ328hUL8ruaz769TJI
 NyfdtJVVTDQwHC8Md4/7ILQFjl9A/jyFsa2vNkfhgZd8JhPoNOhfWR+o2qcvSzZ01z/4
 DGZFzEsGx3gdWmlr0AFKJ6sWmmRj7K36dsRX3Jb5hEEvIEZjSO9CAcFTNeKg1lRPF8xN
 ZujGlVhkP/00mOLh7lqwKxdSwjqKz7WWlPICAm/fsiYmkkxWs9HuOH3TuQmdM713EnaB
 uqHw==
X-Gm-Message-State: APjAAAWRVKzYKDNDZO8+Dbx11KvPm8GmdkYHJz70foO3rA9XS2xGuYX4
 sXLzR7EQkyLb2GBlIuLXU5h0pVSH3OSAH5pcN80=
X-Google-Smtp-Source: APXvYqwN1sDnM3ZUS7iRp0nT577+Aefwp3GaT7MX7n40vKz4c+vNWEjkf5r9p5FHsAWhs8nJPfh6peSoGH9oVI3YuBE=
X-Received: by 2002:a17:902:b90c:: with SMTP id
 bf12mr4367234plb.262.1572016502423; 
 Fri, 25 Oct 2019 08:15:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAHp75VdMZMxGJpmi6wQMa8FJdzpkPq7nA=kFf4pUSrskrTtFeA@mail.gmail.com>
 <20190822114833.29885-1-alex@alexanderweb.de>
 <20191025113330.6wmi5lcm7mzlkl5a@pali>
In-Reply-To: <20191025113330.6wmi5lcm7mzlkl5a@pali>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 25 Oct 2019 18:14:51 +0300
Message-ID: <CAHp75VeTQ_nxTH14k8DDO+_STK-JTq=O1dhrNr4pURCgw0nQNA@mail.gmail.com>
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1iO1Iy-003NWd-HU
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
Cc: Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Alexander Schremmer <alex@alexanderweb.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMjozMyBQTSBQYWxpIFJvaMOhciA8cGFsaS5yb2hhckBn
bWFpbC5jb20+IHdyb3RlOgo+IE9uIFRodXJzZGF5IDIyIEF1Z3VzdCAyMDE5IDEzOjQ4OjMzIEFs
ZXhhbmRlciBTY2hyZW1tZXIgd3JvdGU6Cj4gPiBUaGlzIGZlYXR1cmUgaXMgZm91bmQgb3B0aW9u
YWxseSBpbiBUNDgwcywgVDQ5MCwgVDQ5MHMuCj4gPgo+ID4gVGhlIGZlYXR1cmUgaXMgY2FsbGVk
IGxjZHNoYWRvdyBhbmQgdmlzaWJsZSB2aWEKPiA+IC9wcm9jL2FjcGkvaWJtL2xjZHNoYWRvdy4K
PiA+Cj4gPiBUaGUgQUNQSSBtZXRob2RzIFxfU0IuUENJMC5MUENCLkVDLkhLRVkue0dTU1MsU1NT
UyxUU1NTLENTU1N9IGFyZQo+ID4gYXZhaWxhYmxlIGluIHRoZXNlIG1hY2hpbmVzLiBUaGV5IGdl
dCwgc2V0LCB0b2dnbGUgb3IgY2hhbmdlIHRoZSBzdGF0ZQo+ID4gYXBwYXJlbnRseS4KPiA+Cj4g
PiBUaGUgcGF0Y2ggd2FzIHRlc3RlZCBvbiBhIDUuMCBzZXJpZXMga2VybmVsIG9uIGEgVDQ4MHMu
Cgo+ID4gKyAgICAgZWNobyAnMCcgPi9wcm9jL2FjcGkvaWJtL2xjZHNoYWRvdwo+ID4gKyAgICAg
ZWNobyAnMScgPi9wcm9jL2FjcGkvaWJtL2xjZHNoYWRvdwoKPiBIZWxsbyEgSXMgbm90IHRoZSB3
aG9sZSAvcHJvYy9hcGNpL2libSBBUEkgZm9yIG5ldyB0aGluZ3Mgb2Jzb2xldGVkIG9yIGRlcHJl
Y2F0ZWQ/Cj4gQW5kIHNob3VsZCBub3QgcmF0aGVyIGl0IHVzZSBwbGF0Zm9ybSBkcml2ZXIgaW4g
L3N5cy8gKGNsYXNzPykgbmFtZXNwYWNlPwoKVGhlcmUgaXMgYW4gb25nb2luZyBkaXNjdXNzaW9u
IGFib3V0IEFQSSB0byB0aGlzIGtpbmQgb2YgZGV2aWNlcwpzb21ld2hlcmUgaW4gR1BVIG1haWxp
bmcgbGlzdHMuClRoaXMgaW50ZXJmYWNlIGlzIGN1c3RvbSBhbmQgcHJvYmFibHkgc2hhbGwgbmV2
ZXIgaGF2ZSBiZWVuIGFwcGVhcmVkLgpIb3dldmVyIG5vLW9uZSBwcmV2ZW50ZWQgdGhpcyBmcm9t
IGhhcHBlbmluZy4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2
ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
