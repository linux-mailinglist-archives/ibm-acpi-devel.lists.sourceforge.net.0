Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E991D71FE
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 18 May 2020 09:37:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jaaKJ-0000eJ-Ru; Mon, 18 May 2020 07:36:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jaaKH-0000dn-1E
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 07:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lxahqT/LB/gKtsCv/S2+hQFfwmIb9ycLMKz+VyULbsI=; b=eger/0pTieDZ6QhCSskl6Hpb6n
 b5nXttDzKpX9FC16wvPdeZqOm6/yTgGdmmUCxmH7h48QjTPecn0ok8RnzOsMh16/yJr042j50WagO
 klJATBwFpVxm9Ggt+2yxu56dE52ZXF9IOrvjM49TB3Qz/v0Xqn9aKGjMfCjcpNzmIJkg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lxahqT/LB/gKtsCv/S2+hQFfwmIb9ycLMKz+VyULbsI=; b=bZ699n6FUYijdYLNwtgShpyQRF
 Aenll3WxMqHXdeZcs5CoyPgTsDeX0j2CqboOxqYVUaRnkf1xVzLrJo1sRZxRUy3kWiASwOHhf6Oex
 fldC/CwgS8eiZ+LP/4TKvaWJmEy9vTleMVnwFRLNGxEYIpgXHvaXu1I7nRRciEWGL2aI=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jaaKF-00GTW3-Cu
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 May 2020 07:36:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589787393;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lxahqT/LB/gKtsCv/S2+hQFfwmIb9ycLMKz+VyULbsI=;
 b=arMuVYrwCqfWoMDXL0PHyDHQhX4zwsTpG5PkOK7kDR1DpeGnX69jpk+w7/PonKT4UDTKSr
 0CkPxQADIIMMBKBzRt1NtooS3651AuLH+0ZYfbAz82scX32ghWWPpuraE45M2Fz3frhFWY
 PyDP41/J+ldqtwzP06GHCtoDt/W0SQ0=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-h4ZA4siQPja2h0p5Ex9Wyg-1; Mon, 18 May 2020 03:36:32 -0400
X-MC-Unique: h4ZA4siQPja2h0p5Ex9Wyg-1
Received: by mail-wm1-f71.google.com with SMTP id o8so1937172wmd.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 18 May 2020 00:36:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lxahqT/LB/gKtsCv/S2+hQFfwmIb9ycLMKz+VyULbsI=;
 b=ueRisr3Pb7Q7BL24Su/kqovmdRznAGAZeTO9fYGSlHjcSI5oRWziQbcfrgjwgGOh80
 Qx2MHQDC+bNgih3GOzkMVh+FfLhKoLpihFjxS4EZ3dQpQmLjmZezmWLU7S2JYaexPQyP
 9KEuDuGba5utlMBsf/8gBnUiwlgYpnkbdDvyTdBPVxNqUbBbBgKWLQonEwKt9mGLIdtx
 PTyNPYmyCVTM5UnisW6xbnSYAWX8yr264CMlBAPtDrfMUnPn+kJW3YqXt4FBcebuQABg
 b7VPzRA8jNJFunk0dTkUK+mSXUmUwiiF47qGgHn7lQcQotOT9OmVYg4jKaPpNr+hOV7P
 R6jA==
X-Gm-Message-State: AOAM533nHpB3oZKZDD9yb0D89JffxiihspJ6fP96y9HVSvgFh5yEYNn9
 5Ex0go7q5j7S1aDhfy0fX15ew4kyO2Put+i+M6EnCokm1yCfRX2jB9mXJR4aBqCgYe361wbcUzM
 g8pLxaH3DauUR/p2nyGYCw+YFP3qQ+6EMGYE=
X-Received: by 2002:adf:eb47:: with SMTP id u7mr8924152wrn.14.1589787390564;
 Mon, 18 May 2020 00:36:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzz0SpVMXYaTfwKekGOfJXbmR9UFXcUMo3vR6hnkieQoqI8Z+UsfvdG56sJulcbF8oH7Hmmxg==
