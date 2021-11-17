Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1629D454CA9
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Nov 2021 18:58:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mnPBx-00011a-Fq; Wed, 17 Nov 2021 17:57:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mnPBu-00011T-PN
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Nov 2021 17:57:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6O0J2yqji2Xxuz5YMk/lmxsNZnWYNgqA7nx4ZN0D/xc=; b=kzMxxTy+68w7IYQ5aZ5taG4AG5
 H/U2Q1CrNnJgcB0IFBQMS0rw9XOiCAdjVfW+mYSXHFoq5sBNNoazCbLHn0FeowcXgxgDm7NVlgQQF
 1kOS51S1w4V6Y+r24Hq2qolr5jNwkwE8vOJ6u5uLD0LQY9tV0mIcff5kx4ZEb4t68+Z8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6O0J2yqji2Xxuz5YMk/lmxsNZnWYNgqA7nx4ZN0D/xc=; b=l8UP6HIPnP0eNqVKoiyCyPOMXx
 vVP669GMn8DTkA6novx7PQp4XVYa4MBKco6tmUHiPZR0TdDdC9g8SRjcmCDjydQAHwLPHQtgmqoNH
 rRx/1WpsThn1+PTJCFEgu00qoh64Q69q0xl76GHZKoG5/Dj6RfaORtcXi4gkWHGEzX0A=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnPBt-00GZj7-Nc
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Nov 2021 17:57:51 +0000
Date: Wed, 17 Nov 2021 18:57:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637171860;
 bh=9R7AiZBy616DlRSyvvUAZa85pJwmHl/hFx0sLaYBnrE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QQRIr+rud2ZHtAmqjM3aJHv2sNaOGDKzwcHigcwdd7rHiRoIj6NJZXYSyCWcAfeFL
 LhYdH77hIeK8wY7vtuiCwEJ2FwFdjMFxDFrAo2mbKbumrL2zSi+dHCnbC/eYoQ0YVe
 jFjuInzlS0hyy59AX0VmJOE2riu0S0rV3O14fEU8=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Thomas Koch <linrunner@gmx.net>
