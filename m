Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F37A8AE904
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Apr 2024 16:04:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzGkR-0004oT-M1;
	Tue, 23 Apr 2024 14:03:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzGkQ-0004oL-Ga
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 14:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CJfqScfLrfRZTXn1SDm3UAg9giThwOB5CrpLVy4Xp34=; b=fJ8nEe5cxt35zTiH0VcSlFDXHy
 FeEPauLBcASaP2HPANItAu8t9ApKHAenXio3vTD2HvwoaNSLPEhEgq/puuPUZ+cP8k8kQsOuaqWwS
 zjtmJcEgCBm8XVaR7pqUlQdC88F2QpdcosAB1m58M9WUuCLcf8l7RRAliIbPrZW567rs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CJfqScfLrfRZTXn1SDm3UAg9giThwOB5CrpLVy4Xp34=; b=Zkt5REmFmlVY92UpKcBFMzhHCK
 tDxUJTNhhU9++rt8UJq8fgzPfNQOCZ3tspYuL3GLRQ8sVgZfug7r74zIurM4qJ1YzS+IVks9MRYVp
 5YL6UnqCzhvsrH3RQJjV0Gx5tRfYikyNJi8vviv5VBB2Nd6b1aHcEx11fh8brtZI/9oU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzGkM-0008On-75 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 14:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713881020;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CJfqScfLrfRZTXn1SDm3UAg9giThwOB5CrpLVy4Xp34=;
 b=bC6qviffQdAh9s4iQkLBTVkzpDihbRbCg6tPTkzEXk+e2ISpyO1jiLGKRI9FYWcPIhFAaK
 GUHQmveNxxsX0Mj5kjMqHp0GpgPBtwDPDcXleHQ+eTgqw9fcJsKDEx9FeVR28C49PV/VED
 aSYHyGKXrt5nVVJG4kDTudU/6gCkPw4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-373-yNGwcyIzPSK_ItNuLRnZJg-1; Tue, 23 Apr 2024 10:03:36 -0400
X-MC-Unique: yNGwcyIzPSK_ItNuLRnZJg-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a46852c2239so387479266b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Apr 2024 07:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713881014; x=1714485814;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CJfqScfLrfRZTXn1SDm3UAg9giThwOB5CrpLVy4Xp34=;
 b=biRv9oCg8aswu1ze+jqopIQAiNKrUEAyQLilHADr6Vv7CAgO5kYGVO5LfFvz+jFUp5
 O+vzFW7h0UHClC3kr5djpha500+MuWKYDwmyLRteZJKRrBZAgX9kmnO2T01irdk/k79Z
 6RH4UyTTjrtofQkzNbk2m1Wh7hWtp5KGDj42Z0oVJPQUVWXlAKH07ICwqaKDMldCWabo
 HLPpM/e0I8rjgZWDjcF4WznNK/GIlmg5P/xQZWYCuWpuNB6B+N9w9BdmjYPz3pTe+CWG
 j8OdVgnEV6RAgemN+u6VfkV5GDpGB9GJ9xqCXXEC9LmxL/HMbwxB8cHGi5JfEV6Ty5ok
 4BUA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV9yj6Eb5ZvF39TQ0Pq2W6MOuex4aBJ58us7fHtCmnIBm/PMz5HJ6nOJNEmFeBUhN2v/j2s3KreykPTUGNuJxKgGuUqFYetz5Z9fotZ4GgYyi/jOIY=
X-Gm-Message-State: AOJu0Yw26n6DHEk5X8NebjNOnnQvSJfvLluQoRxzXTk2zZbg/luIahhO
 rxQ8mun09FFGdJssNSCUqmzZYfZe2yrw6l/bavogIkMY03IwvZFI82YeY+NJ0VWfojdjX6Ls6NC
 myoj0UEIIeuDFcHZhENNCe6U3tHxiU1No0emy12QTPEmTzbPqVAPXI7kYhpemlZU6IYmgKGaf
X-Received: by 2002:a17:906:66da:b0:a55:61cc:7337 with SMTP id
 k26-20020a17090666da00b00a5561cc7337mr8483046ejp.43.1713881014015; 
 Tue, 23 Apr 2024 07:03:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEKH/TF9Qchv+bYQML5vZGD9ViGeZb0oc4IEiioK2FmlKnPNfKX34v0HlhGbslqgklY4skMA==
X-Received: by 2002:a17:906:66da:b0:a55:61cc:7337 with SMTP id
 k26-20020a17090666da00b00a5561cc7337mr8483002ejp.43.1713881012949; 
 Tue, 23 Apr 2024 07:03:32 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 p10-20020a17090653ca00b00a5587038aefsm5704875ejo.156.2024.04.23.07.03.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Apr 2024 07:03:30 -0700 (PDT)
