Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 837641F7538
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 12 Jun 2020 10:18:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jjetB-0006aC-28; Fri, 12 Jun 2020 08:18:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jjet8-0006a4-WC
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 12 Jun 2020 08:18:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LbTU48ojgO2FlIo9PAsC9R4igbZ13z+cUADaXE0FnOU=; b=NOH3Gt+llRe4s/ZWM8bcD9dW45
 dDnaC00HmPeHm0XgbxOnOvqG8wYRreza3p+vmbvL2Wc34poHStfcBhxGeXh5oEpDQfLFDE/s9AbTr
 UoNu4Wz+KtVmk9T9dfyalZYmtbzct4WfS47TwBBYXzfazPIJgLpxBDsao5qzm2Z4Jd/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LbTU48ojgO2FlIo9PAsC9R4igbZ13z+cUADaXE0FnOU=; b=ERkE0IyXPf/HxXRSpIh66WT6z8
 iVSZSKUTVMKx+H4/BCiypJSTTCaJkpNWScZpzWLpxfp05wGRKbfej5lddcCPEl7QopGjXZGePJQWz
 hDY+CZHx17WuXCRgypwwIutzO5Ma6+IE45gOwmKeIq9ZMSOrr9xI0mmj3yzXEjh4LPqI=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jjet5-00GWDc-56
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 12 Jun 2020 08:18:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591949881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LbTU48ojgO2FlIo9PAsC9R4igbZ13z+cUADaXE0FnOU=;
 b=Vl78R2bJp7hn1qFKXB1DnHrTCti4Zyeu8oFOZw9v9MgT213A3p2p3JbjO4reAZX4uJftvV
 EPPLPdDNSwGesW5flajD/MpvicGvq8xLkEbey5EZpZPnKBhLQVoz0ZHrR8+5I257ulTMl/
 kuupsYoRhRfkMwuM2Adnr6jR8YwKLT4=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-YYX0hW6XNIWLmbfxTWQvGg-1; Fri, 12 Jun 2020 04:17:57 -0400
X-MC-Unique: YYX0hW6XNIWLmbfxTWQvGg-1
Received: by mail-ed1-f72.google.com with SMTP id a21so2613691edy.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 12 Jun 2020 01:17:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LbTU48ojgO2FlIo9PAsC9R4igbZ13z+cUADaXE0FnOU=;
 b=AcmnO3RTYLFj4i/+Wbk1vZczZZyJP7obAHfNICGvKJWw7A4vq7UyD83neDoqDNnWBY
 WtWGfWZu9DLkUBRU5m405qW1X5Uu8XYD3hD68MbZFMgE2oRj2uOohuyGihkgBmOQbkux
 WkLdCSVSb2FcpL5KaDRsc8rzbxM6lyfYkdXtJb22LA1GsX1gBCfjKQ5DAkkbY0rBc6Mb
 FDeErZVv16MNcGJg0A9pZHSe4GmrUJrIB+925dzqfA2pSYmJyMscayC1qTJiFE5LN8iR
 urwoHSu4Z4QW+FzoaGXk7E3lE218WU6NlDLcS/Lc4qOmA+SweaLkULpSLdEKMes+7eDu
 HTJg==
X-Gm-Message-State: AOAM530VAaYGx/RBozQej6+oCX81mqZelRfeLlmHbydXEZOfB+DpYn99
 ABKwIiVihgNiKDTkmvZiwDncSIpts3BpVFv57MqoCuDqhD7bZLT2gQKIngbG+URc6L3yCy68Vrw
 4O4FXBS3ygIR49S1edDMy2Yoc4qshdLYKUpg=
X-Received: by 2002:a17:906:ccdd:: with SMTP id
 ot29mr11758814ejb.119.1591949875882; 
 Fri, 12 Jun 2020 01:17:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwtNGBDEJyj/avNl3UCU7R4ntwBo4aI35VOBMw7tHPjvk5hJcx1khBKXvQ05G75ytNLMmeTQ==
