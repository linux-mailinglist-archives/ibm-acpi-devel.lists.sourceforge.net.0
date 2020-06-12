Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F381F754F
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 12 Jun 2020 10:30:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jjf5G-0004ub-Rt; Fri, 12 Jun 2020 08:30:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jjf5F-0004uP-7W
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 12 Jun 2020 08:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OPWeA1qjGBNWCHfcjBnCq0fW8SyKcT5HP9U/4tli77g=; b=bWAmefo/tGow3kV9tvzGqsSZvH
 pJNA1Ol/0G9uTYZSKcJlvFffT/oLKGVggHaFpkjKhtmZ3uEX2Y7dmzkCBp54qDcuL41kYCZHpR0lI
 bBeihT9EuaejZgdvsEePVM10BTzQDhL4DTNFwdNdidKah3sYP8VKRcMs5K809DPU6yYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OPWeA1qjGBNWCHfcjBnCq0fW8SyKcT5HP9U/4tli77g=; b=FJsFn6hNwrVnBbArrbNz7DPV/R
 AGlPnmV5AygWYs/o2y2JTKMAHP2IvQSkmVuSxmUKFN/wqTz0r/bqqC/iXZVCttL+6KaOtG6VtHqpu
 o1tzqveg0yG01njjw2uWaCFSpv/+fkMVK/i8ieK8fEeP8iKiYkfP+14phBA6MN4KobG4=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jjf5D-00GX7o-2M
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 12 Jun 2020 08:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591950632;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OPWeA1qjGBNWCHfcjBnCq0fW8SyKcT5HP9U/4tli77g=;
 b=L7UzKNXQTHcY6HfVEPHn5AoUGhn/eafDvWcXcv/3aB11AOkv0/cWO3uCEItPFW/JZ3ipct
 hqkGZzeDi4OxdwUkJRbcywZhZQ4mt3aFEe7k9T1HBzlb2b5ZKSPow8YbjMQ4ktXpuXtSwe
 znoruux6VNXH3YhKEbWAD5dfhh/yI6Y=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-q7UuKBKLMpOLJErikg2MSg-1; Fri, 12 Jun 2020 04:30:31 -0400
X-MC-Unique: q7UuKBKLMpOLJErikg2MSg-1
Received: by mail-ej1-f71.google.com with SMTP id d14so3885309ejt.14
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 12 Jun 2020 01:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OPWeA1qjGBNWCHfcjBnCq0fW8SyKcT5HP9U/4tli77g=;
 b=K7c+iQvgX6QXMEKP2L1d+PRi6I+Gq3tP6GVc2+yriWimYxutNQyUYAhpNBjzpdLFl3
 4/07Q/4c+Z7IfOAqXfw4o7ni12zbErIXMzmTAWDA2CODdDuzajTBMKoucDnvkEEs6ra8
 8Oizyv+UTtWqiHaJlrGIFmW9SdgUBOsweekslPrltTK4ofPOoJ3gxRYSfqUAllFYYwRC
 8brIxqgmw6cR9XCAxfS1Do0z61wJrDD7ofHWbEInRt9zZTcMn5Kl9qyqym1RRe+kkFgI
 9foqKxpC7AtWamB9wIZUNd6yVrQTism5Nbf87O0lZmeHrRyAFtmj7nHcbOr36CyJC8Qb
 D/Yg==
X-Gm-Message-State: AOAM533tY5ScXHqScUOs65cQ4vZxXUoYzgG6f9JTn6HG9dW227C0QR5g
 T50NEGYtu6lENgbaTp+L0LvDWM71qo9HU9lVaws0T98XiAn1pJagkTaZggUxxwdL47NksI8PK9j
 K6fKnWFHTE+xPAX274Ls+reZQb8EgXIXM2KI=
X-Received: by 2002:a17:906:150c:: with SMTP id
 b12mr11118841ejd.545.1591950627662; 
 Fri, 12 Jun 2020 01:30:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzK+lnhXJPHcxkk+0REwmXPmNz4y9unDpw9LWEppS+/VYsL4Zuy/fGvFVeGkarTC5boVCicqQ==
X-Received: by 2002:a17:906:150c:: with SMTP id
 b12mr11118797ejd.545.1591950627331; 
 Fri, 12 Jun 2020 01:30:27 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id k24sm2761134edk.95.2020.06.12.01.30.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 01:30:26 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
 <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
 <2d5fd063-66bc-c707-4041-84a17c0a7d04@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <40988408-8f36-3a52-6439-34084de6b129@redhat.com>
