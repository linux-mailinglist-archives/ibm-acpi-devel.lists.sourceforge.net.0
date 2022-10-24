Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D1B60ADDF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Oct 2022 16:38:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1omyaX-0001tP-Pm;
	Mon, 24 Oct 2022 14:38:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1omyaW-0001tA-Gp
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 14:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sj0H0AetxBx+UDf7B/9MIT35ZXn55Y7gNC/8ryl/LHw=; b=BMb1+zhObKpFg2QQez57DYtUvR
 zIF/scYYILkMIveo10k/Bo/YbDjBRmseLg/MDZK7uf/2f5SLykAcVMKThuM1N5wwPpnxl088aH0gT
 fzOr9o6vEO6cCAm3uXAN08ZYXp111+jp4EhnN7xygtBzpGk1WiJJwQ1qVyArZ+y08n9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sj0H0AetxBx+UDf7B/9MIT35ZXn55Y7gNC/8ryl/LHw=; b=WGQIWNDrStW9UVZbEeMhDs5MEw
 9lW/CVW+9+8eFknzfzdODkTtk2niUlKsqKg1qlrhI0cJsVfcPBldi+7evZxRAsoZqi8UGpTtaqgpE
 1em/FgErokAsjqqijB/x4A/J82jgGuQfsHBMwGLqXDOr2hbSjuZDa3WSC/0bYgSX7F/Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1omyaQ-0002t7-9y for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 24 Oct 2022 14:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666622268;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sj0H0AetxBx+UDf7B/9MIT35ZXn55Y7gNC/8ryl/LHw=;
 b=Z+7PXrMG9lGRdnKMEAYHn52Dfi7Jib5BFLalOVFy+HFeBkggR5PaeO6LH1T3anFMpMBgdi
 m35UY0S/gq6fTVWU0wJkVn39IOSVdrBZp2xdmiuIrhd+5Qqc260k974Mnsc7KR/60MlwdQ
 Mp12JYgjp7++dyd6h/rD+ws+mkl38+g=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-537-QzAYn_jYNkWZgp-MmhS7qA-1; Mon, 24 Oct 2022 10:37:46 -0400
X-MC-Unique: QzAYn_jYNkWZgp-MmhS7qA-1
Received: by mail-ed1-f71.google.com with SMTP id
 z15-20020a05640240cf00b00461b253c220so3766848edb.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Oct 2022 07:37:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sj0H0AetxBx+UDf7B/9MIT35ZXn55Y7gNC/8ryl/LHw=;
 b=yS6RVENmrCC4CeC0unYfNspDLN5oe+yC1w14CHGj/k5U7JRCOyntlc0DJt+NwZMN1Q
 9c26csybyQbtNO/okzv4TnwRfAwmsjNUGDqVSzWfRiypHHRO+EnBC3uoV6JrKV+/XHvG
 0sCt3La3C/2eUtqecrW6RFJ1r1qDSV9VBfyge9tWUyFrsDMc0YYgGq32SHsO4ld5TZwt
 nJtWlt8pmjTbk+dMZ4CU5qp25rnYbmxJ2R6GCwhRKG2e2UK8f5zSNA1mYdIV+xq6rhoV
 n7XIgNl2XvaFy5sKv+yNwuzBs6Mk57hXt3k3hMssR6EJPmVK3SRWGjaUjkZh1WF4YmI5
 Twvg==
X-Gm-Message-State: ACrzQf1kxKs+FYY3YpNhs4NznUcz35UWVR/Nl58Bol90NWLByiXr5Pwr
 0wfr8sreirvdGKa0dWqVWUOaxrWkFEumD/QFLZqJ9wi3IzcsAozBGXeH5JfRfJIWGeKwbxm6n1J
 blUtWp44idB+QQKxJtA121kEFqJwQr4XtDVY=
X-Received: by 2002:a17:907:7b86:b0:78d:cb21:da0c with SMTP id
 ne6-20020a1709077b8600b0078dcb21da0cmr28630367ejc.24.1666622265642; 
 Mon, 24 Oct 2022 07:37:45 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5laScRkt+5EsmfdhfrsisIZfhqwZSfSpP1Rz+6FzomB1hR4A5mm5gyOzvnRAXCnpM0u8CWVA==
X-Received: by 2002:a17:906:eec9:b0:73d:c369:690f with SMTP id
 wu9-20020a170906eec900b0073dc369690fmr27976822ejb.767.1666622254606; 
 Mon, 24 Oct 2022 07:37:34 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 q7-20020a170906540700b0078d9cd0d2d6sm15976572ejo.11.2022.10.24.07.37.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Oct 2022 07:37:33 -0700 (PDT)
