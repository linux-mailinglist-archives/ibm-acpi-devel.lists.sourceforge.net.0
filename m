Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 627731D58F1
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 15 May 2020 20:19:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jZevg-0005J3-9U; Fri, 15 May 2020 18:19:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jZeve-0005Iv-Rl
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 May 2020 18:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=; b=c5fKI7zgZCH5N5QKDh82pwVVQQ
 gZpT1Nwj+09A5IL3OJJFdzAsDSBYd9DsL+I/MEjqPxkbsxU545FRvBEvY0dpc30RBzZB+vzYkzm6a
 A7B/PSDrqUIXfz6HSy4FTTo/y/hSAAU5Viq5cn4XBxoegRu0n1+4lPTlx6RLBj7id86Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=; b=OdtvTgamEtoczH0awbM1PdmZUd
 vqgbRtR8uZDqYq+vNc7AA0Lg1jPE54wI9uY4nXaS22WNPFBMI+xk+7Gug6u3pGxT0Gg2UKvd/HU+q
 //27k60LjnusJwm9H8+7JHz6MEdUo5XR7ifSkT1cChGJ5+rWEr3zkrTi1gmav0MuGXsI=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jZevZ-000Fiy-Io
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 May 2020 18:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589566755;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=;
 b=FmfAuVh4QGkOpPgfhCFAuYt7jmv7Qagj1fzOAUyM01z8aAILrmmE7Ffn2dB4qTegdq1Shp
 d/5G7ZCAVreovBNZmSD9zeIoqfER5+DTXru1T58BU9nfaNx7+GQTLlGXQU0xm81jmqojTk
 ePaeUnUZj/WKqZMpPivCquDW6Q5eJEI=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-qz00aTjMMVScxLzoT0sdDQ-1; Fri, 15 May 2020 14:19:13 -0400
X-MC-Unique: qz00aTjMMVScxLzoT0sdDQ-1
Received: by mail-wm1-f71.google.com with SMTP id x11so1316359wmc.9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 15 May 2020 11:19:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=;
 b=OQ9cp+H1wPLI1BDkhFJij8jdbVTEM7qnDNp+MsA0kl2j/WthjUq9p90mS4p+9RjWYs
 3CJFIHnN2D3+EbqJyK7wo2DVkF6+R1pmKlwVWwVkG8DGprmLkm2lmU6JkX76kGPep+my
 hO7ibX98z2LcsCBi8vJlPKflJPs+igKdqgOyu8h3MA10xHQXcQbcjb+rsJJzdPiSznJz
 cUAbGrxOAA6BFaoN8fNWZVTbajIKSFSAzhvVrqhfG+lvr29+SVFEoyqXULx8CNd+5Ku9
 43t5tKDu9GGAj6CI78+64AJMnChGFylil423tNdwiHo0gCnD/dXQ+v0wxPR+EVFey0mm
 hidg==
X-Gm-Message-State: AOAM532x8V9npZRVLRl/CVtLjftVK4Hv/mJ6c5zSsqQTaw6kpbI3lM5H
 lX0VP8Gli3a22yqP6pieMCDxvfmO8cTU215XeJEbvp5XP4F7pzhE628J5icNGOpa22s0UY8VCkm
 Pp4Qm1wesmqu5KsUJDUHRFJxQFh2W0NzAxNY=
X-Received: by 2002:a1c:b406:: with SMTP id d6mr5299496wmf.89.1589566752601;
 Fri, 15 May 2020 11:19:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEhyZogIb52tbS8Sjh71yaPa5wKbVCzzV1bSu62tN2QyZWoHUXHTTKTerADtg5ez9J3v5UBw==
X-Received: by 2002:a1c:b406:: with SMTP id d6mr5299458wmf.89.1589566752273;
 Fri, 15 May 2020 11:19:12 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id a15sm4604338wrw.56.2020.05.15.11.19.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 11:19:11 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-input@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
Date: Fri, 15 May 2020 20:19:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200515164943.28480-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZevZ-000Fiy-Io
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

