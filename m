Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3598C4C66
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 May 2024 08:39:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s6lnl-000391-MP;
	Tue, 14 May 2024 06:38:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjt@tls.msk.ru>) id 1s6lni-00038r-LY
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 14 May 2024 06:38:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iQrKxof3M1HRHA8oKtSuucufJJlA0bP2Ldw3AT6IN60=; b=bVec6xPV6i67u7laTejAVv0Ro0
 48eB/E5ZGOgyR7QIKLlyIrZchj67jkG9NwkkPhpAIjdtIgUCf4rAllYGHNx0x5Ep9beYrDQmBcYKh
 7mQuqwcDXkHg2VK9NY/jqnm6Ah53WupLFXlb9U4D9/AQBlK3bgOfvyO5kh8bcyt0V75Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iQrKxof3M1HRHA8oKtSuucufJJlA0bP2Ldw3AT6IN60=; b=BGkOs6SL2Y0Kmb8vaa8CWr93At
 oAu8ZmsKtWrsOPP7O7gR7UjBRDSxxXq6UAu40sed9O/cGFMakRmlztyfrNOnKnusGW6HJscV3HjMx
 41y1Bhyi/fgQeOZQiAF6EnhLpQ8bulMyi1zqoeSLMyAcuSMq7MpO4tTbGK3nVCra/vn8=;
Received: from isrv.corpit.ru ([86.62.121.231])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s6lnh-00023P-CI for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 14 May 2024 06:38:15 +0000
Received: from tsrv.corpit.ru (tsrv.tls.msk.ru [192.168.177.2])
 by isrv.corpit.ru (Postfix) with ESMTP id D7F566681F
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 May 2024 09:38:09 +0300 (MSK)
Received: from [192.168.177.130] (mjt.wg.tls.msk.ru [192.168.177.130])
 by tsrv.corpit.ru (Postfix) with ESMTP id A0A4CCE3AA
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 May 2024 09:38:00 +0300 (MSK)
Message-ID: <44d24dea-1cc3-4059-9c55-1d8189eef4ae@tls.msk.ru>
Date: Tue, 14 May 2024 09:38:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Michael Tokarev <mjt@tls.msk.ru>
To: ibm-acpi-devel@lists.sourceforge.net
References: <0532cbc2-be3b-4b4d-8291-b524e3ab058c@tls.msk.ru>
Content-Language: en-US
Autocrypt: addr=mjt@tls.msk.ru; keydata=
 xsBLBETIiwkBCADh3cFB56BQYPjtMZCfK6PSLR8lw8EB20rsrPeJtd91IoNZlnCjSoxd9Th1
 bLUR8YlpRJ2rjc6O1Bc04VghqUOHgS/tYt8vLjcGWixzdhSLJgPDK3QQZPAvBjMbCt1B6euC
 WuD87Pv5Udlpnzf4aMwxkgfTusx+ynae/o+T5r7tXD+isccbC3SiGhmAPxFyY3zGcFk4+Rxc
 0tP8YY2FWE/baHu+lBDTUN79efWAkHhex1XzVZsV7ZD16rzDbXFK5m6ApvGJWlr5YDEEydTF
 WwmvwBfr4OINVxzEG/ujNiG4fpMf2NsnFGyB9aSbFjXZevB4qWkduYYW+xpK1EryszHtAAYp
 zSBNaWNoYWVsIFRva2FyZXYgPG1qdEB0bHMubXNrLnJ1PsLAlgQTAQoAQAIbAwYLCQgHAwIE
 FQIIAwQWAgMBAh4BAheAAhkBFiEEbuGV0Yhuj/uBDUMkRXzgoIBEZcUFAmBbcjwFCS5e6jMA
 CgkQRXzgoIBEZcUTIQgA1hPsOF82pXxbcJXBMc4zB9OQu4AlnZvERoGyw7I2222QzaN3RFuj
 Fia//mapXzpIQNF08l/AA6cx+CKPeGnXwyZfF9fLa4RfifmdNKME8C00XlqnoJDZBGzq8yMy
 LAKDxl9OQWFcDwDxV+irg5U3fbtNVhvV0kLbS2TyQ0aU5w60ERS2NcyDWplOo7AOzZWChcA4
 UFf78oVdZdCW8YDtU0uQFhA9moNnrePy1HSFqduxnlFHEI+fDj/TiOm2ci48b8SBBJOIJFjl
 SBgH8+SfT9ZqkzhN9vh3YJ49831NwASVm0x1rDHcIwWD32VFZViZ3NjehogRNH9br0PSUYOC
 3s7ATQRX2BjLAQgAnak3m0imYOkv2tO/olULFa686tlwuvl5kL0NWCdGQeXv2uMxy36szcrh
 K1uYhpiQv4r2qNd8BJtYlnYIK16N8GBdkplaDIHcBMbU4t+6bQzEIJIaWoq1hzakmHHngE2a
 pNMnUf/01GFvCRPlv3imkujE/5ILbagjtdyJaHF0wGOSlTnNT4W8j+zPJ/XK0I5EVQwtbmoc
 GY62LKxxz2pID6sPZV4zQVY4JdUQaFvOz1emnBxakkt0cq3Qnnqso1tjiy7vyH9CAwPR/48W
 fpK6dew4Fk+STYtBeixOTfSUS8qRS/wfpUeNa5RnEdTtFQ9IcjpQ/nPrvJJsu9FqwlpjMwAR
 AQABwsBlBBgBCAAPBQJX2BjLAhsMBQkSzAMAAAoJEEV84KCARGXFUKcH/jqKETECkbyPktdP
 cWVqw2ZIsmGxMkIdnZTbPwhORseGXMHadQODayhU9GWfCDdSPkWDWzMamD+qStfl9MhlVT60
 HTbo6wu1W/ogUS70qQPTY9IfsvAj6f8TlSlK0eLMa3s2UxL2oe5FkNs2CnVeRlr4Yqvp/ZQV
 6LXtew4GPRrmplUT/Cre9QIUqR4pxYCQaMoOXQQw3Y0csBwoDYUQujn3slbDJRIweHoppBzT
 rM6ZG5ldWQN3n3d71pVuv80guylX8+TSB8Mvkqwb5I36/NAFKl0CbGbTuQli7SmNiTAKilXc
 Y5Uh9PIrmixt0JrmGVRzke6+11mTjVlio/J5dCM=
