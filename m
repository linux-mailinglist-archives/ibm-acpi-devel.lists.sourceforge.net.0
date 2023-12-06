Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D74580759D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Dec 2023 17:46:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rAv2Q-00073C-0g;
	Wed, 06 Dec 2023 16:46:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1rAv2N-000735-E4
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 16:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s+0eyoF2IA7/iZzTtDBodGF4W/RxeJnnXr1f0bX3bC0=; b=M4zSxwBvAfSnqo/UjPSZY93RbA
 eGy99fPEn2wGzX5IFa7YlVv8DQUDdGe483NStYRIgZObEN1t1ppGuEplaTn6L3KxfCuKYBa/aKBOe
 Jfkx9xwhnfGrzjuXYeQwweh8QRY3eFdCxuVnoLO8I8CknVJGUt6BWMAU4tJeYcjUzKDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s+0eyoF2IA7/iZzTtDBodGF4W/RxeJnnXr1f0bX3bC0=; b=P+Apy4+k6/m6JKKiGLsUtvY1Zb
 qpS1sVr/wQOfSf1pJquwHqcdK+oZRvGmflmejjwuWGFiPBM/WW8/Y7IQsHXvJ5mHj4btc8SJMdqZw
 ogAOWRTUoA+bsTTZgkyRvbisvVk/NOe23Vh2eI2s4OBXqcRsTcJh7iUiz7IuuiyJWRxA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAv2J-0003nY-OV for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Dec 2023 16:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=s+0eyoF2IA7/iZzTtDBodGF4W/RxeJnnXr1f0bX3bC0=; b=Fm6qLk5mSRJ+EDcNikw8GwlHde
 gNdsq5LMcHSmlMx5drBt/xCoSJ58NDr9S/Cbkl/zyKj+ttMMJoL2PjZTugX7+MiH+RbNE/lDHxW4F
 73OxKjWSEO/NAdi5QTDZ3kUsA3Ne7Qwtuapba4X+QA8b/8N8kEeJnD4MbleaUN3WflpK3/8QtWCS+
 VGxM8y7cZE7P21AvbevWdrQThsNPsB4vw8O7aIN5/KMOHKn0fvkDoWK51lST/k/iM2hf11Pymw9Fe
 CQ01i1+MTnTx8aYcVQIfv7JXH05PhK9z8lTyARfLgrPv1YLsdqy//Ad8GDGQXqAVE4KC0vMMd2Ghv
 HLY1rYnQ==;