Date: Fri, 12 Jun 2020 10:30:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2d5fd063-66bc-c707-4041-84a17c0a7d04@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjf5D-00GX7o-2M
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

SGksCgpPbiA2LzEwLzIwIDM6NDEgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBI
aSBIYW5zLAo+IAo+IFcgZG5pdSAxMC4wNi4yMDIwIG/CoDE1OjIxLCBIYW5zIGRlIEdvZWRlIHBp
c3plOgo+PiBIaSwKPj4KPj4gT24gNi8xMC8yMCAzOjEyIFBNLCBBbmRyemVqIFBpZXRyYXNpZXdp
Y3ogd3JvdGU6Cj4+PiBIaSBBbGwsCj4+Pgo+Pj4gVyBkbml1IDEwLjA2LjIwMjAgb8KgMTI6Mzgs
IFJhZmFlbCBKLiBXeXNvY2tpIHBpc3plOgo+Pj4+IE9uIFdlZCwgSnVuIDEwLCAyMDIwIGF0IDEx
OjUwIEFNIEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pgo+
Pj4+PiBIaSBBbGwsCj4+Pj4+Cj4+Pj4+IE9uIDYvOC8yMCAxOjIyIFBNLCBBbmRyemVqIFBpZXRy
YXNpZXdpY3ogd3JvdGU6Cj4+Pj4+PiBUaGlzIGlzIGEgcXVpY2sgcmVzcGluIG9mIHYzLCB3aXRo
IGp1c3QgdHdvIHNtYWxsIGNoYW5nZXMsIHBsZWFzZSBzZWUKPj4+Pj4+IHRoZSBjaGFuZ2Vsb2cg
YmVsb3cuCj4+Pj4+Pgo+Pj4+Pj4gVXNlcnNwYWNlIG1pZ2h0IHdhbnQgdG8gaW1wbGVtZW50IGEg
cG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dAo+Pj4+Pj4gZnJvbSBjZXJ0YWlu
IGRldmljZXMuCj4+Pj4+Pgo+Pj4+Pj4gQW4gZXhhbXBsZSB1c2UgY2FzZSBpcyBhIGNvbnZlcnRp
YmxlIGxhcHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZAo+Pj4+Pj4gdW5kZXIgdGhl
IHNjcmVlbiB0byBjcmVhdGUgdGFibGV0LWxpa2UgZXhwZXJpZW5jZS4gVGhlIHVzZXIgdGhlbiBt
dXN0IGhvbGQKPj4+Pj4+IHRoZSBsYXB0b3AgaW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZp
Y3VsdCB0byBhdm9pZCBwcmVzc2luZyB0aGUga2V5Ym9hcmQKPj4+Pj4+IGtleXMuIEl0IGlzIHRo
ZXJlZm9yZSBkZXNpcmFibGUgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0IGZyb20gdGhl
Cj4+Pj4+PiBrZXlib2FyZCwgdW50aWwgaXQgaXMgZm9sZGVkIGJhY2suIFRoaXMgb2J2aW91c2x5
IGlzIGEgcG9saWN5IHdoaWNoIHNob3VsZAo+Pj4+Pj4gYmUga2VwdCBvdXQgb2YgdGhlIGtlcm5l
bCwgYnV0IHRoZSBrZXJuZWwgbXVzdCBwcm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvCj4+Pj4+PiBp
bXBsZW1lbnQgc3VjaCBhIHBvbGljeS4KPj4+Pj4KPj4+Pj4gRmlyc3Qgb2YgYWxsIHNvcnJ5IHRv
IHN0YXJ0IGEgc29tZXdoYXQgbmV3IGRpc2N1c3Npb24gYWJvdXQgdGhpcwo+Pj4+PiB3aGlsZSB0
aGlzIHBhdGNoIHNldCBpcyBhbHNvIHNvbWV3aGF0IGZhciBhbG9uZyBpbiB0aGUgcmV2aWV3IHBy
b2Nlc3MsCj4+Pj4+IGJ1dCBJIGJlbGlldmUgd2hhdCBJIGRpc2N1c3MgYmVsb3cgbmVlZHMgdG8g
YmUgdGFrZW4gaW50byBhY2NvdW50Lgo+Pj4+Pgo+Pj4+PiBZZXN0ZXJkYXkgSSBoYXZlIGJlZW4g
bG9va2luZyBpbnRvIHdoeSBhbiBBc3VzIFQxMDFIQSB3b3VsZCBub3Qgc3RheQo+Pj4+PiBzdXNw
ZW5kZWQgd2hlbiB0aGUgTElEIGlzIGNsb3NlZC4gVGhlIGNhdXNlIGlzIHRoYXQgdGhlIFVTQiBI
SUQgbXVsdGktdG91Y2gKPj4+Pj4gdG91Y2hwYWQgaW4gdGhlIGJhc2Ugb2YgdGhlIGRldmljZSBz
dGFydHMgc2VuZGluZyBldmVudHMgd2hlbiB0aGUgc2NyZWVuCj4+Pj4+IGdldHMgY2xvc2UgdG8g
dGhlIHRvdWNocGFkIChzbyB3aGVuIHRoZSBMSUQgaXMgZnVsbHkgY2xvc2VkKSBhbmQgdGhlc2UK
Pj4+Pj4gZXZlbnRzIGFyZSBjYXVzaW5nIGEgd2FrZXVwIGZyb20gc3VzcGVuZC4gSElEIG11bHRp
LXRvdWNoIGRldmljZXMKPj4+Pj4gZG8gaGF2ZSBhIHdheSB0byB0ZWxsIHRoZW0gdG8gZnVsbHkg
c3RvcCBzZW5kaW5nIGV2ZW50cywgYWxzbyBkaXNhYmxpbmcKPj4+Pj4gdGhlIFVTQiByZW1vdGUg
d2FrZXVwIHRoZSBkZXZpY2UgaXMgZG9pbmcuIFRoZSBxdWVzdGlvbiBpcyB3aGVuIHRvIHRlbGwK
Pj4+Pj4gaXQgdG8gbm90IHNlbmQgZXZlbnRzIHRob3VnaCAuLi4KPj4+Pj4KPj4+Pj4gU28gbm93
IEkndmUgYmVlbiB0aGlua2luZyBhYm91dCBob3cgdG8gZml4IHRoaXMgYW5kIEkgYmVsaWV2ZSB0
aGF0IHRoZXJlCj4+Pj4+IGlzIHNvbWUgaW50ZXJhY3Rpb24gYmV0d2VlbiB0aGlzIHByb2JsZW0g
YW5kIHRoaXMgcGF0Y2gtc2V0Lgo+Pj4+Pgo+Pj4+PiBUaGUgcHJvYmxlbSBJJ20gc2VlaW5nIG9u
IHRoZSBUMTAxSEEgaXMgYWJvdXQgd2FrZXVwcywgc28gdGhlIHF1ZXN0aW9uCj4+Pj4+IHdoaWNo
IEkgd2FudCB0byBkaXNjdXNzIGlzOgo+Pj4+Pgo+Pj4+PiAxLiBIb3cgZG9lcyBpbmhpYml0aW5n
IGludGVyYWN0IHdpdGggZW5hYmxpbmcgLwo+Pj4+PiBkaXNhYmxpbmcgdGhlIGRldmljZSBhcyBh
IHdha2V1cCBzb3VyY2UgPwo+Pj4+Pgo+Pj4+PiAyLiBTaW5jZSB3ZSBoYXZlIG5vdyBtYWRlIGlu
aGliaXRpbmcgZXF1YWwgb3Blbi9jbG9zZSBob3cgZG9lcyBvcGVuL2Nsb3NlCj4+Pj4+IGludGVy
YWN0IHdpdGggYSBkZXZpY2UgYmVpbmcgYSB3YWtldXAgc291cmNlID8KPj4+Pj4KPj4+Pj4gQW5k
IG15IG93biBpbml0aWFsICh0byBiZSBkaXNjdXNzZWQpIGFuc3dlcnMgdG8gdGhlc2UgcXVlc3Rp
b25zOgo+Pj4+Pgo+Pj4+PiAxLiBJdCBzZWVtcyB0byBtZSB0aGF0IHdoZW4gYSBkZXZpY2UgaXMg
aW5oaWJpdGVkIGl0IHNob3VsZCBub3QgYmUgYQo+Pj4+PiB3YWtldXAgc291cmNlLCBzbyB3aGVy
ZSBwb3NzaWJsZSBhIGlucHV0LWRldmljZS1kcml2ZXIgc2hvdWxkIGRpc2FibGUKPj4+Pj4gYSBk
ZXZpY2UncyB3YWtldXAgY2FwYWJpbGl0aWVzIG9uIHN1c3BlbmQgaWYgaW5oaWJpdGVkCj4+Pj4K
Pj4+PiBJZiAiaW5oaWJpdCIgbWVhbnMgImRvIG5vdCBnZW5lcmF0ZSBhbnkgZXZlbnRzIGdvaW5n
IGZvcndhcmQiLCB0aGVuCj4+Pj4gdGhpcyBtdXN0IGFsc28gY292ZXIgd2FrZXVwIGV2ZW50cywg
c28gSSBhZ3JlZS4KPj4+Cj4+PiBJIGFncmVlLCB0b28uCj4+Pgo+Pj4+Cj4+Pj4+IDIuIFRoaXMg
b25lIGlzIHRyaWNraWVyIEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZSByZWFsbHkgY2xlYXJseSBzcGVj
aWZpZWQKPj4+Pj4gYW55IGJlaGF2aW9yIGhlcmUuIFRoZSBkZWZhdWx0IGJlaGF2aW9yIG9mIG1v
c3QgZHJpdmVycyBzZWVtcyB0byBiZQo+Pj4+PiB1c2luZyBzb21ldGhpbmcgbGlrZSB0aGlzIGlu
IHRoZWlyIHN1c3BlbmQgY2FsbGJhY2s6Cj4+Pj4+Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoZGV2aWNlX21heV93YWtldXAoZGV2KSkKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbmFibGVfaXJxX3dha2UoZGF0YS0+aXJxKTsKPj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgIGVsc2UgaWYgKGlucHV0LT51c2VycykKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBmb29fc3RvcF9yZWNlaXZpbmdfZXZlbnRzKGRhdGEpOwo+Pj4+Pgo+Pj4+
PiBTaW5jZSB0aGlzIGlzIHdoYXQgbW9zdCBkcml2ZXJzIHNlZW0gdG8gZG8gSSBiZWxpZXZlIHdl
IHNob3VsZCBrZWVwCj4+Pj4+IHRoaXMgYXMgaXMgYW5kIHRoYXQgd2Ugc2hvdWxkIGp1c3QgY2xl
YXJseSBkb2N1bWVudCB0aGF0IGlmIHRoZQo+Pj4+PiBpbnB1dF9kZXZpY2UgaGFzIHVzZXJzICho
YXMgYmVlbiBvcGVuZWQpIG9yIG5vdCBkb2VzIG5vdCBtYXR0ZXIKPj4+Pj4gZm9yIGl0cyB3YWtl
dXAgYmVoYXZpb3IuCj4+Pj4+Cj4+Pj4+IENvbWJpbmluZyB0aGVzZSAyIGFuc3dlcnMgbGVhZHMg
dG8gdGhpcyBuZXcgcHNldWRvIGNvZGUgdGVtcGxhdGUKPj4+Pj4gZm9yIGFuIGlucHV0LWRldmlj
ZSdzIHN1c3BlbmQgbWV0aG9kOgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIC8qCj4+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCAqIElmIGluaGliaXRlZCB3ZSBoYXZlIGFscmVhZHkgZGlzYWJs
ZWQgZXZlbnRzIGFuZAo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiB3ZSBkbyBOT1Qgd2FudCB0
byBzZXR1cCB0aGUgZGV2aWNlIGFzIHdha2Ugc291cmNlLgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgKi8KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoaW5wdXQtPmluaGliaXRlZCkKPj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pgo+Pj4gUmlnaHQs
IGlmIGEgZGV2aWNlIGlzIGluaGliaXRlZCBpdCBzaG91bGRuJ3QgYmVjb21lIGEgd2FrZXVwIHNv
dXJjZSwKPj4+IGJlY2F1c2UgdGhhdCB3b3VsZCBjb250cmFkaWN0IHRoZSBwdXJwb3NlIG9mIGJl
aW5nIGluaGliaXRlZC4KPj4KPj4gQWNrLiBOb3RlIEkgZG8gdGhpbmsgdGhhdCB3ZSBuZWVkIHRv
IGRvY3VtZW50IHRoaXMgKGFuZCBtb3JlCj4+IGluIGdlbmVyYWwgdGhlIGFuc3dlciB0byBib3Ro
IHF1ZXN0aW9ucyBmcm9tIGFib3ZlKSBjbGVhcmx5IHNvCj4+IHRoYXQgZ29pbmcgZm9yd2FyZCBp
ZiB0aGVyZSBhcmUgYW55IHF1ZXN0aW9ucyBhYm91dCBob3cgdGhpcyBpcwo+PiBzdXBwb3NlZCB0
byB3b3JrIHdlIGNhbiBqdXN0IHBvaW50IHRvIHRoZSBkb2NzLgo+Pgo+PiBDYW4geW91IGRvIGEg
Zm9sbG93LXVwIHBhdGNoLCBvciBpbmNsdWRlIGEgcGF0Y2ggaW4geW91ciBuZXh0Cj4+IHZlcnNp
b24gd2hpY2ggZG9jdW1lbnRzIHRoaXMgKG9uY2Ugd2UgYWdyZWUgb24gd2hhdCAidGhpcyIKPj4g
ZXhhY3RseSBpcykgPwo+IAo+IFN1cmUgSSBjYW4uIEp1c3QgbmVlZCB0byBrbm93IHdoZW4gInRo
aXMiIGJlY29tZXMgc3RhYmxlIGVub3VnaCA7KQo+IElmIHRoaXMgc2VyaWVzIG90aGVyd2lzZSBs
b29rcyBtYXR1cmUgZW5vdWdoIEkgd291bGQgb3B0IGZvciBhCj4gZm9sbG93LXVwIHBhdGNoLgoK
RldJVyBhZnRlciBteSBmbGlwLWZsb3AgdG8gYWdyZWVpbmcgd2l0aCBEbWl0cnkgdGhhdCB0aGUg
MgooaW5oaWJpdCB2cyB3YWtldXApIHNob3VsZCBiZSBjb21wbGV0ZWx5IG9ydGhvZ29uYWwgdGhp
cyBuZXcKcG9saWN5IGlzIHN0YWJsZS9tYXR1cmUgZnJvbSBteSBwb3YgKGFuZCBjb25zaXN0ZW50
IHdpdGggaG93CndlIGhhbmRsZSB3YWtldXAgdnMgaW5wdXRfZGV2LT51c2VycykuCgpJIHN0aWxs
IHRoaW5rIGl0IHdvdWxkIGJlIGdvb2QgdG8gZG8gYSBmb2xsb3ctdXAgZG9jdW1lbnRhdGlvbgpw
YXRjaCBkb2N1bWVudGluZyB0aGF0IHRoZXNlIChhbmQgZXNwLiBpbmhpYml0KSBhcmUgb3J0aG9n
b25hbC4KClRoaXMgd2lsbCBtZWFuIGZvciBleGFtcGxlIHRoYXQgaWYgYSBkZXZpY2UgaXMgaW5o
aWJpdCBidXQKc3RpbGwgd2FrZXVwIGVuYWJsZWQgYW5kIHRoZSBkZXZpY2UncyBjbG9zZSBtZXRo
b2Qgc2lsZW5jZXMKdGhlIGRldmljZXMsIHRoYXQgaXQgbmVlZHMgdG8gYmUgdW5zaWxlbmNlZCBp
biBzdXNwZW5kLgpUaGlzIG1pZ2h0IGJlIHdvcnRoIG1lbnRpb25pbmcgaW4gdGhlIGRvY3MgZXZl
biB0aG91Z2gKZHJpdmVycyB3aGljaCBzaWxlbmNlIHRoZSBkZXZpY2Ugb24gY2xvc2Ugc2hvdWxk
IGFscmVhZHkKdW5zaWxlbmNlIHRoZSBkZXZpY2Ugb24gc3VzcGVuZCB3aGVuIGl0IGlzIHdha2V1
cC1lbmFibGVkLgoKTm90ZSBtYXliZSB3ZSBzaG91bGQgZ2l2ZSBpdCBhIGNvdXBsZSBvZiBkYXlz
IGZvciBvdGhlcnMgdG8KZ2l2ZSB0aGVpciBvcGluaW9uIGJlZm9yZSB5b3Ugc3VibWl0IHRoZSBm
b2xsb3ctdXAgZG9jdW1lbnRhdGlvbgpwYXRjaC4KClJlZ2FyZHMsCgpIYW5zCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwg
bWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