Message-ID: <c81eff46-6210-4d2a-bf6d-8dc8d396d170@redhat.com>
Date: Tue, 23 Apr 2024 16:03:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-9-hdegoede@redhat.com>
 <a591120c-72c6-7b6c-92ba-c65c36a8d70f@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <a591120c-72c6-7b6c-92ba-c65c36a8d70f@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 4/22/24 10:29 AM, Ilpo Järvinen wrote: > On Sun, 21
    Apr 2024, Hans de Goede wrote: > >> Factor out the adaptive kbd non hotkey
    event handling into >> adaptive_keyboard_change_row() and adaptive_ke [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzGkM-0008On-75
Subject: Re: [ibm-acpi-devel] [PATCH 08/24] platform/x86: thinkpad_acpi:
 Move adaptive kbd event handling to tpacpi_driver_event()
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

SGksCgpPbiA0LzIyLzI0IDEwOjI5IEFNLCBJbHBvIErDpHJ2aW5lbiB3cm90ZToKPiBPbiBTdW4s
IDIxIEFwciAyMDI0LCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+IAo+PiBGYWN0b3Igb3V0IHRoZSBh
ZGFwdGl2ZSBrYmQgbm9uIGhvdGtleSBldmVudCBoYW5kbGluZyBpbnRvCj4+IGFkYXB0aXZlX2tl
eWJvYXJkX2NoYW5nZV9yb3coKSBhbmQgYWRhcHRpdmVfa2V5Ym9hcmRfc19xdWlja3ZpZXdfcm93
KCkKPj4gaGVscGVycyBhbmQgbW92ZSB0aGUgaGFuZGxpbmcgb2YgVFBfSEtFWV9FVl9ERlJfQ0hB
TkdFX1JPVyBhbmQKPj4gVFBfSEtFWV9FVl9ERlJfU19RVUlDS1ZJRVdfUk9XIHRvIHRwYWNwaV9k
cml2ZXJfZXZlbnQoKS4KPj4KPj4gVGhpcyBncm91cHMgYWxsIHRoZSBoYW5kbGluZyBvZiBob3Rr
ZXkgZXZlbnRzIHdoaWNoIGRvIG5vdCBlbWl0Cj4+IGEga2V5IHByZXNzIGV2ZW50IHRvZ2V0aGVy
IGluIHRwYWNwaV9kcml2ZXJfZXZlbnQoKS4KPj4KPj4gVGhpcyBpcyBhIHByZXBhcmF0aW9uIHBh
dGNoIGZvciBtb3ZpbmcgdG8gc3BhcnNlLWtleW1hcHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEhh
bnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9wbGF0
Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgODUgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LQo+PiAgMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIv
ZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+IGluZGV4IDBiYmM0NjJkNjA0
Yy4uZThkMzBmNGFmMTI2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMKPj4gKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5j
Cj4+IEBAIC0zNjc3LDUxICszNjc3LDUwIEBAIHN0YXRpYyBpbnQgYWRhcHRpdmVfa2V5Ym9hcmRf
Z2V0X25leHRfbW9kZShpbnQgbW9kZSkKPj4gIAlyZXR1cm4gYWRhcHRpdmVfa2V5Ym9hcmRfbW9k
ZXNbaV07Cj4+ICB9Cj4+ICAKPj4gK3N0YXRpYyB2b2lkIGFkYXB0aXZlX2tleWJvYXJkX2NoYW5n
ZV9yb3codm9pZCkKPj4gK3sKPj4gKwlpbnQgbW9kZTsKPj4gKwo+PiArCWlmIChhZGFwdGl2ZV9r
ZXlib2FyZF9tb2RlX2lzX3NhdmVkKSB7Cj4+ICsJCW1vZGUgPSBhZGFwdGl2ZV9rZXlib2FyZF9w
cmV2X21vZGU7Cj4+ICsJCWFkYXB0aXZlX2tleWJvYXJkX21vZGVfaXNfc2F2ZWQgPSBmYWxzZTsK
Pj4gKwl9IGVsc2Ugewo+PiArCQltb2RlID0gYWRhcHRpdmVfa2V5Ym9hcmRfZ2V0X21vZGUoKTsK
Pj4gKwkJaWYgKG1vZGUgPCAwKQo+PiArCQkJcmV0dXJuOwo+PiArCQltb2RlID0gYWRhcHRpdmVf
a2V5Ym9hcmRfZ2V0X25leHRfbW9kZShtb2RlKTsKPj4gKwl9Cj4+ICsKPj4gKwlhZGFwdGl2ZV9r
ZXlib2FyZF9zZXRfbW9kZShtb2RlKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgYWRhcHRp
dmVfa2V5Ym9hcmRfc19xdWlja3ZpZXdfcm93KHZvaWQpCj4+ICt7Cj4+ICsJaW50IG1vZGUgPSBh
ZGFwdGl2ZV9rZXlib2FyZF9nZXRfbW9kZSgpOwo+PiArCj4+ICsJaWYgKG1vZGUgPCAwKQo+IAo+
IFBsZWFzZSB0cnkgdG8ga2VlcCBjYWxsIGFuZCBpdCdzIGVycm9yIGhhbmRsaW5nIHRvZ2V0aGVy
LCBpdCBjb3N0cyBvbmUgCj4gbGluZSBidXQgdGFrZXMgbGVzcyBlZmZvcnQgdG8gdW5kZXJzdGFu
ZDoKPiAKPiAJaW50IG1vZGU7Cj4gCj4gCW1vZGUgPSBhZGFwdGl2ZV9rZXlib2FyZF9nZXRfbW9k
ZSgpOwo+IAlpZiAobW9kZSA8IDApCgpBY2ssIEkndmUgY2hhbmdlZCB0aGlzIGZvciB2MiBmb2xs
b3dpbmcgeW91ciBzdWdnZXN0aW9uLgoKUmVnYXJkcywKCkhhbnMKCgoKCj4gCj4+ICsJCXJldHVy
bjsKPj4gKwo+PiArCWFkYXB0aXZlX2tleWJvYXJkX3ByZXZfbW9kZSA9IG1vZGU7Cj4+ICsJYWRh
cHRpdmVfa2V5Ym9hcmRfbW9kZV9pc19zYXZlZCA9IHRydWU7Cj4+ICsKPj4gKwlhZGFwdGl2ZV9r
ZXlib2FyZF9zZXRfbW9kZShGVU5DVElPTl9NT0RFKTsKPj4gK30KPiAKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
