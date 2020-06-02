Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED50A1EC3A4
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  2 Jun 2020 22:20:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jgDNz-0000Hg-Hq; Tue, 02 Jun 2020 20:19:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jgDNy-0000HQ-Kv
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 02 Jun 2020 20:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Prna0/QXu/RjY6S2skvVofYK79iQXfjyUXH6P+LLwHQ=; b=KPNVDJQvonTL3sh0W57sYXiTm7
 5euiGz/n4bQn8HCkC3gmndW632YjErOkQIu7b3DIsMkCuqJtv4W1D1bHWYDK7Vko+9+G6wgNjyj95
 LpsutzVZth7M+VF/ZZ6hgV/kAb3YCjVw6eBf7UVy6v828PsnENWZJ/LzGeY4eTR1DYHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Prna0/QXu/RjY6S2skvVofYK79iQXfjyUXH6P+LLwHQ=; b=fKCTQHGXY7h2SF8NXZ05ITR7CQ
 IjSQdsc7fd+woYru63dJbVoHAvE0kTbkcgSjtAISmp97Y1JO0dCA2+I9pIgUEisAXBmlKAfryvU5g
 V+7d4fxS2A2cm5zXBS4eohXWlBTfV3d7/DVaw+6m9abr17wYIdXWloktEFXC4Ehw9mqw=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jgDNv-0033ra-6I
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 02 Jun 2020 20:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591129176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Prna0/QXu/RjY6S2skvVofYK79iQXfjyUXH6P+LLwHQ=;
 b=byBaBAyj/uGg6m1SWRKXYkDx+R7rTSQ/1FfzgTN4x36tAWYIDBs8UeNyzwtzTQkybCJvN1
 vynsnd8LccoLpHfKljSqk4WrpTGWstVz4Pe/d5USTGRYdFqd+7D9NoJboj3F6FPKZKSmRp
 lVu7Mv8gETRIUaILYJ+fm8FhxEdcnoo=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-ktGvog1rNVSNfYMWLbYHSw-1; Tue, 02 Jun 2020 16:19:33 -0400
X-MC-Unique: ktGvog1rNVSNfYMWLbYHSw-1
Received: by mail-wr1-f70.google.com with SMTP id w16so9234wru.18
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 02 Jun 2020 13:19:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Prna0/QXu/RjY6S2skvVofYK79iQXfjyUXH6P+LLwHQ=;
 b=kkYlDQaJ7+PPIeJAobf2VaD2qGOv5LrH1uAvtqDl1tSOtwzqnr/5ruwh6qK2O2QLRU
 e9i0hpdrN5YONsN67yTLNjdMHVoteTAcd4LZckhlYmetkCifbsOL2G266n4coADthagX
 o6Vnnd/DzZyJN92tQxyu1xCuGo8B1jzRvTAvwtVXnjducIQfCc4lJYgr+Pjn+D9TdSs8
 T5hsq4TcfMnrn8yASO2mZ3igN7Lnp0Pkxjclt6RThGmcoWjZxpWYRuyK3qMhOWkHwL1E
 vepnq7yahiJ9nBKjiQiG6CfYDb5ZUz627xyK5BO/9Jhy+VV/oW53K48catpBzmEEBA33
 6Y/A==
X-Gm-Message-State: AOAM531cZPLh+oJgpjbosmkmAQ7zwS3wgnmPr71k3XvfVbQZcbkb1xrH
 3spUb/aIAptTUhCknOGU6jvphz9uOQfw6wK0K7YyKknd03ojS7DN0kf6oxBfhnhe1c/6/rHkOiv
 2g4iE5U1sX5tEbIOTxijjuH+8Xnb+BuB7A1k=
X-Received: by 2002:a5d:484b:: with SMTP id n11mr28093347wrs.356.1591129171921; 
 Tue, 02 Jun 2020 13:19:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMYENJoMzY4AqoZffM5AF2cZne0ecRAtN7LTzh8blACu0ehnQ6ebDawV6NM8gCv3R3iJD8YQ==
