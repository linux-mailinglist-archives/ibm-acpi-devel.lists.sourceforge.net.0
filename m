Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAE61F55A8
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Jun 2020 15:22:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jj0fu-0007S6-9c; Wed, 10 Jun 2020 13:21:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jj0ft-0007Ri-BY
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 13:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DlplkVPrHKzwqp9XQ8hCr9mQJfW4CL7+sK6OIcyqTu0=; b=ksb39M7OeSTHxPM10vNGn9ZYHY
 ypidAgOEWva7Ieo1CPiyAKlgnqLHOjYtR3RK1lbKKfx18wCq2Xdnl7WrSOpyBVq3gFXb/aAtWsQgu
 2Uz3E/SLYLHVYBxXvKtQA4QnaZ01RuSzLIluxCBg0xypJOQfVCS+Nn1DtQIuIwWMxZTw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DlplkVPrHKzwqp9XQ8hCr9mQJfW4CL7+sK6OIcyqTu0=; b=g3KEDdsZIQMGrM89xMsbgO4ZwN
 /84qLHTKV5FhFGJF/CjSyyd8n9Ae8iyMqqCRzm75GPfo2w+a8LcBI/L5uAEg87/Go7xTK3R5K6GOD
 Pk8XfHfpPHK5UZRQnUNWEpwB2pceCpPtCJ2cgq+RBMmVHIEcUpa0CAYkwOTD+1uUpKsQ=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jj0fr-00FfqA-U1
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 10 Jun 2020 13:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591795301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DlplkVPrHKzwqp9XQ8hCr9mQJfW4CL7+sK6OIcyqTu0=;
 b=KIzNbJntVnluL9spbIK8FhvjmXU96qWvd5Y4GwcIdEbRBC5AFhi6FokvvzDJoI3pEdVT95
 K4nE8NIy72BbDPpp9rV+XwlfEhNhq4pEZvupymaqR9tAb96C9zrd8/YOxfOXcmtdjuWqpX
 Gth7NE93u0FdddMPGVsCqkpdgm+Zwqo=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-HeL-h4FgMX2fhkxjmvInLg-1; Wed, 10 Jun 2020 09:21:38 -0400
X-MC-Unique: HeL-h4FgMX2fhkxjmvInLg-1
Received: by mail-ej1-f70.google.com with SMTP id e14so1088629ejt.16
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Jun 2020 06:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DlplkVPrHKzwqp9XQ8hCr9mQJfW4CL7+sK6OIcyqTu0=;
 b=bjuwN6Bq3HOtk2/UlqgP3mCms2W2mSZQPcJDRNqjL0kFnyszi6CDMMND3MJyH80oXO
 qE0N+wt0UE600YrM5fm/mQzyXUkN3tIoZKt9kX3FLm9ao41a7pD7zrBEUZj/pCwe0Kr5
 A4rGlk61ayp1CIMNMb98VFmhkEtrQNi0Inz3afbo6CUAG5tiq+UJGV6Y+GxFnLM0f7jG
 ilAcjg6D/GlaOfdeL0Fz1cpRUenyKFiqZB8RbALRi6SbG0ViNATSKG3WWNUxHzCdNBhe
 01LHs3w60OsMINicdNOhIWUcVaVfL8+lbBvWdqFb0yVymNJgPJxV7BN0xEatnM7lxvUi
 vPZA==
X-Gm-Message-State: AOAM531EUQPfmp/jhmiELNOk+TMdtgS2Hj3EqJpTiJCTW89PgIcxgYjx
 8CizfMyyBfqkWhX+moKuc+quV8lFD5YFGwT0uJ+zwMd8gP1wwawHBz9XNVvqjk5UPr5XiTwWiCT
 njwhvum3IU0yr8yNu1kLKLZDA8U2hCfL2bac=
X-Received: by 2002:a50:bf0e:: with SMTP id f14mr2520526edk.37.1591795296922; 
 Wed, 10 Jun 2020 06:21:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3Kk79EA+wXpXk6yhNsxocbwWxoup7cqkJV7mK6aQdCYbcNsTWoysAMZWDcdRtd0q1XzbZ6w==
