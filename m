Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 830CE60A990
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Oct 2022 15:22:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1omxP5-00017m-5v;
	Mon, 24 Oct 2022 13:22:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1omxOj-00017B-1f
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 13:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bZe1w3EPaVA+CN/q+Lt0jOZyvsYbOMnl65HsFpxBLe8=; b=eDZOMNnhNdxfIvy/KdzXI89CP2
 kgxYuyaNJvVMd7v3OsQAOHbnZZJ0wwH8TwLrag8/V1pdcsQpAKFMIaTEVcmYFLTOTL9fKNn5vF1rb
 587/COPCS/k5mON5J37+2LQv+gWCI9aGLtb32uKGxXYlfq3+qibedbeeL7aAjwJaNX/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bZe1w3EPaVA+CN/q+Lt0jOZyvsYbOMnl65HsFpxBLe8=; b=DNt77BMm3jplbxzXa9rHuSZ4Zv
 hHFqBKG6Q5V63qRcwTfjMfbSyciPHvRtgYWFydHr5pd8uaCqfUyMW5VECzggDPoakr1Zkddih7nKM
 ZdVRS2N0J2hqtEJBTjJ2oky8TCrkhzWzbW+PWGtgVvBOVWLVYK/fLcixQhEWvVfEeUVA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omxOa-0007Vh-KJ for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 13:21:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666617690;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bZe1w3EPaVA+CN/q+Lt0jOZyvsYbOMnl65HsFpxBLe8=;
 b=YdXMMQJzRjeaSu5liTb9gfkFTKqTV8EpvrnozhPKuw9SFyox/BN/jGNifZtHAU59S1NdLo
 lGe3Pphks2UD1R4wj9yjSESdMiZq3nj2aQBxDk1hO7Oo5HcyHV57bQlPgMtlFZWKZryX2a
 NWSy/km60U+oggb891uRI2++I67+jD4=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-396-FnYdCJvPP12ur1omdIzRTQ-1; Mon, 24 Oct 2022 09:21:29 -0400
X-MC-Unique: FnYdCJvPP12ur1omdIzRTQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 y14-20020a056402270e00b0045d1baf4951so9700359edd.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Oct 2022 06:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bZe1w3EPaVA+CN/q+Lt0jOZyvsYbOMnl65HsFpxBLe8=;
 b=q8c6clnTXeiwF/eU04MDD30qP67xjVnU21h8XYXL+d1PiPG5TWxKhkfyiMRDhkj3N/
 NjPTyk6Ge2fkZEXcKPHbsD7d+nehtSxbVbARx3WNOnmvSNclr6K12oaMfdKCoFv3pVIS
 pphg1XVZerPS5RxugqxACaPh8YJuuhRd2q52j9bwYJW1C5+SfPF0bANF5NsedPsWh+Wf
 4c83A3oIOzKEYNA4Ymkf16MKiXhs/GeLqBDipjAGdkbFcKjJEFuP0ELVwizPfA/Z+Phe
 k8w9IFtIQ5lMchZOGKbgXnMsxpy73piLMsNLa9VPXKBSTOZzH+7H/tXnu8WDjmCt+gkD
 LgRQ==
X-Gm-Message-State: ACrzQf3ixwLfmiOZLa+q1ybMZKrydi3b6Qx1JtDwji/PY8xeSJJ6WPSY
 jsrFj2dlq13ggeDbq0Qifo8muE21KAyyznFbdDLcrjfOIm3zehX5xt/gKwDpUP3YkNIo56WYsY1
 aOhjSFoB2rdXl7CB2zI9DRYvvLbpPeYgG9F0=
X-Received: by 2002:a17:907:7627:b0:78d:b6f5:9f15 with SMTP id
 jy7-20020a170907762700b0078db6f59f15mr27908043ejc.149.1666617688152; 
 Mon, 24 Oct 2022 06:21:28 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5eVoX3Zdsw3dT2G3BRaFLKO7Cw6SDF7Gj5r0DB42X2PLxNRQiYtexmaaMeTBVnA50ta6oFDw==
X-Received: by 2002:a17:907:7627:b0:78d:b6f5:9f15 with SMTP id
 jy7-20020a170907762700b0078db6f59f15mr27908007ejc.149.1666617687840; 
 Mon, 24 Oct 2022 06:21:27 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 l17-20020a1709060cd100b00783c545544fsm15509207ejh.215.2022.10.24.06.21.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 06:21:27 -0700 (PDT)
