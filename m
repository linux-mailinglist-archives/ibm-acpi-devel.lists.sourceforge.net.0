Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D18360552
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 15 Apr 2021 11:11:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lWy1b-0001r4-9B; Thu, 15 Apr 2021 09:10:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hdegoede@redhat.com>) id 1lWy1Y-0001qs-El
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 15 Apr 2021 09:10:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GSwuZsGNywb7nFboWHr9wsySL+erig9+bW1yurVKQrI=; b=lKYRBnPV9eg91bcvAyWPoFp6hf
 qzOPWnj6oMxuunQyyW3ZgTl3WRXkObSu3DWsVk7k3loeMNhh3Jy3Ccjh1Oh2a+1S3O09h/DC1tmVH
 Y9DkdNRh6QO8uag+/HRcUa4GBKN4K2rjnfbdvxgbOvkpF8C0yonp0IFCDsWK5b8/fIV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GSwuZsGNywb7nFboWHr9wsySL+erig9+bW1yurVKQrI=; b=JbOcVk/SzBv0nDzIl2nmgu1Tyl
 9LL66lHGTHMTgjGV1m1b6mYMlSfsbGSlqX2UMADEb5uKuHAaCzEM7iJ3sMBfwdNFgZah3eyR0A8bC
 2u7p6+Ouyyqi8PK2I5R86F6joouws+YN4UYrIpi8J0+K9zW7X27t8SPiMnKzdWFpI6SQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lWy1O-00050G-EU
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 15 Apr 2021 09:10:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618477840;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GSwuZsGNywb7nFboWHr9wsySL+erig9+bW1yurVKQrI=;
 b=aYeyrMjWBaNJUXZZ2LmK4xqOq2kHh37Pf731o5AsA106R78Fp4+Ts8o3HATVUw3VIVo0/O
 DaoHM6Qv7dwMRd7h04jAVHrpC0p8Xm1wbLZAf5PYTXii7olDyHFNPVWf52jR2rrGY3/05G
 mrcMpbmryMBLnHK6SgdKxJyHcTUTKlk=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-8NhziovWPwa6BfHbsCVbsQ-1; Thu, 15 Apr 2021 05:10:39 -0400
X-MC-Unique: 8NhziovWPwa6BfHbsCVbsQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 k20-20020aa7d2d40000b0290382b9d237d6so4839827edr.17
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 15 Apr 2021 02:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GSwuZsGNywb7nFboWHr9wsySL+erig9+bW1yurVKQrI=;
 b=D466p3Xl2DQKdJXGqHZDb+PSfCTZfWlXEFW0r6Xi01oer7dlabAnjzaEkQgZ3MvXQ6
 1oRD5CUkMJsk+afeLVFt/MEJdC+drusTQWvdIAI3m9FOpNfeTJiS9hp74AB7hZOZz3Uv
 4L4wBZMg9XgaaOV+hKRuLH5/HzK5rk6YedsU+6jKAGBegOE/pfhs4FBtaxZPzEhGDEaS
 TeM6bFGxigEE80Ky1AbwZ/6shC2xKU5buzw1XGn0xOEkjXc+vWRdbVg6fkJ3OwC8j6R4
 fgXQN6vjTifl4UvjPhNGOboEI2h9qnvPKXyLjOqUnVzPb4OzU98ItT/Fo/0v6lOMVK4y
 GxuA==
X-Gm-Message-State: AOAM531Pt15qJs80zERjR63ELe14OrnfCJEWST2zfFfur4VhvmBus+p8
 3psvRo37MNDc/kQutxVHCpizZv1Dqy4jRmO4G6Fdyzm3BheEaLJf+irQ6jKFG35scDtAez0w+8g
 ShnBLFCNZrkHtrukGjOBuW+gHfx+c0VZSfDg=
X-Received: by 2002:aa7:c913:: with SMTP id b19mr2958441edt.170.1618477837805; 
 Thu, 15 Apr 2021 02:10:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzaAKdXv7mpOH/dBvCfUPqdsMnG2GFk6p5unm6d+fGqGHpeV7D2JNz7vjXBvR/oqFpNqpKzxw==
X-Received: by 2002:aa7:c913:: with SMTP id b19mr2958420edt.170.1618477837624; 
 Thu, 15 Apr 2021 02:10:37 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id q16sm1874205edv.61.2021.04.15.02.10.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Apr 2021 02:10:37 -0700 (PDT)
