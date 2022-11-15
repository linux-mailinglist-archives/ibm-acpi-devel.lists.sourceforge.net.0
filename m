Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3E76297A7
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 15 Nov 2022 12:41:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ouuIG-0004dV-Ul;
	Tue, 15 Nov 2022 11:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ouuIC-0004d6-Up
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 15 Nov 2022 11:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=clJblXD10wtzgzD9dPDP2bGq4INWjHFqJItPDD4Hsv0=; b=ctYLJF3fVeljMrUvoTay4RJP0+
 exZ2eBrINoAci1IHr3deQ08kIOezfZlm59OjFCBPP6AeyYGHVjmuj2pMXmXHhxhjEpsxBqirpDOZ4
 YnmQVQCpwXAximk/OdGX2eGAwR6izXID8U9rXMq6KN1gqksvYOrOUh11uk2nFzeNCNXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=clJblXD10wtzgzD9dPDP2bGq4INWjHFqJItPDD4Hsv0=; b=bI0OKkclEpcvAGBi1QJL+RZsmn
 u2d9T+N9111uuOPm4hSUwvkKOI77UE71XS2cZy2fcvyPnZHxIO8Vzq5RaR87xXUkCoU27gjFPyaEG
 v4LYQUy9GtHaf91At4cKzn1o66m4yGHF5zTqBCkJh3B8Vi2tI0rxXiC70cjtPtW6QSY8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouuI8-0007pR-MP for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 15 Nov 2022 11:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668512381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=clJblXD10wtzgzD9dPDP2bGq4INWjHFqJItPDD4Hsv0=;
 b=VYNGhDidoNd4bgjG/+oXC3nLW4vXakJHMvBDd/S+B2JbwN/Ac0uihAneZ21ZdaNxobbqIs
 sPCMtbTnvYeIu4RttfBd/ko2sNmAD58MmRTooenLcqVHTCSc30eWAHPyVKAEHaE00jWaTx
 seFdc1nlSWrPn6zswircVg5Von6vT9g=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-458-mqdfUOPBNV6OzKDwNBSlvw-1; Tue, 15 Nov 2022 06:39:38 -0500
X-MC-Unique: mqdfUOPBNV6OzKDwNBSlvw-1
Received: by mail-ed1-f70.google.com with SMTP id
 w17-20020a056402269100b00461e28a75ccso9805966edd.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 15 Nov 2022 03:39:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=clJblXD10wtzgzD9dPDP2bGq4INWjHFqJItPDD4Hsv0=;
 b=O83J0D8//snUss/05Vjxj700ljMOP0fnzRjRBmWKyQEqG5CErUCEZhOOXSy5gncFIb
 1Mxrh6ZNrfPhTLDOondMElLAhvMGTLEnAjnFm+XEhKguqWpKP3jmjlyRYrYuhEN8QKbj
 NXefv/hplRVFOn6OHVXbL0ynVu1opLNznXPssDZKHeCcphWQA+LbU5t1vlnWB3xG6yL5
 YDsZHGso5dkxKpYv9FQ/JCO+7sTrRWQGhtPnMBGfdnvXy88a9/+EhnQyCrZr0uXqk14v
 VnImgWC5T9bAKe9hwr/UxvZTSab3J7IGg6kPvmw4TQLfkEpNydozwge+w1YQWS965GQl
 ortw==
X-Gm-Message-State: ANoB5pkLkfN6y8oLaxi01tCBhU7WEA8knkW43TZSHakOMDoOWQZ61KGl
 JYYBMpoSNcyOL0PiDFrcto6QwOh1jaASnEZPvt4ZFDY05S0mqR1zfVz/lccOavHQqujRoa33CDy
 BRR7F+MRh7+ROtFedhllr4a3HIOszpS8HOGA=
X-Received: by 2002:a17:906:95d1:b0:7ad:b9f3:a66a with SMTP id
 n17-20020a17090695d100b007adb9f3a66amr13975580ejy.282.1668512376687; 
 Tue, 15 Nov 2022 03:39:36 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6X0v0rVFVgQR/Ee2b2v/q8p2rGqG/St+w6cQIpP6qRC1fhgioIAclUhTJm1L5FHSpDJEhUog==
X-Received: by 2002:a17:906:95d1:b0:7ad:b9f3:a66a with SMTP id
 n17-20020a17090695d100b007adb9f3a66amr13975572ejy.282.1668512376516; 
 Tue, 15 Nov 2022 03:39:36 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 ay26-20020a056402203a00b00461816beef9sm6000717edb.14.2022.11.15.03.39.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Nov 2022 03:39:35 -0800 (PST)
