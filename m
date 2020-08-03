Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F92223A862
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Aug 2020 16:27:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k2bQr-0003b4-HJ; Mon, 03 Aug 2020 14:27:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k2bQp-0003aw-Td
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Aug 2020 14:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y4OcnA8hk9bdzyJmliDzBcCVkEqEWHbAZV3LgwM/Afg=; b=dDbZ6y9QGqzrKaX7bsRZVRzX5X
 3DG0YpObl4+j3ftzwqg3Nf/I7Js7xlgaizBC1ew323v7G1TgZLkVF2vnqS95PlobGUzV541n/XHy6
 EFDeWdq6XPLSw3gMz3VeYMqZ39t8luS3iP9s8SVvBWsVjELmX7dHIEVr94voH7UYi9NY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y4OcnA8hk9bdzyJmliDzBcCVkEqEWHbAZV3LgwM/Afg=; b=Xg6iLqthj/1JHOROrwbpO9P/EF
 1zzffxdslTeGqHFNQk6WxvFq3G5GaZ8einRDtsXoOHkKMlCSWPGilqdDXNlLnXuaN3/hUBRu9CYtR
 PmlS2MMljwcsHSJzZrpx0ObjUMGgaaDpyKgHXyh9HPZbIixAWYPs8mq7uM6NGi039jWE=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.5])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k2bQn-007ptT-UY
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Aug 2020 14:27:15 +0000
Received: from [100.112.130.41] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-a.us-west-2.aws.symcld.net id 17/4F-15041-6BE182F5;
 Mon, 03 Aug 2020 14:27:02 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkleJIrShJLcpLzFFi42LJePGQV3ernEa
 8Qet2I4uXEw4zWjyYm25x/NtMdovZh20s5jxby2ixes8LZgc2j52z7rJ7/D7A6LF7wWcmj/f7
 rrJ5fN4kF8AaxZqZl5RfkcCacX1TP3vBW96K51c62RoY53B3MXJxCAn8Z5R4tXEJE4TzgFHi2
 sk/QA4nh7BAgcSVZ5uAbA4OEQF1ic1dKSA1zAI/GCU+zjzKBtEwjVFi/4udrCANbALaElu2/G
 IDsXkFbCVOtdxgBWlmEVCR2PReESQsKhArsXzqH1aIEkGJkzOfsIDYnAKBEmu2HwPbyyxgITF
 z/nlGCFtc4taT+VBxeYnmrbOZQWwJAQWJlr4NrBB2gsSyl3eYJzAKzkIydhaSUbOQjJqFZNQC
 RpZVjBZJRZnpGSW5iZk5uoYGBrqGhka6hkYWuoYW5nqJVbqJeqXFuuWpxSW6RnqJ5cV6xZW5y
 TkpenmpJZsYgTGUUtCwewfjy9cf9A4xSnIwKYnydoppxAvxJeWnVGYkFmfEF5XmpBYfYpTh4F
 CS4C2WBcoJFqWmp1akZeYA4xkmLcHBoyTCew0kzVtckJhbnJkOkTrFqCglznsWJCEAksgozYN
 rg6WQS4yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEeStApvBk5pXATX8FtJgJaLHNBlWQxSWJ
 CCmpBiY5scps+8OclpP2cvtwe+S83LbG1X9fTLnacx09BT+lwtcLgi9fvLqjvMzS2u+cwvGOw
 DtObkwZfzu25c7q6BQJuNDr/nCO1Bs5Rd7JmcJO9xfJ7/3kyK6984h9acWc9ZF2VsfYr8teZ6
 nbMW3ZLtnorXvqDYXOfI6avtNR1kKv6uKJx08lGpQKis7d3SM/we7B4zveM91cN356N2ci05W
 HK03dVXXCmqK8mtet0TBtP2V90nbH5tjev71uB+b7XX+k9dlsk2OQ1o2lPjfuRf0WWDFhesfc
 IJ4j1o45fb7/Elb8XR9cdEL6xOmyY5/ZxdKTVXousbZaHpjDf8uWP67BL2QP8+Q0uzeTZ2poe
 CmxFGckGmoxFxUnAgCISpFDnAMAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-9.tower-336.messagelabs.com!1596464820!377!1
X-Originating-IP: [104.232.225.13]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26824 invoked from network); 3 Aug 2020 14:27:01 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.13)
 by server-9.tower-336.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 3 Aug 2020 14:27:01 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 00066D6763664E50F8C5;
 Mon,  3 Aug 2020 10:26:59 -0400 (EDT)
Received: from [10.38.102.51] (10.38.102.51) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 3 Aug 2020
 07:26:58 -0700
To: Elvis Stansvik <elvstone@gmail.com>
References: <CAHms=eZm3LY-Z4p+TkfZ+vyxGd_7XKPBsSEM_Mvnx2s-GO2c9w@mail.gmail.com>
 <CAHms=eYpcy__Km_9O4MUtLxpasH1sAgQEmcapOhV79j01twhow@mail.gmail.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <0e462361-a3bc-a7b8-bacd-85f32b575bac@lenovo.com>
Date: Mon, 3 Aug 2020 10:26:45 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAHms=eYpcy__Km_9O4MUtLxpasH1sAgQEmcapOhV79j01twhow@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.38.102.51]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.5 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1k2bQn-007ptT-UY
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v5] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 andy.shevchenko@gmail.com, Nitin Joshi <njoshi1@lenovo.com>, Bastien
 Nocera <bnocera@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgRWx2aXMsCgpPbiA4LzMvMjAyMCA5OjIwIEFNLCBFbHZpcyBTdGFuc3ZpayB3cm90ZToKPiAK