In-Reply-To: <0532cbc2-be3b-4b4d-8291-b524e3ab058c@tls.msk.ru>
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  30.04.2024 10:34, Michael Tokarev wrote: > Hi! > > This is
    my first thinkpad, and since I use linux almost exclusively, > it is running
    linux too (debian bookworm).  However, there are a few > probs [...] 
 
 Content analysis details:   (-5.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [86.62.121.231 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: askubuntu.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1s6lnh-00023P-CI
Subject: Re: [ibm-acpi-devel] thinkpad s495s: power button stops working
 after hibernation/resume: acpi_evalf(STRW, vd, ...) failed: AE_NOT_FOUND
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

MzAuMDQuMjAyNCAxMDozNCwgTWljaGFlbCBUb2thcmV2IHdyb3RlOgo+IEhpIQo+IAo+IFRoaXMg
aXMgbXkgZmlyc3QgdGhpbmtwYWQsIGFuZCBzaW5jZSBJIHVzZSBsaW51eCBhbG1vc3QgZXhjbHVz
aXZlbHksCj4gaXQgaXMgcnVubmluZyBsaW51eCB0b28gKGRlYmlhbiBib29rd29ybSkuwqAgSG93
ZXZlciwgdGhlcmUgYXJlIGEgZmV3Cj4gcHJvYnMgd2l0aCBpdCB3aGljaCBJJ2QgbG92ZSB0byBk
ZWJ1ZyBhbmQgZmluZCBzb2x1dGlvbiB0by4KPiAKPiBPbmUgb2YgdGhlIHByb2JzIGlzIHRoZSBw
b3dlciBidXR0b246IGl0IHN0b3BzIHdvcmtpbmcgYWZ0ZXIgdGhlIGZpcnN0Cj4gc3VzcGVuZC1y
ZXN1bWUgY3ljbGUuCj4gCj4gSW5pdGlhbGx5IGl0IGlzIHJlZ2lzdGVyZWQgYXMgZXZlbnQ1ICJQ
b3dlciBCdXR0b24iLsKgIEFmdGVyIGZyZXNoIGJvb3QsCj4gYGlucHV0IHJlY29yZGAgc2hvd3Mg
RVZfS0VZL0tFWV9QT1dFUiBrZXlwcmVzcyBldmVudHMgY29taW5nIGZyb20gaXQuCj4gU28gZmFy
LCBzbyBnb29kLgo+IAo+IE5vdywgSSBwZXJmb3JtIGhpYmVybmF0aW9uOiBgZWNobyBkaXNrID4g
L3N5cy9wb3dlci9zdGF0ZWAgb3IKPiBgc3lzdGVtY3RsIGhpYmVybmF0ZWAgKEkgaGF2ZSB0byB1
c2UgYHNodXRkb3duYCBtZXRob2QgaGVyZSBpbnN0ZWFkIG9mCj4gYHBsYXRmb3JtYCwgc2luY2Ug
dGhlIGxhdHRlciBkb2VzIG5vdCB3b3JrLCB3aGljaCBpcyBhbm90aGVyIGlzc3VlCj4gSSdtIHRy
eWluZyB0byBmaXgpLsKgIFRoZXJlJ3Mgbm8gR1VJIG9yIGFueXRoaW5nIGZhbmN5IHJ1bm5pbmcs
IC0KPiBqdXN0IHBsYWluIG9sZCBjb21tYW5kIGxpbmUgb24gYSBsaW51eCB0dHkuCj4gCj4gQW5k
IGFmdGVyIHJlc3VtZSwgdGhpcyBidXR0b24gZG9lcyBub3QgcHJvZHVjZSBhbnkgZXZlbnRzIGlu
IGxpbnV4Cj4gYW55bW9yZSwgYWZ0ZXIgYSBub3RlIGluIGRtZXNnOgo+IAo+IFvCoMKgIDI0Ljc4
ODA1NF0gdGhpbmtwYWRfYWNwaTogYWNwaV9ldmFsZihTVFJXLCB2ZCwgLi4uKSBmYWlsZWQ6IEFF
X05PVF9GT1VORAo+IFvCoMKgIDI0Ljc4ODA1OF0gdGhpbmtwYWRfYWNwaTogQ2Fubm90IHNldCBh
ZGFwdGl2ZSBrZXlib2FyZCBtb2RlLgo+IAo+IEhlcmUncyB0aGUgZnVsbCBgZG1lc2cgfCBncmVw
IHRoaW5rcGFkYCBvdXRwdXQ6Cj4gCj4gW8KgwqDCoCAzLjI5NDAyNV0gdGhpbmtwYWRfYWNwaTog
VGhpbmtQYWQgQUNQSSBFeHRyYXMgdjAuMjYKPiBbwqDCoMKgIDMuMjk1NDI3XSB0aGlua3BhZF9h
Y3BpOiBodHRwOi8vaWJtLWFjcGkuc2YubmV0Lwo+IFvCoMKgwqAgMy4yOTU0MzFdIHRoaW5rcGFk
X2FjcGk6IFRoaW5rUGFkIEJJT1MgUjEzRVQ1NVcoMS4yOSApLCBFQyBSMTNIVDU1Vwo+IFvCoMKg
wqAgMy4yOTU0MzNdIHRoaW5rcGFkX2FjcGk6IExlbm92byBUaGlua1BhZCBUNDk1cywgbW9kZWwg
MjBRS1MwRVEwTgo+IFvCoMKgwqAgMy4yOTgzNjJdIHRoaW5rcGFkX2FjcGk6IHJhZGlvIHN3aXRj
aCBmb3VuZDsgcmFkaW9zIGFyZSBlbmFibGVkCj4gW8KgwqDCoCAzLjMwMDY1M10gdGhpbmtwYWRf
YWNwaTogVGhpcyBUaGlua1BhZCBoYXMgc3RhbmRhcmQgQUNQSSBiYWNrbGlnaHQgYnJpZ2h0bmVz
cyBjb250cm9sLCBzdXBwb3J0ZWQgYnkgdGhlIEFDUEkgdmlkZW8gZHJpdmVyCj4gW8KgwqDCoCAz
LjMwMzE5M10gdGhpbmtwYWRfYWNwaTogRGlzYWJsaW5nIHRoaW5rcGFkLWFjcGkgYnJpZ2h0bmVz
cyBldmVudHMgYnkgZGVmYXVsdC4uLgo+IFvCoMKgwqAgMy4zMTg4MTldIHRoaW5rcGFkX2FjcGk6
IHJma2lsbCBzd2l0Y2ggdHBhY3BpX2JsdWV0b290aF9zdzogcmFkaW8gaXMgdW5ibG9ja2VkCj4g
W8KgwqDCoCAzLjM2NDQyNV0gdGhpbmtwYWRfYWNwaTogU3RhbmRhcmQgQUNQSSBiYWNrbGlnaHQg
aW50ZXJmYWNlIGF2YWlsYWJsZSwgbm90IGxvYWRpbmcgbmF0aXZlIG9uZQo+IFvCoMKgwqAgMy4z
OTkzNTRdIHRoaW5rcGFkX2FjcGk6IHNlY29uZGFyeSBmYW4gY29udHJvbCBkZXRlY3RlZCAmIGVu
YWJsZWQKPiBbwqDCoMKgIDMuNDI1ODg0XSB0aGlua3BhZF9hY3BpOiBiYXR0ZXJ5IDEgcmVnaXN0
ZXJlZCAoc3RhcnQgOTUsIHN0b3AgMTAwLCBiZWhhdmlvdXJzOiAweDcpCj4gW8KgwqDCoCAzLjQz
MzUxNV0gaW5wdXQ6IFRoaW5rUGFkIEV4dHJhIEJ1dHRvbnMgYXMgL2RldmljZXMvcGxhdGZvcm0v
dGhpbmtwYWRfYWNwaS9pbnB1dC9pbnB1dDEwCj4gW8KgwqAgMjQuMjAyOTIzXSB0aGlua3BhZF9h
Y3BpOiBhY3BpX2V2YWxmKEdUUlcsIGRkLCAuLi4pIGZhaWxlZDogQUVfTk9UX0ZPVU5ECj4gW8Kg
wqAgMjQuMjAyOTUzXSB0aGlua3BhZF9hY3BpOiBDYW5ub3QgcmVhZCBhZGFwdGl2ZSBrZXlib2Fy
ZCBtb2RlLgo+IFvCoMKgIDI0Ljc4ODA1NF0gdGhpbmtwYWRfYWNwaTogYWNwaV9ldmFsZihTVFJX
LCB2ZCwgLi4uKSBmYWlsZWQ6IEFFX05PVF9GT1VORAo+IFvCoMKgIDI0Ljc4ODA1OF0gdGhpbmtw
YWRfYWNwaTogQ2Fubm90IHNldCBhZGFwdGl2ZSBrZXlib2FyZCBtb2RlLgoKSSBmb3VuZCBhbm90
aGVyIG1lbnRpb24gb2YgLSBhcHBhcmVudGx5IC0gdGhpcyBpc3N1ZSwgb24gdGhlIHNhbWUgaGFy
ZHdhcmUgKHRob3VnaAp0aGUgcXVlc3Rpb24gd2FzIGFib3V0IHNvbWV0aGluZyBlbHNlKToKCiAg
IGh0dHBzOi8vYXNrdWJ1bnR1LmNvbS9xdWVzdGlvbnMvMTIyNDM1OC90aGlua3BhZC10NDk1cy1z
dXNwZW5kLWlzc3VlCgpzbyBpdCBsb29rcyBsaWtlIHRoZSBpc3N1ZSB3aXRoIHRoZSBwb3dlciBi
dXR0b24gbG9zaW5nIGV2ZW50cyB3aXRoIGxpbnV4IGlzIG9sZChpc2gpLgoKQWxzbywgSSB2ZXJp
ZmllZCBob3cgaXQgd29ya3Mgb24gd2luZG93cyAoaW5zdGFsbGluZyB3aW5kb3dzMTAgb24gdGhp
cyBsYXB0b3ApIC0KaXQgd29ya3MgZXhhY3RseSBhcyBleHBlY3RlZCwgYWZ0ZXIgdmFyaW91cyBz
dXNwZW5kL2hpYmVybmF0ZS9ldGMgY3ljbGVzLCBzbyB0aGUKcHJvYmxlbSBpc24ndCBoYXJkd2Fy
ZSAoZmlybXdhcmUpLiAgQnV0IGluIGNhc2Ugb2Ygd2luZG93cywgSSBndWVzcyBpdCBpcyB1c2lu
ZwplcXVpdmFsZW50IG9mICJwbGF0Zm9ybSIgaGliZXJuYXRpb24gbW9kZSwgd2hpbGUgb24gbGlu
dXggSSBoYXZlIHRvIHN3aXRjaCB0bwoic2h1dGRvd24iIG9yIGVsc2UgaXQgZG9lc24ndCByZXN1
bWUuCgpUaGFua3MsCgovbWp0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