X-Received: by 2002:a50:bf0e:: with SMTP id f14mr2520475edk.37.1591795296587; 
 Wed, 10 Jun 2020 06:21:36 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id l8sm15626086ejz.52.2020.06.10.06.21.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 06:21:35 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
Date: Wed, 10 Jun 2020 15:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jj0fr-00FfqA-U1
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA2LzEwLzIwIDM6MTIgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBI
aSBBbGwsCj4gCj4gVyBkbml1IDEwLjA2LjIwMjAgb8KgMTI6MzgsIFJhZmFlbCBKLiBXeXNvY2tp
IHBpc3plOgo+PiBPbiBXZWQsIEp1biAxMCwgMjAyMCBhdCAxMTo1MCBBTSBIYW5zIGRlIEdvZWRl
IDxoZGVnb2VkZUByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+PiBIaSBBbGwsCj4+Pgo+Pj4gT24g
Ni84LzIwIDE6MjIgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4+PiBUaGlzIGlz
IGEgcXVpY2sgcmVzcGluIG9mIHYzLCB3aXRoIGp1c3QgdHdvIHNtYWxsIGNoYW5nZXMsIHBsZWFz
ZSBzZWUKPj4+PiB0aGUgY2hhbmdlbG9nIGJlbG93Lgo+Pj4+Cj4+Pj4gVXNlcnNwYWNlIG1pZ2h0
IHdhbnQgdG8gaW1wbGVtZW50IGEgcG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1
dAo+Pj4+IGZyb20gY2VydGFpbiBkZXZpY2VzLgo+Pj4+Cj4+Pj4gQW4gZXhhbXBsZSB1c2UgY2Fz
ZSBpcyBhIGNvbnZlcnRpYmxlIGxhcHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZAo+
Pj4+IHVuZGVyIHRoZSBzY3JlZW4gdG8gY3JlYXRlIHRhYmxldC1saWtlIGV4cGVyaWVuY2UuIFRo
ZSB1c2VyIHRoZW4gbXVzdCBob2xkCj4+Pj4gdGhlIGxhcHRvcCBpbiBzdWNoIGEgd2F5IHRoYXQg
aXQgaXMgZGlmZmljdWx0IHRvIGF2b2lkIHByZXNzaW5nIHRoZSBrZXlib2FyZAo+Pj4+IGtleXMu
IEl0IGlzIHRoZXJlZm9yZSBkZXNpcmFibGUgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0
IGZyb20gdGhlCj4+Pj4ga2V5Ym9hcmQsIHVudGlsIGl0IGlzIGZvbGRlZCBiYWNrLiBUaGlzIG9i
dmlvdXNseSBpcyBhIHBvbGljeSB3aGljaCBzaG91bGQKPj4+PiBiZSBrZXB0IG91dCBvZiB0aGUg
a2VybmVsLCBidXQgdGhlIGtlcm5lbCBtdXN0IHByb3ZpZGUgc3VpdGFibGUgbWVhbnMgdG8KPj4+
PiBpbXBsZW1lbnQgc3VjaCBhIHBvbGljeS4KPj4+Cj4+PiBGaXJzdCBvZiBhbGwgc29ycnkgdG8g
c3RhcnQgYSBzb21ld2hhdCBuZXcgZGlzY3Vzc2lvbiBhYm91dCB0aGlzCj4+PiB3aGlsZSB0aGlz
IHBhdGNoIHNldCBpcyBhbHNvIHNvbWV3aGF0IGZhciBhbG9uZyBpbiB0aGUgcmV2aWV3IHByb2Nl
c3MsCj4+PiBidXQgSSBiZWxpZXZlIHdoYXQgSSBkaXNjdXNzIGJlbG93IG5lZWRzIHRvIGJlIHRh
a2VuIGludG8gYWNjb3VudC4KPj4+Cj4+PiBZZXN0ZXJkYXkgSSBoYXZlIGJlZW4gbG9va2luZyBp
bnRvIHdoeSBhbiBBc3VzIFQxMDFIQSB3b3VsZCBub3Qgc3RheQo+Pj4gc3VzcGVuZGVkIHdoZW4g
dGhlIExJRCBpcyBjbG9zZWQuIFRoZSBjYXVzZSBpcyB0aGF0IHRoZSBVU0IgSElEIG11bHRpLXRv
dWNoCj4+PiB0b3VjaHBhZCBpbiB0aGUgYmFzZSBvZiB0aGUgZGV2aWNlIHN0YXJ0cyBzZW5kaW5n
IGV2ZW50cyB3aGVuIHRoZSBzY3JlZW4KPj4+IGdldHMgY2xvc2UgdG8gdGhlIHRvdWNocGFkIChz
byB3aGVuIHRoZSBMSUQgaXMgZnVsbHkgY2xvc2VkKSBhbmQgdGhlc2UKPj4+IGV2ZW50cyBhcmUg
Y2F1c2luZyBhIHdha2V1cCBmcm9tIHN1c3BlbmQuIEhJRCBtdWx0aS10b3VjaCBkZXZpY2VzCj4+
PiBkbyBoYXZlIGEgd2F5IHRvIHRlbGwgdGhlbSB0byBmdWxseSBzdG9wIHNlbmRpbmcgZXZlbnRz
LCBhbHNvIGRpc2FibGluZwo+Pj4gdGhlIFVTQiByZW1vdGUgd2FrZXVwIHRoZSBkZXZpY2UgaXMg
ZG9pbmcuIFRoZSBxdWVzdGlvbiBpcyB3aGVuIHRvIHRlbGwKPj4+IGl0IHRvIG5vdCBzZW5kIGV2
ZW50cyB0aG91Z2ggLi4uCj4+Pgo+Pj4gU28gbm93IEkndmUgYmVlbiB0aGlua2luZyBhYm91dCBo
b3cgdG8gZml4IHRoaXMgYW5kIEkgYmVsaWV2ZSB0aGF0IHRoZXJlCj4+PiBpcyBzb21lIGludGVy
YWN0aW9uIGJldHdlZW4gdGhpcyBwcm9ibGVtIGFuZCB0aGlzIHBhdGNoLXNldC4KPj4+Cj4+PiBU
aGUgcHJvYmxlbSBJJ20gc2VlaW5nIG9uIHRoZSBUMTAxSEEgaXMgYWJvdXQgd2FrZXVwcywgc28g
dGhlIHF1ZXN0aW9uCj4+PiB3aGljaCBJIHdhbnQgdG8gZGlzY3VzcyBpczoKPj4+Cj4+PiAxLiBI
b3cgZG9lcyBpbmhpYml0aW5nIGludGVyYWN0IHdpdGggZW5hYmxpbmcgLwo+Pj4gZGlzYWJsaW5n
IHRoZSBkZXZpY2UgYXMgYSB3YWtldXAgc291cmNlID8KPj4+Cj4+PiAyLiBTaW5jZSB3ZSBoYXZl
IG5vdyBtYWRlIGluaGliaXRpbmcgZXF1YWwgb3Blbi9jbG9zZSBob3cgZG9lcyBvcGVuL2Nsb3Nl
Cj4+PiBpbnRlcmFjdCB3aXRoIGEgZGV2aWNlIGJlaW5nIGEgd2FrZXVwIHNvdXJjZSA/Cj4+Pgo+
Pj4gQW5kIG15IG93biBpbml0aWFsICh0byBiZSBkaXNjdXNzZWQpIGFuc3dlcnMgdG8gdGhlc2Ug
cXVlc3Rpb25zOgo+Pj4KPj4+IDEuIEl0IHNlZW1zIHRvIG1lIHRoYXQgd2hlbiBhIGRldmljZSBp
cyBpbmhpYml0ZWQgaXQgc2hvdWxkIG5vdCBiZSBhCj4+PiB3YWtldXAgc291cmNlLCBzbyB3aGVy
ZSBwb3NzaWJsZSBhIGlucHV0LWRldmljZS1kcml2ZXIgc2hvdWxkIGRpc2FibGUKPj4+IGEgZGV2
aWNlJ3Mgd2FrZXVwIGNhcGFiaWxpdGllcyBvbiBzdXNwZW5kIGlmIGluaGliaXRlZAo+Pgo+PiBJ
ZiAiaW5oaWJpdCIgbWVhbnMgImRvIG5vdCBnZW5lcmF0ZSBhbnkgZXZlbnRzIGdvaW5nIGZvcndh
cmQiLCB0aGVuCj4+IHRoaXMgbXVzdCBhbHNvIGNvdmVyIHdha2V1cCBldmVudHMsIHNvIEkgYWdy
ZWUuCj4gCj4gSSBhZ3JlZSwgdG9vLgo+IAo+Pgo+Pj4gMi4gVGhpcyBvbmUgaXMgdHJpY2tpZXIg
SSBkb24ndCB0aGluayB3ZSBoYXZlIHJlYWxseSBjbGVhcmx5IHNwZWNpZmllZAo+Pj4gYW55IGJl
aGF2aW9yIGhlcmUuIFRoZSBkZWZhdWx0IGJlaGF2aW9yIG9mIG1vc3QgZHJpdmVycyBzZWVtcyB0
byBiZQo+Pj4gdXNpbmcgc29tZXRoaW5nIGxpa2UgdGhpcyBpbiB0aGVpciBzdXNwZW5kIGNhbGxi
YWNrOgo+Pj4KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZGV2aWNlX21heV93YWtldXAoZGV2
KSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5hYmxlX2lycV93YWtl
KGRhdGEtPmlycSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoaW5wdXQtPnVzZXJz
KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb29fc3RvcF9yZWNlaXZp
bmdfZXZlbnRzKGRhdGEpOwo+Pj4KPj4+IFNpbmNlIHRoaXMgaXMgd2hhdCBtb3N0IGRyaXZlcnMg
c2VlbSB0byBkbyBJIGJlbGlldmUgd2Ugc2hvdWxkIGtlZXAKPj4+IHRoaXMgYXMgaXMgYW5kIHRo
YXQgd2Ugc2hvdWxkIGp1c3QgY2xlYXJseSBkb2N1bWVudCB0aGF0IGlmIHRoZQo+Pj4gaW5wdXRf
ZGV2aWNlIGhhcyB1c2VycyAoaGFzIGJlZW4gb3BlbmVkKSBvciBub3QgZG9lcyBub3QgbWF0dGVy
Cj4+PiBmb3IgaXRzIHdha2V1cCBiZWhhdmlvci4KPj4+Cj4+PiBDb21iaW5pbmcgdGhlc2UgMiBh
bnN3ZXJzIGxlYWRzIHRvIHRoaXMgbmV3IHBzZXVkbyBjb2RlIHRlbXBsYXRlCj4+PiBmb3IgYW4g
aW5wdXQtZGV2aWNlJ3Mgc3VzcGVuZCBtZXRob2Q6Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCAv
Kgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgICogSWYgaW5oaWJpdGVkIHdlIGhhdmUgYWxyZWFkeSBk
aXNhYmxlZCBldmVudHMgYW5kCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiB3ZSBkbyBOT1Qgd2Fu
dCB0byBzZXR1cCB0aGUgZGV2aWNlIGFzIHdha2Ugc291cmNlLgo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGlmIChpbnB1dC0+aW5oaWJpdGVkKQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4gCj4gUmlnaHQsIGlmIGEg
ZGV2aWNlIGlzIGluaGliaXRlZCBpdCBzaG91bGRuJ3QgYmVjb21lIGEgd2FrZXVwIHNvdXJjZSwK
PiBiZWNhdXNlIHRoYXQgd291bGQgY29udHJhZGljdCB0aGUgcHVycG9zZSBvZiBiZWluZyBpbmhp
Yml0ZWQuCgpBY2suIE5vdGUgSSBkbyB0aGluayB0aGF0IHdlIG5lZWQgdG8gZG9jdW1lbnQgdGhp
cyAoYW5kIG1vcmUKaW4gZ2VuZXJhbCB0aGUgYW5zd2VyIHRvIGJvdGggcXVlc3Rpb25zIGZyb20g
YWJvdmUpIGNsZWFybHkgc28KdGhhdCBnb2luZyBmb3J3YXJkIGlmIHRoZXJlIGFyZSBhbnkgcXVl
c3Rpb25zIGFib3V0IGhvdyB0aGlzIGlzCnN1cHBvc2VkIHRvIHdvcmsgd2UgY2FuIGp1c3QgcG9p
bnQgdG8gdGhlIGRvY3MuCgpDYW4geW91IGRvIGEgZm9sbG93LXVwIHBhdGNoLCBvciBpbmNsdWRl
IGEgcGF0Y2ggaW4geW91ciBuZXh0CnZlcnNpb24gd2hpY2ggZG9jdW1lbnRzIHRoaXMgKG9uY2Ug
d2UgYWdyZWUgb24gd2hhdCAidGhpcyIKZXhhY3RseSBpcykgPwoKPj4+Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKGRldmljZV9tYXlfd2FrZXVwKGRldikpCj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZV9pcnFfd2FrZShkYXRhLT5pcnEpOwo+IAo+IFdoYXQg
d291bGQgaXQgbWVhbiB0byBiZWNvbWUgYSB3YWtldXAgc291cmNlIGlmIHRoZXJlIGFyZSBubyB1
c2VycywKPiBvciBub2JvZHkgaGFzIGV2ZXIgb3BlbmVkIHRoZSBkZXZpY2U/IFRoZXJlIGFyZSBu
byBpbnRlcmVzdGVkCj4gaW5wdXQgaGFuZGxlcnMgKHVzZXJzKSBzbyB3aGF0J3MgdGhlIHBvaW50
IG9mIGJlY29taW5nIGEgd2FrZXVwCj4gc291cmNlPyBXaHkgd291bGQgdGhlIHN5c3RlbSBuZWVk
IHRvIHdha2UgdXA/CgpXZWxsIHRoaXMgaXMgd2hhdCB3ZSBoYXZlIGJlZW4gZG9pbmcgc28gZmFy
LCBzbyBhcmd1YWJseSB3ZQpuZWVkIHRvIGtlZXAgZG9pbmcgaXQgdG8gYXZvaWQgcmVncmVzc2lv
bnMgLyBicmVha2luZyBvdXIgQUJJLgoKTGV0cyBmb3IgZXhhbXBsZSB0YWtlIGEgbGFwdG9wLCB3
aGVyZSB3aGVuIHN1c3BlbmRlZCB0aGUKcG93ZXItYnV0dG9uIGlzIHRoZSBvbmx5IHZhbGlkIHdh
a2V1cC1zb3VyY2UgYW5kIHRoaXMgaXMKcnVubmluZyBnb29kIG9sZCBzbGFja3dhcmUgd2l0aCBm
dndtMiBvciB3aW5kb3dtYWtlciBhcwoiZGVza3RvcCBlbnZpcm9ubWVudCIsIHRoZW4gbGlrZWx5
IG5vIHByb2Nlc3Mgd2lsbCBoYXZlCnRoZSBwb3dlci1idXR0b24gaW5wdXQgZXZkZXYgbm9kZSBv
cGVuLiAgU3RpbGwgd2Ugc2hvdWxkCndha2V1cCB0aGUgbGFwdG9wIG9uIHRoZSBwb3dlci1idXR0
b24gcHJlc3MsIG90aGVyd2lzZQppdCB3aWxsIG5ldmVyIHdha2V1cC4KCk5vdGUgSSBhZ3JlZSB3
aXRoIHlvdSB0aGF0IHRoZSB3YXkgdGhpcyB3b3JrcyBpcyBub3QKaWRlYWwsIEkganVzdCBkbyBu
b3QgdGhpbmsgdGhhdCB3ZSBjYW4gY2hhbmdlIGl0LgoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBl
bHNlIGlmIChpbnB1dC0+dXNlcnMpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGZvb19zdG9wX3JlY2VpdmluZ19ldmVudHMoZGF0YSk7Cj4+Pgo+Pj4gIyMjCgo8c25pcD4K
ClJlZ2FyZHMsCgpIYW5zCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vaWJtLWFjcGktZGV2ZWwK