Message-ID: <60672af8-05d2-113c-12b9-d635608be0dd@redhat.com>
Date: Mon, 24 Oct 2022 15:21:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
 <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 10/24/22 14:58, Akihiko Odaki wrote: > On 2022/10/24
 20:53, Hans de Goede wrote: >> Hi Akihiko, >> >> On 10/24/22 13:34, Akihiko
 Odaki wrote: >>> Commit 2600bfa3df99 ("ACPI: video: Add acpi_video_b [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1omxOa-0007Vh-KJ
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
 Jani Nikula <jani.nikula@linux.intel.com>,
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

SGksCgpPbiAxMC8yNC8yMiAxNDo1OCwgQWtpaGlrbyBPZGFraSB3cm90ZToKPiBPbiAyMDIyLzEw
LzI0IDIwOjUzLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+PiBIaSBBa2loaWtvLAo+Pgo+PiBPbiAx
MC8yNC8yMiAxMzozNCwgQWtpaGlrbyBPZGFraSB3cm90ZToKPj4+IENvbW1pdCAyNjAwYmZhM2Rm
OTkgKCJBQ1BJOiB2aWRlbzogQWRkIGFjcGlfdmlkZW9fYmFja2xpZ2h0X3VzZV9uYXRpdmUoKQo+
Pj4gaGVscGVyIikgYW5kIGZvbGxvd2luZyBjb21taXRzIG1hZGUgbmF0aXZlIGJhY2tsaWdodCB1
bmF2YWlsYWJsZSBpZgo+Pj4gQ09ORklHX0FDUElfVklERU8gaXMgc2V0IGFuZCB0aGUgYmFja2xp
Z2h0IGZlYXR1cmUgb2YgQUNQSSB2aWRlbyBpcwo+Pj4gdW5hdmFpbGFibGUsIHdoaWNoIGJyb2tl
IHRoZSBiYWNrbGlnaHQgZnVuY3Rpb25hbGl0eSBvbiBMZW5vdm8gVGhpbmtQYWQKPj4+IEMxMyBZ
b2dhIENocm9tZWJvb2suIEFsbG93IHRvIGZhbGwgYmFjayB0byBuYXRpdmUgYmFja2xpZ2h0IGlu
IHN1Y2gKPj4+IGNhc2VzLgo+Pgo+PiBJIGFwcHJlY2lhdGUgeW91ciB3b3JrIG9uIHRoaXMsIGJ1
dCB3aGF0IHRoaXMgaW4gZXNzZW5jZSBkb2VzIGlzCj4+IGl0IGFsbG93cyAyIGJhY2tsaWdodCBk
cml2ZXJzICh2ZW5kb3IgKyBuYXRpdmUpIHRvIGdldCByZWdpc3RlcmVkCj4+IGZvciB0aGUgc2Ft
ZSBwYW5lbCBhZ2Fpbi4gV2hpbGUgdGhlIHdob2xlIGdvYWwgb2YgdGhlIGJhY2tsaWdodCByZWZh
Y3Rvcgo+PiBzZXJpZXMgbGFuZGluZyBpbiA2LjEgd2FzIHRvIG1ha2UgaXQgc28gdGhhdCB0aGVy
ZSBhbHdheXMgaXMgb25seQo+PiAqMSogYmFja2xpZ2h0IGRldmljZSByZWdpc3RlcmVkIGluc3Rl
YWQgb2YgKHBvc3NpYmx5KSByZWdpc3RlcmluZwo+PiBtdWx0aXBsZSBhbmQgbGV0dGluZyB1c2Vy
c3BhY2UgZmlndXJlIGl0IG91dC4gSXQgaXMgYWxzbyBpbXBvcnRhbnQKPj4gdG8gb25seSBhbHdh
eXMgaGF2ZSAxIGJhY2tsaWdodCBkZXZpY2UgcGVyIHBhbmVsIGZvciBmdXJ0aGVyCj4+IHVwY29t
aW5nIGNoYW5nZXMuCj4+Cj4+IFNvIG5hY2sgZm9yIHRoaXMgc29sdXRpb24sIHNvcnJ5Lgo+Pgo+
PiBJIGFtIGF3YXJlIHRoYXQgdGhpcyBicmVha3MgYmFja2xpZ2h0IGNvbnRyb2wgb24gc29tZSBD
aHJvbWVib29rcywKPj4gdGhpcyB3YXMgYWxyZWFkeSByZXBvcnRlZCBhbmQgSSB3cm90ZSBhIGxv
bmcgcmVwbHkgZXhwbGFpbmluZyB3aHkKPj4gdGhpbmdzIGFyZSBkb25lIHRoZSB3YXkgdGhleSBh
cmUgZG9uZSBub3cgYW5kIGFsc28gc3VnZ2VzdGluZwo+PiAyIHBvc3NpYmxlIChtdWNoIHNpbXBs
ZXIpIGZpeGVzLCBzZWU6Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFjcGkvNDJh
NWYyYzktYTFkYy04ZmMwLTczMzQtZmU2YzM5MGVjZmJiQHJlZGhhdC5jb20vCj4+Cj4+IFVuZm9y
dHVuYXRlbHkgdGhlIHJlcG9ydGVkIGhhcyBub3QgZm9sbG93ZWQtdXAgb24gdGhpcyBhbmQKPj4g
SSBkb24ndCBoYXZlIHRoZSBoYXJkd2FyZSB0byB0ZXN0IHRoaXMgbXlzZWxmLgo+Pgo+PiBDYW4g
eW91IHBsZWFzZSB0cnkgaW1wbGVtZW50aW5nIDEgb2YgdGhlIGZpeGVzIHN1Z2dlc3RlZCB0aGVy
ZQo+PiBhbmQgdGhlbiBzdWJtaXQgdGhhdCB1cHN0cmVhbSA/Cj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+
IEhhbnMKPj4KPiAKPiBIaSBIYW5zLAo+IAo+IFRoYW5rcyBmb3IgcmV2aWV3aW5nIGFuZCBsZXR0
aW5nIG1lIGtub3cgdGhlIHByaW9yIGF0dGVtcHQuCj4gCj4gSW4gdGhpcyBjYXNlLCB0aGVyZSBp
cyBvbmx5IGEgbmF0aXZlIGJhY2tsaWdodCBkZXZpY2UgYW5kIG5vIHZlbmRvciBiYWNrbGlnaHQg
ZGV2aWNlIHNvIHRoZSBkdXBsaWNhdGlvbiBvZiBiYWNrbGlnaHQgZGV2aWNlcyBkb2VzIG5vdCBo
YXBwZW4uIEkgdGhpbmsgaXQgaXMgYmV0dGVyIHRvIGhhbmRsZSBzdWNoIGEgY2FzZSB3aXRob3V0
IHF1aXJrcy4KCkFkZGluZyBhIHNpbmdsZSBoZXVyaXN0aWMgZm9yIGFsbCBjaHJvbWVib29rcyBp
cyBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQKdGhlbiBhZGRpbmcgcGVyIG1vZGVsIHF1
aXJrcyB3aGljaCBpbmRlZWQgaWRlYWxseSBzaG91bGQgYmUgYXZvaWRlZCAoYnV0IHRoaXMKaXMg
bm90IGFsd2F5cyBwb3NzaWJsZSkuCgo+IEkgdW5kZXJzdGFuZCBpdCBpcyBzdGlsbCBxdWVzdGlv
bmFibGUgdG8gY292ZXIgdGhlIGNhc2UgYnkgYWxsb3dpbmcgZHVwbGljYXRpb24gd2hlbiBib3Ro
IG9mIGEgdmVuZG9yIGJhY2tsaWdodCBkZXZpY2UgYW5kIG5hdGl2ZSBvbmUuIFRvIGV4cGxhaW4g
bXkgdW5kZXJzdGFuZGluZyBhbmQgcmVhc29uaW5nIGZvciAqbm90KiB0cnlpbmcgdG8gYXBwbHkg
dGhlIGRlLWR1cGxpY2F0aW9uIHJ1bGUgdG8gdGhlIHZlbmRvci9uYXRpdmUgY29tYmluYXRpb24s
IGxldCBtZSBmaXJzdCBkZXNjcmliZSB0aGF0IHRoZSBkZS1kdXBsaWNhdGlvbiB3aGljaCBoYXBw
ZW5zIGluIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90eXBlKCkgaXMgYSBoZXVyaXN0aWNzIGFu
ZCBsaW1pdGVkLgo+IAo+IEFzIHRoZSBiYWNrZ3JvdW5kIG9mIGFjcGlfdmlkZW9fZ2V0X2JhY2ts
aWdodF90eXBlKCksIHRoZXJlIGlzIGFuIGFzc3VtcHRpb24gdGhhdCBpdCBzaG91bGQgYmUgY29t
bW9uIHRoYXQgYm90aCBvZiB0aGUgZmlybXdhcmUsIGltcGxlbWVudGluZyBBQ1BJLCBhbmQgdGhl
IGtlcm5lbCBoYXZlIGNvZGUgdG8gZHJpdmUgYmFja2xpZ2h0LiBJbiB0aGUgY2FzZSwgdGhlIG1v
cmUgcmVsaWFibGUgb25lIHNob3VsZCBiZSBwaWNrZWQgaW5zdGVhZCBvZiB1c2luZyBib3RoLCBh
bmQgdGhhdCBpcyB3aGF0IHRoZSBzdGF0ZW1lbnRzIGluIGBpZiAodmlkZW9fY2FwcyAmIEFDUElf
VklERU9fQkFDS0xJR0hUKWAgZG9lcy4KPiAKPiBIb3dldmVyLCB0aGUgbWV0aG9kIGhhcyB0d28g
bGltaXRhdGlvbnM6Cj4gMS4gSXQgZG9lcyBub3QgY292ZXIgdGhlIGNhc2Ugd2hlcmUgdHdvIGJh
Y2tsaWdodCBkZXZpY2VzIHdpdGggdGhlIHNhbWUgdHlwZSBleGlzdC4KClRoaXMgb25seSBoYXBw
ZW5zIHdoZW4gdGhlcmUgYXJlIDIgcGFuZWxzOyBvciAyIGdwdXMgZHJpdmluZyBhIHNpbmdsZSBw
YW5lbAp3aGljaCBhcmUgYm90aCBzcGVjaWFsIGNhc2VzIHdoZXJlIHdlIGFjdHVhbGx5IHdhbnQg
MiBiYWNrbGlnaHQgZGV2aWNlcy4KCj4gMi4gVGhlIHVuZGVybHlpbmcgYXNzdW1wdGlvbiBkb2Vz
IG5vdCBhcHBseSB0byB2ZW5kb3IvbmF0aXZlIGNvbWJpbmF0aW9uLgo+IAo+IFJlZ2FyZGluZyB0
aGUgc2Vjb25kIGxpbWl0YXRpb24sIEkgZG9uJ3QgZXZlbiB1bmRlcnN0YW5kIHRoZSBkaWZmZXJl
bmNlIGJldHdlZW4gdmVuZG9yIGFuZCBuYXRpdmUuIE15IGd1ZXNzIGlzIHRoYXQgYSB2ZW5kb3Ig
YmFja2xpZ2h0IGRldmljZSB1c2VzIHZlbmRvci1zcGVjaWZpYyBBQ1BJIGludGVyZmFjZSwgYW5k
IGEgbmF0aXZlIG9uZSBkaXJlY3RseSB1c2VzIGhhcmR3YXJlIHJlZ2lzdGVycy4gSWYgbXkgZ3Vl
c3MgaXMgY29ycmVjdCwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB2ZW5kb3IgYW5kIG5hdGl2ZSBk
b2VzIG5vdCBpbXBseSB0aGF0IGJvdGggb2YgdGhlbSBhcmUgbGlrZWx5IHRvIGV4aXN0IGF0IHRo
ZSBzYW1lIHRpbWUuIEFzIHRoZSBjb25jbHVzaW9uLCB0aGVyZSBpcyBubyBtb3JlIG1vdGl2YXRp
b24gdG8gdHJ5IHRvIGRlLWR1cGxpY2F0ZSB0aGUgdmVuZG9yL25hdGl2ZSBjb21iaW5hdGlvbiB0
aGFuIHRvIHRyeSB0byBkZS1kdXBsaWNhdGUgY29tYmluYXRpb24gb2YgZGV2aWNlcyB3aXRoIGEg
c2luZ2xlIHR5cGUuCj4gCj4gT2YgY291cnNlLCBpdCBpcyBiZXR0ZXIgaWYgd2UgY291bGQgYWxz
byBhdm9pZCByZWdpc3RlcmluZyB0d28gZGV2aWNlcyB3aXRoIG9uZSB0eXBlIGZvciBvbmUgcGh5
c2ljYWwgZGV2aWNlLiBQb3NzaWJseSB3ZSBjYW4gZG8gc28gYnkgcHJvdmlkaW5nIGEgcGFyYW1l
dGVyIHRvIGluZGljYXRlIHRoYXQgaXQgaXMgZm9yIHRoZSBzYW1lICJpbnRlcm5hbCIgYmFja2xp
Z2h0IHRvIGRldm1fYmFja2xpZ2h0X2RldmljZV9yZWdpc3RlcigpLCBhbmQgbGV0IHRoZSBmdW5j
dGlvbiBjaGVjayBmb3IgdGhlIGR1cGxpY2F0aW9uLiBIb3dldmVyLCB0aGlzIHJ1bGUgbWF5IGJl
IHRvbyByZXN0cmljdCwgb3IgbWF5IGhhdmUgcHJvYmxlbXMgSSBtaXNzZWQuCj4gCj4gQmFzZWQg
b24gdGhlIGRpc2N1c3Npb24gYWJvdmUsIHdlIGNhbiBkZWR1Y2UgdGhyZWUgcG9zc2liaWxpdGll
czoKPiBhLiBUaGVyZSBpcyBubyByZWFzb24gdG8gZGlzdGluZ3Vpc2ggdmVuZG9yIGFuZCBuYXRp
dmUgaW4gdGhpcyBjYXNlLCBhbmQgd2UgY2FuIHN0aWNrIHRvIG15IGN1cnJlbnQgcHJvcG9zYWwu
Cj4gYi4gVGhlcmUgaXMgYSB2YWxpZCByZWFzb24gdG8gZGlzdGluZ3Vpc2ggdmVuZG9yIGFuZCBu
YXRpdmUsIGFuZCB3ZSBjYW4gYWRvcHQgdGhlIHNhbWUgc3RyYXRlZ3kgdGhhdCBhbHJlYWR5IGFk
b3B0ZWQgZm9yIEFDUEkgdmlkZW8vdmVuZG9yIGNvbWJpbmF0aW9uLgo+IGMuIFdlIGNhbiBpbXBs
ZW1lbnQgZGUtZHVwbGljYXRpb24gaW4gZGV2bV9iYWNrbGlnaHRfZGV2aWNlX3JlZ2lzdGVyKCku
Cj4gZC4gVGhlIG90aGVyIHBvc3NpYmxlIG9wdGlvbnMgYXJlIG5vdCB3b3J0aCwgYW5kIHdlIGNh
biBqdXN0IGltcGxlbWVudCBxdWlya3Mgc3BlY2lmaWMgdG8gQ2hyb21lYm9vay9jb3JlYm9vdC4K
PiAKPiBJbiBjYXNlIGIsIGl0IHNob3VsZCBiZSBub3RlZCB0aGF0IHZlbmRvciBhbmQgbmF0aXZl
IGJhY2tsaWdodCBkZXZpY2UgZG8gbm90IHJlcXVpcmUgQUNQSSB2aWRlbywgYW5kIENPTkZJR19B
Q1BJX1ZJREVPIG1heSBub3QgYmUgZW5hYmxlZC4gSW4gdGhlIGNhc2UsIHRoZSBkZS1kdXBsaWNh
dGlvbiBuZWVkcyB0byBiZSBpbXBsZW1lbnRlZCBpbiBiYWNrbGlnaHQgY2xhc3MgZGV2aWNlLgoK
SSBoYXZlIGJlZW4gd29ya2luZyBvbiB0aGUgQUNQSS94ODYgYmFja2xpZ2h0IGRldGVjdGlvbiBj
b2RlIHNpbmNlIDIwMTUsIHBsZWFzZSB0cnVzdAptZSB3aGVuIEkgc2F5IHRoYXQgYWxsb3dpbmcg
Ym90aCB2ZW5kb3IgKyBuYXRpdmUgYmFja2xpZ2h0IGRldmljZXMgYXQgdGhlIHNhbWUgdGltZQpp
cyBhIGJhZCBpZGVhLgoKSSdtIGN1cnJlbnRseSBpbiBkaXJlY3QgY29udGFjdCB3aXRoIHRoZSBD
aHJvbWVPUyB0ZWFtIGFib3V0IGZpeGluZyB0aGUgQ2hyb21lYm9vawpiYWNrbGlnaHQgaXNzdWUg
aW50cm9kdWNlZCBpbiA2LjEtcmMxLgoKSWYgeW91IHdhbiB0byBoZWxwLCBwbGVhc2UgcmVhZDoK
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFjcGkvNDJhNWYyYzktYTFkYy04ZmMwLTcz
MzQtZmU2YzM5MGVjZmJiQHJlZGhhdC5jb20vCgpBbmQgdHJ5IGltcGxlbWVudGluZyAxIGlmIHRo
ZSAyIHNvbHV0aW9ucyBzdWdnZXN0ZWQgdGhlcmUuCgpSZWdhcmRzLAoKSGFucwoKCgo+Pj4gQWtp
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
c2VydGlvbnMoKyksIDY2IGRlbGV0aW9ucygtKQo+Pj4KPj4KPiAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
