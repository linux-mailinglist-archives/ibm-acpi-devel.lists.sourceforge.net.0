Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 892551D7B25
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 18 May 2020 16:23:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jagg5-0000E3-4J; Mon, 18 May 2020 14:23:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jagg3-0000Dr-Gx
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 14:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N4kEWsurXWVRb491n6rW9nQFxH83gE62FpZ7K4CZ4Y8=; b=FfIiq9mdyuHGxJYRZ2JB+jECfI
 bd/y31bI3R0gDCBfCo5CXl39GLiElpU2pEvsUBN40tOPPZSRwwBgn8O1Ldy4/FpwWgdYUbjOpDjdl
 k+CgaDZTSpBpHgxmJZcA6mFPJM7eyWpfnBYX7RrQ5azI42dmq22Mt5b7jwCUymLrgGDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N4kEWsurXWVRb491n6rW9nQFxH83gE62FpZ7K4CZ4Y8=; b=gKyh+2tQLT8bF+Q7NJPWbXDTZ4
 ll7yWH6qEXe3il+REYku9qeBtBdD33xXAM8CtUrj7bcMTtpccOtgPoiFVhCfqEoFa5UlABxyTIx1l
 X+2l1T+ZP/JdUZvayS9BsTWPBUondajZvIsh4icSFPNbRDo9HEnmJnH340W6XWobBJ0A=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jagg1-00H2NS-Ls
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 14:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589811807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N4kEWsurXWVRb491n6rW9nQFxH83gE62FpZ7K4CZ4Y8=;
 b=EtuJtl/zmxbDA4q2YSqQHMq9Abrhz9Vez3ilNH34CZpV2DLA23OyeKAA8Ehq+hIbYFLyuv
 DG4Yh5ZC+ArCeMmk86pdDD3ppPvyd9Izj/X9LDx6o4m0gh0fwn92K8Ikhgq1bQTIXnZ0bi
 yqpupaSv65gV/OzVSc1Pe2li2RKNLbE=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-USNSETH9NRW6kyjO2R2k-w-1; Mon, 18 May 2020 10:23:25 -0400
X-MC-Unique: USNSETH9NRW6kyjO2R2k-w-1
Received: by mail-wm1-f71.google.com with SMTP id n124so3157531wma.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 18 May 2020 07:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N4kEWsurXWVRb491n6rW9nQFxH83gE62FpZ7K4CZ4Y8=;
 b=Ok/dEenf+HmDRNG1HT5XAiVvf//0CYNdbNA6yiBQ/Cr+XXiuTEHhYuipyob99oekpi
 w6wMEEy9rYFz5fx0Ztp4nA67uQyJWOzUo0ZIOZUoxSIvVV7ajpm6Um3GVkKWvLwPdTCD
 qnwHqFiApQbjTyGT3xPfB5jkX+sz9PsqK0103L2xxwyuos7Xl+8RMYJ+swfYRZ3nb5Sg
 fvj+soyeFu3VQRWLXFrWZ2vnmRZyo7nPK6xoYpaVfh9a324V5Buu284tkvKEidMOZXF/
 Ww0o7VLOyTSOfYGnNnibqjNkosu/AbD+nK5s8qG1V/qORlFnzGahg9SIbXiIBe7l+BuV
 Q9Dw==
X-Gm-Message-State: AOAM531/ri1QBGvjDRIxUefWKbQXUauslTMl4E5JtaNS3gIIKmRL/lUX
 yCejyv/okNqOBRHjruGtkqPMOKsPd/wl2Nmt8DYj/ZDRVTb57ALYovAVfbmLYUKoRtrbhviqYI3
 5zx2IHKe+9JsUpOODpBJsM5Klg5kTPb1JQoQ=
X-Received: by 2002:adf:e388:: with SMTP id e8mr19930295wrm.174.1589811804155; 
 Mon, 18 May 2020 07:23:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyi/JVZYfBkPZCJ33i9pkkZ3Iw8Uks7lUYbBZX8naP80oeusj8a8mSkVZW0YdNpNt9SYero8A==
X-Received: by 2002:adf:e388:: with SMTP id e8mr19930254wrm.174.1589811803884; 
 Mon, 18 May 2020 07:23:23 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id g187sm16732224wmf.30.2020.05.18.07.23.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 07:23:23 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-input@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
