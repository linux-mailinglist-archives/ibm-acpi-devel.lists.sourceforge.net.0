Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6C61F57F
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  7 Nov 2022 15:18:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1os2wn-0007Dm-Fh;
	Mon, 07 Nov 2022 14:17:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1os2wm-0007Dg-Qv
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 14:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BWCggweYkWW8c53+TDae/0Yhw7x+LMp4F8hk4PB17Rg=; b=J8dEJZPB+45WbK+JcoPFEnEZqP
 kMBj85GveSR+0RNpyRxyhYG44NHsx4+DBPkzHLU6E1KHUm7IYn8/PHH1slEIgShW5bH+zzaM3UQRs
 xyzhN3YiiPzEPtQnPrryiChpAyVKb+WPSFtVhE/yTn2LM1/FM7GiYYK+gKSumb/Pw1gE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BWCggweYkWW8c53+TDae/0Yhw7x+LMp4F8hk4PB17Rg=; b=KKekj0dMEvUYgq9FRKithqZmi6
 Y3tA/H3frIUp7GWDbKWn/Qo0Y1dC92LQZoIvVTe+IpBitE99MCByE/D/HhWtU/kjAQ+RwmH7795M9
 eJ38HQNKqNYoe1Ffx5vdbGJ4IYPcN3ZietbDRBJIwje2xbQZG3hwnCa5GDDVY6sSltco=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1os2wh-00039e-Qs for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 14:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667830665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BWCggweYkWW8c53+TDae/0Yhw7x+LMp4F8hk4PB17Rg=;
 b=Ogz3YI4GUbrmJ2J6b1UVx251Dsjq5AD6cVrLBSVK4O6HVz6C30Tzk8utkK3yrHUnU7Hkvk
 /G1PyQqfiRVbZdQ/AYsvuoYj2DZq3NuznK+I5cJA388qJUZ895bZIzCnkmJZ/8b27Rb9Hv
 6RXmiIGul5ZZnY/L8pQkKcUdz6EI4gs=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-610-273UrnCCMqWaX8H3EYg_lg-1; Mon, 07 Nov 2022 09:17:44 -0500
X-MC-Unique: 273UrnCCMqWaX8H3EYg_lg-1
Received: by mail-ed1-f69.google.com with SMTP id
 c9-20020a05640227c900b00463de74bc15so8357167ede.13
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 07 Nov 2022 06:17:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BWCggweYkWW8c53+TDae/0Yhw7x+LMp4F8hk4PB17Rg=;
 b=w7cDaWx028yP7hS/vegN1zhl23n7Wgj+RveSzjgbmxJJsDH1+hcIJu8dqrXTVkL4BS
 y0duAWNic+Z4DxxRPSZMlcMP9V17Pa2+srBr1zyZ2ULiaH/f02OBLT0upt374eyp6XWt
 JikX9tzk2+UmxGUn+074AfMJNkfaSiGG17mVz8uweFRsAvG5EyUjGzXKuyv1q93f7nwU
 osBLaQoOCX9oDGDp3kXbDZOf6Tyjb0HlRLhAVx6CpoZLjhKHTKjuAxnqbI3V4RRWpkbq
 e8F6G0pRDpYn9TiRTwRGtSBHfNocwgacvS66uDHCiSaY1lqLKrBuBGhnteFjH8Ra+zmQ
 OQDA==
X-Gm-Message-State: ACrzQf0VjQCUxNNpoy+02dhUgqXzi8dmO6rjiV3KufZfaFgLG2vCJQtK
 Y6isr1TWgRIBN3eTlRyGA1T8iWc2ZRq64makD+tu48/vKjt2eNI1xQlM8uxd0PZ6U44BRF3XOFO
 8WffAuTA5dUuV7Nd+/R0izNQfgW1sqBRpEPo=
X-Received: by 2002:a17:907:d02:b0:7a3:de36:b67 with SMTP id
 gn2-20020a1709070d0200b007a3de360b67mr47012850ejc.451.1667830663354; 
 Mon, 07 Nov 2022 06:17:43 -0800 (PST)
X-Google-Smtp-Source: AMsMyM5jBFgOUb5J1i4chIysxiMTvKXDNamUZw4Tgryli3cOOOl+UZ9fMhg1QmpJ1BzdtNKG1C1Cng==
X-Received: by 2002:a17:907:d02:b0:7a3:de36:b67 with SMTP id
 gn2-20020a1709070d0200b007a3de360b67mr47012819ejc.451.1667830663059; 
 Mon, 07 Nov 2022 06:17:43 -0800 (PST)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 e18-20020a170906249200b0073d9a0d0cbcsm3485565ejb.72.2022.11.07.06.17.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Nov 2022 06:17:42 -0800 (PST)
