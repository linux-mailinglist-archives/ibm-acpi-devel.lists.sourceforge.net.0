Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F8461F3AC
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  7 Nov 2022 13:49:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1os1YN-0005Nj-V3;
	Mon, 07 Nov 2022 12:48:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1os1YL-0005Nd-Pf
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 12:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qyNpTQ3bNlZrzUgnH5zTxhZYS/OypFRShTgaHqtgAPc=; b=aCVyzGP4J/mizLLSjB/0UMnrm5
 1a7PK4ePIMw4k7Pz4IIs4Q4KF3md6HTHIwsGbrCaMvJJWaOdydiLYKH6DQa4BTQbA7EgWYFA8wBXQ
 N5SsYQDWJ6o8D/eaurUCAcR+Tqtg/LJPK2p1bUJJOx/XrCtr341T+SJgx56wVLJrbUaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qyNpTQ3bNlZrzUgnH5zTxhZYS/OypFRShTgaHqtgAPc=; b=LkbZlgPe1+bIGIgvqyq9ARb141
 NhcicV0KXo1a1oEe84vyK7A078IG3sAs1MZaH4igU3K3kHHqOGRElzXUE7ON4j9bMjqEeWZ0Utatj
 UJjZB7BI8NKAjimwtCji2O5FBN0EEl1RIonDVWjMd1XB4gH6ejpV688IVsgECIA8jUPE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1os1YH-00F33J-7X for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 12:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667825306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qyNpTQ3bNlZrzUgnH5zTxhZYS/OypFRShTgaHqtgAPc=;
 b=FEhdEFnxXKjxFCDVOFaGdPQr/ryM/IXM34zMK84dA0QAexyX9G5egYXhP6Ma3zx4/KJlrZ
 hK2+anSTJ5eiOUkvmz9NPI55QquIvku9DL5/+GMeQNpKI7Forki7DjUfXpj4mhLedji/1q
 q/JGAIUwtxWIBTiNn1PR/XqicYXe68Q=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-277-htXE104mNgqwIXl2CH7VtA-1; Mon, 07 Nov 2022 07:48:25 -0500
X-MC-Unique: htXE104mNgqwIXl2CH7VtA-1
Received: by mail-ed1-f71.google.com with SMTP id
 y20-20020a056402271400b004630f3a32c3so8238469edd.15
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 07 Nov 2022 04:48:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qyNpTQ3bNlZrzUgnH5zTxhZYS/OypFRShTgaHqtgAPc=;
 b=YfhJI0PjKFbx8pqmOQj/wxA7QfTiO82PeeaqZl5y/oPpvpKtQcNo7GBozb+WRctzjQ
 C5fHt42z7FSrvYaHuxuzIuPnMmwksoZyHH8QfupodD9CsuSFTTPwq1Mdo4dusLFEBMr8
 1N2iktz35XisLCOy41zJAVLxdb3/CzcbZWk2iwYbxoxXJ6ZHFggpJTRgRss2oAuJgDuG
 12MCPvsqx+WVGB1uu2WDxUX1D2hIsgYRAICpuEWHm77sTkOgY5iwP/o0SmHJENvBjyu4
 o6fS4y4mv07PuO7qKLfeVO/QiKFsGXw9bIE1zeUN+YfNczLjdBeM4IA9MbLYMpb4Ms1x
 hXXw==
X-Gm-Message-State: ACrzQf1l7hhhLBb1mTsfo6ZJ5bcKkQvc25FEQXYriJJ0UcMjIf4ibk2C
 YCgCUGgbGGa8Qd0wQH6nOjOjHFVaW8QhB8WNzfznJHKebbVImoow8kjXLQYNYFGZo5a8lEonOaY
 jJ9Ue9tnHi5c2UxHIPieMhJfDw/A6jyeZvmA=
X-Received: by 2002:a50:e616:0:b0:461:fc07:b630 with SMTP id
 y22-20020a50e616000000b00461fc07b630mr50132179edm.219.1667825304094; 
 Mon, 07 Nov 2022 04:48:24 -0800 (PST)
X-Google-Smtp-Source: AMsMyM6QWLox4LV6N7P5SMAHcQNIJdEfww5QxUfM4i3qzTQTLJtYDme+b+TLApyKEjVRi5p2mmZ5kA==
X-Received: by 2002:a50:e616:0:b0:461:fc07:b630 with SMTP id
 y22-20020a50e616000000b00461fc07b630mr50132161edm.219.1667825303868; 
 Mon, 07 Nov 2022 04:48:23 -0800 (PST)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 ue5-20020a170907c68500b007a559542fcfsm3398631ejc.70.2022.11.07.04.48.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Nov 2022 04:48:23 -0800 (PST)
Message-ID: <d2872c2a-46eb-528b-5e2f-d8b75c745b1b@redhat.com>
Date: Mon, 7 Nov 2022 13:48:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: =?UTF-8?Q?Micha=c5=82_Szczepaniak?= <m.szczepaniak.000@gmail.com>,
 ibm-acpi-devel@lists.sourceforge.net