Date: Mon, 18 May 2020 16:23:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jagg1-00H2NS-Ls
Subject: Re: [ibm-acpi-devel] [PATCHv2 0/7] Support inhibiting input devices
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
Cc: Nick Dyer <nick@shmanahar.org>, Benjamin Tissoires <btissoir@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA1LzE4LzIwIDM6NDkgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBI
aSBIYW5zLAo+IAo+IFcgZG5pdSAxOC4wNS4yMDIwIG/CoDE0OjI0LCBIYW5zIGRlIEdvZWRlIHBp
c3plOgo+PiBIaSwKPj4KPj4gT24gNS8xOC8yMCAxMjo0OCBQTSwgQW5kcnplaiBQaWV0cmFzaWV3
aWN6IHdyb3RlOgo+Pj4gSGkgSGFucywKPj4+Cj4+PiBXIGRuaXUgMTUuMDUuMjAyMCBvwqAyMDox
OSwgSGFucyBkZSBHb2VkZSBwaXN6ZToKPj4+PiBIaSBBbmRyZXpqLAo+Pj4+Cj4+Pj4gT24gNS8x
NS8yMCA2OjQ5IFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+Pj4+IFVzZXJzcGFj
ZSBtaWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBvbGljeSB0byB0ZW1wb3JhcmlseSBkaXNyZWdh
cmQgaW5wdXQKPj4+Pj4gZnJvbSBjZXJ0YWluIGRldmljZXMsIGluY2x1ZGluZyBub3QgdHJlYXRp
bmcgdGhlbSBhcyB3YWtldXAgc291cmNlcy4KPj4+Pj4KPj4+Pj4gQW4gZXhhbXBsZSB1c2UgY2Fz
ZSBpcyBhIGxhcHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZCB1bmRlciB0aGUKPj4+
Pj4gc2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVu
IG11c3QgaG9sZCB0aGUgbGFwdG9wCj4+Pj4+IGluIHN1Y2ggYSB3YXkgdGhhdCBpdCBpcyBkaWZm
aWN1bHQgdG8gYXZvaWQgcHJlc3NpbmcgdGhlIGtleWJvYXJkIGtleXMuIEl0Cj4+Pj4+IGlzIHRo
ZXJlZm9yZSBkZXNpcmFibGUgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0IGZyb20gdGhl
IGtleWJvYXJkLAo+Pj4+PiB1bnRpbCBpdCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkg
aXMgYSBwb2xpY3kgd2hpY2ggc2hvdWxkIGJlIGtlcHQKPj4+Pj4gb3V0IG9mIHRoZSBrZXJuZWws
IGJ1dCB0aGUga2VybmVsIG11c3QgcHJvdmlkZSBzdWl0YWJsZSBtZWFucyB0byBpbXBsZW1lbnQK
Pj4+Pj4gc3VjaCBhIHBvbGljeS4KPj4+Pgo+Pj4+IEFjdHVhbGx5IGxpYmlucHV0IGFscmVhZHkg
YmluZHMgdG9nZXRoZXIgKGluc2lkZSBsaWJpbnB1dCkgU1dfVEFCTEVUX01PREUKPj4+PiBnZW5l
cmF0aW5nIGV2ZGV2IG5vZGVzIGFuZCBlLmcuIGludGVybmFsIGtleWJvYXJkcyBvbiBkZXZpY2Vz
IHdpdGggMzYwwrAKPj4+PiBoaW5nZXMgZm9yIHRoaXMgcmVhc29uLiBsaWJpbnB1dCBzaW1wbHkg
Y2xvc2VzIHRoZSAvZGV2L2lucHV0L2V2ZW50Iwo+Pj4+IG5vZGUgd2hlbiBmb2xkZWQgYW5kIHJl
LW9wZW5zIGl0IHdoZW4gdGhlIGtleWJvYXJkIHNob3VsZCBiZWNvbWUgYWN0aXZlCj4+Pj4gYWdh
aW4uIFRodXMgbm90IG9ubHkgc3VwcHJlc3NlcyBldmVudHMgYnV0IGFsbG93cyBlLmcuIHRvdWNo
cGFkcyB0bwo+Pj4+IGVudGVyIHJ1bnRpbWUgc3VzcGVuZCBtb2RlIHdoaWNoIHNhdmVzIHBvd2Vy
LiBUeXBpY2FsbHkgY2xvc2luZyB0aGUKPj4+PiAvZGV2L2lucHV0L2V2ZW50IyBub2RlIHdpbGwg
YWxzbyBkaXNhYmxlIHRoZSBkZXZpY2UgYXMgd2FrZXVwIHNvdXJjZS4KPj4+Pgo+Pj4+IFNvIEkg
d29uZGVyIHdoYXQgdGhpcyBzZXJpZXMgYWN0dWFsbHkgYWRkcyBmb3IgZnVuY3Rpb25hbGl0eSBm
b3IKPj4+PiB1c2Vyc3BhY2Ugd2hpY2ggY2FuIG5vdCBhbHJlYWR5IGJlIGFjaGlldmVkIHRoaXMg
d2F5Pwo+Pj4+Cj4+Pj4gSSBhbHNvIG5vdGljZWQgdGhhdCB5b3Uga2VlcCB0aGUgZGV2aWNlIG9w
ZW4gKGRvIG5vdCBjYWxsIHRoZQo+Pj4+IGlucHV0X2RldmljZSdzIGNsb3NlIGNhbGxiYWNrKSB3
aGVuIGluaGliaXRlZCBhbmQganVzdCB0aHJvdyBhd2F5Cj4+Pgo+Pj4gSSdtIG5vdCBzdXJlIGlm
IEkgdW5kZXJzdGFuZCB5b3UgY29ycmVjdGx5LCBpdCBpcyBjYWxsZWQ6Cj4+Pgo+Pj4gK3N0YXRp
YyBpbmxpbmUgdm9pZCBpbnB1dF9zdG9wKHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPj4+ICt7Cj4+
PiArwqDCoMKgIGlmIChkZXYtPnBvbGxlcikKPj4+ICvCoMKgwqDCoMKgwqDCoCBpbnB1dF9kZXZf
cG9sbGVyX3N0b3AoZGV2LT5wb2xsZXIpOwo+Pj4gK8KgwqDCoCBpZiAoZGV2LT5jbG9zZSkKPj4+
ICvCoMKgwqDCoMKgwqDCoCBkZXYtPmNsb3NlKGRldik7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBeXl5eXl5eXl5eXl5eXl5eCj4+PiArc3RhdGljIGludCBpbnB1dF9pbmhp
Yml0KHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPj4+ICt7Cj4+PiArwqDCoMKgIGludCByZXQgPSAw
Owo+Pj4gKwo+Pj4gK8KgwqDCoCBtdXRleF9sb2NrKCZkZXYtPm11dGV4KTsKPj4+ICsKPj4+ICvC
oMKgwqAgaWYgKGRldi0+aW5oaWJpdGVkKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+
Pj4gKwo+Pj4gK8KgwqDCoCBpZiAoZGV2LT51c2Vycykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlm
IChkZXYtPmluaGliaXQpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IGRldi0+
aW5oaWJpdChkZXYpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgfQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlucHV0X3N0b3AoZGV2KTsKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPj4+Cj4+PiBJdCB3aWxsIG5v
dCBiZSBjYWxsZWQgd2hlbiBkZXYtPnVzZXJzIGlzIHplcm8sIGJ1dCBpZiBpdCBpcyB6ZXJvLAo+
Pj4gdGhlbiBub2JvZHkgaGFzIG9wZW5lZCB0aGUgZGV2aWNlIHlldCBzbyB0aGVyZSBpcyBub3Ro
aW5nIHRvIGNsb3NlLgo+Pgo+PiBBaCwgSSBtaXNzZWQgdGhhdC4KPj4KPj4gU28gaWYgdGhlIGRl
dmljZSBpbXBsZW1lbnRzIHRoZSBpbmhpYml0IGNhbGwgYmFjayB0aGVuIG9uCj4+IGluaGliaXQg
aXQgd2lsbCBnZXQgYm90aCB0aGUgaW5oaWJpdCBhbmQgY2xvc2UgY2FsbGJhY2sgY2FsbGVkPwo+
Pgo+IAo+IFRoYXQncyByaWdodC4gQW5kIGNvbnZlcnNlbHksIHVwb24gdW5pbmhpYml0IG9wZW4o
KSBhbmQgdW5pbmhpYml0KCkKPiBjYWxsYmFja3Mgd2lsbCBiZSBpbnZva2VkLiBQbGVhc2Ugbm90
ZSB0aGF0IGp1c3QgYXMgd2l0aCBvcGVuKCkvY2xvc2UoKSwKPiBwcm92aWRpbmcgaW5oaWJpdCgp
L3VuaW5oaWJpdCgpIGlzIG9wdGlvbmFsLgoKQWNrLgoKPj4gQW5kIHdoYXQgaGFwcGVucyBpZiB0
aGUgbGFzdCB1c2VyIGdvZXMgYXdheSBhbmQgdGhlIGRldmljZQo+PiBpcyBub3QgaW5oaWJpdGVk
Pwo+IAo+IGNsb3NlKCkgaXMgY2FsbGVkIGFzIHVzdWFsbHkuCgpCdXQgbm90IGluaGliaXQsIGht
bSwgc2VlIGJlbG93LgoKPj4gSSdtIHRyeWluZyB0byB1bmRlcnN0YW5kIGhlcmUgd2hhdCB0aGUg
ZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSAyCj4+IGlzIC8gd2hhdCB0aGUgZ29hbCBvZiBoYXZpbmcg
YSBzZXBhcmF0ZSBpbmhpYml0IGNhbGxiYWNrID8KPj4KPiAKPiBEcml2ZXJzIGhhdmUgdmVyeSBk
aWZmZXJlbnQgaWRlYXMgYWJvdXQgd2hhdCBpdCBtZWFucyB0byBzdXNwZW5kL3Jlc3VtZQo+IGFu
ZCBvcGVuL2Nsb3NlLiBUaGUgb3B0aW9uYWwgaW5oaWJpdC91bmluaGliaXQgY2FsbGJhY2tzIGFy
ZSBtZWFudCBmb3IKPiB0aGUgZHJpdmVycyB0byBrbm93IHRoYXQgaXQgaXMgdGhpcyBwYXJ0aWN1
bGFyIGFjdGlvbiBnb2luZyBvbi4KClNvIHRoZSBpbmhpYml0KCkgY2FsbGJhY2sgdHJpZ2dlcnMg
dGhlICJzdXNwZW5kIiBiZWhhdmlvciA/CkJ1dCBzaG91bGRuJ3QgZHJpdmVycyB3aGljaCBhcmUg
Y2FwYWJsZSBvZiBzdXNwZW5kaW5nIHRoZSBkZXZpY2UKYWx3YXlzIGRvIHNvIG9uIGNsb3NlKCkg
PwoKU2luY2UgeW91ciBjdXJyZW50IHByb3Bvc2FsIGFsc28gY2FsbHMgY2xvc2UoKSBvbiBpbmhp
Yml0KCkgSQpyZWFsbHkgc2VlIGxpdHRsZSBkaWZmZXJlbmNlIGJldHdlZW4gYW4gaW5oaWJpdCgp
IGFuZCB0aGUgbGFzdAp1c2VyIG9mIHRoZSBkZXZpY2UgY2xvc2luZyBpdCBhbmQgSU1ITyB1bmxl
c3MgdGhlcmUgaXMgYSBnb29kCnJlYXNvbiB0byBhY3R1YWxseSBkaWZmZXJlbnRpYXRlIHRoZSAy
IGl0IHdvdWxkIGJlIGJldHRlcgp0byBvbmx5IHN0aWNrIHdpdGggdGhlIGV4aXN0aW5nIGNsb3Nl
KCkgYW5kIGluIGNhc2VzIHdoZXJlCnRoYXQgZG9lcyBub3QgcHV0IHRoZSBkZXZpY2UgaW4gYSBs
b3ctcG93ZXIgbW9kZSB5ZXQsIGZpeAp0aGUgZXhpc3RpbmcgY2xvc2UoKSBjYWxsYmFjayB0byBk
byB0aGUgbG93LXBvd2VyIG1vZGUKc2V0dGluZyBpbnN0ZWFkIG9mIGFkZGluZyBhIG5ldyBjYWxs
YmFjay4KCj4gRm9yIGluaGliaXQoKSB0aGVyZSdzIG9uZSBtb3JlIGFyZ3VtZW50OiBjbG9zZSgp
IGRvZXMgbm90IHJldHVybiBhIHZhbHVlLAo+IHNvIGl0cyBtZWFuaW5nIGlzICJkbyBzb21lIGxh
c3QgY2xlYW51cCIgYW5kIGFzIHN1Y2ggaXQgaXMgbm90IGFsbG93ZWQKPiB0byBmYWlsIC0gd2hh
dGV2ZXIgaXRzIGVmZmVjdCBpcywgd2UgbXVzdCBkZWVtIGl0IHN1Y2Nlc3NmdWwuIGluaGliaXQo
KQo+IGRvZXMgcmV0dXJuIGEgdmFsdWUgYW5kIHNvIGl0IGlzIGFsbG93ZWQgdG8gZmFpbC4KCldl
bGwsIHdlIGNvdWxkIG1ha2UgY2xvc2UoKSByZXR1cm4gYW4gZXJyb3IgYW5kIGF0IGxlYXN0IGlu
IHRoZSBpbmhpYml0KCkKY2FzZSBwcm9wYWdhdGUgdGhhdCB0byB1c2Vyc3BhY2UuIEkgd29uZGVy
IGlmIHVzZXJzcGFjZSBpcyBnb2luZyB0bwpkbyBhbnl0aGluZyB1c2VmdWwgd2l0aCB0aGF0IGVy
cm9yIHRob3VnaC4uLgoKSW4gbXkgZXhwZXJpZW5jZSBlcnJvcnMgZHVyaW5nIGNsZWFudXAvc2h1
dGRvd24gYXJlIGJlc3QgbG9nZ2VkCih1c2luZyBkZXZfZXJyKSBhbmQgb3RoZXJ3aXNlIGlnbm9y
ZWQsIHNvIHRoYXQgd2UgdHJ5IHRvIGNsZWFuIHVwCmFzIG11Y2ggcG9zc2libGUuIFVubGVzcyB0
aGUgdmVyeSBmaXJzdCBzdGVwIG9mIHRoZSBzaHV0ZG93biBwcm9jZXNzCmZhaWxzIHRoZSBkZXZp
Y2UgaXMgZ29pbmcgdG8gYmUgaW4gc29tZSB0d2lsaWdodCB6b25lIHN0YXRlIGFueXdheXMKYXQg
dGhpcyBwb2ludCB3ZSBtaWdodCBhcyB3ZWxsIHRyeSB0byBjbGVhbnVwIGFzIG11Y2ggYXMgcG9z
c2libGUuCgo+IEFsbCBpbiBhbGwsIGl0IGlzIHVwIHRvIHRoZSBkcml2ZXJzIHRvIGRlY2lkZSB3
aGljaCBjYWxsYmFjayB0aGV5Cj4gcHJvdmlkZS4gQmFzZWQgb24gbXkgd29yayBzbyBmYXIgSSB3
b3VsZCBzYXkgdGhhdCB0aGVyZSBhcmUgdGVucwo+IG9mIHNpbXBsZSBjYXNlcyB3aGVyZSBvcGVu
KCkgYW5kIGNsb3NlKCkgYXJlIHN1ZmZpY2llbnQsIG91dCBvZiB0b3RhbAo+IH40MDAgdXNlcnMg
b2YgaW5wdXRfYWxsb2NhdGVfZGV2aWNlKCk6Cj4gCj4gJCBnaXQgZ3JlcCAiaW5wdXRfYWxsb2Nh
dGVfZGV2aWNlKCIgfCBncmVwIC12IF5Eb2N1bWVudGF0aW9uIHwgXAo+IGN1dCAtZjEgLWQ6IHwg
c29ydCB8IHVuaXEgfCB3Ywo+ICDCoMKgwqAgMzkwwqDCoMKgwqAgMzkwwqDCoCAxMzQ5NgoKU28g
Y2FuIHlvdSBleHBsYWluIGEgYml0IG1vcmUgYWJvdXQgdGhlIGNhc2VzIHdoZXJlIG9ubHkgaGF2
aW5nCm9wZW4vY2xvc2UgaXMgbm90IHN1ZmZpY2llbnQ/ICBTbyBmYXIgSSBoYXZlIHRoZSBmZWVs
aW5nIHRoYXQKdGhvc2UgYXJlIGFsbCB3ZSBuZWVkIGFuZCB0aGF0IHdlIHJlYWxseSBkbyBub3Qg
bmVlZCBzZXBhcmF0ZQpbdW5daW5oaWJpdCBjYWxsYmFja3MuCgpSZWdhcmRzLAoKSGFucwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVs
Cg==
