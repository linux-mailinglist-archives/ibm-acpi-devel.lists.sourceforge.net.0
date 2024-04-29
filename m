Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E74B8B5494
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2024 11:53:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s1Ngo-0007Bz-F1;
	Mon, 29 Apr 2024 09:52:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1s1Ngn-0007Bs-Cn
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CGUEVmVRzjuW9NU/8UsVuw1yRuUAIlhMy7Y7u3fuFoM=; b=JTlz7PmddT8yDHP0HWCO6suBTb
 Mtl6HRbknZgYiF3OLl44LbrOA42GYhKthSS6QjKyYjwWCaGJ8xskvv4rg4XOKUB6IT49HSDt+Trd2
 3UcJaK0aXrVjYlIXF1XQEluC8Vi/qIdRoIQ5I4w4cZMlRddaJISJId5a2wGmuktC+T2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CGUEVmVRzjuW9NU/8UsVuw1yRuUAIlhMy7Y7u3fuFoM=; b=BOKzIxHLXvrdbX1n5EMB7wtoQv
 Sml8qaC2fmaD21wllpi7FBKHLzjJLG48T21YmHqANk2TYwPaUv7R5MyQnntgXJG5lWVwqe4qaLSVk
 hs2OAaiLW8217ZSEQOPn53Kptd9yugfxEnMaVk99zka1MfHVA64+nHcMfjvsXFjUD02c=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Ngm-0000fh-Ea for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1714384357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CGUEVmVRzjuW9NU/8UsVuw1yRuUAIlhMy7Y7u3fuFoM=;
 b=HzGf9xrS7CnZ6bacsXNzPGZN7/7buHFyII8SIVV2/Zj765oPuSH9rK58xdHweUXdF4Wg0p
 O63WVKMc/6zI6Fd3F8kgcGgNDt9HNa9BXFogpyj5ziUIMJC5g0jAPRK5dkTwuWiJ/FpRma
 LXU00exMJqdQOSdI41dUx9wNei/Z36o=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-45-XpdXcGRsOha-z2lMoBPTFQ-1; Mon, 29 Apr 2024 05:52:35 -0400
X-MC-Unique: XpdXcGRsOha-z2lMoBPTFQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5724effe1e8so3310448a12.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 29 Apr 2024 02:52:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714384354; x=1714989154;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CGUEVmVRzjuW9NU/8UsVuw1yRuUAIlhMy7Y7u3fuFoM=;
 b=n5PLamLH5B9ZG/YOgcweu9tA7s8YB1KL1JNSb3KOH8ij2Z4K/pp2HLVdhgu9JaPkgu
 rHWOLVpUpgBdsI9AROedxnPk2LVKjCCc+gusksAAktjTeZIGj8o8GylUC1LnUQWIHcA3
 G8MSYqosBpC1J4QhoUpxyMagqoQV2HSqAtibwD61YwtWvtbVtsUkhjmLklrvBM6R7je5
 PyCk7BONOTA8zdt16qaCh+wqHWfySDu6PRT3Bylc6Gb9rQoZ6oHMY6Kg8fuEz4tiDN4v
 yflhAV3894F77eJJNBHOW1d/srSxTnMwW7cu3pophWLkEytHwY80pQjPmdxYSPtn24po
 uNjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWkvySBneVxWOYpEUCCTbl7/iw/5zcnCwbXINIrMlaEl5S04dT3XAPFzoMKf5Es/sYPym2RwD6CPDlVWG9bSAt2iKBaP60iw4zRD1keq8xyKvKVVIQ=
X-Gm-Message-State: AOJu0Yy1lL2XDkxcglX1NhNogp9y7s3HzBMgwaM8rQEIBXtguHeYSQHY
 rDLy4zYmq/51iHjlpSEsubyatALCFBb/D1j6V0ScvXk60DB/UqgtjMJmX8eRaB2pgtu9qdv8agD
 hsEF3s7ZR0iDUk7ip9C0qwcCHxDFf8wmp8ZQoXRyyykYp2i6DkFq80V0572ajUVC26GUmlx5M
X-Received: by 2002:a50:8acf:0:b0:572:67de:5fd2 with SMTP id
 k15-20020a508acf000000b0057267de5fd2mr6261358edk.0.1714384354667; 
 Mon, 29 Apr 2024 02:52:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbcvMcPUkEvqGgIZBWtL988s90e+Ut+xz2VrMEpn7cGT9pDyXB4bcATZYb1TIPLASWhHcbOg==