Message-ID: <d1bc62e9-a5da-4c23-b31f-8ba718faf4a3@t-8ch.de>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <9cebba85-f399-a7aa-91f7-237852338dc5@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9cebba85-f399-a7aa-91f7-237852338dc5@gmx.net>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2021-11-16 17:56+0100, Thomas Koch wrote: > thank you very
 much for working on this. It is high time that we leave > external kernel
 modules for ThinkPads behind us. > > On 13.11.21 11:42, Thomas W [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mnPBt-00GZj7-Nc
Subject: Re: [ibm-acpi-devel] [PATCH 0/4] power: supply: add
 charge_behaviour property (force-discharge, inhibit-charge)
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
Cc: nicolopiazzalunga@gmail.com, bberg@redhat.com,
 Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, hadess@hadess.net,
 markpearson@lenovo.com, smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gMjAyMS0xMS0xNiAxNzo1NiswMTAwLCBUaG9tYXMgS29jaCB3cm90ZToKPiB0aGFuayB5b3Ug
dmVyeSBtdWNoIGZvciB3b3JraW5nIG9uIHRoaXMuIEl0IGlzIGhpZ2ggdGltZSB0aGF0IHdlIGxl
YXZlCj4gZXh0ZXJuYWwga2VybmVsIG1vZHVsZXMgZm9yIFRoaW5rUGFkcyBiZWhpbmQgdXMuCj4g
Cj4gT24gMTMuMTEuMjEgMTE6NDIsIFRob21hcyBXZWnDn3NjaHVoIHdyb3RlOgo+ID4gSGksCj4g
PiAKPiA+IHRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIGNoYXJnZV9iZWhhdmlvdXIg
cHJvcGVydHkgdG8gdGhlIHBvd2VyCj4gPiBzdWJzeXN0ZW0gYW5kIHRoaW5rcGFkX2FjcGkgZHJp
dmVyLgo+ID4gCj4gPiBBcyB0aGlua3BhZF9hY3BpIGhhcyB0byB1c2UgdGhlICdzdHJ1Y3QgcG93
ZXJfc3VwcGx5JyBjcmVhdGVkIGJ5IHRoZSBnZW5lcmljCj4gPiBBQ1BJIGRyaXZlciBpdCBoYXMg
dG8gcmVseSBvbiBjdXN0b20gc3lzZnMgYXR0cmlidXRlcyBpbnN0ZWFkIG9mIHByb3Blcgo+ID4g
cG93ZXJfc3VwcGx5IHByb3BlcnRpZXMgdG8gaW1wbGVtZW50IHRoaXMgcHJvcGVydHkuCj4gPiAK
PiA+IFBhdGNoIDE6IEFkZHMgdGhlIHBvd2VyX3N1cHBseSBkb2N1bWVudGF0aW9uIGFuZCBiYXNp
YyBwdWJsaWMgQVBJCj4gPiBQYXRjaCAyOiBBZGRzIGhlbHBlcnMgdG8gcG93ZXJfc3VwcGx5IGNv
cmUgdG8gaGVscCBkcml2ZXJzIGltcGxlbWVudCB0aGUKPiA+ICAgIGNoYXJnZV9iZWhhdmlvdXIg
YXR0cmlidXRlCj4gPiBQYXRjaCAzOiBBZGRzIHN1cHBvcnQgZm9yIGZvcmNlLWRpc2NoYXJnZSB0
byB0aGlua3BhZF9hY3BpLgo+ID4gUGF0Y2ggNDogQWRkcyBzdXBwb3J0IGZvciBpbmhpYml0LWRp
c2NoYXJnZSB0byB0aGlua3BhZF9hY3BpLgo+ID4gCj4gPiBQYXRjaCAzIGFuZCA0IGFyZSBsYXJn
ZWx5IHRha2VuIGZyb20gb3RoZXIgcGF0Y2hlcyBhbmQgYWRhcHRlZCB0byB0aGUgbmV3IEFQSS4K
PiA+IChMaW5rcyBhcmUgaW4gdGhlIHBhdGNoIHRyYWlsZXIpCj4gPiAKPiA+IE9nbmplbiBHYWxp
YywgTmljb2xvJyBQaWF6emFsdW5nYSwgVGhvbWFzIEtvY2g6Cj4gPiAKPiA+IFlvdXIgUy1vLWIg
aXMgb24gdGhlIG9yaWdpbmFsIGluaGliaXRfY2hhcmdlIGFuZCBmb3JjZV9kaXNjaGFyZ2UgcGF0
Y2hlcy4KPiA+IEkgd291bGQgbGlrZSB0byBhZGQgeW91IGFzIENvLWRldmVsb3BlZC1ieSBidXQg
dG8gZG8gdGhhdCBpdCB3aWxsIGFsc28gcmVxdWlyZQo+ID4geW91ciBTLW8tYi4gQ291bGQgeW91
IGdpdmUgeW91ciBzaWduLW9mZnMgZm9yIHRoZSBuZXcgcGF0Y2hlcywgc28geW91IGNhbiBiZQo+
ID4gcHJvcGVybHkgYXR0cmlidXRlZD8KPiBTLW8tYi9Dby1kZXZlbG9wZWQtYnkvVGVzdGVkLWJ5
IGlzIGZpbmUgd2l0aCBtZS4KPiAKPiBJIHRlc3RlZCB5b3VyIHBhdGNoZXMuCj4gCj4gSGFyZHdh
cmU6Cj4gCj4gLSBUaGlua1BhZCBYMjIwLCBCQVQwCj4gLSBUaGlua1BhZCBUNDUwcywgQkFUMCtC
QVQxCj4gLSBUaGlua1BhZCBYMUM2LCBCQVQwCj4gCj4gVGVzdCBSZXN1bHRzOgo+IAo+IDEuIGZv
cmNlLWRpc2NoYXJnZQo+IAo+IEV2ZXJ5dGhpbmdzIHdvcmtzIGFzIGV4cGVjdGVkCj4gLSBXcml0
aW5nIGluY2x1ZGluZyBkaXNlbmdhZ2luZyB3LyAiYXV0byIgOiBPSwo+IC0gUmVhZGluZzogT0sK
PiAKPiAtIEJhdHRlcnkgZGlzY2hhcmdpbmc6IE9LCj4gLSBEaXNlbmdhZ2luZyB3aXRoICJhdXRv
IjogT0sKPiAKPiAyLiBpbmhpYml0LWNoYXJnZQo+IAo+IFdvcmtzIGFzIGV4cGVjdGVkOgo+IC0g
V3JpdGluZzogT0sKPiAKPiAtIERpc2VuZ2FnaW5nIHdpdGggImF1dG8iOiBPSwo+IAo+IAo+IERp
c2NyZXBhbmNpZXM6Cj4gLSBCYXR0ZXJ5IGNoYXJnZSBpbmhpYml0ZWQ6IEJBVDAgT0ssIEJBVDEg
bm8gZWZmZWN0IGUuZy4gY29udGludWVzIGNoYXJnaW5nCj4gLSBSZWFkaW5nOiBhbHdheXMgcmV0
dXJucyAiYXV0byIKCkkgdGVzdGVkIGl0IG9uIGEgVDQ2MHMgd2l0aCB0d28gYmF0dGVyaWVzIGFu
ZCB0aGVyZSBpbmhpYml0LWNoYXJnZSB3b3JrcwpmaW5lIGZvciBib3RoIGJhdHRlcmllcy4KV2hh
dCBkb2VzIG5vdCB3b3JrIGlzIHNldHRpbmcgZm9yY2UtZGlzY2hhcmdlIGZvciBib3RoIGJhdHRl
cmllcyBhdCB0aGUgc2FtZQp0aW1lLgpUaGlzIG1ha2VzIHNvbWV3aGF0IHNlbnNlIGFzIG9uIGEg
cGh5c2ljYWwgbGV2ZWwgcHJvYmFibHkgb25seSBvbmUgb2YgdGhlbSBjYW4KYmUgdXNlZCBhdCBh
IHRpbWUuCgpNYXJrIFBlYXJzb246IENvdWxkIHlvdSBjb25maXJtIHRoYXQgdGhpcyBpcyB0aGUg
aW50ZW5kZWQgYmVoYXZpb3VyPwoKSW4gbXkgY2hhbmdlcyBxdWV1ZWQgZm9yIHYyIG9mIHRoZSBz
ZXJpZXNbMF0gSSBhZGRlZCB2YWxpZGF0aW9uIG9mIHRoZSB3cml0dGVuCnNldHRpbmdzIGFuZCBh
biBFSU8gaXMgbm93IHJlcG9ydGVkIGlmIHRoZSBzZXR0aW5ncyB3ZXJlIG5vdCBhcHBsaWVkLCBz
byB0aGlzCnNob3VsZCBoZWxwIHVzZXJzcGFjZSBoYW5kbGUgdGhpcyBzaXR1YXRvaW4uCgpUaGUg
cGxhbiBpcyB0byBzdWJtaXQgdjIgYWZ0ZXIgdGhlIGZpcnN0IHJvdW5kIG9mIHJldmlldyBmb3Ig
dGhlIGNvcmUgUE0KY2hhbmdlcy4KClswXSBodHRwczovL2dpdC5zci5odC9+dC04Y2gvbGludXgv
dHJlZS9jaGFyZ2UtY29udHJvbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