X-Received: by 2002:a5d:484b:: with SMTP id n11mr28093336wrs.356.1591129171649; 
 Tue, 02 Jun 2020 13:19:31 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id y37sm155399wrd.55.2020.06.02.13.19.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 13:19:30 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
 <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
 <20200602175241.GO89269@dtor-ws>
 <82e9f2ab-a16e-51ee-1413-bedf0122026a@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8f97d2e1-497a-495d-bc82-f46dbeba440c@redhat.com>
Date: Tue, 2 Jun 2020 22:19:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <82e9f2ab-a16e-51ee-1413-bedf0122026a@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jgDNv-0033ra-6I
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA2LzIvMjAgODo1MCBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEhp
IERtaXRyeSwKPiAKPiBXIGRuaXUgMDIuMDYuMjAyMCBvwqAxOTo1MiwgRG1pdHJ5IFRvcm9raG92
IHBpc3plOgo+PiBIaSBBbmRyemVqLAo+Pgo+PiBPbiBUdWUsIEp1biAwMiwgMjAyMCBhdCAwNjo1
Njo0MFBNICswMjAwLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+PiBIaSBEbWl0cnks
Cj4+Pgo+Pj4gVyBkbml1IDI3LjA1LjIwMjAgb8KgMDg6MzQsIERtaXRyeSBUb3Jva2hvdiBwaXN6
ZToKPj4+PiBUaGF0IHNhaWQsIEkgdGhpbmsgdGhlIHdheSB3ZSBzaG91bGQgaGFuZGxlIGluaGli
aXQvdW5pbmhpYml0LCBpcyB0aGF0Cj4+Pj4gaWYgd2UgaGF2ZSB0aGUgY2FsbGJhY2sgZGVmaW5l
ZCwgdGhlbiB3ZSBjYWxsIGl0LCBhbmQgb25seSBjYWxsIG9wZW4gYW5kCj4+Pj4gY2xvc2UgaWYg
dW5pbmhpYml0IG9yIGluaGliaXQgYXJlIF9ub3RfIGRlZmluZWQuCj4+Pj4KPj4+Cj4+PiBJZiBJ
IHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseSB5b3Ugc3VnZ2VzdCB0byBjYWxsIGVpdGhlciBpbmhp
Yml0LAo+Pj4gaWYgcHJvdmlkZWQgb3IgY2xvc2UsIGlmIGluaGliaXQgaXMgbm90IHByb3ZpZGVk
LCBidXQgbm90IGJvdGgsCj4+PiB0aGF0IGlzLCBpZiBib3RoIGFyZSBwcm92aWRlZCB0aGVuIG9u
IHRoZSBpbmhpYml0IHBhdGggb25seQo+Pj4gaW5oaWJpdCBpcyBjYWxsZWQuIEFuZCwgY29uc2Vx
dWVudGx5LCB5b3Ugc3VnZ2VzdCB0byBjYWxsIGVpdGhlcgo+Pj4gdW5pbmhpYml0IG9yIG9wZW4s
IGJ1dCBub3QgYm90aC4gVGhlIHJlc3Qgb2YgbXkgbWFpbCBtYWtlcyB0aGlzCj4+PiBhc3N1bXB0
aW9uLCBzbyBraW5kbHkgY29uZmlybSBpZiBJIHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseS4KPj4K
Pj4gWWVzLCB0aGF0IGlzIGNvcnJlY3QuIElmIGEgZHJpdmVyIHdhbnRzIHJlYWxseSBmaW5lLWdy
YWluZWQgY29udHJvbCwgaXQKPj4gd2lsbCBwcm92aWRlIGluaGliaXQgKG9yIGJvdGggaW5oaWJp
dCBhbmQgY2xvc2UpLCBvdGhlcndpc2UgaXQgd2lsbCByZWx5Cj4+IG9uIGNsb3NlIGluIHBsYWNl
IG9mIGluaGliaXQuCj4+Cj4+Pgo+Pj4gSW4gbXkgb3BpbmlvbiB0aGlzIGlkZWEgd2lsbCBub3Qg
d29yay4KPj4+Cj4+PiBUaGUgZmlyc3QgcXVlc3Rpb24gaXMgc2hvdWxkIHdlIGJlIGFibGUgdG8g
aW5oaWJpdCBhIGRldmljZQo+Pj4gd2hpY2ggaXMgbm90IG9wZW5lZD8gSW4gbXkgb3BpbmlvbiB3
ZSBzaG91bGQsIGluIG9yZGVyIHRvIGJlCj4+PiBhYmxlIHRvIGluaGliaXQgYSBkZXZpY2UgaW4g
YW50aWNpcGF0aW9uIHdpdGhvdXQgbmVlZGluZyB0bwo+Pj4gb3BlbiBpdCBmaXJzdC4KPj4KPj4g
SSBhZ3JlZS4KPj4KPj4+Cj4+PiBUaGVuIHdoYXQgZG9lcyBvcGVuaW5nICh3aXRoIGlucHV0X29w
ZW5fZGV2aWNlKCkpIGFuIGluaGliaXRlZAo+Pj4gZGV2aWNlIG1lYW4/IFNob3VsZCBpdCBzdWNj
ZWVkIG9yIHNob3VsZCBpdCBmYWlsPwo+Pgo+PiBJdCBzaG91bGQgc3VjY2VlZC4KPj4KPj4+IElm
IGl0IGlzIG5vdAo+Pj4gdGhlIGZpcnN0IG9wZW5pbmcgdGhlbiBlZmZlY3RpdmVseSBpdCBib2ls
cyBkb3duIHRvIGluY3JlYXNpbmcKPj4+IGRldmljZSdzIGFuZCBoYW5kbGUncyBjb3VudGVycywg
c28gd2UgY2FuIGFsbG93IGl0IHRvIHN1Y2NlZWQuCj4+PiBJZiwgaG93ZXZlciwgdGhlIGRldmlj
ZSBpcyBiZWluZyBvcGVuZWQgZm9yIHRoZSBmaXJzdCB0aW1lLAo+Pj4gdGhlIC0+b3BlbigpIG1l
dGhvZCB3YW50cyB0byBiZSBjYWxsZWQsIGJ1dCB0aGF0IHNvbWVob3cKPj4+IGNvbnRyYWRpY3Rz
IHRoZSBkZXZpY2UncyBpbmhpYml0ZWQgc3RhdGUuIFNvIGEgbG9naWNhbCB0aGluZwo+Pj4gdG8g
ZG8gaXMgdG8gZWl0aGVyIGZhaWwgaW5wdXRfb3Blbl9kZXZpY2UoKSBvciBwb3N0cG9uZSAtPm9w
ZW4oKQo+Pj4gaW52b2NhdGlvbiB0byB0aGUgbW9tZW50IG9mIHVuaW5oaWJpdGluZyAtIGFuZCB0
aGUgbGF0dGVyIGlzCj4+PiB3aGF0IHRoZSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGN1cnJlbnRs
eSBkby4KPj4+Cj4+PiBGYWlsaW5nIGlucHV0X29wZW5fZGV2aWNlKCkgYmVjYXVzZSBvZiB0aGUg
aW5oaWJpdGVkIHN0YXRlIGlzCj4+PiBub3QgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLiBMZXQgbWUg
ZXhwbGFpbi4gU3VwcG9zZSB0aGF0IGEgZGV2aWNlCj4+PiBpcyBhbHJlYWR5IGluaGliaXRlZCBh
bmQgdGhlbiBhIG5ldyBtYXRjaGluZyBoYW5kbGVyIGFwcGVhcnMKPj4+IGluIHRoZSBzeXN0ZW0u
IE1vc3QgaGFuZGxlcnMgKGFwbS1wb3dlci5jLCBldmJ1Zy5jLCBpbnB1dC1sZWRzLmMsCj4+PiBt
YWNfaGlkLmMsIHN5c3JxLmMsIHZ0L2tleWJvYXJkLmMgYW5kIHJma2lsbC9pbnB1dC5jKSBkb24n
dCBjcmVhdGUKPj4+IGFueSBjaGFyYWN0ZXIgZGV2aWNlcyAob25seSBldmRldi5jLCBqb3lkZXYu
YyBhbmQgbW91c2VkZXYuYyBkbyksCj4+PiBzbyBmb3IgdGhlbSBpdCBtYWtlcyBubyBzZW5zZSB0
byBkZWxheSBjYWxsaW5nIGlucHV0X29wZW5fZGV2aWNlKCkKPj4+IGFuZCBpdCBpcyBjYWxsZWQg
aW4gaGFuZGxlcidzIC0+Y29ubmVjdCgpLiBJZiBpbnB1dF9vcGVuX2RldmljZSgpCj4+PiBub3cg
ZmFpbHMsIHdlIGhhdmUgbG9zdCB0aGUgb25seSBjaGFuY2UgZm9yIHRoaXMgLT5jb25uZWN0KCkg
dG8KPj4+IHN1Y2NlZWQuCj4+Pgo+Pj4gU3VtbWFyaXppbmcsIElNTyB0aGUgdW5pbmhpYml0IHBh
dGggc2hvdWxkIGJlIGNhbGxpbmcgYm90aAo+Pj4gLT5vcGVuKCkgYW5kIC0+dW5pbmhpYml0KCkg
KGlmIHByb3ZpZGVkKSwgYW5kIGNvbnZlcnNlbHksIHRoZSBpbmhpYml0Cj4+PiBwYXRoIHNob3Vs
ZCBiZSBjYWxsaW5nIGJvdGggLT5pbmhpYml0KCkgYW5kIC0+Y2xvc2UoKSAoaWYgcHJvdmlkZWQp
Lgo+Pgo+PiBTbyB3aGF0IHlvdSBhcmUgdHJ5aW5nIHRvIHNheSBpcyB0aGF0IHlvdSBzZWUgaW5o
aWJpdCBhcyBzb21ldGhpbmcgdGhhdAo+PiBpcyBkb25lIGluIGFkZGl0aW9uIHRvIHdoYXQgaGFw
cGVucyBpbiBjbG9zZS4gQnV0IHdoYXQgZXhhY3RseSBkbyB5b3UKPj4gd2FudCB0byBkbyBpbiBp
bmhpYml0LCBpbiBhZGRpdGlvbiB0byB3aGF0IGNsb3NlIGlzIGRvaW5nPwo+IAo+IFNlZSBiZWxv
dyAoKikuCj4gCj4+Cj4+IEluIG15IHZpZXcsIGlmIHdlIHdhbnQgdG8gaGF2ZSBhIGRlZGljYXRl
ZCBpbmhpYml0IGNhbGxiYWNrLCB0aGVuIGl0Cj4+IHdpbGwgZG8gZXZlcnl0aGluZyB0aGF0IGNs
b3NlIGRvZXMsIHRoZXkgYm90aCBhcmUgYXdhcmUgb2YgZWFjaCBvdGhlcgo+PiBhbmQgY2FuIHNv
cnQgb3V0IHRoZSBzdGF0ZSB0cmFuc2l0aW9ucyBiZXR3ZWVuIHRoZW0uIEZvciBkcml2ZXJzIHRo
YXQgZG8KPj4gbm90IGhhdmUgZGVkaWNhdGVkIGluaGliaXQvdW5pbmhpYml0LCB3ZSBjYW4gdXNl
IG9wZW4gYW5kIGNsb3NlCj4+IGhhbmRsZXJzLCBhbmQgaGF2ZSBpbnB1dCBjb3JlIHNvcnQgb3V0
IHdoZW4gZWFjaCBzaG91bGQgYmUgY2FsbGVkLiBUaGF0Cj4+IG1lYW5zIHRoYXQgd2Ugc2hvdWxk
IG5vdCBjYWxsIGRldi0+b3BlbigpIGluIGlucHV0X29wZW5fZGV2aWNlKCkgd2hlbgo+PiBkZXZp
Y2UgaXMgaW5oaWJpdGVkIChhbmQgc2FtZSBmb3IgZGV2LT5jbG9zZSgpIGluIGlucHV0X2Nsb3Nl
X2RldmljZSkuCj4+IEFuZCB3aGVuIHVuaW5oaWJpdGluZywgd2Ugc2hvdWxkIG5vdCBjYWxsIGRl
di0+b3BlbigpIHdoZW4gdGhlcmUgYXJlIG5vCj4+IHVzZXJzIGZvciB0aGUgZGV2aWNlLCBhbmQg
bm8gZGV2LT5jbG9zZSgpIHdoZW4gaW5oaWJpdGluZyB3aXRoIG5vIHVzZXJzLgo+Pgo+PiBEbyB5
b3Ugc2VlIGFueSBwcm9ibGVtcyB3aXRoIHRoaXMgYXBwcm9hY2g/Cj4gCj4gTXkgY29uY2VybiBp
cyB0aGF0IGlmIGUuZy4gYm90aCAtPm9wZW4oKSBhbmQgLT51bmluaGliaXQoKSBhcmUgcHJvdmlk
ZWQsCj4gdGhlbiBpbiBjZXJ0YWluIGNpcmN1bXN0YW5jZXMgLT5vcGVuKCkgd29uJ3QgYmUgY2Fs
bGVkOgo+IAo+IDEuIHVzZXJzID09IDAKPiAyLiBpbmhpYml0IGhhcHBlbnMKPiAzLiBpbnB1dF9v
cGVuX2RldmljZSgpIGhhcHBlbnMsIC0+b3BlbigpIG5vdCBjYWxsZWQKPiA0LiB1bmluaGliaXQg
aGFwcGVucwo+IDUuIGFzIHBhcnQgb2YgdW5pbmhpYml0IC0+dW5pbmhpYml0KCkgaXMgb25seSBj
YWxsZWQsIGJ1dCAtPm9wZW4oKSBpcyBub3QuCj4gCj4gVGhleSB3YXkgSSB1bmRlcnN0YW5kIHlv
dXIgYW5zd2VyIGlzIHRoYXQgd2UgaW1wbGljaXRseSBpbXBvc2UgcmVxdWlyZW1lbnRzCj4gb24g
ZHJpdmVycyB3aGljaCBjaG9vc2UgdG8gaW1wbGVtZW50IGUuZy4gYm90aCAtPm9wZW4oKSBhbmQg
LT51bmluaGliaXQoKToKPiBpbiBzdWNoIGEgY2FzZSAtPnVuaW5oaWJpdCgpIHNob3VsZCBiZSBk
b2luZyBleGFjdGx5IHRoZSBzYW1lIHRoaW5ncyBhcwo+IC0+b3BlbigpIGRvZXMuIFdoaWNoIGxl
YWRzIHRvIGEgY29uY2x1c2lvbiB0aGF0IGluIHByYWN0aWNlIG5vIGRyaXZlcnMKPiBzaG91bGQg
Y2hvb3NlIHRvIGltcGxlbWVudCBib3RoLCBvdGhlcndpc2UgdGhleSBtdXN0IGJlIGF3YXJlIHRo
YXQKPiAtPnVuaW5oaWJpdCgpIGNhbiBiZSBzb21ldGltZXMgY2FsbGVkIGluc3RlYWQgb2YgLT5v
cGVuKCkuIFRoZW4gLT5vcGVuKCkKPiBiZWNvbWVzIHN5bm9ueW1vdXMgd2l0aCAtPnVuaW5oaWJp
dCgpLCBhbmQgLT5jbG9zZSgpIHdpdGggLT5pbmhpYml0KCkuCj4gT3IsIG1heWJlLCB0aGVuIC0+
aW5oaWJpdCgpIGNhbiBiZSBhIHN1cGVyc2V0IG9mIC0+Y2xvc2UoKSBhbmQKPiAtPnVuaW5oaWJp
dCgpIGEgc3VwZXJzZXQgb2YgLT5vcGVuKCkuCj4gCj4gSWYgc3VjaCBhbiBhcHByb2FjaCBpcyBv
ayB3aXRoIHlvdSwgaXQgaXMgb2sgd2l0aCBtZSwgdG9vLgo+IAo+ICgqKQo+IENhbGxpbmcgYm90
aCAtPmluaGliaXQoKSBhbmQgLT5jbG9zZSgpIChpZiB0aGV5IGFyZSBwcm92aWRlZCkgYWxsb3dz
Cj4gZHJpdmVycyB0byBnbyBmYW5jeSBhbmQgZmFpbCBpbmhpYml0aW5nICh3aGljaCBpcyBpbXBv
c3NpYmxlIHVzaW5nCj4gb25seSAtPmNsb3NlKCkgYXMgaXQgZG9lcyBub3QgcmV0dXJuIGEgdmFs
dWUsIGJ1dCAtPmluaGliaXQoKSBieSBkZXNpZ24KPiBkb2VzKS4gVGhlbiAtPnVuaW5oaWJpdCgp
IGlzIG1vc3RseSBmb3Igc3ltbWV0cnkuCgpBbGwgdGhlIGNvbXBsaWNhdGlvbnMgZGlzY3Vzc2Vk
IGFib3ZlIGFyZSBleGFjdGx5IHdoeSBJIHN0aWxsCmJlbGlldmUgdGhhdCB0aGVyZSBzaG91bGQg
YmUgb25seSBvcGVuIGFuZCBjbG9zZS4KCklmIGVycm9yIHByb3BhZ2F0aW9uIG9uIGluaGliaXQg
aXMgY29uc2lkZXJlZCBhcyBzb21ldGhpbmcKcmVhbGx5IGltcG9ydGFudCB0byBoYXZlIHRoZW4g
d2UgY2FuIG1ha2UgdGhlIGlucHV0IGRyaXZlciBjbG9zZQpjYWxsYmFjayByZXR1cm4gYW4gZXJy
b3IgKCopLCBub3RlIEknbSB0YWxraW5nIGFib3V0IHRoZQpkcml2ZXIgY2xvc2UgY2FsbGJhY2sg
aGVyZSwgbm90IHRoZSBzeXN0ZW0gY2FsbC4KCklmIHRoZSBjbG9zZSBjYWxsYmFjayBpcyBjYWxs
ZWQgZm9yIGFjdHVhbGx5IGNsb3NpbmcgdGhlIGZkCnJlZmVycmluZyB0byB0aGUgaW5wdXQgbm9k
ZSwgdGhlbiB0aGUgbmV3IGVycm9yIHJldHVybiBjb2RlCmNhbiBiZSBpZ25vcmVkLCBhcyB3ZSBh
bHJlYWR5IGRvIGZvciBlcnJvcnMgb24gY2xvc2UgYXRtCnNpbmNlIHRoZSBkcml2ZXIgY2xvc2Ug
Y2FsbGJhY2sgcmV0dXJucyB2b2lkLgoKSSBzdGlsbCBoYXZlIG5vdCBzZWVuIGEgdmVyeSBjb252
aW5jaW5nIGFyZ3VtZW50IGZvciBoYXZpbmcKc2VwYXJhdGUgaW5oaWJpdCBhbmQgY2xvc2UgY2Fs
bGJhY2tzIGFuZCBhcyB0aGUgbWVzc3kgZGlzY3Vzc2lvbgphYm92ZSBzaG93cywgaGF2aW5nIDIg
c3VjaCB2ZXJ5IHNpbWlsYXIgeWV0IHN1YnRseSBkaWZmZXJlbnQKY2FsbHMgc2VlbXMgbGlrZSBh
IGJhZCBpZGVhLi4uCgpSZWdhcmRzLAoKSGFucwoKCiopIFRoaXMgd2lsbCByZXF1aXJlIGEgZmxh
ZyBkYXkgd2hlcmUgInJldHVybiAwIiBpcyBhZGRlZAp0byBhbGwgY3VycmVudCBjbG9zZSBoYW5k
bGVycwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpp
Ym0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1h
Y3BpLWRldmVsCg==