X-Received: by 2002:adf:eb47:: with SMTP id u7mr8924093wrn.14.1589787390194;
 Mon, 18 May 2020 00:36:30 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id f123sm15586970wmf.44.2020.05.18.00.36.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 00:36:29 -0700 (PDT)
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Peter Hutterer <peter.hutterer@who-t.net>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <20200517225510.GA205823@koala> <20200518024034.GL89269@dtor-ws>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <4eb8f557-370f-03bb-9a1d-3652d0ac8b08@redhat.com>
Date: Mon, 18 May 2020 09:36:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200518024034.GL89269@dtor-ws>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jaaKF-00GTW3-Cu
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
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA1LzE4LzIwIDQ6NDAgQU0sIERtaXRyeSBUb3Jva2hvdiB3cm90ZToKPiBIaSBIYW5z
LCBQZXRlciwKPiAKPiBPbiBNb24sIE1heSAxOCwgMjAyMCBhdCAwODo1NToxMEFNICsxMDAwLCBQ
ZXRlciBIdXR0ZXJlciB3cm90ZToKPj4gT24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMDg6MTk6MTBQ
TSArMDIwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToKPj4+IEhpIEFuZHJlemosCj4+Pgo+Pj4gT24g
NS8xNS8yMCA2OjQ5IFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+Pj4gVXNlcnNw
YWNlIG1pZ2h0IHdhbnQgdG8gaW1wbGVtZW50IGEgcG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3Jl
Z2FyZCBpbnB1dAo+Pj4+IGZyb20gY2VydGFpbiBkZXZpY2VzLCBpbmNsdWRpbmcgbm90IHRyZWF0
aW5nIHRoZW0gYXMgd2FrZXVwIHNvdXJjZXMuCj4+Pj4KPj4+PiBBbiBleGFtcGxlIHVzZSBjYXNl
IGlzIGEgbGFwdG9wLCB3aG9zZSBrZXlib2FyZCBjYW4gYmUgZm9sZGVkIHVuZGVyIHRoZQo+Pj4+
IHNjcmVlbiB0byBjcmVhdGUgdGFibGV0LWxpa2UgZXhwZXJpZW5jZS4gVGhlIHVzZXIgdGhlbiBt
dXN0IGhvbGQgdGhlIGxhcHRvcAo+Pj4+IGluIHN1Y2ggYSB3YXkgdGhhdCBpdCBpcyBkaWZmaWN1
bHQgdG8gYXZvaWQgcHJlc3NpbmcgdGhlIGtleWJvYXJkIGtleXMuIEl0Cj4+Pj4gaXMgdGhlcmVm
b3JlIGRlc2lyYWJsZSB0byB0ZW1wb3JhcmlseSBkaXNyZWdhcmQgaW5wdXQgZnJvbSB0aGUga2V5
Ym9hcmQsCj4+Pj4gdW50aWwgaXQgaXMgZm9sZGVkIGJhY2suIFRoaXMgb2J2aW91c2x5IGlzIGEg
cG9saWN5IHdoaWNoIHNob3VsZCBiZSBrZXB0Cj4+Pj4gb3V0IG9mIHRoZSBrZXJuZWwsIGJ1dCB0
aGUga2VybmVsIG11c3QgcHJvdmlkZSBzdWl0YWJsZSBtZWFucyB0byBpbXBsZW1lbnQKPj4+PiBz
dWNoIGEgcG9saWN5Lgo+Pj4KPj4+IEFjdHVhbGx5IGxpYmlucHV0IGFscmVhZHkgYmluZHMgdG9n
ZXRoZXIgKGluc2lkZSBsaWJpbnB1dCkgU1dfVEFCTEVUX01PREUKPj4+IGdlbmVyYXRpbmcgZXZk
ZXYgbm9kZXMgYW5kIGUuZy4gaW50ZXJuYWwga2V5Ym9hcmRzIG9uIGRldmljZXMgd2l0aCAzNjDD
g+KAmsOCwrAKPj4+IGhpbmdlcyBmb3IgdGhpcyByZWFzb24uIGxpYmlucHV0IHNpbXBseSBjbG9z
ZXMgdGhlIC9kZXYvaW5wdXQvZXZlbnQjCj4+PiBub2RlIHdoZW4gZm9sZGVkIGFuZCByZS1vcGVu
cyBpdCB3aGVuIHRoZSBrZXlib2FyZCBzaG91bGQgYmVjb21lIGFjdGl2ZQo+Pj4gYWdhaW4uIFRo
dXMgbm90IG9ubHkgc3VwcHJlc3NlcyBldmVudHMgYnV0IGFsbG93cyBlLmcuIHRvdWNocGFkcyB0
bwo+Pj4gZW50ZXIgcnVudGltZSBzdXNwZW5kIG1vZGUgd2hpY2ggc2F2ZXMgcG93ZXIuIFR5cGlj
YWxseSBjbG9zaW5nIHRoZQo+Pj4gL2Rldi9pbnB1dC9ldmVudCMgbm9kZSB3aWxsIGFsc28gZGlz
YWJsZSB0aGUgZGV2aWNlIGFzIHdha2V1cCBzb3VyY2UuCj4+Pgo+Pj4gU28gSSB3b25kZXIgd2hh
dCB0aGlzIHNlcmllcyBhY3R1YWxseSBhZGRzIGZvciBmdW5jdGlvbmFsaXR5IGZvcgo+Pj4gdXNl
cnNwYWNlIHdoaWNoIGNhbiBub3QgYWxyZWFkeSBiZSBhY2hpZXZlZCB0aGlzIHdheT8KPj4KPj4g
VGhhbmtzIEhhbnMuIFRvIGV4cGFuZCBvbiB0aGlzOgo+PiBsaWJpbnB1dCBoYXMgaGV1cmlzdGlj
cyB0byBndWVzcyB3aGljaCBpbnB1dCBkZXZpY2VzIChrZXlib2FyZHMsIHRvdWNocGFkcykKPj4g
YXJlIGJ1aWx0LWluIG9uZXMuIFdoZW4gdGhlIHRhYmxldCBtb2RlIHN3aXRjaCBpcyBvbiwgd2Ug
ZGlzYWJsZSB0aGVzZQo+PiBkZXZpY2VzIGludGVybmFsbHkgKHRoaXMgaXMgbm90IHZpc2libGUg
dG8gY2FsbGVycyksIGFuZCByZS1lbmFibGUgaXQgYWdhaW4KPj4gbGF0ZXIgd2hlbiB0aGUgdGFi
bGV0IG1vZGUgc3dpdGNoIGlzIG9mZiBhZ2Fpbi4KPiAKPiBJIHRoaW5rIHRoYXQgaXMgZ3JlYXQg
dGhhdCBsaWJpbnB1dCBoYXMgdHJpZWQgc29sdmluZyB0aGlzIGZvciB0aGUKPiB0YWJsZXQgbW9k
ZSwgYnV0IHVuZm9ydHVuYXRlbHkgbGliaW5wdXQgb25seSB3b3JrcyBmb3IgdXNlcnMgb2YKPiBs
aWJpbnB1dCwgbGVhdmluZyBjYXNlcyBzdWNoIGFzOgo+IAo+IDEuIEluLWtlcm5lbCBpbnB1dCBo
YW5kbGVycywgc3VjaCBhcyBTeXNScSwgVlQgYW5kIG90aGVycwo+IDIuIFN5c3RlbXMgdGhhdCBk
byBub3QgcmVseSBvbiBsaWJpbnB1dCBmb3IgdXNlcnNwYWNlIGhhbmRpbmcgKEFuZHJvaWQsCj4g
Q2hyb21lIE9TKQo+IDMuIFN5c3RlbXMgd2l0aCBwb2xpY2llcyB0aGF0IGFyZSBtb3JlIGNvbXBs
ZXggdGhhbiB0YWJsZXQgbW9kZSBvbmx5Lgo+IAo+IEJlY2F1c2Ugb2YgbGliaW5wdXQncyBpbmFi
aWxpdHkgdG8gYWZmZWN0IHRoZSBrZXJuZWwsIGFuZCB0aGUgcHJlc2VuY2UKPiBvZiAiYWx3YXlz
IG9uIiBpbnB1dCBoYW5kbGVycyAoc3lzcnEsIFZUIGtleWJvYXJkLCBwb3RlbnRpYWxseSBvdGhl
cnMpLAo+IHdoaWxlIGxpYmlucHV0IG1heSBjb250cm9sIHdoZXRoZXIgY29uc3VtZXJzIHJlY2Vp
dmUgZXZlbnRzIGZyb20gY2VydGFpbgo+IGlucHV0IGRldmljZXMsIGl0IHdpbGwgbm90IGFsbG93
IHBvd2VyIHNhdmluZ3MgdGhhdCBhbiBleHBsaWNpdAo+ICJpbmhpYml0IiBhbGxvd3Mgd2hlbiBj
b21pbmcgZnJvbSBkZWRpY2F0ZWQgcG93ZXIgcG9saWN5IG1hbmFnZXIuCgpPaywgdGhlIHN5c3Jx
IGFuZCB2dCBrZXlib2FyZCBoYW5kbGVycyBrZWVwaW5nIHRoZSBkZXZpY2Ugb3BlbiBhbmQgdGh1
cwptYWtlIGl0IGtlZXAgdXNpbmcgcG93ZXIgaXMgYSB2YWxpZCByZWFzb24gZm9yIGEgc2VwYXJh
dGUgaW5oaWJpdCBtZWNoYW5pc20uCgo+IEkgdGhpbmsgcHVzaGluZyBwb2xpY3kgZGVjaXNpb25z
IGludG8gYSBsaWJyYXJ5LCBhbmQgdHJ5aW5nIHRvIGhhdmUgYWxsCj4gY2xpZW50cyBhZ3JlZSB3
aXRoIGl0LCBpcyBtdWNoIGhhcmRlciBhbmQgbGVha3MgdW5uZWNlc3Nhcnkga25vd2xlZGdlCj4g
aW50byBxdWl0ZSBhIGZldyBsYXllcnMuIEEgZGVkaWNhdGVkIHBvd2VyIHBvbGljeSBtYW5hZ2Vy
LCB0aGF0IGlzIG5vdAo+IG9ubHkgcmVzcG9uc2libGUgZm9yIGlucHV0IGRldmljZSwgYnV0IHBv
d2VyIHN0YXRlIG9mIHRoZSBzeXN0ZW0gYXMgYQo+IHdob2xlLCBpcyBhIHZlcnkgdmlhYmxlIGFy
Y2hpdGVjdHVyZS4KCldlbGwgQUZBSUsgdGhlIGtlcm5lbC1wb2xpY3kgaGFzIGFsd2F5cyBiZWVu
IHRvIGxlYXZlIHBvbGljeSBkZWNpc2lvbnMKdXAgdG8gdXNlcnNwYWNlIGFzIG11Y2ggYXMgcG9z
c2libGUsIGJ1dCB0aGlzIGp1c3QgYWRkcyBhIG1lY2hhbmlzbSB0bwppbXBsZW1lbnQgdGhlIHBv
bGljeSBzbyB0aGF0IGlzIGZpbmUuCgo+PiBUaGlzIGlzIGRvbmUgZm9yIGtleWJvYXJkcyBhbmQg
dG91Y2hwYWRzIGF0bSAoYW5kIEkgdGhpbmsgcG9pbnRpbmcgc3RpY2tzKQo+PiBhbmQgd2hlcmUg
dGhlIGhldXJpc3RpY3MgZmFpbCB3ZSBoYXZlIGV4dHJhIHF1aXJrcyBpbiBwbGFjZS4gRm9yIGV4
YW1wbGUKPj4gdGhlIExlbm92byBZb2dhcyB0ZW5kIHRvIGRpc2FibGUgdGhlIGtleWJvYXJkIG1l
Y2hhbmljYWxseSBpbiB0YWJsZXQgbW9kZQo+PiBidXQgYnV0dG9ucyAoZS5nLiB2b2x1bWUga2V5
cykgYXJvdW5kIHRoZSBzY3JlZW4gc2VuZCBldmVudHMgdGhyb3VnaCB0aGUKPj4gc2FtZSBldmVu
dCBub2RlLiBTbyBvbiB0aG9zZSBkZXZpY2VzIHdlIGRvbid0IGRpc2FibGUgdGhlIGtleWJvYXJk
Lgo+Pgo+PiBXZSd2ZSBoYWQgdGhpcyBjb2RlIGZvciBhIGZldyB5ZWFycyBub3cgYW5kIHRoZSBv
bmx5IGNoYW5nZXMgdG8gaXQgaGF2ZSBiZWVuCj4+IHRoZSB2YXJpb3VzIGRldmljZSBxdWlya3Mg
Zm9yIGRldmljZXMgdGhhdCBtdXN0IG5vdCBzdXNwZW5kIHRoZSBrZXlib2FyZCwKPj4gaXQncyBv
dGhlcndpc2Ugd29ya2luZyBhcyBleHBlY3RlZC4KPj4KPj4gSWYgd2UgZXZlciBoYXZlIGEgZGV2
aWNlIHdoZXJlIHdlIG5lZWQgdG8gZGlzYWJsZSBwYXJ0cyBvZiB0aGUga2V5Ym9hcmQKPj4gb25s
eSwgd2UgY291bGQgYWRkcmVzcyB0aGlzIHdpdGggRVZJT0NTTUFTSyBidXQgc28gZmFyIHRoYXQg
aGFzbid0IGJlZW4KPj4gbmVjZXNzYXJ5Lgo+Pgo+PiBJIGFncmVlIHdpdGggSGFucywgcmlnaHQg
bm93IEkgZG9uJ3Qgc2VlIHRoZSB1c2VmdWxuZXNzIG9mIHRoaXMgbmV3IHN5c2ZzCj4+IHRvZ2ds
ZS4gRm9yIGl0IHRvIGJlIHJlYWxseSB1c2VmdWwgeW91J2QgaGF2ZSB0byBndWFyYW50ZWUgdGhh
dCBpdCdzCj4+IGF2YWlsYWJsZSBmb3IgMTAwJSBvZiB0aGUgZGV2aWNlcyBhbmQgdGhhdCdzIElN
TyB1bmxpa2VseSB0byBoYXBwZW4uCj4gCj4gVGhlIGluaGliaXRpbmcgb2YgdGhlIGV2ZW50cyB3
b3JrcyBmb3IgMTAwJSBvZiBpbnB1dCBkZXZpY2VzLCB0aGUgcG93ZXIKPiBzYXZpbmdzIHdvcmsg
Zm9yIHRoZSBvbmVzIHRoYXQgaW1wbGVtZW50IGl0LiBJdCBpcyByZXNwb25zaWJpbGl0eSBvZgo+
IGZvbGRzIHNoaXBwaW5nIHRoZSBzeXN0ZW1zIHRvIG1ha2Ugc3VyZSBkcml2ZXJzIHRoZXkgdXNl
IHN1cHBvcnQgaW5oaWJpdAo+IGlmIHRoZXkgYmVsaWV2ZSBpdCB3aWxsIGhlbHAgdGhlaXIgYmF0
dGVyeSBsaWZlLgo+IAo+Pgo+PiBDaGVlcnMsCj4+ICAgICBQZXRlcgo+Pgo+Pj4gSSBhbHNvIG5v
dGljZWQgdGhhdCB5b3Uga2VlcCB0aGUgZGV2aWNlIG9wZW4gKGRvIG5vdCBjYWxsIHRoZQo+Pj4g
aW5wdXRfZGV2aWNlJ3MgY2xvc2UgY2FsbGJhY2spIHdoZW4gaW5oaWJpdGVkIGFuZCBqdXN0IHRo
cm93IGF3YXkKPj4+IGFueSBldmVudHMgZ2VuZXJhdGVkLiBUaGlzIHNlZW1zIGluZWZmaWNpZW50
IGFuZCBtYXkgbGVhZCB0bwo+Pj4gdGhlIGludGVybmFsIHN0YXRlIGdldHRpbmcgb3V0IG9mIHN5
bmMuIFdoYXQgaWYgYSBrZXkgaXMgcHJlc3NlZAo+Pj4gd2hpbGUgaW5oaWJpdGVkIGFuZCB0aGVu
IHRoZSBkZXZpY2UgaXMgdW5pbmhpYml0ZWQgd2hpbGUgdGhlIGtleQo+Pj4gaXMgc3RpbGwgcHJl
c3NlZD8gIE5vdyB0aGUgcHJlc3MgZXZlbnQgaXMgbG9zdCBhbmQgdXNlcnNwYWNlCj4+PiBxdWVy
eWluZyB0aGUgY3VycmVudCBzdGF0ZSB3aWxsIHNlZSB0aGUgcHJlc3NlZCBrZXkgYXMgYmVpbmcK
Pj4+IHJlbGVhc2VkLgo+IAo+IFRoaXMgaXMgYSBnb29kIHBvaW50LiBXZSBzaG91bGQgbG9vayBp
bnRvIHNpZ25hbGxpbmcgdGhhdCBzb21lIGV2ZW50cwo+IGhhdmUgYmVlbiBkcm9wcGVkICh2aWEg
RVZfU1lOL1NZTl9EUk9QUEVEKSBzbyB0aGF0IGNsaWVudHMgYXJlIGF3YXJlIG9mCj4gaXQuCj4g
Cj4+Pgo+Pj4gT24gdG9wIG9mIHRoaXMgeW91IGFkZCBzcGVjaWFsIGluaGliaXQgYW5kIHVuaW5o
aWJpdCBjYWxsYmFja3MKPj4+IGFuZCBpbXBsZW1lbnQgdGhvc2UgZm9yIGp1c3QgYSBmZXcgZGV2
aWNlcy4gSG93IGRvIHRoZXNlIGRpZmZlcgo+Pj4gZnJvbSBqdXN0IGNsb3NpbmcgdGhlIGRldmlj
ZSBhbmQgbGF0ZXIgb3BlbmluZyBpdCBhZ2FpbiA/Cj4gCj4gSSBiZWxpZXZlIG1ham9yaXR5IHdp
bGwgc2ltcGx5IHJldXNlIG9wZW4vY2xvc2UgY2FsbGJhY2tzLiBJbiBDaHJvbWUgT1MKPiB3ZSBo
YXZlIGRlZGljYXRlZCBpbmhpYml0L3VuaW5oaWJpdCwgYnV0IEkgd291bGQgbGlrZSB0byBhbGxv
dyB1c2luZwo+IG9wZW4vY2xvc2UgYXMgYWx0ZXJuYXRpdmVzLgoKQWNrLCBtYXliZSBzb21lIGRy
aXZlciBmbGFnIHRvIGp1c3QgY2FsbCBjbG9zZSBvbiBpbmhpYml0IGFuZApvcGVuIG9uIHVuaGli
aXQgKGFsc28gdGFraW5nIGlucHV0X2RldmljZS51c2VycyBpbnRvIGFjY291bnQgb2YgY291cnNl
KSA/Cgo+Pj4gQWxzbyB1c2luZyBhIHN5c2ZzIHByb3BlcnR5IGZvciB0aGlzIGlzIHZlcnkgd2Vp
cmQgZ2l2ZW4gdGhhdCB0aGUKPj4+IHJlc3Qgb2YgdGhlIGV2ZGV2IGludGVyZmFjZSBpcyB1c2lu
ZyBpb2N0bHMgZm9yIGV2ZXJ5dGhpbmcuLi4KPiAKPiBUaGlzIGlzIG5vdCBldmRldiBpbnRlcmZh
Y2UsIGl0IGlzIGF0IHRoZSBsZXZlbCBhYm92ZSBldmRldiAoc28gdGhhdCBpdAo+IGNhbiBhZmZl
Y3QgYWxsIGhhbmRsZXJzLCBub3Qgb25seSBldmRldikuIEFzIHN1Y2ggaXQgaXMgbm90IGJvdW5k
IGJ5Cj4gZXZkZXYgaW50ZXJmYWNlLgoKT2sgSSBjYW4gc2VlIGhvdyBvbiBzb21lIHN5c3RlbXMg
dGhlIHByb2Nlc3MgaW1wbGVtZW50aW5nIHRoZSBwb2xpY3kKb2Ygd2hlbiB0byBpbmhpYml0IHdv
dWxkIGJlIHNlcGFyYXRlIGZyb20gdGhlIHByb2Nlc3Mgd2hpY2ggaGFzIHRoZQpkZXZpY2Ugb3Bl
bi4gQnV0IGluIGUuZy4gdGhlIGxpYmlucHV0IGNhc2UgaXQgd291bGQgYmUgZ29vZCBpZgpsaWJp
bnB1dCBjb3VsZCBhY3RpdmF0ZSBhbnkgcG90ZW50aWFsIHBvd2VyLXNhdmluZ3MgYnkgc2V0dGlu
Zwp0aGUgaW5oaWJpdCBmbGFnLgoKVGhlIHByb2JsZW0gd2l0aCBzeXNmcyBpbnRlcmZhY2VzIGlz
IHRoYXQgdGhleSB0eXBpY2FsbHkgcmVxdWlyZQpyb290IHJpZ2h0cyBhbmQgdGhhdCB0aGV5IGFy
ZSBub3QgcmVhbGx5IGNvbXBhdGlibGUgd2l0aCBGRApwYXNzaW5nLiBsaWJpbnB1dCBydW5zIGFz
IGEgbm9ybWFsIHVzZXIsIGdldHRpbmcgYSBmZCB0byB0aGUKL2Rldi9pbnB1dC9ldmVudCMgbm9k
ZSBwYXNzZWQgYnkgc3lzdGVtZC1sb2dpbmQuCgpBcyBzYWlkIEkgY2FuIHNlZSB0aGUgcmVhc29u
IGZvciB3YW50aW5nIGEgc3lzZnMgYXR0cmlidXRlIGZvcgp0aGlzLCBjYW4gd2UgcGVyaGFwcyBo
YXZlIGJvdGggYSBzeXNmcyBpbnRlcmZhY2UgYW5kIGFuIGlvY3RsPwoKTm90ZSBib3RoIGNvdWxk
IHNoYXJlIHRoZSBzYW1lIGJvb2xlYW4gaW4gdGhlIGtlcm5lbCwgaXQgd291bGQgYmUKdXAgdG8g
dXNlcnNwYWNlIHRvIG5vdCB0cnkgYW5kIHdyaXRlIHRvIGJvdGguIEUuZy4gY2hyb21lLW9zCndv
dWxkIHVzZSB0aGUgc3lzZnMgYXR0ciwgbGliaW5wdXQgd291bGQgdXNlIHRoZSBpb2N0bC4KClJl
Z2FyZHMsCgpIYW5zCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vaWJtLWFjcGktZGV2ZWwK
