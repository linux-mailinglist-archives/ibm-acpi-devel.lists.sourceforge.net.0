Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D2B60A3E2
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Oct 2022 14:01:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1omw8A-0006Tf-LB;
	Mon, 24 Oct 2022 12:00:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1omw86-0006TG-4j
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 12:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oBddTd2aL3cpMShQLUMXQ70zqgPBnwYQKQRFaU3QDlI=; b=YfWAfBPYN5ec4nkd2JaelO+uzs
 QLV2Qqh7ictOjkgb9OMjmBdbphmeVKEdhvrRJeGZroH2YY+CFzlnLprPlkPhoElqCsyAC/RaR8Uc7
 sS5fqhnJ++/tEAhlBSG5tFuXGqCg/NCsIAHzhoUJ7kVnW5Wi/afMzd7lewRvzpyMJC/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oBddTd2aL3cpMShQLUMXQ70zqgPBnwYQKQRFaU3QDlI=; b=YbVWXKyaAJuSrUHs2aN9MWJ1C8
 pbqvZUoxVr+CZJMSng1QrD4DNp/l8xKn25VP3cAubrYDtTxKODFbUIc907ySEvwl9xadN1p3Sq6Fh
 jHOfSq0OkNs5ZeW04gtUMDjAsQs/QVD9VlFfaqlSEvaGdHc82mowJBX+cIstMNFiZp54=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omw82-00FhqS-2T for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 12:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666612820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oBddTd2aL3cpMShQLUMXQ70zqgPBnwYQKQRFaU3QDlI=;
 b=gr3bEKVq33jKOYMns7AjJZvhGy+MItGFbAm/i+quhOnR/E4eh1ZYbknr2mnDymC1NSIgOo
 8fkpNNC5+YJE3Fnp+FckpszFI4nqCS5JauQYNNY4BT0Rd9UYPOb/2cSCNxMx5RkoT8RWWc
 E8q7FVbbFEwsOOMvTU05mjfu4X/dT7U=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-208-CPD3KnBMPn-ulHljpzf2yA-1; Mon, 24 Oct 2022 08:00:18 -0400
X-MC-Unique: CPD3KnBMPn-ulHljpzf2yA-1
Received: by mail-lf1-f71.google.com with SMTP id
 h13-20020a0565123c8d00b004a47f36681aso2621797lfv.7
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Oct 2022 05:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oBddTd2aL3cpMShQLUMXQ70zqgPBnwYQKQRFaU3QDlI=;
 b=PWJVgc+9bu1PXeyoOX/gVvitu2eay9WYSGVnzGQpcawDe0wylTctJVUBLiBBSWLbS/
 RDaPEW1zB0RAM1Ow8bmi9PF3fCgTos8EfF+tswFg0lRjnJBCUIkVE8Qt4PtUXYAA4827
 YsJ/Z5Gime/3IPiA4ynSd6Vff4Sl9N78BAZdHdmeQqXpy3UKFQm8lPKP2RoY31ESRat6
 JX8zFCA1Jh73bUw9YtL9VnhCip4tG25v3nPzfeGNa4+WsU+8ACQ6xiO2bo2PBNb833U8
 Frf45kZCrwVi2yvGY8ZKclzA3QmEEJeM2jCCVQk1PGEO4xjbm4YYeDXg567hBE56jHVk
 9NdQ==
X-Gm-Message-State: ACrzQf2ozuzH11hE+Jcf/fyl735xga7jQJXBCNBs+MTqEm87eitOLRJY
 58bZQuC7fqQPPkDTCzTm9AuLsAQKRE/QNqBuzkiFGiTiZF9RaD/VgP1CY9i7YufgpcUAKeFY5jx
 gyBDf52KdvvNGtCQwtzdZOI14zZwyk0zZTUw=
X-Received: by 2002:a05:6512:40d:b0:4a2:d61d:6c82 with SMTP id
 u13-20020a056512040d00b004a2d61d6c82mr11098922lfk.381.1666612816801; 
 Mon, 24 Oct 2022 05:00:16 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4tdZDsl2pNG3Zoy+jU7SoBTHTkz51iCC/iggC9kztg6HWE+mkD8tnuNENa1Jj/GJlMZnu9qg==