X-Received: by 2002:a17:906:ccdd:: with SMTP id
 ot29mr11758779ejb.119.1591949875662; 
 Fri, 12 Jun 2020 01:17:55 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id mf24sm3166452ejb.13.2020.06.12.01.17.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 01:17:54 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1821a5b7-cbf3-a739-2203-a93b06f0c6f2@redhat.com>
Date: Fri, 12 Jun 2020 10:17:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608112211.12125-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlesource.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjet5-00GWDc-56
Subject: Re: [ibm-acpi-devel] [PATCH v4 0/7] Support inhibiting input devices
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
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

SGksCgpPbiA2LzgvMjAgMToyMiBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IFRo
aXMgaXMgYSBxdWljayByZXNwaW4gb2YgdjMsIHdpdGgganVzdCB0d28gc21hbGwgY2hhbmdlcywg
cGxlYXNlIHNlZQo+IHRoZSBjaGFuZ2Vsb2cgYmVsb3cuCj4gCj4gVXNlcnNwYWNlIG1pZ2h0IHdh
bnQgdG8gaW1wbGVtZW50IGEgcG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dAo+
IGZyb20gY2VydGFpbiBkZXZpY2VzLgo+IAo+IEFuIGV4YW1wbGUgdXNlIGNhc2UgaXMgYSBjb252
ZXJ0aWJsZSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNhbiBiZSBmb2xkZWQKPiB1bmRlciB0aGUg
c2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVuIG11
c3QgaG9sZAo+IHRoZSBsYXB0b3AgaW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZpY3VsdCB0
byBhdm9pZCBwcmVzc2luZyB0aGUga2V5Ym9hcmQKPiBrZXlzLiBJdCBpcyB0aGVyZWZvcmUgZGVz
aXJhYmxlIHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dCBmcm9tIHRoZQo+IGtleWJvYXJk
LCB1bnRpbCBpdCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kgd2hp
Y2ggc2hvdWxkCj4gYmUga2VwdCBvdXQgb2YgdGhlIGtlcm5lbCwgYnV0IHRoZSBrZXJuZWwgbXVz
dCBwcm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvCj4gaW1wbGVtZW50IHN1Y2ggYSBwb2xpY3kuCj4g
Cj4gRHVlIHRvIGludGVyYWN0aW9ucyB3aXRoIHN1c3BlbmQvcmVzdW1lLCBhIGhlbHBlciBoYXMg
YmVlbiBhZGRlZCBmb3IgZHJpdmVycwo+IHRvIGRlY2lkZSBpZiB0aGUgZGV2aWNlIGlzIGJlaW5n
IHVzZWQgb3Igbm90IChQQVRDSCAxLzcpIGFuZCBpdCBoYXMgYmVlbgo+IGFwcGxpZWQgdG8gcmVs
ZXZhbnQgZHJpdmVycyAoUEFUQ0ggMiw0LDUsNi83KS4KPiAKPiBQQVRDSCA3LzcgYWRkcyBzdXBw
b3J0IGZvciBpbmhpYml0aW5nIGlucHV0IGRldmljZXMuCj4gCj4gVGhpcyB3b3JrIGlzIGluc3Bp
cmVkIGJ5Ogo+IAo+IGh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNlLmNvbS9jaHJvbWl1bW9z
L3RoaXJkX3BhcnR5L2tlcm5lbC8rLzQ1YzJkN2JiMzk4Zjc0YWRmYWUwMDE3ZTIwYjIyNDE1MmZk
ZTM4MjIKPiAKPiBhbmQKPiAKPiBodHRwczovL2Nocm9taXVtLmdvb2dsZXNvdXJjZS5jb20vY2hy
b21pdW1vcy90aGlyZF9wYXJ0eS9rZXJuZWwvKy80Y2UwZThhMzY5N2VkYjhmZDA3MTExMGIzYWY2
NTAxNDUxMjA2MWM3Cj4gCj4gSW4gdGhpcyByZXNwaW4gdGhlIGVsYW5faTJjIHBhdGNoIGlzIGRy
b3BwZWQgYW5kIGNvbnZlcnRpbmcgaXQgd2lsbCBiZQo+IGFkZHJlc3NlZCBsYXRlci4KPiAKPiB2
My4udjQ6Cj4gLSB1cGRhdGVkIHRoZSBjb21tZW50IGluIGlucHV0X29wZW5fZGV2aWNlKCkgKEhh
bnMpCj4gLSB1c2VkIG1vcmUgc3RyYWlnaHRmb3J3YXJkIGxvY2tpbmcgcGF0dGVybiBpbiBhZGMv
ZXh5bm9zIChNaWNoYcWCKQo+IAo+IHYyLi52MzoKPiAtIGlnbm9yZWQgYXV0b3JlcGVhdCBldmVu
dHMgaW4gaW5wdXRfZ2V0X2Rpc3Bvc2l0aW9uKCkgaWYgYSBrZXkgaXMgbm90Cj4gcHJlc3NlZCAo
SGFucykKPiAtIGRyb3BwZWQgaW5oaWJpdCgpL3VuaW5oaWJpdCgpIGRyaXZlciBjYWxsYmFja3Mg
KEhhbnMpCj4gLSBzcGxpdCBBQ1BJIGJ1dHRvbiBwYXRjaCBpbnRvIHRha2luZyB0aGUgbG9jayBh
bmQgdXNpbmcgdGhlIGhlbHBlciAoUmFmYWVsKQo+IC0gZHJvcHBlZCB0aGUgZWxhbl9pMmMgY29u
dmVyc2lvbgo+IC0gZml4ZWQgdHlwb3MgaW4gZXh5bm9zIGFkYwo+IAo+IHYxLi52MjoKPiAtIGFk
ZGVkIGlucHV0X2RldmljZV9lbmFibGVkKCkgaGVscGVyIGFuZCB1c2VkIGl0IGluIGRyaXZlcnMg
KERtaXRyeSkKPiAtIHRoZSBmYWN0IG9mIG9wZW4oKSBhbmQgY2xvc2UoKSBiZWluZyBjYWxsZWQg
aW4gaW5oaWJpdC91bmluaGliaXQgcGF0aHMgaGFzCj4gYmVlbiBlbXBoYXNpemVkIGluIHRoZSBj
b21taXQgbWVzc2FnZSBvZiBQQVRDSCA2LzcgKERtaXRyeSkKPiAKPiBBbmRyemVqIFBpZXRyYXNp
ZXdpY3ogKDYpOgo+ICAgIElucHV0OiBhZGQgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQo+ICAgIElu
cHV0OiB1c2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQo+ICAgIEFDUEk6IGJ1dHRvbjogQWNjZXNz
IGlucHV0IGRldmljZSdzIHVzZXJzIHVuZGVyIGFwcHJvcHJpYXRlIG11dGV4Cj4gICAgQUNQSTog
YnV0dG9uOiBVc2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKSBoZWxwZXIKPiAgICBpaW86IGFkYzog
ZXh5bm9zOiBVc2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQo+ICAgIHBsYXRmb3JtL3g4NjogdGhp
bmtwYWRfYWNwaTogVXNlIGlucHV0X2RldmljZV9lbmFibGVkKCkKPiAKPiBQYXRyaWsgRmltbWwg
KDEpOgo+ICAgIElucHV0OiBBZGQgImluaGliaXRlZCIgcHJvcGVydHkKClRoZSBlbnRpcmUgc2Vy
aWVzIGxvb2tzIGdvb2QgdG8gbWU6CgpBY2tlZC1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVA
cmVkaGF0LmNvbT4KClJlZ2FyZHMsCgpIYW5zCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFj
cGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