References: <55400326-e64f-5444-94e5-22b8214d00b6@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <55400326-e64f-5444-94e5-22b8214d00b6@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Michał, On 10/8/22 20:49, Michał Szczepaniak wrote: >
    Thinklight has only two values, on/off so it's reasonable for max_brightness
    to be 0 and 1 as if you write anything between 0 and 255 it will be 255 anyw
    [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1os1YH-00F33J-7X
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a
 max_brightness of thinklight
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
Cc: hmh@hmh.eng.br, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTWljaGHFgiwKCk9uIDEwLzgvMjIgMjA6NDksIE1pY2hhxYIgU3pjemVwYW5pYWsgd3JvdGU6
Cj4gVGhpbmtsaWdodCBoYXMgb25seSB0d28gdmFsdWVzLCBvbi9vZmYgc28gaXQncyByZWFzb25h
YmxlIGZvciBtYXhfYnJpZ2h0bmVzcyB0byBiZSAwIGFuZCAxIGFzIGlmIHlvdSB3cml0ZSBhbnl0
aGluZyBiZXR3ZWVuIDAgYW5kIDI1NSBpdCB3aWxsIGJlIDI1NSBhbnl3YXkgc28gdGhlcmUncyBu
byBwb2ludCBmb3IgaXQgdG8gYmUgMjU1Lgo+IAo+IEFsc28gc29ycnkgZm9yIHJlcGVhdGVkIG1l
c3NhZ2VzLCBJIGdvdCBubyByZXBseSBzbyBJJ20gdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgd2hhdCBJ
IGRpZCB3cm9uZy4KCllvdXIgcGF0Y2ggaXMgbWlzc2luZyBhIFNpZ25lZC1vZmYtYnkgbGluZSBp
biB0aGUgY29tbWl0LW1lc3NhZ2UuIEkgY2FuIG9ubHkKYWNjZXB0IHBhdGNoZXMgd2l0aCBhIFNp
Z25lZC1vZmYtYnkgbGluZSBpbiB0aGUgY29tbWl0LW1lc3NhZ2UgbGlrZSB0aGlzOgoKU2lnbmVk
LW9mZi1ieTogWW91ciBSZWFsIE5hbWUgPGVtYWlsQHlvdXIuZG9tYWluPgoKU2VlOgoKaHR0cHM6
Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNo
ZXMuaHRtbCNzaWduLXlvdXItd29yay10aGUtZGV2ZWxvcGVyLXMtY2VydGlmaWNhdGUtb2Ytb3Jp
Z2luCgpBbHNvIHlvdXIgcGF0Y2ggaXMgbWFsZm9ybWVkIChpdCBoYXMgYmVlbiByZWZsb3dlZCBi
eSB5b3VyIGVtYWlsIGNsaWVudCkKYW5kIGl0IGRvZXMgbm90IGFwcGx5IHByb3Blcmx5LgoKU2lu
Y2UgdGhpcyBpcyBvbmx5IGEgdHJpdmlhbCBzaW5nbGUgbGluZSBjaGFuZ2UgSSd2ZSBqdXN0IG1h
bnVhbGx5IHJlY3JlYXRlZAp0aGUgcGF0Y2ggbXlzZWxmLCB3aXRoIG1lIGFzIGF1dGhvciB0byBh
dm9pZCB0aGUgUy1vLWIgcHJvYmxlbS4KCkkgaGF2ZSBnaXZlbiB5b3UgY3JlZGl0IGJ5IGFkZGlu
ZzoKClJlcG9ydGVkLWJ5OiBNaWNoYcWCIFN6Y3plcGFuaWFrIDxtLnN6Y3plcGFuaWFrLjAwMEBn
bWFpbC5jb20+Cgp0byB0aGUgY29tbWl0IG1lc3NhZ2Ugb2YgdGhlIHBhdGNoLgoKUmVnYXJkcywK
CkhhbnMKCgoKPiAKPiAKPiAtLS0KPiDCoGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2Fj
cGkuYyB8IDEgKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxh
dGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+IGluZGV4IDIyZDRlODYzM2UzMGU5Li43NzVjMmYz
MjdkYzNhOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMKPiArKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiBAQCAtNTU2
Miw2ICs1NTYyLDcgQEAgc3RhdGljIGVudW0gbGVkX2JyaWdodG5lc3MgbGlnaHRfc3lzZnNfZ2V0
KHN0cnVjdCBsZWRfY2xhc3NkZXYgKmxlZF9jZGV2KQo+IMKgc3RhdGljIHN0cnVjdCB0cGFjcGlf
bGVkX2NsYXNzZGV2IHRwYWNwaV9sZWRfdGhpbmtsaWdodCA9IHsKPiDCoMKgwqDCoCAubGVkX2Ns
YXNzZGV2ID0gewo+IMKgwqDCoMKgIMKgwqDCoCAubmFtZcKgwqDCoCDCoMKgwqAgPSAidHBhY3Bp
Ojp0aGlua2xpZ2h0IiwKPiArwqDCoMKgIMKgwqDCoCAubWF4X2JyaWdodG5lc3PCoMKgwqAgPSAx
LAo+IMKgwqDCoMKgIMKgwqDCoCAuYnJpZ2h0bmVzc19zZXRfYmxvY2tpbmcgPSAmbGlnaHRfc3lz
ZnNfc2V0LAo+IMKgwqDCoMKgIMKgwqDCoCAuYnJpZ2h0bmVzc19nZXTCoMKgwqAgPSAmbGlnaHRf
c3lzZnNfZ2V0LAo+IMKgwqDCoMKgIH0KPiAKPiAKPiAKPiAKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0
CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