PiBEZW4gc8O2biAyIGF1Zy4gMjAyMCBrbCAyMzoxMCBza3JldiBFbHZpcyBTdGFuc3ZpayAKPiA8
ZWx2c3RvbmVAZ21haWwuY29tPjoKPj4gCj4+IChBcG9sb2dpZXMgaW4gYWR2YW5jZSBmb3IgbWlz
c2luZyBJbi1SZXBseS1UbyBoZWFkZXIgaW4gdGhpcwo+PiByZXBseS4gSSBzdWJzY3JpYmVkIHRv
IHRoZSBsaXN0IGp1c3Qgbm93LikKPj4gCj4+IERlbiBmcmUgMyBqdWxpIDIwMjAga2wgMDE6MjQg
c2tyZXYgTWFyayBQZWFyc29uIAo+PiA8bWFya3BlYXJzb25AbGVub3ZvLmNvbT46Cj4+PiBOZXdl
ciBMZW5vdm8gVGhpbmtwYWQgcGxhdGZvcm1zIGhhdmUgc3VwcG9ydCB0byBpZGVudGlmeSB3aGV0
aGVyIAo+Pj4gdGhlIHN5c3RlbSBpcyBvbi1sYXAgb3Igbm90IHVzaW5nIGFuIEFDUEkgRFlUQyBl
dmVudCBmcm9tIHRoZSAKPj4+IGZpcm13YXJlLgo+Pj4gCj4+PiBUaGlzIHBhdGNoIHByb3ZpZGVz
IHRoZSBhYmlsaXR5IHRvIHJldHJpZXZlIHRoZSBjdXJyZW50IG1vZGUgdmlhIAo+Pj4gc3lzZnMg
ZW50cnlwb2ludHMgYW5kIHdpbGwgYmUgdXNlZCBieSB1c2Vyc3BhY2UgZm9yIHRoZXJtYWwgbW9k
ZSAKPj4+IGFuZCBXV0FOIGZ1bmN0aW9uYWxpdHkKPj4gCj4+IEkgdHJpZWQgdGhlIHBhdGNoIG91
dCBvbiBteSBYMUM2ICgyMEtIMDA3Qk1YKSwgcnVubmluZyBMZW5vdm8gCj4+IGZpcm13YXJlIHZl
cnNpb24gMC4xLjQ5Lgo+PiAKPj4gVGhlIHN5c2ZzIHBhdGggL3N5cy9kZXZpY2VzL3BsYXRmb3Jt
L3RoaW5rcGFkX2FjcGkvZHl0Y19sYXBtb2RlIGlzIAo+PiBzaG93aW5nIHVwLCBidXQgaXQncyBy
ZXBvcnRpbmcgMCByZWdhcmRsZXNzIGlmIHRoZSBsYXB0b3AgaXMgaW4gbXkgCj4+IGxhcCBvciBv
biBhIGRlc2suCj4+IAo+PiBJIHRlc3RlZCB0aGlzIGJ5IGhhdmluZyB0aGUgbGFwdG9wIGluIG15
IGxhcCBmb3IgZml2ZSBtaW51dGVzLCBhbmQgCj4+IHRoZW4gb24gYSBkZXNrIGZvciBmaXZlIG1p
bnV0ZXMuIFRoZSB2YWx1ZSByZXBvcnRlZCB0aHJvdWdoIAo+PiAvc3lzL2RldmljZXMvcGxhdGZv
cm0vdGhpbmtwYWRfYWNwaS9keXRjX2xhcG1vZGUgd2FzIGFsd2F5cyAwLgo+PiAKVGhhbmtzIGZv
ciB0aGUgdXBkYXRlLgpUaGUgWDFDNiBkb2Vzbid0IGhhdmUgc3VwcG9ydCBmb3IgdGhlIG5ldyB0
aGVybWFsIG1vZGUgaW1wbGVtZW50YXRpb24gc28gCkknbSB3b25kZXJpbmcgaWYgdGhlIGxhcG1v
ZGUgYmVpbmcgYXZhaWxhYmxlIGNvdWxkIGJlIHJlbGF0ZWQgdG8gdGhlIAp2ZXJzaW9uIG9mIERZ
VEMgaXMgYXZhaWxhYmxlLiBJJ2xsIGNoZWNrIHdpdGggdGhlIGZpcm13YXJlIHRlYW0gYW5kIGdl
dCAKYmFjayB0byB5b3Ugb24gdGhhdCAtIHRoZXkgaGFkbid0IGxpc3RlZCBpdCB0byBtZSBhcyBh
IGxpbWl0YXRpb24gCnByZXZpb3VzbHkgYW5kIHVuZm9ydHVuYXRlbHkgSSBkb24ndCBoYXZlIGFu
IFgxQzYgc28gZGlkbid0IHRlc3Qgb24gdGhhdCAKcGxhdGZvcm0uCgpBcyBhIG5vdGUgLSB0aGUg
bGFwbW9kZSBpcyBwcmltYXJpbHkgZm9yIHRoZSB0aGVybWFsIG1vZGVzIChpdCBpcyBhbHNvIApi
ZWluZyB1c2VkIGZvciBXV0FOIHBvd2VyIGNvbnRyb2wgYnV0IHRoYXQgaXMgbm90IHN1cHBvcnRl
ZCBmb3IgTGludXggb24gCnRoZSBYMUM2IGVpdGhlciBmb3Igb3RoZXIgcmVhc29ucykuIEknbSBh
ZnJhaWQgdGhlIGludGVyZmFjZSBpcyBvZiAKbGltaXRlZCB1c2UgdG8geW91IGFueXdheS4uLi4K
Ck1hcmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpp
Ym0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1h
Y3BpLWRldmVsCg==