Message-ID: <ae3497ed-b68d-c36a-6b6f-f7b9771d9238@redhat.com>
Date: Mon, 24 Oct 2022 16:37:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <746e5cc6-516f-8f69-9d4b-8fe237de8fd6@redhat.com>
 <edec5950-cec8-b647-ccb1-ba48f9b3bbb0@daynix.com>
 <60672af8-05d2-113c-12b9-d635608be0dd@redhat.com>
 <ea69242c-0bc8-c7bb-9602-c7489bb69684@daynix.com>
 <7373e258-f7cc-4416-9b1c-c8c9dab59ada@daynix.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <7373e258-f7cc-4416-9b1c-c8c9dab59ada@daynix.com>
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
 Content preview:  Hi, On 10/24/22 16:31, Akihiko Odaki wrote: > On 2022/10/24
 23:06, Akihiko Odaki wrote: >> On 2022/10/24 22:21, Hans de Goede wrote:
 >>> Hi, >>> >>> On 10/24/22 14:58, Akihiko Odaki wrote: >>>> On 2022/10 [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1omyaQ-0002t7-9y
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

SGksCgpPbiAxMC8yNC8yMiAxNjozMSwgQWtpaGlrbyBPZGFraSB3cm90ZToKPiBPbiAyMDIyLzEw
LzI0IDIzOjA2LCBBa2loaWtvIE9kYWtpIHdyb3RlOgo+PiBPbiAyMDIyLzEwLzI0IDIyOjIxLCBI
YW5zIGRlIEdvZWRlIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gT24gMTAvMjQvMjIgMTQ6NTgsIEFr
aWhpa28gT2Rha2kgd3JvdGU6Cj4+Pj4gT24gMjAyMi8xMC8yNCAyMDo1MywgSGFucyBkZSBHb2Vk
ZSB3cm90ZToKPj4+Pj4gSGkgQWtpaGlrbywKPj4+Pj4KPj4+Pj4gT24gMTAvMjQvMjIgMTM6MzQs
IEFraWhpa28gT2Rha2kgd3JvdGU6Cj4+Pj4+PiBDb21taXQgMjYwMGJmYTNkZjk5ICgiQUNQSTog
dmlkZW86IEFkZCBhY3BpX3ZpZGVvX2JhY2tsaWdodF91c2VfbmF0aXZlKCkKPj4+Pj4+IGhlbHBl
ciIpIGFuZCBmb2xsb3dpbmcgY29tbWl0cyBtYWRlIG5hdGl2ZSBiYWNrbGlnaHQgdW5hdmFpbGFi
bGUgaWYKPj4+Pj4+IENPTkZJR19BQ1BJX1ZJREVPIGlzIHNldCBhbmQgdGhlIGJhY2tsaWdodCBm
ZWF0dXJlIG9mIEFDUEkgdmlkZW8gaXMKPj4+Pj4+IHVuYXZhaWxhYmxlLCB3aGljaCBicm9rZSB0
aGUgYmFja2xpZ2h0IGZ1bmN0aW9uYWxpdHkgb24gTGVub3ZvIFRoaW5rUGFkCj4+Pj4+PiBDMTMg
WW9nYSBDaHJvbWVib29rLiBBbGxvdyB0byBmYWxsIGJhY2sgdG8gbmF0aXZlIGJhY2tsaWdodCBp
biBzdWNoCj4+Pj4+PiBjYXNlcy4KPj4+Pj4KPj4+Pj4gSSBhcHByZWNpYXRlIHlvdXIgd29yayBv
biB0aGlzLCBidXQgd2hhdCB0aGlzIGluIGVzc2VuY2UgZG9lcyBpcwo+Pj4+PiBpdCBhbGxvd3Mg
MiBiYWNrbGlnaHQgZHJpdmVycyAodmVuZG9yICsgbmF0aXZlKSB0byBnZXQgcmVnaXN0ZXJlZAo+
Pj4+PiBmb3IgdGhlIHNhbWUgcGFuZWwgYWdhaW4uIFdoaWxlIHRoZSB3aG9sZSBnb2FsIG9mIHRo
ZSBiYWNrbGlnaHQgcmVmYWN0b3IKPj4+Pj4gc2VyaWVzIGxhbmRpbmcgaW4gNi4xIHdhcyB0byBt
YWtlIGl0IHNvIHRoYXQgdGhlcmUgYWx3YXlzIGlzIG9ubHkKPj4+Pj4gKjEqIGJhY2tsaWdodCBk
ZXZpY2UgcmVnaXN0ZXJlZCBpbnN0ZWFkIG9mIChwb3NzaWJseSkgcmVnaXN0ZXJpbmcKPj4+Pj4g
bXVsdGlwbGUgYW5kIGxldHRpbmcgdXNlcnNwYWNlIGZpZ3VyZSBpdCBvdXQuIEl0IGlzIGFsc28g
aW1wb3J0YW50Cj4+Pj4+IHRvIG9ubHkgYWx3YXlzIGhhdmUgMSBiYWNrbGlnaHQgZGV2aWNlIHBl
ciBwYW5lbCBmb3IgZnVydGhlcgo+Pj4+PiB1cGNvbWluZyBjaGFuZ2VzLgo+Pj4+Pgo+Pj4+PiBT
byBuYWNrIGZvciB0aGlzIHNvbHV0aW9uLCBzb3JyeS4KPj4+Pj4KPj4+Pj4gSSBhbSBhd2FyZSB0
aGF0IHRoaXMgYnJlYWtzIGJhY2tsaWdodCBjb250cm9sIG9uIHNvbWUgQ2hyb21lYm9va3MsCj4+
Pj4+IHRoaXMgd2FzIGFscmVhZHkgcmVwb3J0ZWQgYW5kIEkgd3JvdGUgYSBsb25nIHJlcGx5IGV4
cGxhaW5pbmcgd2h5Cj4+Pj4+IHRoaW5ncyBhcmUgZG9uZSB0aGUgd2F5IHRoZXkgYXJlIGRvbmUg
bm93IGFuZCBhbHNvIHN1Z2dlc3RpbmcKPj4+Pj4gMiBwb3NzaWJsZSAobXVjaCBzaW1wbGVyKSBm
aXhlcywgc2VlOgo+Pj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hY3BpLzQyYTVm
MmM5LWExZGMtOGZjMC03MzM0LWZlNmMzOTBlY2ZiYkByZWRoYXQuY29tLwo+Pj4+Pgo+Pj4+PiBV
bmZvcnR1bmF0ZWx5IHRoZSByZXBvcnRlZCBoYXMgbm90IGZvbGxvd2VkLXVwIG9uIHRoaXMgYW5k
Cj4+Pj4+IEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmUgdG8gdGVzdCB0aGlzIG15c2VsZi4KPj4+
Pj4KPj4+Pj4gQ2FuIHlvdSBwbGVhc2UgdHJ5IGltcGxlbWVudGluZyAxIG9mIHRoZSBmaXhlcyBz
dWdnZXN0ZWQgdGhlcmUKPj4+Pj4gYW5kIHRoZW4gc3VibWl0IHRoYXQgdXBzdHJlYW0gPwo+Pj4+
Pgo+Pj4+PiBSZWdhcmRzLAo+Pj4+Pgo+Pj4+PiBIYW5zCj4+Pj4+Cj4+Pj4KPj4+PiBIaSBIYW5z
LAo+Pj4+Cj4+Pj4gVGhhbmtzIGZvciByZXZpZXdpbmcgYW5kIGxldHRpbmcgbWUga25vdyB0aGUg
cHJpb3IgYXR0ZW1wdC4KPj4+Pgo+Pj4+IEluIHRoaXMgY2FzZSwgdGhlcmUgaXMgb25seSBhIG5h
dGl2ZSBiYWNrbGlnaHQgZGV2aWNlIGFuZCBubyB2ZW5kb3IgYmFja2xpZ2h0IGRldmljZSBzbyB0
aGUgZHVwbGljYXRpb24gb2YgYmFja2xpZ2h0IGRldmljZXMgZG9lcyBub3QgaGFwcGVuLiBJIHRo
aW5rIGl0IGlzIGJldHRlciB0byBoYW5kbGUgc3VjaCBhIGNhc2Ugd2l0aG91dCBxdWlya3MuCj4+
Pgo+Pj4gQWRkaW5nIGEgc2luZ2xlIGhldXJpc3RpYyBmb3IgYWxsIGNocm9tZWJvb2tzIGlzIHNv
bWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudAo+Pj4gdGhlbiBhZGRpbmcgcGVyIG1vZGVsIHF1
aXJrcyB3aGljaCBpbmRlZWQgaWRlYWxseSBzaG91bGQgYmUgYXZvaWRlZCAoYnV0IHRoaXMKPj4+
IGlzIG5vdCBhbHdheXMgcG9zc2libGUpLgo+Pj4KPj4+PiBJIHVuZGVyc3RhbmQgaXQgaXMgc3Rp
bGwgcXVlc3Rpb25hYmxlIHRvIGNvdmVyIHRoZSBjYXNlIGJ5IGFsbG93aW5nIGR1cGxpY2F0aW9u
IHdoZW4gYm90aCBvZiBhIHZlbmRvciBiYWNrbGlnaHQgZGV2aWNlIGFuZCBuYXRpdmUgb25lLiBU
byBleHBsYWluIG15IHVuZGVyc3RhbmRpbmcgYW5kIHJlYXNvbmluZyBmb3IgKm5vdCogdHJ5aW5n
IHRvIGFwcGx5IHRoZSBkZS1kdXBsaWNhdGlvbiBydWxlIHRvIHRoZSB2ZW5kb3IvbmF0aXZlIGNv
bWJpbmF0aW9uLCBsZXQgbWUgZmlyc3QgZGVzY3JpYmUgdGhhdCB0aGUgZGUtZHVwbGljYXRpb24g
d2hpY2ggaGFwcGVucyBpbiBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZSgpIGlzIGEgaGV1
cmlzdGljcyBhbmQgbGltaXRlZC4KPj4+Pgo+Pj4+IEFzIHRoZSBiYWNrZ3JvdW5kIG9mIGFjcGlf
dmlkZW9fZ2V0X2JhY2tsaWdodF90eXBlKCksIHRoZXJlIGlzIGFuIGFzc3VtcHRpb24gdGhhdCBp
dCBzaG91bGQgYmUgY29tbW9uIHRoYXQgYm90aCBvZiB0aGUgZmlybXdhcmUsIGltcGxlbWVudGlu
ZyBBQ1BJLCBhbmQgdGhlIGtlcm5lbCBoYXZlIGNvZGUgdG8gZHJpdmUgYmFja2xpZ2h0LiBJbiB0
aGUgY2FzZSwgdGhlIG1vcmUgcmVsaWFibGUgb25lIHNob3VsZCBiZSBwaWNrZWQgaW5zdGVhZCBv
ZiB1c2luZyBib3RoLCBhbmQgdGhhdCBpcyB3aGF0IHRoZSBzdGF0ZW1lbnRzIGluIGBpZiAodmlk
ZW9fY2FwcyAmIEFDUElfVklERU9fQkFDS0xJR0hUKWAgZG9lcy4KPj4+Pgo+Pj4+IEhvd2V2ZXIs
IHRoZSBtZXRob2QgaGFzIHR3byBsaW1pdGF0aW9uczoKPj4+PiAxLiBJdCBkb2VzIG5vdCBjb3Zl
ciB0aGUgY2FzZSB3aGVyZSB0d28gYmFja2xpZ2h0IGRldmljZXMgd2l0aCB0aGUgc2FtZSB0eXBl
IGV4aXN0Lgo+Pj4KPj4+IFRoaXMgb25seSBoYXBwZW5zIHdoZW4gdGhlcmUgYXJlIDIgcGFuZWxz
OyBvciAyIGdwdXMgZHJpdmluZyBhIHNpbmdsZSBwYW5lbAo+Pj4gd2hpY2ggYXJlIGJvdGggc3Bl
Y2lhbCBjYXNlcyB3aGVyZSB3ZSBhY3R1YWxseSB3YW50IDIgYmFja2xpZ2h0IGRldmljZXMuCj4+
Pgo+Pj4+IDIuIFRoZSB1bmRlcmx5aW5nIGFzc3VtcHRpb24gZG9lcyBub3QgYXBwbHkgdG8gdmVu
ZG9yL25hdGl2ZSBjb21iaW5hdGlvbi4KPj4+Pgo+Pj4+IFJlZ2FyZGluZyB0aGUgc2Vjb25kIGxp
bWl0YXRpb24sIEkgZG9uJ3QgZXZlbiB1bmRlcnN0YW5kIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4g
dmVuZG9yIGFuZCBuYXRpdmUuIE15IGd1ZXNzIGlzIHRoYXQgYSB2ZW5kb3IgYmFja2xpZ2h0IGRl
dmljZSB1c2VzIHZlbmRvci1zcGVjaWZpYyBBQ1BJIGludGVyZmFjZSwgYW5kIGEgbmF0aXZlIG9u
ZSBkaXJlY3RseSB1c2VzIGhhcmR3YXJlIHJlZ2lzdGVycy4gSWYgbXkgZ3Vlc3MgaXMgY29ycmVj
dCwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB2ZW5kb3IgYW5kIG5hdGl2ZSBkb2VzIG5vdCBpbXBs
eSB0aGF0IGJvdGggb2YgdGhlbSBhcmUgbGlrZWx5IHRvIGV4aXN0IGF0IHRoZSBzYW1lIHRpbWUu
IEFzIHRoZSBjb25jbHVzaW9uLCB0aGVyZSBpcyBubyBtb3JlIG1vdGl2YXRpb24gdG8gdHJ5IHRv
IGRlLWR1cGxpY2F0ZSB0aGUgdmVuZG9yL25hdGl2ZSBjb21iaW5hdGlvbiB0aGFuIHRvIHRyeSB0
byBkZS1kdXBsaWNhdGUgY29tYmluYXRpb24gb2YgZGV2aWNlcyB3aXRoIGEgc2luZ2xlIHR5cGUu
Cj4+Pj4KPj4+PiBPZiBjb3Vyc2UsIGl0IGlzIGJldHRlciBpZiB3ZSBjb3VsZCBhbHNvIGF2b2lk
IHJlZ2lzdGVyaW5nIHR3byBkZXZpY2VzIHdpdGggb25lIHR5cGUgZm9yIG9uZSBwaHlzaWNhbCBk
ZXZpY2UuIFBvc3NpYmx5IHdlIGNhbiBkbyBzbyBieSBwcm92aWRpbmcgYSBwYXJhbWV0ZXIgdG8g
aW5kaWNhdGUgdGhhdCBpdCBpcyBmb3IgdGhlIHNhbWUgImludGVybmFsIiBiYWNrbGlnaHQgdG8g
ZGV2bV9iYWNrbGlnaHRfZGV2aWNlX3JlZ2lzdGVyKCksIGFuZCBsZXQgdGhlIGZ1bmN0aW9uIGNo
ZWNrIGZvciB0aGUgZHVwbGljYXRpb24uIEhvd2V2ZXIsIHRoaXMgcnVsZSBtYXkgYmUgdG9vIHJl
c3RyaWN0LCBvciBtYXkgaGF2ZSBwcm9ibGVtcyBJIG1pc3NlZC4KPj4+Pgo+Pj4+IEJhc2VkIG9u
IHRoZSBkaXNjdXNzaW9uIGFib3ZlLCB3ZSBjYW4gZGVkdWNlIHRocmVlIHBvc3NpYmlsaXRpZXM6
Cj4+Pj4gYS4gVGhlcmUgaXMgbm8gcmVhc29uIHRvIGRpc3Rpbmd1aXNoIHZlbmRvciBhbmQgbmF0
aXZlIGluIHRoaXMgY2FzZSwgYW5kIHdlIGNhbiBzdGljayB0byBteSBjdXJyZW50IHByb3Bvc2Fs
Lgo+Pj4+IGIuIFRoZXJlIGlzIGEgdmFsaWQgcmVhc29uIHRvIGRpc3Rpbmd1aXNoIHZlbmRvciBh
bmQgbmF0aXZlLCBhbmQgd2UgY2FuIGFkb3B0IHRoZSBzYW1lIHN0cmF0ZWd5IHRoYXQgYWxyZWFk
eSBhZG9wdGVkIGZvciBBQ1BJIHZpZGVvL3ZlbmRvciBjb21iaW5hdGlvbi4KPj4+PiBjLiBXZSBj
YW4gaW1wbGVtZW50IGRlLWR1cGxpY2F0aW9uIGluIGRldm1fYmFja2xpZ2h0X2RldmljZV9yZWdp
c3RlcigpLgo+Pj4+IGQuIFRoZSBvdGhlciBwb3NzaWJsZSBvcHRpb25zIGFyZSBub3Qgd29ydGgs
IGFuZCB3ZSBjYW4ganVzdCBpbXBsZW1lbnQgcXVpcmtzIHNwZWNpZmljIHRvIENocm9tZWJvb2sv
Y29yZWJvb3QuCj4+Pj4KPj4+PiBJbiBjYXNlIGIsIGl0IHNob3VsZCBiZSBub3RlZCB0aGF0IHZl
bmRvciBhbmQgbmF0aXZlIGJhY2tsaWdodCBkZXZpY2UgZG8gbm90IHJlcXVpcmUgQUNQSSB2aWRl
bywgYW5kIENPTkZJR19BQ1BJX1ZJREVPIG1heSBub3QgYmUgZW5hYmxlZC4gSW4gdGhlIGNhc2Us
IHRoZSBkZS1kdXBsaWNhdGlvbiBuZWVkcyB0byBiZSBpbXBsZW1lbnRlZCBpbiBiYWNrbGlnaHQg
Y2xhc3MgZGV2aWNlLgo+Pj4KPj4+IEkgaGF2ZSBiZWVuIHdvcmtpbmcgb24gdGhlIEFDUEkveDg2
IGJhY2tsaWdodCBkZXRlY3Rpb24gY29kZSBzaW5jZSAyMDE1LCBwbGVhc2UgdHJ1c3QKPj4+IG1l
IHdoZW4gSSBzYXkgdGhhdCBhbGxvd2luZyBib3RoIHZlbmRvciArIG5hdGl2ZSBiYWNrbGlnaHQg
ZGV2aWNlcyBhdCB0aGUgc2FtZSB0aW1lCj4+PiBpcyBhIGJhZCBpZGVhLgo+Pj4KPj4+IEknbSBj
dXJyZW50bHkgaW4gZGlyZWN0IGNvbnRhY3Qgd2l0aCB0aGUgQ2hyb21lT1MgdGVhbSBhYm91dCBm
aXhpbmcgdGhlIENocm9tZWJvb2sKPj4+IGJhY2tsaWdodCBpc3N1ZSBpbnRyb2R1Y2VkIGluIDYu
MS1yYzEuCj4+Pgo+Pj4gSWYgeW91IHdhbiB0byBoZWxwLCBwbGVhc2UgcmVhZDoKPj4+Cj4+PiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hY3BpLzQyYTVmMmM5LWExZGMtOGZjMC03MzM0
LWZlNmMzOTBlY2ZiYkByZWRoYXQuY29tLwo+Pj4KPj4+IEFuZCB0cnkgaW1wbGVtZW50aW5nIDEg
aWYgdGhlIDIgc29sdXRpb25zIHN1Z2dlc3RlZCB0aGVyZS4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4K
Pj4+IEhhbnMKPj4KPj4gSGksCj4+Cj4+IEkganVzdCB3YW50ZWQgdG8gY29uZmlybSB5b3VyIGlu
dGVudGlvbiB0aGF0IHdlIHNob3VsZCBkaXN0aW5ndWlzaCB2ZW5kb3IgYW5kIG5hdGl2ZS4gSW4g
dGhlIGNhc2UgSSB0aGluayBpdCBpcyBiZXR0ZXIgdG8gbW9kaWZ5IF9fYWNwaV92aWRlb19nZXRf
YmFja2xpZ2h0X3R5cGUoKSBhbmQgYWRkICJuYXRpdmVfYXZhaWxhYmxlIiBjaGVjayBpbiBjYXNl
IG9mIG5vIEFDUEkgdmlkZW8gYXMgYWxyZWFkeSBkb25lIGZvciB0aGUgQUNQSSB2aWRlby9uYXRp
dmUgY29tYmluYXRpb24uCj4+Cj4+IFVuZm9ydHVuYXRlbHkgdGhpcyBoYXMgb25lIHBpdGZhbGwg
dGhvdWdoOiBpdCBkb2VzIG5vdCB3b3JrIGlmIENPTkZJR19BQ1BJX1ZJREVPIGlzIGRpc2FibGVk
LiBJZiBpdCBpcywgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGUoKSBhbHdheXMgcmV0dXJu
IGFjcGlfYmFja2xpZ2h0X3ZlbmRvciwgYW5kIGFjcGlfdmlkZW9fYmFja2xpZ2h0X3VzZV9uYXRp
dmUoKSBhbHdheXMgcmV0dXJucyB0cnVlLiBJdCBpcyBub3QgYSByZWdyZXNzaW9uIGJ1dCB0aGUg
Y3VycmVudCBiZWhhdmlvci4gRml4aW5nIGl0IHJlcXVpcmVzIGFsc28gcmVmYWN0b3JpbmcgdG91
Y2hpbmcgYm90aCBvZiBBQ1BJIHZpZGVvIGFuZCBiYWNrbGlnaHQgY2xhc3MgZHJpdmVyIHNvIEkg
Z3Vlc3MgSSdtIG5vdCBhbiBhcHByb3ByaWF0ZSBwZXJzb24gdG8gZG8gdGhhdCwgYW5kIEkgc2hv
dWxkIGp1c3QgYWRkICJuYXRpdmVfYXZhaWxhYmxlIiBjaGVjayB0byBfX2FjcGlfdmlkZW9fZ2V0
X2JhY2tsaWdodF90eXBlKCkuCj4+Cj4+IERvZXMgdGhhdCBzb3VuZCBnb29kPwo+IAo+IFdlbGws
IGl0IHdvdWxkIG5vdCBiZSB0aGF0IGVhc3kgc2luY2UganVzdCBhZGRpbmcgbmF0aXZlX2F2YWls
YWJsZSBjYW5ub3QgaGFuZGxlIHRoZSBjYXNlIHdoZXJlIHRoZSB2ZW5kb3IgZHJpdmVyIGdldHMg
cmVnaXN0ZXJlZCBmaXJzdC4gQ2hlY2tpbmcgd2l0aCAibmF0aXZlX2F2YWlsYWJsZSIgd2FzIHBv
c3NpYmxlIGZvciBBQ1BJIHZpZGVvL3ZlbmRvciBjb21iaW5hdGlvbiBiZWNhdXNlIEFDUEkgdmlk
ZW8gcmVnaXN0ZXJzIGl0cyBiYWNrbGlnaHQgYWZ0ZXIgc29tZSBkZWxheS4gSSBzdGlsbCB0aGlu
ayBpdCBkb2VzIG5vdCBvdmVyY29tcGxpY2F0ZSB0aGluZ3MgdG8gbW9kaWZ5IF9fYWNwaV92aWRl
b19nZXRfYmFja2xpZ2h0X3R5cGUoKSBzbyB0aGF0IGl0IGNhbiB1c2UgYm90aCBvZiB2ZW5kb3Ig
YW5kIG5hdGl2ZSBhcyBmYWxsYmFjayB3aGlsZSBwcmV2ZW50aW5nIGR1cGxpY2F0ZSByZWdpc3Ry
YXRpb24uCgpJbiB0aGUgbWVhbiB0aW1lIHRoaXMgaGFzIGFscmVhZHkgYmVlbiBmaXhlZCBieSBh
IHNpbmdsZSBwYXRjaCBvZiBqdXN0IGEgZmV3CmxpbmVzLCByYXRoZXIgdGhlbiByZXF1aXJpbmcg
MjIgcGF0Y2hlcywgc2VlOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjIx
MDI0MTQxMjEwLjY3Nzg0LTEtZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20vCgpSZWdhcmRz
LAoKSGFucwoKCgoKPj4+Pj4+IEFraWhpa28gT2Rha2kgKDIyKToKPj4+Pj4+IMKgwqDCoCBkcm0v
aTkxNS9vcHJlZ2lvbjogSW1wcm92ZSBiYWNrbGlnaHQgcmVxdWVzdCBjb25kaXRpb24KPj4+Pj4+
IMKgwqDCoCBBQ1BJOiB2aWRlbzogSW50cm9kdWNlIGFjcGlfdmlkZW9fZ2V0X2JhY2tsaWdodF90
eXBlcygpCj4+Pj4+PiDCoMKgwqAgTG9vbmdBcmNoOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xp
Z2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6IGFjZXItd21pOiBVc2UgYWNw
aV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6
IGFzdXMtbGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+
IMKgwqDCoCBwbGF0Zm9ybS94ODY6IGFzdXMtd21pOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xp
Z2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6IGNvbXBhbC1sYXB0b3A6IFVz
ZSBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMoKQo+Pj4+Pj4gwqDCoMKgIHBsYXRmb3Jt
L3g4NjogZWVlcGMtbGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkK
Pj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6IGZ1aml0c3UtbGFwdG9wOiBVc2UgYWNwaV92aWRl
b19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6IGlkZWFw
YWQtbGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKg
wqDCoCBwbGF0Zm9ybS94ODY6IG1zaS1sYXB0b3A6IFVzZSBhY3BpX3ZpZGVvX2dldF9iYWNrbGln
aHRfdHlwZXMoKQo+Pj4+Pj4gwqDCoMKgIHBsYXRmb3JtL3g4NjogbXNpLXdtaTogVXNlIGFjcGlf
dmlkZW9fZ2V0X2JhY2tsaWdodF90eXBlcygpCj4+Pj4+PiDCoMKgwqAgcGxhdGZvcm0veDg2OiBu
dmlkaWEtd21pLWVjLWJhY2tsaWdodDogVXNlCj4+Pj4+PiDCoMKgwqDCoMKgIGFjcGlfdmlkZW9f
Z2V0X2JhY2tsaWdodF90eXBlcygpCj4+Pj4+PiDCoMKgwqAgcGxhdGZvcm0veDg2OiBwYW5hc29u
aWMtbGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKg
wqDCoCBwbGF0Zm9ybS94ODY6IHNhbXN1bmctbGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFj
a2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6IHNvbnktbGFwdG9wOiBV
c2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9y
bS94ODY6IHRoaW5rcGFkX2FjcGk6IFVzZSBhY3BpX3ZpZGVvX2dldF9iYWNrbGlnaHRfdHlwZXMo
KQo+Pj4+Pj4gwqDCoMKgIHBsYXRmb3JtL3g4NjogdG9zaGliYV9hY3BpOiBVc2UgYWNwaV92aWRl
b19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBwbGF0Zm9ybS94ODY6IGRlbGwt
bGFwdG9wOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xpZ2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDC
oCBwbGF0Zm9ybS94ODY6IGludGVsX29ha3RyYWlsOiBVc2UgYWNwaV92aWRlb19nZXRfYmFja2xp
Z2h0X3R5cGVzKCkKPj4+Pj4+IMKgwqDCoCBBQ1BJOiB2aWRlbzogUmVtb3ZlIGFjcGlfdmlkZW9f
Z2V0X2JhY2tsaWdodF90eXBlKCkKPj4+Pj4+IMKgwqDCoCBBQ1BJOiB2aWRlbzogRmFsbGJhY2sg
dG8gbmF0aXZlIGJhY2tsaWdodAo+Pj4+Pj4KPj4+Pj4+IMKgwqAgRG9jdW1lbnRhdGlvbi9ncHUv
dG9kby5yc3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgOCArLS0K
Pj4+Pj4+IMKgwqAgZHJpdmVycy9hY3BpL2FjcGlfdmlkZW8uY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+IMKgwqAgZHJpdmVycy9hY3BpL3Zp
ZGVvX2RldGVjdC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNTQgKysr
KysrKysrKy0tLS0tLS0tLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX29wcmVnaW9uLmMgfMKgIDMgKy0KPj4+Pj4+IMKgwqAgZHJpdmVycy9wbGF0Zm9ybS9s
b29uZ2FyY2gvbG9vbmdzb24tbGFwdG9wLmPCoCB8wqAgNCArLQo+Pj4+Pj4gwqDCoCBkcml2ZXJz
L3BsYXRmb3JtL3g4Ni9hY2VyLXdtaS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
MiArLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hc3VzLWxhcHRvcC5jwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL3BsYXRmb3JtL3g4
Ni9hc3VzLXdtaS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArLQo+Pj4+Pj4g
wqDCoCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9jb21wYWwtbGFwdG9wLmPCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgIDIgKy0KPj4+Pj4+IMKgwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvZGVsbC9kZWxsLWxh
cHRvcC5jwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+Pj4+PiDCoMKgIGRyaXZlcnMvcGxhdGZvcm0v
eDg2L2VlZXBjLWxhcHRvcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+IMKg
wqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvZnVqaXRzdS1sYXB0b3AuY8KgwqDCoMKgwqDCoMKgwqAg
fMKgIDQgKy0KPj4+Pj4+IMKgwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvaWRlYXBhZC1sYXB0b3Au
Y8KgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+IMKgwqAgZHJpdmVycy9wbGF0Zm9ybS94
ODYvaW50ZWwvb2FrdHJhaWwuY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+IMKgwqAg
ZHJpdmVycy9wbGF0Zm9ybS94ODYvbXNpLWxhcHRvcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAyICstCj4+Pj4+PiDCoMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L21zaS13bWkuY8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArLQo+Pj4+Pj4gwqDCoCAuLi4vcGxhdGZv
cm0veDg2L252aWRpYS13bWktZWMtYmFja2xpZ2h0LmPCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+IMKg
wqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvcGFuYXNvbmljLWxhcHRvcC5jwqDCoMKgwqDCoMKgIHzC
oCAyICstCj4+Pj4+PiDCoMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L3NhbXN1bmctbGFwdG9wLmPC
oMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+Pj4+PiDCoMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2
L3NvbnktbGFwdG9wLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+Pj4+PiDCoMKg
IGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuY8KgwqDCoMKgwqDCoMKgwqDCoCB8
wqAgNCArLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90b3NoaWJhX2FjcGkuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+Pj4+PiDCoMKgIGRyaXZlcnMvdmlkZW8vYmFj
a2xpZ2h0L2JhY2tsaWdodC5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxOCArKysrKysrCj4+Pj4+
PiDCoMKgIGluY2x1ZGUvYWNwaS92aWRlby5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMSArKysrLS0tLQo+Pj4+Pj4gwqDCoCBpbmNsdWRlL2xp
bnV4L2JhY2tsaWdodC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqAgMSArCj4+Pj4+PiDCoMKgIDI1IGZpbGVzIGNoYW5nZWQsIDg1IGluc2VydGlvbnMoKyksIDY2
IGRlbGV0aW9ucygtKQo+Pj4+Pj4KPj4+Pj4KPj4+Pgo+Pj4KPiAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
