Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 477741D7888
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 18 May 2020 14:24:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jaeot-00058P-49; Mon, 18 May 2020 12:24:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jaeor-00058B-Py
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 12:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aNddrvnjvVAzGmBCFtMQ5iaiY8jsBoqXulJlnAFXCC4=; b=icvKHmgWi/jgv8pIwNsxMiJl9b
 xUCrEWatt8sweb5/DcpODW7Yk+jbovV+2iHl5GPd4CbeiQbRZ6La/oov/FHFnAoizS9nC0tGtQmT8
 Zj3YKN3CTeWseVyxTWmMCIJebnDroriJsqytEkzyughubUX3WXkyNk70GXBcmS00mhmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aNddrvnjvVAzGmBCFtMQ5iaiY8jsBoqXulJlnAFXCC4=; b=fxv3W1+6KTaESc+bpIWiguWPFa
 /hPbUXdzHHv/nX/QwWAE4QQ7ddY4cvb7HdUBvtnjgmQzsaXgr/PW9iYBDQ9gZUEW6oEOmZLROZTeL
 SacBRsOFJqloaBvWW+ZlBHTk3F+JnqJAkGhPYK84HG5c1YvtGzfE7mrz0//lEyEyhViU=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jaeoq-00DrJ2-Bi
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 12:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589804656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aNddrvnjvVAzGmBCFtMQ5iaiY8jsBoqXulJlnAFXCC4=;
 b=FgYvM2ab3HQ9sUUEaE8xw92qvhEiIQpv92ASQr1ddkRu033js7kamdDXd9ktyImLOCg02a
 zzGtNgg5mbGZ1LUKVx+TDvXZ2hl0631/HrRttWD/9YSxf/qeJ/DjgEYzeIlouHihgRaAil
 A3RIwuR/uXbObA0cIntoC3OcwvK4T4k=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-xHf9kz4IPxyrM6ExTyt1LQ-1; Mon, 18 May 2020 08:24:08 -0400
X-MC-Unique: xHf9kz4IPxyrM6ExTyt1LQ-1
Received: by mail-wm1-f72.google.com with SMTP id t82so2923220wmf.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 18 May 2020 05:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aNddrvnjvVAzGmBCFtMQ5iaiY8jsBoqXulJlnAFXCC4=;
 b=bt8enBhow3O7IMtAHgM13N9rYMh/hDIx/PJmWRM/cw6rL9U/qgFu4iMKYsA33saB8D
 217vAgJkSu0isIqSXuxuYx7GW3f9aDVSCS7xYS+t05MshkstVPMbsMa/YkPJKPSHXdMw
 mjikPmG2+3Ndw+fj+DLMmyfpyHZgMRq1zIvyzYsvTQ6k7Cnsj4YKfOqfMTKQIfUdtp/z
 0VUVNIylDw721fANn3ytHG8v6AfXcTm+MVjeRDAoIYzam9TvqORRNpCaSvkCrCGvkyyY
 vPBXXZDpwLMtDTX2fUEIkaUois+T+b1k39I9pP7BnnSj6fXnC49AgSTAnm7JEpN6H58t
 Vg7w==
X-Gm-Message-State: AOAM533YUOWtGOAnNhr4fGEI3eLL24TT1EawgSadjU4W0qiDqbMEnTo5
 1+14QrrWHO26XwGLePG5yI1g/MuQdwbcvlWrTl3T/02SWHCIb0eowqzm5oYA/VNunEZYnJoJHVD
 9ksuGOqOSOOg69ud57iwCi6JAdQfMWMOKozw=
X-Received: by 2002:adf:eac8:: with SMTP id o8mr19377342wrn.268.1589804647105; 
 Mon, 18 May 2020 05:24:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLe3p91ExNY6QGf1SRfv5g2doyaKilcFhk73/bWJl/jln6ZVFltTOdpBm/OQccJvw+caL9KA==
X-Received: by 2002:adf:eac8:: with SMTP id o8mr19377325wrn.268.1589804646888; 
 Mon, 18 May 2020 05:24:06 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id 18sm15993570wmj.19.2020.05.18.05.24.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 05:24:06 -0700 (PDT)
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
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
Date: Mon, 18 May 2020 14:24:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jaeoq-00DrJ2-Bi
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