To: Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>
References: <20210413072112.183550-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <4b2690f8-c54a-d4be-60cc-336a10cd9bda@redhat.com>
Date: Thu, 15 Apr 2021 11:10:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210413072112.183550-1-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lWy1O-00050G-EU
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 labels to the first 2 temperature sensors
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
Cc: Mark Pearson <markpearson@lenovo.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA0LzEzLzIxIDk6MjEgQU0sIEhhbnMgZGUgR29lZGUgd3JvdGU6Cj4gT24gRUMgdmVy
c2lvbiAzLCB0aGUgZmlyc3QgMiB0ZW1wZXJhdHVyZSBzZW5zb3JzIGFyZSBhbHdheXMgQ1BVIGFu
ZCBHUFUKPiBhZGQgbGFiZWxzIGZvciB0aGVzZS4KPiAKPiBUaGlzIGNoYW5nZXMgZS5nLiB0aGUg
InNlbnNvcnMiIGNvbW1hbmQgb3V0cHV0IG9uIGEgWDFDOCBmcm9tOgo+IAo+IHRoaW5rcGFkLWlz
YS0wMDAwCj4gQWRhcHRlcjogSVNBIGFkYXB0ZXIKPiBmYW4xOiAgICAgICAgMjY5NCBSUE0KPiB0
ZW1wMTogICAgICAgICs0Mi4wwrBDCj4gdGVtcDI6ICAgICAgICAgICAgTi9BCj4gdGVtcDM6ICAg
ICAgICArMzMuMMKwQwo+IHRlbXA0OiAgICAgICAgICswLjDCsEMKPiB0ZW1wNTogICAgICAgICsz
NS4wwrBDCj4gdGVtcDY6ICAgICAgICArNDIuMMKwQwo+IHRlbXA3OiAgICAgICAgKzQyLjDCsEMK
PiB0ZW1wODogICAgICAgICAgICBOL0EKPiAKPiBpbnRvOgo+IAo+IHRoaW5rcGFkLWlzYS0wMDAw
Cj4gQWRhcHRlcjogSVNBIGFkYXB0ZXIKPiBmYW4xOiAgICAgICAgMjY5NCBSUE0KPiBDUFU6ICAg
ICAgICAgICs0Mi4wwrBDCj4gR1BVOiAgICAgICAgICAgICAgTi9BCj4gdGVtcDM6ICAgICAgICAr
MzMuMMKwQwo+IHRlbXA0OiAgICAgICAgICswLjDCsEMKPiB0ZW1wNTogICAgICAgICszNS4wwrBD
Cj4gdGVtcDY6ICAgICAgICArNDIuMMKwQwo+IHRlbXA3OiAgICAgICAgKzQyLjDCsEMKPiB0ZW1w
ODogICAgICAgICAgICBOL0EKPiAKPiBTaWduZWQtb2ZmLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVn
b2VkZUByZWRoYXQuY29tPgoKU2luY2UgdGhlcmUgaGF2ZSBiZWVuIG5vIHJlbWFya3MgKG90aGVy
IHRoZW4gQW5keSdzIEFCSSBxdWVzdGlvbikgb24gdGhpcyBhbmQgYSBuZXctbWVyZ2Ugd2luZG93
IGlzIGFwcHJvYWNoaW5nIEkndmUgbWVyZ2VkIHRoaXMgaW50byBmb3ItbmV4dCBub3cuCgpSZWdh
cmRzLAoKSGFucwoKCj4gLS0tCj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGku
YyB8IDcyICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ3
IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMKPiBpbmRleCBlYzk4MDg5ZDk4YzkuLmRkNjBjOTM5N2QzNSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiArKysgYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiBAQCAtNjI5Niw2ICs2Mjk2LDggQEAgc3Ry
dWN0IGlibV90aGVybWFsX3NlbnNvcnNfc3RydWN0IHsKPiAgfTsKPiAgCj4gIHN0YXRpYyBlbnVt
IHRoZXJtYWxfYWNjZXNzX21vZGUgdGhlcm1hbF9yZWFkX21vZGU7Cj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgYXR0cmlidXRlX2dyb3VwICp0aGVybWFsX2F0dHJfZ3JvdXA7Cj4gK3N0YXRpYyBib29s
IHRoZXJtYWxfdXNlX2xhYmVsczsKPiAgCj4gIC8qIGlkeCBpcyB6ZXJvLWJhc2VkICovCj4gIHN0
YXRpYyBpbnQgdGhlcm1hbF9nZXRfc2Vuc29yKGludCBpZHgsIHMzMiAqdmFsdWUpCj4gQEAgLTY0
NzgsNiArNjQ4MCwyOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCB0aGVy
bWFsX3RlbXBfaW5wdXQ4X2dyb3VwID0gewo+ICAjdW5kZWYgVEhFUk1BTF9TRU5TT1JfQVRUUl9U
RU1QCj4gICN1bmRlZiBUSEVSTUFMX0FUVFJTCj4gIAo+ICtzdGF0aWMgc3NpemVfdCB0ZW1wMV9s
YWJlbF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0
dHIsIGNoYXIgKmJ1ZikKPiArewo+ICsJcmV0dXJuIHN5c2ZzX2VtaXQoYnVmLCAiQ1BVXG4iKTsK
PiArfQo+ICtzdGF0aWMgREVWSUNFX0FUVFJfUk8odGVtcDFfbGFiZWwpOwo+ICsKPiArc3RhdGlj
IHNzaXplX3QgdGVtcDJfbGFiZWxfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZp
Y2VfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCj4gK3sKPiArCXJldHVybiBzeXNmc19lbWl0
KGJ1ZiwgIkdQVVxuIik7Cj4gK30KPiArc3RhdGljIERFVklDRV9BVFRSX1JPKHRlbXAyX2xhYmVs
KTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICp0ZW1wX2xhYmVsX2F0dHJpYnV0ZXNb
XSA9IHsKPiArCSZkZXZfYXR0cl90ZW1wMV9sYWJlbC5hdHRyLAo+ICsJJmRldl9hdHRyX3RlbXAy
X2xhYmVsLmF0dHIsCj4gKwlOVUxMCj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGF0
dHJpYnV0ZV9ncm91cCB0ZW1wX2xhYmVsX2F0dHJfZ3JvdXAgPSB7Cj4gKwkuYXR0cnMgPSB0ZW1w
X2xhYmVsX2F0dHJpYnV0ZXMsCj4gK307Cj4gKwo+ICAvKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gKi8KPiAgCj4g
IHN0YXRpYyBpbnQgX19pbml0IHRoZXJtYWxfaW5pdChzdHJ1Y3QgaWJtX2luaXRfc3RydWN0ICpp
aWJtKQo+IEBAIC02NTMzLDEyICs2NTU3LDE0IEBAIHN0YXRpYyBpbnQgX19pbml0IHRoZXJtYWxf
aW5pdChzdHJ1Y3QgaWJtX2luaXRfc3RydWN0ICppaWJtKQo+ICAJCQkJdGhlcm1hbF9yZWFkX21v
ZGUgPSBUUEFDUElfVEhFUk1BTF9OT05FOwo+ICAJCQl9Cj4gIAkJfSBlbHNlIHsKPiAtCQkJaWYg
KHZlciA+PSAzKQo+ICsJCQlpZiAodmVyID49IDMpIHsKPiAgCQkJCXRoZXJtYWxfcmVhZF9tb2Rl
ID0gVFBBQ1BJX1RIRVJNQUxfVFBFQ184Owo+IC0JCQllbHNlCj4gKwkJCQl0aGVybWFsX3VzZV9s
YWJlbHMgPSB0cnVlOwo+ICsJCQl9IGVsc2Ugewo+ICAJCQkJdGhlcm1hbF9yZWFkX21vZGUgPQo+
ICAJCQkJCSh0YTIgIT0gMCkgPwo+ICAJCQkJCVRQQUNQSV9USEVSTUFMX1RQRUNfMTYgOiBUUEFD
UElfVEhFUk1BTF9UUEVDXzg7Cj4gKwkJCX0KPiAgCQl9Cj4gIAl9IGVsc2UgaWYgKGFjcGlfdG1w
Nykgewo+ICAJCWlmICh0cGFjcGlfaXNfaWJtKCkgJiYKPiBAQCAtNjU2MCw0NCArNjU4Niw0MCBA
QCBzdGF0aWMgaW50IF9faW5pdCB0aGVybWFsX2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAq
aWlibSkKPiAgCj4gIAlzd2l0Y2ggKHRoZXJtYWxfcmVhZF9tb2RlKSB7Cj4gIAljYXNlIFRQQUNQ
SV9USEVSTUFMX1RQRUNfMTY6Cj4gLQkJcmVzID0gc3lzZnNfY3JlYXRlX2dyb3VwKCZ0cGFjcGlf
aHdtb24tPmtvYmosCj4gLQkJCQkmdGhlcm1hbF90ZW1wX2lucHV0MTZfZ3JvdXApOwo+IC0JCWlm
IChyZXMpCj4gLQkJCXJldHVybiByZXM7Cj4gKwkJdGhlcm1hbF9hdHRyX2dyb3VwID0gJnRoZXJt
YWxfdGVtcF9pbnB1dDE2X2dyb3VwOwo+ICAJCWJyZWFrOwo+ICAJY2FzZSBUUEFDUElfVEhFUk1B
TF9UUEVDXzg6Cj4gIAljYXNlIFRQQUNQSV9USEVSTUFMX0FDUElfVE1QMDc6Cj4gIAljYXNlIFRQ
QUNQSV9USEVSTUFMX0FDUElfVVBEVDoKPiAtCQlyZXMgPSBzeXNmc19jcmVhdGVfZ3JvdXAoJnRw
YWNwaV9od21vbi0+a29iaiwKPiAtCQkJCSZ0aGVybWFsX3RlbXBfaW5wdXQ4X2dyb3VwKTsKPiAt
CQlpZiAocmVzKQo+IC0JCQlyZXR1cm4gcmVzOwo+ICsJCXRoZXJtYWxfYXR0cl9ncm91cCA9ICZ0
aGVybWFsX3RlbXBfaW5wdXQ4X2dyb3VwOwo+ICAJCWJyZWFrOwo+ICAJY2FzZSBUUEFDUElfVEhF
Uk1BTF9OT05FOgo+ICAJZGVmYXVsdDoKPiAgCQlyZXR1cm4gMTsKPiAgCX0KPiAgCj4gKwlyZXMg
PSBzeXNmc19jcmVhdGVfZ3JvdXAoJnRwYWNwaV9od21vbi0+a29iaiwgdGhlcm1hbF9hdHRyX2dy
b3VwKTsKPiArCWlmIChyZXMpCj4gKwkJcmV0dXJuIHJlczsKPiArCj4gKwlpZiAodGhlcm1hbF91
c2VfbGFiZWxzKSB7Cj4gKwkJcmVzID0gc3lzZnNfY3JlYXRlX2dyb3VwKCZ0cGFjcGlfaHdtb24t
PmtvYmosICZ0ZW1wX2xhYmVsX2F0dHJfZ3JvdXApOwo+ICsJCWlmIChyZXMpIHsKPiArCQkJc3lz
ZnNfcmVtb3ZlX2dyb3VwKCZ0cGFjcGlfaHdtb24tPmtvYmosIHRoZXJtYWxfYXR0cl9ncm91cCk7
Cj4gKwkJCXJldHVybiByZXM7Cj4gKwkJfQo+ICsJfQo+ICsKPiAgCXJldHVybiAwOwo+ICB9Cj4g
IAo+ICBzdGF0aWMgdm9pZCB0aGVybWFsX2V4aXQodm9pZCkKPiAgewo+IC0Jc3dpdGNoICh0aGVy
bWFsX3JlYWRfbW9kZSkgewo+IC0JY2FzZSBUUEFDUElfVEhFUk1BTF9UUEVDXzE2Ogo+IC0JCXN5
c2ZzX3JlbW92ZV9ncm91cCgmdHBhY3BpX2h3bW9uLT5rb2JqLAo+IC0JCQkJICAgJnRoZXJtYWxf
dGVtcF9pbnB1dDE2X2dyb3VwKTsKPiAtCQlicmVhazsKPiAtCWNhc2UgVFBBQ1BJX1RIRVJNQUxf
VFBFQ184Ogo+IC0JY2FzZSBUUEFDUElfVEhFUk1BTF9BQ1BJX1RNUDA3Ogo+IC0JY2FzZSBUUEFD
UElfVEhFUk1BTF9BQ1BJX1VQRFQ6Cj4gLQkJc3lzZnNfcmVtb3ZlX2dyb3VwKCZ0cGFjcGlfaHdt
b24tPmtvYmosCj4gLQkJCQkgICAmdGhlcm1hbF90ZW1wX2lucHV0OF9ncm91cCk7Cj4gLQkJYnJl
YWs7Cj4gLQljYXNlIFRQQUNQSV9USEVSTUFMX05PTkU6Cj4gLQlkZWZhdWx0Ogo+IC0JCWJyZWFr
Owo+IC0JfQo+ICsJaWYgKHRoZXJtYWxfYXR0cl9ncm91cCkKPiArCQlzeXNmc19yZW1vdmVfZ3Jv
dXAoJnRwYWNwaV9od21vbi0+a29iaiwgdGhlcm1hbF9hdHRyX2dyb3VwKTsKPiArCj4gKwlpZiAo
dGhlcm1hbF91c2VfbGFiZWxzKQo+ICsJCXN5c2ZzX3JlbW92ZV9ncm91cCgmdHBhY3BpX2h3bW9u
LT5rb2JqLCAmdGVtcF9sYWJlbF9hdHRyX2dyb3VwKTsKPiAgfQo+ICAKPiAgc3RhdGljIGludCB0
aGVybWFsX3JlYWQoc3RydWN0IHNlcV9maWxlICptKQo+IAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QK
aWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