X-Received: by 2002:a50:8acf:0:b0:572:67de:5fd2 with SMTP id
 k15-20020a508acf000000b0057267de5fd2mr6261334edk.0.1714384354271; 
 Mon, 29 Apr 2024 02:52:34 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 p36-20020a056402502400b0056e064a6d2dsm13144468eda.2.2024.04.29.02.52.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Apr 2024 02:52:33 -0700 (PDT)
Message-ID: <b00d7c9c-db55-4337-84f1-fd1d19c00859@redhat.com>
Date: Mon, 29 Apr 2024 11:52:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-17-hdegoede@redhat.com>
 <d56986cf-e400-4f8f-d2aa-0fb1bba297cf@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <d56986cf-e400-4f8f-d2aa-0fb1bba297cf@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo, Thank you for reviewing this series. On 4/25/24 11:14
    AM, Ilpo Järvinen wrote: > On Wed, 24 Apr 2024, Hans de Goede wrote: > >>
    Change the hotkey_reserved_mask initialization to hardcode the list >> of
    reserved keys. There are only a fe [...] 
 
 Content analysis details:   (-1.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s1Ngm-0000fh-Ea
Subject: Re: [ibm-acpi-devel] [PATCH v2 16/24] platform/x86: thinkpad_acpi:
 Change hotkey_reserved_mask initialization
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
Cc: Andy Shevchenko <andy@kernel.org>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Vishnu Sankar <vishnuocv@gmail.com>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 Nitin Joshi <njoshi1@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgSWxwbywKClRoYW5rIHlvdSBmb3IgcmV2aWV3aW5nIHRoaXMgc2VyaWVzLgoKT24gNC8yNS8y
NCAxMToxNCBBTSwgSWxwbyBKw6RydmluZW4gd3JvdGU6Cj4gT24gV2VkLCAyNCBBcHIgMjAyNCwg
SGFucyBkZSBHb2VkZSB3cm90ZToKPiAKPj4gQ2hhbmdlIHRoZSBob3RrZXlfcmVzZXJ2ZWRfbWFz
ayBpbml0aWFsaXphdGlvbiB0byBoYXJkY29kZSB0aGUgbGlzdAo+PiBvZiByZXNlcnZlZCBrZXlz
LiBUaGVyZSBhcmUgb25seSBhIGZldyByZXNlcnZlZCBrZXlzIGFuZCB0aGUgY29kZSB0bwo+PiBp
dGVyYXRlIG92ZXIgdGhlIGtleW1hcCB3aWxsIGJlIHJlbW92ZWQgd2hlbiBtb3ZpbmcgdG8gc3Bh
cnNlLWtleW1hcHMuCj4gCj4gSGksCj4gCj4gQ29uc2lkZXIgZXh0ZW5kaW5nIHRoaXMgZXhwbGFu
YXRpb24uIEl0J3MgaGFyZCB0byBzZWUgaG93IHRoZSBvbGQgYW5kIG5ldyAKPiBjb2RlIGFyZSBp
ZGVudGljYWwgYmVjYXVzZSB0aGVyZSBhcmUgbW9yZSBLRVlfUkVTRVJWRUQgZW50cmllcyBpbiB0
aGUgCj4gYXJyYXkgdGhhbiBpbiB0aGUgbmV3IGNvZGUuIEkgY2FuIHNlZSB0aGUgbGlzdCBvZiBr
ZXlzIGluIHRoZSBuZXcgY29kZSAKPiBtYXRjaGVzIHRvIHRob3NlIHNldCB1c2luZyB0cGFjcGlf
aG90a2V5X2RyaXZlcl9tYXNrX3NldCgpIGJ1dCBpdCdzIGhhcmQgCj4gdG8gY29ubmVjdCB0aGUg
ZG90cyBoZXJlLgoKUmlnaHQsIHRoaXMgaXMgYmFzaWNhbGx5IHRoZSBzYW1lIHF1ZXN0aW9uIGFz
IHdoaWNoIE1hcmsgYXNrZWQuIEkndmUgYWRkZWQKdGhlIGZvbGxvd2luZyB0byB0aGUgY29tbWl0
IG1lc3NhZ2Ugd2hpbGUgbWVyZ2luZyB0aGlzIHNlcmllcyB0byBjbGFyaWZ5IHRoaXM6CgoiIiIK
Tm90ZSBvbmx5IHRoZSAzMiBvcmlnaW5hbCBob3RrZXlzIGFyZSBhZmZlY3RlZCBieSBhbnkgb2Yg
dGhlIGhvdGtleV8qX21hc2sKdmFsdWVzLCBub3RlOgoKICAgICAgICBpZiAoaSA8IHNpemVvZiho
b3RrZXlfcmVzZXJ2ZWRfbWFzaykqOCkKICAgICAgICAgICAgICAgIGhvdGtleV9yZXNlcnZlZF9t
YXNrIHw9IDEgPDwgaTsKClRoZSAoaSA8IHNpemVvZihob3RrZXlfcmVzZXJ2ZWRfbWFzaykqOCkg
Y29uZGl0aW9uIHRyYW5zbGF0ZXMgdG8gKGkgPCAzMikKc28gdGhpcyBjb2RlIG9ubHkgZXZlciBz
ZXQgYml0cyBpbiBob3RrZXlfcmVzZXJ2ZWRfbWFzayBmb3IgdGhlIDMyIG9yaWdpbmFsCmhvdGtl
eXMuIFRoZXJlZm9yIHRoaXMgcGF0Y2ggZG9lcyBub3Qgc2V0IGFueSBiaXRzIGluIGhvdGtleV9y
ZXNlcnZlZF9tYXNrCmZvciB0aGUgS0VZX1JFU0VSVkVEIG1hcHBpbmdzIGZvciB0aGUgYWRhcHRp
dmUga2V5Ym9hcmQgc2NhbmNvZGVzLgoiIiIKCj4gCj4+IFRlc3RlZC1ieTogTWFyayBQZWFyc29u
IDxtcGVhcnNvbi1sZW5vdm9Ac3F1ZWJiLmNhPgo+PiBTaWduZWQtb2ZmLWJ5OiBIYW5zIGRlIEdv
ZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2
L3RoaW5rcGFkX2FjcGkuYyB8IDIxICsrKysrKysrKysrKysrKy0tLS0tLQo+PiAgMSBmaWxlIGNo
YW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3Jt
L3g4Ni90aGlua3BhZF9hY3BpLmMKPj4gaW5kZXggOTUyYmFjNjM1YTE4Li5jZjVjNzQxZDEzNDMg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+PiAr
KysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4gQEAgLTM1NDUsNiAr
MzU0NSwxOSBAQCBzdGF0aWMgaW50IF9faW5pdCBob3RrZXlfaW5pdChzdHJ1Y3QgaWJtX2luaXRf
c3RydWN0ICppaWJtKQo+PiAgCWRiZ19wcmludGsoVFBBQ1BJX0RCR19JTklUIHwgVFBBQ1BJX0RC
R19IS0VZLAo+PiAgCQkgICAidXNpbmcga2V5bWFwIG51bWJlciAlbHVcbiIsIGtleW1hcF9pZCk7
Cj4+ICAKPj4gKwkvKiBLZXlzIHdoaWNoIHNob3VsZCBiZSByZXNlcnZlZCBvbiBib3RoIElCTSBh
bmQgTGVub3ZvIG1vZGVscyAqLwo+PiArCWhvdGtleV9yZXNlcnZlZF9tYXNrID0gVFBfQUNQSV9I
S0VZX0tCRF9MSUdIVF9NQVNLIHwKPj4gKwkJCSAgICAgICBUUF9BQ1BJX0hLRVlfVk9MVVBfTUFT
SyB8Cj4+ICsJCQkgICAgICAgVFBfQUNQSV9IS0VZX1ZPTERXTl9NQVNLIHwKPj4gKwkJCSAgICAg
ICBUUF9BQ1BJX0hLRVlfTVVURV9NQVNLOwo+PiArCS8qCj4+ICsJICogUmVzZXJ2ZSBicmlnaHRu
ZXNzIHVwL2Rvd24gdW5jb25kaXRpb25hbGx5IG9uIElCTSBtb2RlbHMsIG9uIExlbm92bwo+PiAr
CSAqIG1vZGVscyB0aGVzZSBhcmUgZGlzYWJsZWQgYmFzZWQgb24gYWNwaV92aWRlb19nZXRfYmFj
a2xpZ2h0X3R5cGUoKS4KPj4gKwkgKi8KPj4gKwlpZiAoa2V5bWFwX2lkID09IFRQQUNQSV9LRVlN
QVBfSUJNX0dFTkVSSUMpCj4+ICsJCWhvdGtleV9yZXNlcnZlZF9tYXNrIHw9IFRQX0FDUElfSEtF
WV9CUkdIVFVQX01BU0sgfAo+PiArCQkJCQlUUF9BQ1BJX0hLRVlfQlJHSFREV05fTUFTSzsKPj4g
Kwo+PiAgCWhvdGtleV9rZXljb2RlX21hcCA9IGttZW1kdXAoJnRwYWNwaV9rZXltYXBzW2tleW1h
cF9pZF0sCj4+ICAJCQlUUEFDUElfSE9US0VZX01BUF9TSVpFLAlHRlBfS0VSTkVMKTsKPj4gIAlp
ZiAoIWhvdGtleV9rZXljb2RlX21hcCkgewo+PiBAQCAtMzU2MCw5ICszNTczLDYgQEAgc3RhdGlj
IGludCBfX2luaXQgaG90a2V5X2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAqaWlibSkKPj4g
IAkJaWYgKGhvdGtleV9rZXljb2RlX21hcFtpXSAhPSBLRVlfUkVTRVJWRUQpIHsKPj4gIAkJCWlu
cHV0X3NldF9jYXBhYmlsaXR5KHRwYWNwaV9pbnB1dGRldiwgRVZfS0VZLAo+PiAgCQkJCQkJaG90
a2V5X2tleWNvZGVfbWFwW2ldKTsKPj4gLQkJfSBlbHNlIHsKPj4gLQkJCWlmIChpIDwgc2l6ZW9m
KGhvdGtleV9yZXNlcnZlZF9tYXNrKSo4KQo+PiAtCQkJCWhvdGtleV9yZXNlcnZlZF9tYXNrIHw9
IDEgPDwgaTsKPj4gIAkJfQo+PiAgCX0KPj4gIAo+PiBAQCAtMzU4Nyw5ICszNTk3LDggQEAgc3Rh
dGljIGludCBfX2luaXQgaG90a2V5X2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAqaWlibSkK
Pj4gIAkJLyogRGlzYWJsZSBicmlnaHRuZXNzIHVwL2Rvd24gb24gTGVub3ZvIHRoaW5rcGFkcyB3
aGVuCj4+ICAJCSAqIEFDUEkgaXMgaGFuZGxpbmcgdGhlbSwgb3RoZXJ3aXNlIGl0IGlzIHBsYWlu
IGltcG9zc2libGUKPj4gIAkJICogZm9yIHVzZXJzcGFjZSB0byBkbyBzb21ldGhpbmcgZXZlbiBy
ZW1vdGVseSBzYW5lICovCj4+IC0JCWhvdGtleV9yZXNlcnZlZF9tYXNrIHw9Cj4+IC0JCQkoMSA8
PCBUUF9BQ1BJX0hPVEtFWVNDQU5fRk5IT01FKQo+PiAtCQkJfCAoMSA8PCBUUF9BQ1BJX0hPVEtF
WVNDQU5fRk5FTkQpOwo+PiArCQlob3RrZXlfcmVzZXJ2ZWRfbWFzayB8PSBUUF9BQ1BJX0hLRVlf
QlJHSFRVUF9NQVNLIHwKPj4gKwkJCQkJVFBfQUNQSV9IS0VZX0JSR0hURFdOX01BU0s7Cj4gCj4g
VGhpcyBpcyBhIHNpbXBsZSBkZWZpbmUgcmVwbGFjZSB0aGF0IHdvdWxkIGJlbG9uZyB0byBvd24g
cGF0Y2g/CgpUaGlzIG1ha2VzIHRoZSBjb2RlIHN0eWxlIGlkZW50aWNhbCB0byBob3cgdGhlIGJy
aWdodG5lc3Mga2V5cyBhcmUgYWRkZWQKdG8gdGhlIG1hc2sgYWJvdmUuIEkgZ3Vlc3MgdGhpcyBj
b3VsZCBoYXZlIGJlZW4gaW4gYSBzZXBhcmF0ZSBwYXRjaCwgYnV0CnNpbmNlIGl0IGlzIGxlc3Mg
d29yayBmb3IgbWUgdG8ganVzdCBsZWF2ZSBpdCBoZXJlIEknbSBnb2luZyB0byBsZWF2ZSBpdCBo
ZXJlLgoKUmVnYXJkcywKCkhhbnMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVs
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