SGksCgpPbiA1LzE4LzIwIDEyOjQ4IFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4g
SGkgSGFucywKPiAKPiBXIGRuaXUgMTUuMDUuMjAyMCBvwqAyMDoxOSwgSGFucyBkZSBHb2VkZSBw
aXN6ZToKPj4gSGkgQW5kcmV6aiwKPj4KPj4gT24gNS8xNS8yMCA2OjQ5IFBNLCBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogd3JvdGU6Cj4+PiBVc2Vyc3BhY2UgbWlnaHQgd2FudCB0byBpbXBsZW1lbnQg
YSBwb2xpY3kgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0Cj4+PiBmcm9tIGNlcnRhaW4g
ZGV2aWNlcywgaW5jbHVkaW5nIG5vdCB0cmVhdGluZyB0aGVtIGFzIHdha2V1cCBzb3VyY2VzLgo+
Pj4KPj4+IEFuIGV4YW1wbGUgdXNlIGNhc2UgaXMgYSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNh
biBiZSBmb2xkZWQgdW5kZXIgdGhlCj4+PiBzY3JlZW4gdG8gY3JlYXRlIHRhYmxldC1saWtlIGV4
cGVyaWVuY2UuIFRoZSB1c2VyIHRoZW4gbXVzdCBob2xkIHRoZSBsYXB0b3AKPj4+IGluIHN1Y2gg
YSB3YXkgdGhhdCBpdCBpcyBkaWZmaWN1bHQgdG8gYXZvaWQgcHJlc3NpbmcgdGhlIGtleWJvYXJk
IGtleXMuIEl0Cj4+PiBpcyB0aGVyZWZvcmUgZGVzaXJhYmxlIHRvIHRlbXBvcmFyaWx5IGRpc3Jl
Z2FyZCBpbnB1dCBmcm9tIHRoZSBrZXlib2FyZCwKPj4+IHVudGlsIGl0IGlzIGZvbGRlZCBiYWNr
LiBUaGlzIG9idmlvdXNseSBpcyBhIHBvbGljeSB3aGljaCBzaG91bGQgYmUga2VwdAo+Pj4gb3V0
IG9mIHRoZSBrZXJuZWwsIGJ1dCB0aGUga2VybmVsIG11c3QgcHJvdmlkZSBzdWl0YWJsZSBtZWFu
cyB0byBpbXBsZW1lbnQKPj4+IHN1Y2ggYSBwb2xpY3kuCj4+Cj4+IEFjdHVhbGx5IGxpYmlucHV0
IGFscmVhZHkgYmluZHMgdG9nZXRoZXIgKGluc2lkZSBsaWJpbnB1dCkgU1dfVEFCTEVUX01PREUK
Pj4gZ2VuZXJhdGluZyBldmRldiBub2RlcyBhbmQgZS5nLiBpbnRlcm5hbCBrZXlib2FyZHMgb24g
ZGV2aWNlcyB3aXRoIDM2MMKwCj4+IGhpbmdlcyBmb3IgdGhpcyByZWFzb24uIGxpYmlucHV0IHNp
bXBseSBjbG9zZXMgdGhlIC9kZXYvaW5wdXQvZXZlbnQjCj4+IG5vZGUgd2hlbiBmb2xkZWQgYW5k
IHJlLW9wZW5zIGl0IHdoZW4gdGhlIGtleWJvYXJkIHNob3VsZCBiZWNvbWUgYWN0aXZlCj4+IGFn
YWluLiBUaHVzIG5vdCBvbmx5IHN1cHByZXNzZXMgZXZlbnRzIGJ1dCBhbGxvd3MgZS5nLiB0b3Vj
aHBhZHMgdG8KPj4gZW50ZXIgcnVudGltZSBzdXNwZW5kIG1vZGUgd2hpY2ggc2F2ZXMgcG93ZXIu
IFR5cGljYWxseSBjbG9zaW5nIHRoZQo+PiAvZGV2L2lucHV0L2V2ZW50IyBub2RlIHdpbGwgYWxz
byBkaXNhYmxlIHRoZSBkZXZpY2UgYXMgd2FrZXVwIHNvdXJjZS4KPj4KPj4gU28gSSB3b25kZXIg
d2hhdCB0aGlzIHNlcmllcyBhY3R1YWxseSBhZGRzIGZvciBmdW5jdGlvbmFsaXR5IGZvcgo+PiB1
c2Vyc3BhY2Ugd2hpY2ggY2FuIG5vdCBhbHJlYWR5IGJlIGFjaGlldmVkIHRoaXMgd2F5Pwo+Pgo+
PiBJIGFsc28gbm90aWNlZCB0aGF0IHlvdSBrZWVwIHRoZSBkZXZpY2Ugb3BlbiAoZG8gbm90IGNh
bGwgdGhlCj4+IGlucHV0X2RldmljZSdzIGNsb3NlIGNhbGxiYWNrKSB3aGVuIGluaGliaXRlZCBh
bmQganVzdCB0aHJvdyBhd2F5Cj4gCj4gSSdtIG5vdCBzdXJlIGlmIEkgdW5kZXJzdGFuZCB5b3Ug
Y29ycmVjdGx5LCBpdCBpcyBjYWxsZWQ6Cj4gCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnB1dF9z
dG9wKHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPiArewo+ICvCoMKgwqAgaWYgKGRldi0+cG9sbGVy
KQo+ICvCoMKgwqDCoMKgwqDCoCBpbnB1dF9kZXZfcG9sbGVyX3N0b3AoZGV2LT5wb2xsZXIpOwo+
ICvCoMKgwqAgaWYgKGRldi0+Y2xvc2UpCj4gK8KgwqDCoMKgwqDCoMKgIGRldi0+Y2xvc2UoZGV2
KTsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPiAr
c3RhdGljIGludCBpbnB1dF9pbmhpYml0KHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPiArewo+ICvC
oMKgwqAgaW50IHJldCA9IDA7Cj4gKwo+ICvCoMKgwqAgbXV0ZXhfbG9jaygmZGV2LT5tdXRleCk7
Cj4gKwo+ICvCoMKgwqAgaWYgKGRldi0+aW5oaWJpdGVkKQo+ICvCoMKgwqDCoMKgwqDCoCBnb3Rv
IG91dDsKPiArCj4gK8KgwqDCoCBpZiAoZGV2LT51c2Vycykgewo+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAoZGV2LT5pbmhpYml0KSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gZGV2LT5p
bmhpYml0KGRldik7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+ICvCoMKgwqDCoMKgwqDCoCB9Cj4g
K8KgwqDCoMKgwqDCoMKgIGlucHV0X3N0b3AoZGV2KTsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPiAKPiBJdCB3aWxsIG5vdCBiZSBjYWxsZWQgd2hl
biBkZXYtPnVzZXJzIGlzIHplcm8sIGJ1dCBpZiBpdCBpcyB6ZXJvLAo+IHRoZW4gbm9ib2R5IGhh
cyBvcGVuZWQgdGhlIGRldmljZSB5ZXQgc28gdGhlcmUgaXMgbm90aGluZyB0byBjbG9zZS4KCkFo
LCBJIG1pc3NlZCB0aGF0LgoKU28gaWYgdGhlIGRldmljZSBpbXBsZW1lbnRzIHRoZSBpbmhpYml0
IGNhbGwgYmFjayB0aGVuIG9uCmluaGliaXQgaXQgd2lsbCBnZXQgYm90aCB0aGUgaW5oaWJpdCBh
bmQgY2xvc2UgY2FsbGJhY2sgY2FsbGVkPwoKQW5kIHdoYXQgaGFwcGVucyBpZiB0aGUgbGFzdCB1
c2VyIGdvZXMgYXdheSBhbmQgdGhlIGRldmljZQppcyBub3QgaW5oaWJpdGVkPwoKSSdtIHRyeWlu
ZyB0byB1bmRlcnN0YW5kIGhlcmUgd2hhdCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSAyCmlz
IC8gd2hhdCB0aGUgZ29hbCBvZiBoYXZpbmcgYSBzZXBhcmF0ZSBpbmhpYml0IGNhbGxiYWNrID8K
CklPVyBpcyB0aGVyZSBzb21ldGhpbmcgd2hpY2ggd2Ugd2FudCB0byBkbyBvbiBjbG9zZSB3aGVu
CnRoZSBjbG9zZSBpcyBiZWluZyBkb25lIHRvIGluaGliaXQgdGhlIGRldmljZSwgd2hpY2ggd2Ug
ZG8Kbm90IHdhbnQgdG8gZG8gb24gYSBub3JtYWwgY2xvc2UgPwoKUmVnYXJkcywKCkhhbnMKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3Bp
LWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2
ZWwK