Received: from [50.53.46.231] (helo=[192.168.254.15])
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1rAv27-00AnaX-34; Wed, 06 Dec 2023 16:45:59 +0000
Message-ID: <f734ff9e-6005-4d47-959d-fab34c71c6e0@infradead.org>
Date: Wed, 6 Dec 2023 08:45:59 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Mark Pearson <mpearson-lenovo@squebb.ca>, linux-kernel@vger.kernel.org
References: <20231206060144.8260-1-rdunlap@infradead.org>
 <ea94a2d7-a13c-4f08-9979-48a8f33a47fc@app.fastmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <ea94a2d7-a13c-4f08-9979-48a8f33a47fc@app.fastmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 12/6/23 07:30, Mark Pearson wrote: > Hi Randy
 > > On Wed, Dec 6, 2023, at 1:01 AM, Randy Dunlap wrote: >> Add a function's
 return description and don't misuse "/**" for >> non-kernel-doc comments
 t [...] Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAv2J-0003nY-OV
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: fix
 kernel-doc warnings
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTWFyaywKCk9uIDEyLzYvMjMgMDc6MzAsIE1hcmsgUGVhcnNvbiB3cm90ZToKPiBIaSBSYW5k
eQo+IAo+IE9uIFdlZCwgRGVjIDYsIDIwMjMsIGF0IDE6MDEgQU0sIFJhbmR5IER1bmxhcCB3cm90
ZToKPj4gQWRkIGEgZnVuY3Rpb24ncyByZXR1cm4gZGVzY3JpcHRpb24gYW5kIGRvbid0IG1pc3Vz
ZSAiLyoqIiBmb3IKPj4gbm9uLWtlcm5lbC1kb2MgY29tbWVudHMgdG8gcHJldmVudCB3YXJuaW5n
cyBmcm9tIHNjcmlwdHMva2VybmVsLWRvYy4KPj4KPj4gdGhpbmtwYWRfYWNwaS5jOjUyMzogd2Fy
bmluZzogTm8gZGVzY3JpcHRpb24gZm91bmQgZm9yIHJldHVybiB2YWx1ZSBvZiAKPj4gJ3RwYWNw
aV9jaGVja19xdWlya3MnCj4+IHRoaW5rcGFkX2FjcGkuYzo5MzA3OiB3YXJuaW5nOiBUaGlzIGNv
bW1lbnQgc3RhcnRzIHdpdGggJy8qKicsIGJ1dCAKPj4gaXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1l
bnQuIFJlZmVyIERvY3VtZW50YXRpb24vZG9jLWd1aWRlL2tlcm5lbC1kb2MucnN0Cj4+IHRoaW5r
cGFkX2FjcGkuYzo5MzA3OiB3YXJuaW5nOiBtaXNzaW5nIGluaXRpYWwgc2hvcnQgZGVzY3JpcHRp
b24gb24gCj4+IGxpbmU6Cj4+ICAqIFRoaXMgZXZhbHVhdGVzIGEgQUNQSSBtZXRob2QgY2FsbCBz
cGVjaWZpYyB0byB0aGUgYmF0dGVyeQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYW5keSBEdW5sYXAg
PHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KPj4gQ2M6IEhlbnJpcXVlIGRlIE1vcmFlcyBIb2xzY2h1
aCA8aG1oQGhtaC5lbmcuYnI+Cj4+IENjOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQu
Y29tPgo+PiBDYzogIklscG8gSsOkcnZpbmVuIiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5j
b20+Cj4+IENDOiBpYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPj4gQ0M6IHBs
YXRmb3JtLWRyaXZlci14ODZAdmdlci5rZXJuZWwub3JnCj4+IC0tLQo+PiAgZHJpdmVycy9wbGF0
Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgICAgNiArKystLS0KPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS0gYS9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgCj4+IGIvZHJpdmVycy9wbGF0Zm9ybS94ODYv
dGhpbmtwYWRfYWNwaS5jCj4+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2Fj
cGkuYwo+PiArKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4gQEAg
LTUxMiwxMCArNTEyLDEwIEBAIHN0cnVjdCB0cGFjcGlfcXVpcmsgewo+PiAgICogSXRlcmF0ZXMg
b3ZlciBhIHF1aXJrcyBsaXN0IHVudGlsIG9uZSBpcyBmb3VuZCB0aGF0IG1hdGNoZXMgdGhlCj4+
ICAgKiBUaGlua1BhZCdzIHZlbmRvciwgQklPUyBhbmQgRUMgbW9kZWwuCj4+ICAgKgo+PiAtICog
UmV0dXJucyAwIGlmIG5vdGhpbmcgbWF0Y2hlcywgb3RoZXJ3aXNlIHJldHVybnMgdGhlIHF1aXJr
cyBmaWVsZCBvZgo+PiArICogUmV0dXJuczogJTAgaWYgbm90aGluZyBtYXRjaGVzLCBvdGhlcndp
c2UgcmV0dXJucyB0aGUgcXVpcmtzIGZpZWxkIAo+IAo+IEp1c3QgYmVpbmcgbm9zeSAtIHdoYXQg
ZG9lcyAlMCBkbz8KPiBJIGFzc3VtZSBpdCBoZWxwcyB3aXRoIHRoZSByZXR1cm4gdmFsdWUgYnV0
IHdhcyBpbnRyaWd1ZWQgaG93IGl0IGlzIHVzZWQgYW5kIHdoZXJlCgpJdCBjYXVzZXMgdGhlIG91
dHB1dCB0byBiZSBmb3JtYXR0ZWQgYXMgYSBDT05TVEFOVCAocHJvYmFibHkgbW9ub3NwYWNlZCBm
b250LApidXQgbm8gZ3VhcmFudGVlcyBvbiB0aGF0KS4KCj4gCj4+IG9mCj4+ICAgKiB0aGUgbWF0
Y2hpbmcgJnN0cnVjdCB0cGFjcGlfcXVpcmsgZW50cnkuCj4+ICAgKgo+PiAtICogVGhlIG1hdGNo
IGNyaXRlcmlhIGlzOiB2ZW5kb3IsIGVjIGFuZCBiaW9zIG11Y2ggbWF0Y2guCj4+ICsgKiBUaGUg
bWF0Y2ggY3JpdGVyaWEgaXM6IHZlbmRvciwgZWMgYW5kIGJpb3MgbXVzdCBtYXRjaC4KPiBJIGNh
bid0IGZvciB0aGUgbGlmZSBvZiBtZSBzZWUgd2hhdCBpcyBkaWZmZXJlbnQgaGVyZS4gV2hhdCBh
bSBJIG1pc3Npbmc/IAoKcy9tdWNoL211c3QvCgo+IAo+PiAgICovCj4+ICBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBfX2luaXQgdHBhY3BpX2NoZWNrX3F1aXJrcygKPj4gIAkJCWNvbnN0IHN0cnVjdCB0
cGFjcGlfcXVpcmsgKnFsaXN0LAo+PiBAQCAtOTMwMyw3ICs5MzAzLDcgQEAgc3RhdGljIHN0cnVj
dCB0cGFjcGlfYmF0dGVyeV9kcml2ZXJfZGF0YQo+Pgo+PiAgLyogQUNQSSBoZWxwZXJzL2Z1bmN0
aW9ucy9wcm9iZXMgKi8KPj4KPj4gLS8qKgo+PiArLyoKPj4gICAqIFRoaXMgZXZhbHVhdGVzIGEg
QUNQSSBtZXRob2QgY2FsbCBzcGVjaWZpYyB0byB0aGUgYmF0dGVyeQo+PiAgICogQUNQSSBleHRl
bnNpb24uIFRoZSBzcGVjaWZpY3MgYXJlIHRoYXQgYW4gZXJyb3IgaXMgbWFya2VkCj4+ICAgKiBp
biB0aGUgMzJyZCBiaXQgb2YgdGhlIHJlc3BvbnNlLCBzbyB3ZSBqdXN0IGNoZWNrIHRoYXQgaGVy
ZS4KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IGlibS1hY3BpLWRldmVsQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldAo+PiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9pYm0tYWNwaS1kZXZlbAo+IAo+IFRoYW5rcwo+IE1hcmsKCi0tIAp+UmFuZHkKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVs
Cg==