Message-ID: <edd01f60-63fc-3556-4790-1684d4d059cc@redhat.com>
Date: Tue, 15 Nov 2022 12:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 =?UTF-8?Q?Lennard_G=c3=a4her?= <gaeher@mpi-sws.org>
References: <20221108072023.17069-1-gaeher@mpi-sws.org>
 <abbd370f-4240-db15-5add-b848a5108c21@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <abbd370f-4240-db15-5add-b848a5108c21@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 11/8/22 13:47, Limonciello, Mario wrote: > On 11/8/2022
    01:20, Lennard Gäher wrote: >> Previously, the s2idle quirk was only active
    for the 21A0 machine type >> of the P14s Gen2a product. This als [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
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
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ouuI8-0007pR-MP
Subject: Re: [ibm-acpi-devel] [PATCH] x86/thinkpad_acpi: Enable s2idle quirk
 for 21A1 machine type
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
Cc: ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAxMS84LzIyIDEzOjQ3LCBMaW1vbmNpZWxsbywgTWFyaW8gd3JvdGU6Cj4gT24gMTEv
OC8yMDIyIDAxOjIwLCBMZW5uYXJkIEfDpGhlciB3cm90ZToKPj4gUHJldmlvdXNseSwgdGhlIHMy
aWRsZSBxdWlyayB3YXMgb25seSBhY3RpdmUgZm9yIHRoZSAyMUEwIG1hY2hpbmUgdHlwZQo+PiBv
ZiB0aGUgUDE0cyBHZW4yYSBwcm9kdWN0LiBUaGlzIGFsc28gZW5hYmxlcyBpdCBmb3IgdGhlIHNl
Y29uZCAyMUExIHR5cGUsCj4+IHRodXMgcmVkdWNpbmcgd2FrZS11cCB0aW1lcyBmcm9tIHMyaWRs
ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGVubmFyZCBHw6RoZXIgPGdhZWhlckBtcGktc3dzLm9y
Zz4KPj4gU3VnZ2VzdGVkLWJ5OiBNYXJpbyBMaW1vbmNpZWxsbyA8bWFyaW8ubGltb25jaWVsbG9A
YW1kLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogTWFyaW8gTGltb25jaWVsbG8gPG1hcmlvLmxpbW9u
Y2llbGxvQGFtZC5jb20+Cj4gTGluazogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9hbWQvLS9pc3N1ZXMvMjE4MQoKVGhhbmsgeW91LCBJJ3ZlIGFwcGxpZWQgdGhlIHBhdGNoIHdp
dGggYm90aCB0YWdzIGFkZGVkOgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLCBJJ3ZlIGFwcGxp
ZWQgdGhpcyBwYXRjaCB0byBteSBmaXhlcwpicmFuY2g6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3BkeDg2L3BsYXRmb3JtLWRyaXZlcnMteDg2LmdpdC9s
b2cvP2g9Zml4ZXMKCk5vdGUgaXQgd2lsbCBzaG93IHVwIGluIG15IGZpeGVzIGJyYW5jaCBvbmNl
IEkndmUgcHVzaGVkIG15CmxvY2FsIGJyYW5jaCB0aGVyZSwgd2hpY2ggbWlnaHQgdGFrZSBhIHdo
aWxlLgoKSSB3aWxsIGluY2x1ZGUgdGhpcyBwYXRjaCBpbiBteSBuZXh0IGZpeGVzIHB1bGwtcmVx
IHRvIExpbnVzCmZvciB0aGUgY3VycmVudCBrZXJuZWwgZGV2ZWxvcG1lbnQgY3ljbGUuCgpSZWdh
cmRzLAoKSGFucwoKCgo+IAo+PiAtLS0KPj4gwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtw
YWRfYWNwaS5jIHwgOCArKysrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4gaW5kZXggMjBlNWMw
NDNhOGU4Li44NDc2ZGZlZjRlNjIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2
L3RoaW5rcGFkX2FjcGkuYwo+PiArKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMKPj4gQEAgLTQ0OTcsNiArNDQ5NywxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtaV9z
eXN0ZW1faWQgZndidWdfbGlzdFtdIF9faW5pdGNvbnN0ID0gewo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBETUlfTUFUQ0goRE1JX1BST0RVQ1RfTkFNRSwgIjIxQTAiKSwKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9LAo+PiArwqDCoMKgIHsKPj4gK8KgwqDCoMKg
wqDCoMKgIC5pZGVudCA9ICJQMTRzIEdlbjIgQU1EIiwKPj4gK8KgwqDCoMKgwqDCoMKgIC5kcml2
ZXJfZGF0YSA9ICZxdWlya19zMmlkbGVfYnVnLAo+PiArwqDCoMKgwqDCoMKgwqAgLm1hdGNoZXMg
PSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERNSV9NQVRDSChETUlfQk9BUkRfVkVORE9S
LCAiTEVOT1ZPIiksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERNSV9NQVRDSChETUlfUFJP
RFVDVF9OQU1FLCAiMjFBMSIpLAo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIH0sCj4+
IMKgwqDCoMKgwqAge30KPj4gwqAgfTsKPj4gwqAgCj4gCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdApp
Ym0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