X-Received: by 2002:a17:907:6e24:b0:791:905f:7881 with SMTP id
 sd36-20020a1709076e2400b00791905f7881mr27267484ejc.120.1666612806299; 
 Mon, 24 Oct 2022 05:00:06 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 u20-20020a17090626d400b0078907275a44sm15446126ejc.42.2022.10.24.05.00.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 05:00:05 -0700 (PDT)
Message-ID: <bec2bb19-392d-0a69-f8f7-66bb1f8d9495@redhat.com>
Date: Mon, 24 Oct 2022 14:00:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Akihiko Odaki <akihiko.odaki@daynix.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <87tu3te92n.fsf@intel.com> <18478739-625b-0c16-cd5a-e05c5372a74a@daynix.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <18478739-625b-0c16-cd5a-e05c5372a74a@daynix.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 10/24/22 13:56, Akihiko Odaki wrote: > On 2022/10/24
 20:48, Jani Nikula wrote: >> On Mon, 24 Oct 2022,
 Akihiko Odaki <akihiko.odaki@daynix.com>
 wrote: >>> Commit 2600bfa3df99 ("ACPI: video: Add acp [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1omw82-00FhqS-2T
Subject: Re: [ibm-acpi-devel] [PATCH 00/22] Fallback to native backlight
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Azael Avalos <coproscefalo@gmail.com>,
 Mattia Dongili <malattia@linux.it>, Daniel Dadap <ddadap@nvidia.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, David Airlie <airlied@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Woithe <jwoithe@just42.net>, Jonathan Corbet <corbet@lwn.net>, "Lee,
 Chun-Yi" <jlee@suse.com>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Robert Moore <robert.moore@intel.com>,
 linux-acpi@vger.kernel.org, Cezary Jackiewicz <cezary.jackiewicz@gmail.com>,
 Len Brown <lenb@kernel.org>, Matthew Garrett <mjg59@srcf.ucam.org>,
 Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Mark Gross <markgross@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 platform-driver-x86@vger.kernel.org, devel@acpica.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, Jingoo Han <jingoohan1@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAxMC8yNC8yMiAxMzo1NiwgQWtpaGlrbyBPZGFraSB3cm90ZToKPiBPbiAyMDIyLzEw
LzI0IDIwOjQ4LCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gT24gTW9uLCAyNCBPY3QgMjAyMiwgQWtp
aGlrbyBPZGFraSA8YWtpaGlrby5vZGFraUBkYXluaXguY29tPiB3cm90ZToKPj4+IENvbW1pdCAy
NjAwYmZhM2RmOTkgKCJBQ1BJOiB2aWRlbzogQWRkIGFjcGlfdmlkZW9fYmFja2xpZ2h0X3VzZV9u
YXRpdmUoKQo+Pj4gaGVscGVyIikgYW5kIGZvbGxvd2luZyBjb21taXRzIG1hZGUgbmF0aXZlIGJh
Y2tsaWdodCB1bmF2YWlsYWJsZSBpZgo+Pj4gQ09ORklHX0FDUElfVklERU8gaXMgc2V0IGFuZCB0
aGUgYmFja2xpZ2h0IGZlYXR1cmUgb2YgQUNQSSB2aWRlbyBpcwo+Pj4gdW5hdmFpbGFibGUsIHdo
aWNoIGJyb2tlIHRoZSBiYWNrbGlnaHQgZnVuY3Rpb25hbGl0eSBvbiBMZW5vdm8gVGhpbmtQYWQK
Pj4+IEMxMyBZb2dhIENocm9tZWJvb2suIEFsbG93IHRvIGZhbGwgYmFjayB0byBuYXRpdmUgYmFj
a2xpZ2h0IGluIHN1Y2gKPj4+IGNhc2VzLgo+Pgo+PiBXaGVyZSdzIHRoZSBidWcgcmVwb3J0IHdp
dGggcmVsZXZhbnQgbG9ncywga2NvbmZpZ3MsIGV0Yz8KPiAKPiBJIGhhdmVuJ3QgZmlsZWQgb25l
LiBTaG91bGQgST8gUGxlYXNlIHRlbGwgbWUgd2hlcmUgdG8gcmVwb3J0IGFuZCB3aGF0IGluZm9y
bWF0aW9uIHlvdSB3b3VsZCBuZWVkICh0byBidWd6aWxsYS5rZXJuZWwub3JnIHdpdGggdGhpbmdz
IG1lbnRpb25lZCBpbiBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3JlcG9ydGluZy1pc3N1ZXMu
cnN0PykKCkFzIG1lbnRpb25lZCBpbiBteSBvdGhlciBlbWFpbCB0aGlzIGlzIGEga25vd24gaXNz
dWUsIGFuZCB5b3VyIGVmZm9ydAp0byBmaXggdGhpcyBpcyBhcHByZWNpYXRlZCB2ZXJ5IG11Y2gs
IGJ1dCBJIGRvbid0IGJlbGlldmUgeW91ciBzb2x1dGlvbgp0byBiZSB0aGUgcmlnaHQgb25lLgoK
U2VlOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hY3BpLzQyYTVmMmM5LWExZGMtOGZj
MC03MzM0LWZlNmMzOTBlY2ZiYkByZWRoYXQuY29tLwpmb3IgbW9yZSBkZXRhaWxzIGFuZCBwb3Nz
aWJsZSBzb2x1dGlvbnMuIFBsZWFzZSB0cnkgaW1wbGVtZW50aW5nIG9uZSBvZgp0aG9zZSBzb2x1
dGlvbnMgZm9yIHlvdXIgQ2hyb21lYm9vay4gSSB1bmZvcnR1bmF0ZWx5IGRvIG5vdCBoYXZlIGh3
IHRvCnRlc3QgdGhpcyBteXNlbGYuCgpSZWdhcmRzLAoKSGFucwoKCgo+IAo+IFJlZ2FyZHMsCj4g
QWtpaGlrbyBPZGFraQo+IAo+Pgo+PiBCUiwKPj4gSmFuaS4KPj4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBBa2loaWtvIE9kYWtpIDxha2loaWtvLm9kYWtpQGRheW5peC5jb20+Cj4+Pgo+Pj4gQWtp
aGlrbyBPZGFraSAoMjIpOgo+Pj4gwqDCoCBkcm0vaTkxNS9vcHJlZ2lvbjogSW1wcm92ZSBiYWNr
bGlnaHQgcmVxdWVzdCBjb25kaXRpb24KPj4+IMKgwqAgQUNQSTogdmlkZW86IEludHJvZHVjZSBh
Y3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMoKQo+Pj4gwqDCoCBMb29uZ0FyY2g6IFVzZSBh
Y3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMoKQo+Pj4gwqDCoCBwbGF0Zm9ybS94ODY6IGFj
ZXItd21pOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+IMKgwqAgcGxh
dGZvcm0veDg2OiBhc3VzLWxhcHRvcDogVXNlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBl
cygpCj4+PiDCoMKgIHBsYXRmb3JtL3g4NjogYXN1cy13bWk6IFVzZSBhY3BpX3ZpZGVvX2dldF9i
YWNrbGlnaHRfdHlwZXMoKQo+Pj4gwqDCoCBwbGF0Zm9ybS94ODY6IGNvbXBhbC1sYXB0b3A6IFVz
ZSBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMoKQo+Pj4gwqDCoCBwbGF0Zm9ybS94ODY6
IGVlZXBjLWxhcHRvcDogVXNlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBlcygpCj4+PiDC
oMKgIHBsYXRmb3JtL3g4NjogZnVqaXRzdS1sYXB0b3A6IFVzZSBhY3BpX3ZpZGVvX2dldF9iYWNr
bGlnaHRfdHlwZXMoKQo+Pj4gwqDCoCBwbGF0Zm9ybS94ODY6IGlkZWFwYWQtbGFwdG9wOiBVc2Ug
YWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+IMKgwqAgcGxhdGZvcm0veDg2OiBt
c2ktbGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+IMKgwqAg
cGxhdGZvcm0veDg2OiBtc2ktd21pOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVz
KCkKPj4+IMKgwqAgcGxhdGZvcm0veDg2OiBudmlkaWEtd21pLWVjLWJhY2tsaWdodDogVXNlCj4+
PiDCoMKgwqDCoCBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMoKQo+Pj4gwqDCoCBwbGF0
Zm9ybS94ODY6IHBhbmFzb25pYy1sYXB0b3A6IFVzZSBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRf
dHlwZXMoKQo+Pj4gwqDCoCBwbGF0Zm9ybS94ODY6IHNhbXN1bmctbGFwdG9wOiBVc2UgYWNwaV92
aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+IMKgwqAgcGxhdGZvcm0veDg2OiBzb255LWxh
cHRvcDogVXNlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBlcygpCj4+PiDCoMKgIHBsYXRm
b3JtL3g4NjogdGhpbmtwYWRfYWNwaTogVXNlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBl
cygpCj4+PiDCoMKgIHBsYXRmb3JtL3g4NjogdG9zaGliYV9hY3BpOiBVc2UgYWNwaV92aWRlb19n
ZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+IMKgwqAgcGxhdGZvcm0veDg2OiBkZWxsLWxhcHRvcDog
VXNlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBlcygpCj4+PiDCoMKgIHBsYXRmb3JtL3g4
NjogaW50ZWxfb2FrdHJhaWw6IFVzZSBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMoKQo+
Pj4gwqDCoCBBQ1BJOiB2aWRlbzogUmVtb3ZlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBl
KCkKPj4+IMKgwqAgQUNQSTogdmlkZW86IEZhbGxiYWNrIHRvIG5hdGl2ZSBiYWNrbGlnaHQKPj4+
Cj4+PiDCoCBEb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCA4ICstLQo+Pj4gwqAgZHJpdmVycy9hY3BpL2FjcGlfdmlkZW8u
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+IMKg
IGRyaXZlcnMvYWNwaS92aWRlb19kZXRlY3QuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8IDU0ICsrKysrKysrKystLS0tLS0tLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYyB8wqAgMyArLQo+Pj4gwqAgZHJpdmVycy9wbGF0
Zm9ybS9sb29uZ2FyY2gvbG9vbmdzb24tbGFwdG9wLmPCoCB8wqAgNCArLQo+Pj4gwqAgZHJpdmVy
cy9wbGF0Zm9ybS94ODYvYWNlci13bWkuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDIgKy0KPj4+IMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FzdXMtbGFwdG9wLmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCAyICstCj4+PiDCoCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hc3VzLXdt
aS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArLQo+Pj4gwqAgZHJpdmVycy9w
bGF0Zm9ybS94ODYvY29tcGFsLWxhcHRvcC5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+
PiDCoCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9kZWxsL2RlbGwtbGFwdG9wLmPCoMKgwqDCoMKgwqAg
fMKgIDIgKy0KPj4+IMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L2VlZXBjLWxhcHRvcC5jwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+IMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L2Z1aml0
c3UtbGFwdG9wLmPCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICstCj4+PiDCoCBkcml2ZXJzL3BsYXRm
b3JtL3g4Ni9pZGVhcGFkLWxhcHRvcC5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+Pj4gwqAg
ZHJpdmVycy9wbGF0Zm9ybS94ODYvaW50ZWwvb2FrdHJhaWwuY8KgwqDCoMKgwqDCoMKgwqAgfMKg
IDIgKy0KPj4+IMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L21zaS1sYXB0b3AuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+Pj4gwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvbXNpLXdt
aS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+PiDCoCAuLi4vcGxh
dGZvcm0veDg2L252aWRpYS13bWktZWMtYmFja2xpZ2h0LmPCoMKgwqAgfMKgIDIgKy0KPj4+IMKg
IGRyaXZlcnMvcGxhdGZvcm0veDg2L3BhbmFzb25pYy1sYXB0b3AuY8KgwqDCoMKgwqDCoCB8wqAg
MiArLQo+Pj4gwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvc2Ftc3VuZy1sYXB0b3AuY8KgwqDCoMKg
wqDCoMKgwqAgfMKgIDIgKy0KPj4+IMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L3NvbnktbGFwdG9w
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+PiDCoCBkcml2ZXJzL3BsYXRmb3Jt
L3g4Ni90aGlua3BhZF9hY3BpLmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKy0KPj4+IMKgIGRy
aXZlcnMvcGxhdGZvcm0veDg2L3Rvc2hpYmFfYWNwaS5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDIgKy0KPj4+IMKgIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2JhY2tsaWdodC5jwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfCAxOCArKysrKysrCj4+PiDCoCBpbmNsdWRlL2FjcGkvdmlkZW8uaMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjEgKysrKy0t
LS0KPj4+IMKgIGluY2x1ZGUvbGludXgvYmFja2xpZ2h0LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPj4+IMKgIDI1IGZpbGVzIGNoYW5nZWQsIDg1IGlu
c2VydGlvbnMoKyksIDY2IGRlbGV0aW9ucygtKQo+Pgo+IAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QK
aWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