SGkgQW5kcmV6aiwKCk9uIDUvMTUvMjAgNjo0OSBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdy
b3RlOgo+IFVzZXJzcGFjZSBtaWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBvbGljeSB0byB0ZW1w
b3JhcmlseSBkaXNyZWdhcmQgaW5wdXQKPiBmcm9tIGNlcnRhaW4gZGV2aWNlcywgaW5jbHVkaW5n
IG5vdCB0cmVhdGluZyB0aGVtIGFzIHdha2V1cCBzb3VyY2VzLgo+IAo+IEFuIGV4YW1wbGUgdXNl
IGNhc2UgaXMgYSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNhbiBiZSBmb2xkZWQgdW5kZXIgdGhl
Cj4gc2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVu
IG11c3QgaG9sZCB0aGUgbGFwdG9wCj4gaW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZpY3Vs
dCB0byBhdm9pZCBwcmVzc2luZyB0aGUga2V5Ym9hcmQga2V5cy4gSXQKPiBpcyB0aGVyZWZvcmUg
ZGVzaXJhYmxlIHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dCBmcm9tIHRoZSBrZXlib2Fy
ZCwKPiB1bnRpbCBpdCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kg
d2hpY2ggc2hvdWxkIGJlIGtlcHQKPiBvdXQgb2YgdGhlIGtlcm5lbCwgYnV0IHRoZSBrZXJuZWwg
bXVzdCBwcm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvIGltcGxlbWVudAo+IHN1Y2ggYSBwb2xpY3ku
CgpBY3R1YWxseSBsaWJpbnB1dCBhbHJlYWR5IGJpbmRzIHRvZ2V0aGVyIChpbnNpZGUgbGliaW5w
dXQpIFNXX1RBQkxFVF9NT0RFCmdlbmVyYXRpbmcgZXZkZXYgbm9kZXMgYW5kIGUuZy4gaW50ZXJu
YWwga2V5Ym9hcmRzIG9uIGRldmljZXMgd2l0aCAzNjDCsApoaW5nZXMgZm9yIHRoaXMgcmVhc29u
LiBsaWJpbnB1dCBzaW1wbHkgY2xvc2VzIHRoZSAvZGV2L2lucHV0L2V2ZW50Iwpub2RlIHdoZW4g
Zm9sZGVkIGFuZCByZS1vcGVucyBpdCB3aGVuIHRoZSBrZXlib2FyZCBzaG91bGQgYmVjb21lIGFj
dGl2ZQphZ2Fpbi4gVGh1cyBub3Qgb25seSBzdXBwcmVzc2VzIGV2ZW50cyBidXQgYWxsb3dzIGUu
Zy4gdG91Y2hwYWRzIHRvCmVudGVyIHJ1bnRpbWUgc3VzcGVuZCBtb2RlIHdoaWNoIHNhdmVzIHBv
d2VyLiBUeXBpY2FsbHkgY2xvc2luZyB0aGUKL2Rldi9pbnB1dC9ldmVudCMgbm9kZSB3aWxsIGFs
c28gZGlzYWJsZSB0aGUgZGV2aWNlIGFzIHdha2V1cCBzb3VyY2UuCgpTbyBJIHdvbmRlciB3aGF0
IHRoaXMgc2VyaWVzIGFjdHVhbGx5IGFkZHMgZm9yIGZ1bmN0aW9uYWxpdHkgZm9yCnVzZXJzcGFj
ZSB3aGljaCBjYW4gbm90IGFscmVhZHkgYmUgYWNoaWV2ZWQgdGhpcyB3YXk/CgpJIGFsc28gbm90
aWNlZCB0aGF0IHlvdSBrZWVwIHRoZSBkZXZpY2Ugb3BlbiAoZG8gbm90IGNhbGwgdGhlCmlucHV0
X2RldmljZSdzIGNsb3NlIGNhbGxiYWNrKSB3aGVuIGluaGliaXRlZCBhbmQganVzdCB0aHJvdyBh
d2F5CmFueSBldmVudHMgZ2VuZXJhdGVkLiBUaGlzIHNlZW1zIGluZWZmaWNpZW50IGFuZCBtYXkg
bGVhZCB0bwp0aGUgaW50ZXJuYWwgc3RhdGUgZ2V0dGluZyBvdXQgb2Ygc3luYy4gV2hhdCBpZiBh
IGtleSBpcyBwcmVzc2VkCndoaWxlIGluaGliaXRlZCBhbmQgdGhlbiB0aGUgZGV2aWNlIGlzIHVu
aW5oaWJpdGVkIHdoaWxlIHRoZSBrZXkKaXMgc3RpbGwgcHJlc3NlZD8gIE5vdyB0aGUgcHJlc3Mg
ZXZlbnQgaXMgbG9zdCBhbmQgdXNlcnNwYWNlCnF1ZXJ5aW5nIHRoZSBjdXJyZW50IHN0YXRlIHdp
bGwgc2VlIHRoZSBwcmVzc2VkIGtleSBhcyBiZWluZwpyZWxlYXNlZC4KCk9uIHRvcCBvZiB0aGlz
IHlvdSBhZGQgc3BlY2lhbCBpbmhpYml0IGFuZCB1bmluaGliaXQgY2FsbGJhY2tzCmFuZCBpbXBs
ZW1lbnQgdGhvc2UgZm9yIGp1c3QgYSBmZXcgZGV2aWNlcy4gSG93IGRvIHRoZXNlIGRpZmZlcgpm
cm9tIGp1c3QgY2xvc2luZyB0aGUgZGV2aWNlIGFuZCBsYXRlciBvcGVuaW5nIGl0IGFnYWluID8K
CkFsc28gdXNpbmcgYSBzeXNmcyBwcm9wZXJ0eSBmb3IgdGhpcyBpcyB2ZXJ5IHdlaXJkIGdpdmVu
IHRoYXQgdGhlCnJlc3Qgb2YgdGhlIGV2ZGV2IGludGVyZmFjZSBpcyB1c2luZyBpb2N0bHMgZm9y
IGV2ZXJ5dGhpbmcuLi4KClNvIGFsbCBpbiBhbGwgSSBzZWUgYSBsb3Qgb2YgcXVlc3Rpb24gbWFy
a3MgaGVyZSBhbmQgSSB0aGluayB3ZQpuZWVkIHRvIGhhdmUgYSBkZXRhaWxlZCBkaXNjdXNzaW9u
IGFib3V0IHdoYXQgdXNlLWNhc2VzIHRoaXMKc2VyaWVzIHRyaWVzIHRvIGVuYWJsZSBiZWZvcmUg
bW92aW5nIGZvcndhcmQgd2l0aCB0aGlzLgoKUmVnYXJkcywKCkhhbnMKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