Message-ID: <4edce900-ea0c-3c0e-ba3c-63f478f18869@redhat.com>
Date: Mon, 7 Nov 2022 15:17:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: =?UTF-8?Q?Barnab=c3=a1s_P=c5=91cze?= <pobrn@protonmail.com>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20221021180007.55535-1-pobrn@protonmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221021180007.55535-1-pobrn@protonmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 10/21/22 20:17, Barnabás Pőcze wrote: > There is
   a function, `strstarts()`, in linux/string.h > to check if a string is prefix
    of another. So remove > the custom version from the driver. > > Sign [...]
    
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1os2wh-00039e-Qs
Subject: Re: [ibm-acpi-devel] [PATCH v1] platform/x86: thinkpad_acpi: use
 strstarts()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAxMC8yMS8yMiAyMDoxNywgQmFybmFiw6FzIFDFkWN6ZSB3cm90ZToKPiBUaGVyZSBp
cyBhIGZ1bmN0aW9uLCBgc3Ryc3RhcnRzKClgLCBpbiBsaW51eC9zdHJpbmcuaAo+IHRvIGNoZWNr
IGlmIGEgc3RyaW5nIGlzIHByZWZpeCBvZiBhbm90aGVyLiBTbyByZW1vdmUKPiB0aGUgY3VzdG9t
IHZlcnNpb24gZnJvbSB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJhcm5hYsOhcyBQ
xZFjemUgPHBvYnJuQHByb3Rvbm1haWwuY29tPgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLCBJ
J3ZlIGFwcGxpZWQgdGhpcyBwYXRjaCB0byBteSByZXZpZXctaGFucyAKYnJhbmNoOgpodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9wZHg4Ni9wbGF0Zm9ybS1k
cml2ZXJzLXg4Ni5naXQvbG9nLz9oPXJldmlldy1oYW5zCgpOb3RlIGl0IHdpbGwgc2hvdyB1cCBp
biBteSByZXZpZXctaGFucyBicmFuY2ggb25jZSBJJ3ZlIHB1c2hlZCBteQpsb2NhbCBicmFuY2gg
dGhlcmUsIHdoaWNoIG1pZ2h0IHRha2UgYSB3aGlsZS4KCk9uY2UgSSd2ZSBydW4gc29tZSB0ZXN0
cyBvbiB0aGlzIGJyYW5jaCB0aGUgcGF0Y2hlcyB0aGVyZSB3aWxsIGJlCmFkZGVkIHRvIHRoZSBw
bGF0Zm9ybS1kcml2ZXJzLXg4Ni9mb3ItbmV4dCBicmFuY2ggYW5kIGV2ZW50dWFsbHkKd2lsbCBi
ZSBpbmNsdWRlZCBpbiB0aGUgcGR4ODYgcHVsbC1yZXF1ZXN0IHRvIExpbnVzIGZvciB0aGUgbmV4
dAptZXJnZS13aW5kb3cuCgpSZWdhcmRzLAoKSGFucwoKCgo+IC0tLQo+ICBkcml2ZXJzL3BsYXRm
b3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCA1OCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJp
dmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gaW5kZXggNmE4MjNiODUwYTc3Li43
YTFkNTQwMjY5N2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRf
YWNwaS5jCj4gKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gQEAg
LTI2Myw5ICsyNjMsNiBAQCBlbnVtIHRwYWNwaV9oa2V5X2V2ZW50X3Qgewo+ICAjZGVmaW5lIFRQ
QUNQSV9EQkdfQlJHSFQJMHgwMDIwCj4gICNkZWZpbmUgVFBBQ1BJX0RCR19NSVhFUgkweDAwNDAK
PiAKPiAtI2RlZmluZSBzdHJsZW5jbXAoYSwgYikgKHN0cm5jbXAoKGEpLCAoYiksIHN0cmxlbihi
KSkpCj4gLQo+IC0KPiAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKPiAgICogRHJpdmVyLXdpZGUgc3Ry
dWN0cyBhbmQgbWlzYy4gdmFyaWFibGVzCj4gICAqLwo+IEBAIC0xMzMzLDkgKzEzMzAsOSBAQCBz
dGF0aWMgaW50IHRwYWNwaV9yZmtfcHJvY2ZzX3dyaXRlKGNvbnN0IGVudW0gdHBhY3BpX3Jma19p
ZCBpZCwgY2hhciAqYnVmKQo+ICAJCXJldHVybiAtRU5PREVWOwo+IAo+ICAJd2hpbGUgKChjbWQg
PSBzdHJzZXAoJmJ1ZiwgIiwiKSkpIHsKPiAtCQlpZiAoc3RybGVuY21wKGNtZCwgImVuYWJsZSIp
ID09IDApCj4gKwkJaWYgKHN0cnN0YXJ0cyhjbWQsICJlbmFibGUiKSkKPiAgCQkJc3RhdHVzID0g
VFBBQ1BJX1JGS19SQURJT19PTjsKPiAtCQllbHNlIGlmIChzdHJsZW5jbXAoY21kLCAiZGlzYWJs
ZSIpID09IDApCj4gKwkJZWxzZSBpZiAoc3Ryc3RhcnRzKGNtZCwgImRpc2FibGUiKSkKPiAgCQkJ
c3RhdHVzID0gVFBBQ1BJX1JGS19SQURJT19PRkY7Cj4gIAkJZWxzZQo+ICAJCQlyZXR1cm4gLUVJ
TlZBTDsKPiBAQCAtNDE5NiwxMiArNDE5MywxMiBAQCBzdGF0aWMgaW50IGhvdGtleV93cml0ZShj
aGFyICpidWYpCj4gCj4gIAlyZXMgPSAwOwo+ICAJd2hpbGUgKChjbWQgPSBzdHJzZXAoJmJ1Ziwg
IiwiKSkpIHsKPiAtCQlpZiAoc3RybGVuY21wKGNtZCwgImVuYWJsZSIpID09IDApIHsKPiArCQlp
ZiAoc3Ryc3RhcnRzKGNtZCwgImVuYWJsZSIpKSB7Cj4gIAkJCWhvdGtleV9lbmFibGVkaXNhYmxl
X3dhcm4oMSk7Cj4gLQkJfSBlbHNlIGlmIChzdHJsZW5jbXAoY21kLCAiZGlzYWJsZSIpID09IDAp
IHsKPiArCQl9IGVsc2UgaWYgKHN0cnN0YXJ0cyhjbWQsICJkaXNhYmxlIikpIHsKPiAgCQkJaG90
a2V5X2VuYWJsZWRpc2FibGVfd2FybigwKTsKPiAgCQkJcmVzID0gLUVQRVJNOwo+IC0JCX0gZWxz
ZSBpZiAoc3RybGVuY21wKGNtZCwgInJlc2V0IikgPT0gMCkgewo+ICsJCX0gZWxzZSBpZiAoc3Ry
c3RhcnRzKGNtZCwgInJlc2V0IikpIHsKPiAgCQkJbWFzayA9IChob3RrZXlfYWxsX21hc2sgfCBo
b3RrZXlfc291cmNlX21hc2spCj4gIAkJCQkmIH5ob3RrZXlfcmVzZXJ2ZWRfbWFzazsKPiAgCQl9
IGVsc2UgaWYgKHNzY2FuZihjbWQsICIweCV4IiwgJm1hc2spID09IDEpIHsKPiBAQCAtNTIyMywz
MyArNTIyMCwzMyBAQCBzdGF0aWMgaW50IHZpZGVvX3dyaXRlKGNoYXIgKmJ1ZikKPiAgCWRpc2Fi
bGUgPSAwOwo+IAo+ICAJd2hpbGUgKChjbWQgPSBzdHJzZXAoJmJ1ZiwgIiwiKSkpIHsKPiAtCQlp
ZiAoc3RybGVuY21wKGNtZCwgImxjZF9lbmFibGUiKSA9PSAwKSB7Cj4gKwkJaWYgKHN0cnN0YXJ0
cyhjbWQsICJsY2RfZW5hYmxlIikpIHsKPiAgCQkJZW5hYmxlIHw9IFRQX0FDUElfVklERU9fU19M
Q0Q7Cj4gLQkJfSBlbHNlIGlmIChzdHJsZW5jbXAoY21kLCAibGNkX2Rpc2FibGUiKSA9PSAwKSB7
Cj4gKwkJfSBlbHNlIGlmIChzdHJzdGFydHMoY21kLCAibGNkX2Rpc2FibGUiKSkgewo+ICAJCQlk
aXNhYmxlIHw9IFRQX0FDUElfVklERU9fU19MQ0Q7Cj4gLQkJfSBlbHNlIGlmIChzdHJsZW5jbXAo
Y21kLCAiY3J0X2VuYWJsZSIpID09IDApIHsKPiArCQl9IGVsc2UgaWYgKHN0cnN0YXJ0cyhjbWQs
ICJjcnRfZW5hYmxlIikpIHsKPiAgCQkJZW5hYmxlIHw9IFRQX0FDUElfVklERU9fU19DUlQ7Cj4g
LQkJfSBlbHNlIGlmIChzdHJsZW5jbXAoY21kLCAiY3J0X2Rpc2FibGUiKSA9PSAwKSB7Cj4gKwkJ
fSBlbHNlIGlmIChzdHJzdGFydHMoY21kLCAiY3J0X2Rpc2FibGUiKSkgewo+ICAJCQlkaXNhYmxl
IHw9IFRQX0FDUElfVklERU9fU19DUlQ7Cj4gIAkJfSBlbHNlIGlmICh2aWRlb19zdXBwb3J0ZWQg
PT0gVFBBQ1BJX1ZJREVPX05FVyAmJgo+IC0JCQkgICBzdHJsZW5jbXAoY21kLCAiZHZpX2VuYWJs
ZSIpID09IDApIHsKPiArCQkJICAgc3Ryc3RhcnRzKGNtZCwgImR2aV9lbmFibGUiKSkgewo+ICAJ
CQllbmFibGUgfD0gVFBfQUNQSV9WSURFT19TX0RWSTsKPiAgCQl9IGVsc2UgaWYgKHZpZGVvX3N1
cHBvcnRlZCA9PSBUUEFDUElfVklERU9fTkVXICYmCj4gLQkJCSAgIHN0cmxlbmNtcChjbWQsICJk
dmlfZGlzYWJsZSIpID09IDApIHsKPiArCQkJICAgc3Ryc3RhcnRzKGNtZCwgImR2aV9kaXNhYmxl
IikpIHsKPiAgCQkJZGlzYWJsZSB8PSBUUF9BQ1BJX1ZJREVPX1NfRFZJOwo+IC0JCX0gZWxzZSBp
ZiAoc3RybGVuY21wKGNtZCwgImF1dG9fZW5hYmxlIikgPT0gMCkgewo+ICsJCX0gZWxzZSBpZiAo
c3Ryc3RhcnRzKGNtZCwgImF1dG9fZW5hYmxlIikpIHsKPiAgCQkJcmVzID0gdmlkZW9fYXV0b3N3
X3NldCgxKTsKPiAgCQkJaWYgKHJlcykKPiAgCQkJCXJldHVybiByZXM7Cj4gLQkJfSBlbHNlIGlm
IChzdHJsZW5jbXAoY21kLCAiYXV0b19kaXNhYmxlIikgPT0gMCkgewo+ICsJCX0gZWxzZSBpZiAo
c3Ryc3RhcnRzKGNtZCwgImF1dG9fZGlzYWJsZSIpKSB7Cj4gIAkJCXJlcyA9IHZpZGVvX2F1dG9z
d19zZXQoMCk7Cj4gIAkJCWlmIChyZXMpCj4gIAkJCQlyZXR1cm4gcmVzOwo+IC0JCX0gZWxzZSBp
ZiAoc3RybGVuY21wKGNtZCwgInZpZGVvX3N3aXRjaCIpID09IDApIHsKPiArCQl9IGVsc2UgaWYg
KHN0cnN0YXJ0cyhjbWQsICJ2aWRlb19zd2l0Y2giKSkgewo+ICAJCQlyZXMgPSB2aWRlb19vdXRw
dXRzd19jeWNsZSgpOwo+ICAJCQlpZiAocmVzKQo+ICAJCQkJcmV0dXJuIHJlczsKPiAtCQl9IGVs
c2UgaWYgKHN0cmxlbmNtcChjbWQsICJleHBhbmRfdG9nZ2xlIikgPT0gMCkgewo+ICsJCX0gZWxz
ZSBpZiAoc3Ryc3RhcnRzKGNtZCwgImV4cGFuZF90b2dnbGUiKSkgewo+ICAJCQlyZXMgPSB2aWRl
b19leHBhbmRfdG9nZ2xlKCk7Cj4gIAkJCWlmIChyZXMpCj4gIAkJCQlyZXR1cm4gcmVzOwo+IEBA
IC01NjQyLDkgKzU2MzksOSBAQCBzdGF0aWMgaW50IGxpZ2h0X3dyaXRlKGNoYXIgKmJ1ZikKPiAg
CQlyZXR1cm4gLUVOT0RFVjsKPiAKPiAgCXdoaWxlICgoY21kID0gc3Ryc2VwKCZidWYsICIsIikp
KSB7Cj4gLQkJaWYgKHN0cmxlbmNtcChjbWQsICJvbiIpID09IDApIHsKPiArCQlpZiAoc3Ryc3Rh
cnRzKGNtZCwgIm9uIikpIHsKPiAgCQkJbmV3c3RhdHVzID0gMTsKPiAtCQl9IGVsc2UgaWYgKHN0
cmxlbmNtcChjbWQsICJvZmYiKSA9PSAwKSB7Cj4gKwkJfSBlbHNlIGlmIChzdHJzdGFydHMoY21k
LCAib2ZmIikpIHsKPiAgCQkJbmV3c3RhdHVzID0gMDsKPiAgCQl9IGVsc2UKPiAgCQkJcmV0dXJu
IC1FSU5WQUw7Cj4gQEAgLTcxMTUsMTAgKzcxMTIsMTAgQEAgc3RhdGljIGludCBicmlnaHRuZXNz
X3dyaXRlKGNoYXIgKmJ1ZikKPiAgCQlyZXR1cm4gbGV2ZWw7Cj4gCj4gIAl3aGlsZSAoKGNtZCA9
IHN0cnNlcCgmYnVmLCAiLCIpKSkgewo+IC0JCWlmIChzdHJsZW5jbXAoY21kLCAidXAiKSA9PSAw
KSB7Cj4gKwkJaWYgKHN0cnN0YXJ0cyhjbWQsICJ1cCIpKSB7Cj4gIAkJCWlmIChsZXZlbCA8IGJy
aWdodF9tYXhsdmwpCj4gIAkJCQlsZXZlbCsrOwo+IC0JCX0gZWxzZSBpZiAoc3RybGVuY21wKGNt
ZCwgImRvd24iKSA9PSAwKSB7Cj4gKwkJfSBlbHNlIGlmIChzdHJzdGFydHMoY21kLCAiZG93biIp
KSB7Cj4gIAkJCWlmIChsZXZlbCA+IDApCj4gIAkJCQlsZXZlbC0tOwo+ICAJCX0gZWxzZSBpZiAo
c3NjYW5mKGNtZCwgImxldmVsICVkIiwgJmxldmVsKSA9PSAxICYmCj4gQEAgLTc4NjcsMTMgKzc4
NjQsMTMgQEAgc3RhdGljIGludCB2b2x1bWVfd3JpdGUoY2hhciAqYnVmKQo+IAo+ICAJd2hpbGUg
KChjbWQgPSBzdHJzZXAoJmJ1ZiwgIiwiKSkpIHsKPiAgCQlpZiAoIXRwX2ZlYXR1cmVzLm1peGVy
X25vX2xldmVsX2NvbnRyb2wpIHsKPiAtCQkJaWYgKHN0cmxlbmNtcChjbWQsICJ1cCIpID09IDAp
IHsKPiArCQkJaWYgKHN0cnN0YXJ0cyhjbWQsICJ1cCIpKSB7Cj4gIAkJCQlpZiAobmV3X211dGUp
Cj4gIAkJCQkJbmV3X211dGUgPSAwOwo+ICAJCQkJZWxzZSBpZiAobmV3X2xldmVsIDwgVFBfRUNf
Vk9MVU1FX01BWCkKPiAgCQkJCQluZXdfbGV2ZWwrKzsKPiAgCQkJCWNvbnRpbnVlOwo+IC0JCQl9
IGVsc2UgaWYgKHN0cmxlbmNtcChjbWQsICJkb3duIikgPT0gMCkgewo+ICsJCQl9IGVsc2UgaWYg
KHN0cnN0YXJ0cyhjbWQsICJkb3duIikpIHsKPiAgCQkJCWlmIChuZXdfbXV0ZSkKPiAgCQkJCQlu
ZXdfbXV0ZSA9IDA7Cj4gIAkJCQllbHNlIGlmIChuZXdfbGV2ZWwgPiAwKQo+IEBAIC03ODg1LDkg
Kzc4ODIsOSBAQCBzdGF0aWMgaW50IHZvbHVtZV93cml0ZShjaGFyICpidWYpCj4gIAkJCQljb250
aW51ZTsKPiAgCQkJfQo+ICAJCX0KPiAtCQlpZiAoc3RybGVuY21wKGNtZCwgIm11dGUiKSA9PSAw
KQo+ICsJCWlmIChzdHJzdGFydHMoY21kLCAibXV0ZSIpKQo+ICAJCQluZXdfbXV0ZSA9IFRQX0VD
X0FVRElPX01VVEVTV19NU0s7Cj4gLQkJZWxzZSBpZiAoc3RybGVuY21wKGNtZCwgInVubXV0ZSIp
ID09IDApCj4gKwkJZWxzZSBpZiAoc3Ryc3RhcnRzKGNtZCwgInVubXV0ZSIpKQo+ICAJCQluZXdf
bXV0ZSA9IDA7Cj4gIAkJZWxzZQo+ICAJCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtOTExMCwxMCAr
OTEwNyw5IEBAIHN0YXRpYyBpbnQgZmFuX3dyaXRlX2NtZF9sZXZlbChjb25zdCBjaGFyICpjbWQs
IGludCAqcmMpCj4gIHsKPiAgCWludCBsZXZlbDsKPiAKPiAtCWlmIChzdHJsZW5jbXAoY21kLCAi
bGV2ZWwgYXV0byIpID09IDApCj4gKwlpZiAoc3Ryc3RhcnRzKGNtZCwgImxldmVsIGF1dG8iKSkK
PiAgCQlsZXZlbCA9IFRQX0VDX0ZBTl9BVVRPOwo+IC0JZWxzZSBpZiAoKHN0cmxlbmNtcChjbWQs
ICJsZXZlbCBkaXNlbmdhZ2VkIikgPT0gMCkgfHwKPiAtCQkJKHN0cmxlbmNtcChjbWQsICJsZXZl
bCBmdWxsLXNwZWVkIikgPT0gMCkpCj4gKwllbHNlIGlmIChzdHJzdGFydHMoY21kLCAibGV2ZWwg
ZGlzZW5nYWdlZCIpIHx8IHN0cnN0YXJ0cyhjbWQsICJsZXZlbCBmdWxsLXNwZWVkIikpCj4gIAkJ
bGV2ZWwgPSBUUF9FQ19GQU5fRlVMTFNQRUVEOwo+ICAJZWxzZSBpZiAoc3NjYW5mKGNtZCwgImxl
dmVsICVkIiwgJmxldmVsKSAhPSAxKQo+ICAJCXJldHVybiAwOwo+IEBAIC05MTMxLDcgKzkxMjcs
NyBAQCBzdGF0aWMgaW50IGZhbl93cml0ZV9jbWRfbGV2ZWwoY29uc3QgY2hhciAqY21kLCBpbnQg
KnJjKQo+IAo+ICBzdGF0aWMgaW50IGZhbl93cml0ZV9jbWRfZW5hYmxlKGNvbnN0IGNoYXIgKmNt
ZCwgaW50ICpyYykKPiAgewo+IC0JaWYgKHN0cmxlbmNtcChjbWQsICJlbmFibGUiKSAhPSAwKQo+
ICsJaWYgKCFzdHJzdGFydHMoY21kLCAiZW5hYmxlIikpCj4gIAkJcmV0dXJuIDA7Cj4gCj4gIAkq
cmMgPSBmYW5fc2V0X2VuYWJsZSgpOwo+IEBAIC05MTQ2LDcgKzkxNDIsNyBAQCBzdGF0aWMgaW50
IGZhbl93cml0ZV9jbWRfZW5hYmxlKGNvbnN0IGNoYXIgKmNtZCwgaW50ICpyYykKPiAKPiAgc3Rh
dGljIGludCBmYW5fd3JpdGVfY21kX2Rpc2FibGUoY29uc3QgY2hhciAqY21kLCBpbnQgKnJjKQo+
ICB7Cj4gLQlpZiAoc3RybGVuY21wKGNtZCwgImRpc2FibGUiKSAhPSAwKQo+ICsJaWYgKCFzdHJz
dGFydHMoY21kLCAiZGlzYWJsZSIpKQo+ICAJCXJldHVybiAwOwo+IAo+ICAJKnJjID0gZmFuX3Nl
dF9kaXNhYmxlKCk7Cj4gLS0KPiAyLjM4LjEKPiAKPiAKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0Cmli
bS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
