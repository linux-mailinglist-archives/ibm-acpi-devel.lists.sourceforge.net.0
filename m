Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C84A83A809
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Jan 2024 12:37:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rSbYT-00024W-Hs;
	Wed, 24 Jan 2024 11:36:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rSbYS-00024Q-5t
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Jan 2024 11:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lDSRakiKAT2B6ofx7EvlBV9eTcBblML4nZlCUITHSSM=; b=mQR5t34siG0y2oig/MkTlslPfg
 ocQFTIz2LBop/BxgrYJ4MJ3C/ZBpLAqCh49GVlAUeS2rJKHvx6hImqBiufcLSgjIVLFjWXb8XkBla
 HMsVbD1FI/fRY3YF5Rrz+L7vyxLtPR4kUWz8aktklkXwy/TLExgYQn/bByYhHImnjLtc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lDSRakiKAT2B6ofx7EvlBV9eTcBblML4nZlCUITHSSM=; b=SRhy/JN9rDNUXKWbzKw7OExzlR
 7wCVmVNbyPKQd1Fv7A2SYj4al5IRho3RdptMVnvDLJ8XM/CbgHL3GkKIyEsbHx97JcnT6C7YO1UBW
 8wrKDV7VixHExOVhnDDIHAB4mPSzr9spX2mJkIxiDujDBywFVdfBvtOAoTn8E9FUDel4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rSbYQ-0006Tt-6m for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Jan 2024 11:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1706096175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lDSRakiKAT2B6ofx7EvlBV9eTcBblML4nZlCUITHSSM=;
 b=Jd+AmFV+zEkE6a14JY3vjO7vn7gjLu2D/2Q7D8Hgwg9zrPUimARchuwmWsxFhufmLO5X1O
 5QiaQQTmP02u2PoszmFU55SwJnDD7u9dqC9d2yCJPzMictIJZHuKEKght1EGEnWtCEur74
 rkHPCIVsacRFQDP4C9Fym85rUoBMZWo=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-215-HPVwpEa5Mi2am7TGU-p4pQ-1; Wed, 24 Jan 2024 06:36:14 -0500
X-MC-Unique: HPVwpEa5Mi2am7TGU-p4pQ-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a2b6c2a6083so261523966b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 24 Jan 2024 03:36:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706096173; x=1706700973;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lDSRakiKAT2B6ofx7EvlBV9eTcBblML4nZlCUITHSSM=;
 b=Rykg6/b94A/k1QtvTsaHsXkUFJSvO2uH5vUVpkF238guwadSzcPy8mZoRvgLXduaB+
 uTqfQumhF1YzKKZpFo8nNHeM3jKSWdZJ4PHmKoSCUWchx/UWzNDXk5elEZYW5nvNfZP0
 JIEugyWXJ57c0Xdr01AKTjqNPkvViizv0beVD5Vpx6VPTjmgYA0kf3QbWv1A/8PseXBW
 L06U+P/LBzbXXLdEayN9Ax7mY+G04ADt/qUx1PNvvHsirOpxDc/y49iuZ35mR9KIP8+/
 8jknaePjvrjtRwKDmKYf1unRBCYbT9/cJdI0/Vvj89GCZyix4QagLCX7T4EnIZPI+TgG
 BiLA==
X-Gm-Message-State: AOJu0YyLHKSDkRNOVV+N4WHiCSn0FrNF40Gzx8R/N6h61GqEt6CCrP+G
 d2XtRmyl4d556Qpzs1ErImV91tqMT4wnA2rBwAd3x4lNrmftAQI7sfTAvE/xhHiRHd4LXjTJBVq
 qkR9ujvTQtM7haGZ56Yij8VLErWoJ9FpgLlKmgHC4UQGuNnXEt8mhLakp0tMp88KRmav2TVn9cP
 oMWzEu
X-Received: by 2002:aa7:d153:0:b0:559:ccc4:157e with SMTP id
 r19-20020aa7d153000000b00559ccc4157emr1898786edo.30.1706096172841; 
 Wed, 24 Jan 2024 03:36:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbkFhaqGgp4JIgULoQZvHb32PfGeuysNhs3QSQci33vcD3ZgfhotbQsVxpLHBxR5pDXxUVMA==
X-Received: by 2002:aa7:d153:0:b0:559:ccc4:157e with SMTP id
 r19-20020aa7d153000000b00559ccc4157emr1898779edo.30.1706096172463; 
 Wed, 24 Jan 2024 03:36:12 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a5-20020a50ff05000000b0055bff4843casm4588208edu.49.2024.01.24.03.36.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Jan 2024 03:36:12 -0800 (PST)
Message-ID: <27f9a2a2-b7d9-45a0-b326-c755d5c3c674@redhat.com>
Date: Wed, 24 Jan 2024 12:36:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Rafa=C5=82_Lalik?= <rafallalik@gmail.com>
References: <5367c372-a56e-4fae-9467-d27722eacea5@gmail.com>
 <17047781-70f4-40ce-8228-ea28f07ae108@redhat.com>
 <CAJ_dsKP__qDio9=k7-8qEGkADgXvshjmfjfmrVjaMEZV3mFAjQ@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAJ_dsKP__qDio9=k7-8qEGkADgXvshjmfjfmrVjaMEZV3mFAjQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Rafał, On 1/23/24 23:25, Rafał Lalik wrote: > Hi, > >
    Thanks for reply. > > I cannot recall it now but I think the issue hit me
    with one of the 6.x version and stays until now, but I don't remember when
    one [...] 
 
 Content analysis details:   (-1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rSbYQ-0006Tt-6m
Subject: Re: [ibm-acpi-devel] thinkpad-acpi crashes on loading
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
Cc: ibm-acpi-devel@lists.sourceforge.net, ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgUmFmYcWCLAoKT24gMS8yMy8yNCAyMzoyNSwgUmFmYcWCIExhbGlrIHdyb3RlOgo+IEhpLAo+
IAo+IFRoYW5rcyBmb3IgcmVwbHkuCj4gCj4gSSBjYW5ub3QgcmVjYWxsIGl0IG5vdyBidXQgSSB0
aGluayB0aGUgaXNzdWUgaGl0IG1lIHdpdGggb25lIG9mIHRoZSA2LnggdmVyc2lvbiBhbmQgc3Rh
eXMgdW50aWwgbm93LCBidXQgSSBkb24ndCByZW1lbWJlciB3aGVuIG9uZSBleGFjdGx5Lgo+IAo+
IEkgYW0gbm90IHZlcnkgZmFtaWxpYXIgd2l0aCBrZXJuZWwgaW50ZXJuYWxzLiBEbyB5b3UgaGF2
ZSBhbnkgaWRlYSBob3cgSSBjb3VsZCBzdGFydCBkaWdnaW5nIGl0Pwo+IAo+IFdoYXQgcGFydCBv
ZiBrZXJuZWwgSSBjb3VsZCBsb29rIGludG8gdG8gbWFrZSBpdCBwZXJoYXBzIHdvcmtpbmcgYWdh
aW4gb3IgYmVpbmcgY2xvc2VyIHRvIHNvbHV0aW9uP8KgCgpJIGhhdmUgbm8gaWRlYS4gWW91IGFy
ZSB0aGUgb25seSBwZXJzb24gcmVwb3J0aW5nIHRoaXMsIHNvIHRoaXMgbGlrZWx5CmlzIHNvbWV0
aGluZyBzcGVjaWZpYyB0byB5b3VyIHNldHVwLiBJdCBjb3VsZCBldmVuIG1lYW4geW91ciBsYXB0
b3AKaXMgc3RhcnRpbmcgdG8gYnJlYWsgZG93biAvIGJlIGEgaGFyZHdhcmUgZGVmZWN0LgoKTWF5
YmUgeW91IGNhbiB0cnkgZ2VudG9vJ3MgcHJlLWJ1aWxkIGtlcm5lbCBiaW5hcmllcyBhbmQgc2Vl
IGlmIHRob3NlCmhhdmUgdGhlIHNhbWUgaXNzdWUgPwoKT3IgdHJ5IHNldHRpbmcgeW91ciB1c2Ut
ZmxhZ3MgYW5kIHRoZSBrZXJuZWwtY29uZmlnIHRvIHRoZSBkZWZhdWx0CmdlbnRvbyBzZXR0aW5n
cyA/CgpCYXNpY2FsbHkgZm9yIHN0YXJ0ZXJzIEkgd291bGQgdHJ5IHRvIHJlbW92ZSBhbnkgY29u
ZmlndXJhdGlvbiB3aGljaAppcyBzcGVjaWFsIHRvIHlvdXIgaW5zdGFsbGF0aW9uLiBJIGV4cGVj
dCB0aGF0IHdpbGwgbGVhZCB0byBhIHN0YWJsZQpzZXR1cCBhZ2FpbiAodW5sZXNzIHRoZXJlIHJl
YWxseSBpcyBhIGh3IChSQU0/KSBkZWZlY3QpLgoKVGhlbiBhZnRlciB0aGlzIHlvdSBjYW4gcmUt
aW50cm9kdWNlIGFueSBjdXN0b21pemF0aW9ucyB5b3UgaGF2ZQpkb25lICpvbmUgYXQgYSB0aW1l
KiB1bnRpbCB5b3UgaGF2ZSBmb3VuZCB3aGF0IGNhdXNlcyB0aGUgcHJvYmxlbSBhbmQKdGhlbiB3
ZSBjYW4gc2VlIGZyb20gdGhlcmUuCgpSZWdhcmRzLAoKSGFucwoKCgoKCj4gd3QuLCAyMyBzdHkg
MjAyNCwgMTE6MDIgdcW8eXRrb3duaWsgSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNv
bSA8bWFpbHRvOmhkZWdvZWRlQHJlZGhhdC5jb20+PiBuYXBpc2HFgjoKPiAKPiAgICAgSGksCj4g
Cj4gICAgIE9uIDEvMjMvMjQgMDI6MjIsIFJhZmFsIExhbGlrIHdyb3RlOgo+ICAgICA+IEhpLAo+
ICAgICA+Cj4gICAgID4gSSBhbSBleHBlcmllbmNpbmcgaXNzdWVzIHdpdGggdHBhY3BpIG1vZHVs
ZS4gSXQgc3RhcnRlZCB3aXRoIG9uZSBvZiB0aGUga2VybmVsLTYgdmVyc2lvbnMsIGJ1dCBjYW5u
b3QgcGluIHBvaW50IGV4YWN0IHZlcnNpb24uIEl0IHN0YXRlZCB3aXRoIGJlaW5nIHVuYWJsZSB0
byBoaWJlcm5hdGUgdGhlIHN5c3RlbS4gSSBmaWd1cmVkIG91dCBpdCB3YXMgZHVlIHRvIG9uZSBv
ZiB0aGUgdWRldi13b3JrZXIgcHJvY2Vzc2VzIGJlaW5nIGluIHRoZSAndW5pbnRlcnJ1cHRpYmxl
IHNsZWVwJyBzdGF0ZS4KPiAgICAgPgo+ICAgICA+IEkgZGlnIHRoZSBpc3N1ZSBmdXJ0aGVyIGFu
ZCBmb3VuZCBvdXQgdGhhdCB0aGVyZSBhcmUgaXNzdWVzIHdpdGggdGhlIHRoaW5rcGFkX2FjcGkg
bW9kdWxlIHdoaWNoIGNyYXNoZXMgb24gbG9hZGluZy4gaXQgd2FzIGF1dG9sb2FkZWQgc28gSSBi
bGFja2xpc3RlZCBpdCBhbmQgdGhlIGhpYmVybmF0aW9uIGlzc3VlcyB3ZXJlIGdvbmUuCj4gICAg
ID4KPiAgICAgPiBCdXQgbm93IHdpdGggaXQgYmVpbmcgYmxhY2tsaXN0ZWQgb24gYm9vdCwgSSBt
YSB0cnlpbmcgdG8gbG9hZCBpdCBtYW51YWxseSB3aXRoIGZvbGxvd2luZyByZXN1bHQuCj4gICAg
ID4KPiAgICAgPiDCoCAjIG1vZHByb2JlIHRoaW5rcGFkX2FjcGkKPiAgICAgPiDCoCBLaWxsZWQK
PiAKPiAgICAgVGhlIGNyYXNoIHNlZW1zIHRvIGhhcHBlbiBvbiBtb2R1bGUgbG9hZGluZyB0aW1l
LCBiZWZvcmUgZXZlbgo+ICAgICB0aGUgbW9kdWxlJ3MgaW5pdCgpIGZ1bmN0aW9uIGlzIHJ1bi4K
PiAKPiAgICAgWW91IG1lbnRpb24gdGhhdCB5b3UgYXJlIHNlZWluZyB0aGlzIHdpdGggbXVsdGlw
bGUga2VybmVsCj4gICAgIHZlcnNpb25zIHJpZ2h0ID8KPiAKPiAgICAgU28gSSBndWVzcyB0aGlz
IGlzIHNvbWV0aGluZyBzcGVjaWZpYyB0byB5b3VyIGtlcm5lbCBjb25maWd1cmF0aW9uCj4gICAg
IGFuZC9vciB0aGUgY29tcGlsZXIgeW91IGFyZSB1c2luZy4KPiAKPiAgICAgUmVnYXJkcywKPiAK
PiAgICAgSGFucwo+IAo+IAo+IAo+ICAgICA+IGRtZXNnIHNob3dzIG1lIHRoaXM6Cj4gICAgID4K
PiAgICAgPiBbwqAgNTkwLjUzMTgyOV0gQlVHOiB1bmFibGUgdG8gaGFuZGxlIHBhZ2UgZmF1bHQg
Zm9yIGFkZHJlc3M6IGZmZmZjOTAwMDMzZWJlOTgKPiAgICAgPiBbwqAgNTkwLjUzMTgzOF0gI1BG
OiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlCj4gICAgID4gW8KgIDU5MC41
MzE4NDFdICNQRjogZXJyb3JfY29kZSgweDAwMDApIC0gbm90LXByZXNlbnQgcGFnZQo+ICAgICA+
IFvCoCA1OTAuNTMxODQ1XSBQR0QgMTAwMDAwMDY3IFA0RCAxMDAwMDAwNjcgUFVEIDEwMDEyYzA2
NyBQTUQgMTA3ODUzMDY3IFBURSAwCj4gICAgID4gW8KgIDU5MC41MzE4NTJdIE9vcHM6IDAwMDAg
WyMyXSBQUkVFTVBUIFNNUCBQVEkKPiAgICAgPiBbwqAgNTkwLjUzMTg3NF0gQ1BVOiAwIFBJRDog
MTA5ODUgQ29tbTogbW9kcHJvYmUgVGFpbnRlZDogUMKgwqDCoMKgIFVEwqDCoMKgIE/CoMKgwqDC
oMKgwqAgNi43LjEtZ2VudG9vLXIxICMxCj4gICAgID4gW8KgIDU5MC41MzE4NzhdIEhhcmR3YXJl
IG5hbWU6IExFTk9WTyAyMEFSUzBYTDAwLzIwQVJTMFhMMDAsIEJJT1MgR0pFVEE0V1cgKDIuNTQg
KSAwMy8yNy8yMDIwCj4gICAgID4gW8KgIDU5MC41MzE4ODBdIFJJUDogMDAxMDppZGVtcG90ZW50
X2luaXRfbW9kdWxlKzB4YWMvMHgyOTAKPiAgICAgPiBbwqAgNTkwLjUzMTg4N10gQ29kZTogN2Eg
Y2EgYWUgMDAgNDkgYzEgZWQgMzggMzEgYzkgNGEgOGIgMTQgZWQgMjAgMzEgZDQgODIgNGUgOGQg
MjQgZWQgMjAgMzEgZDQgODIgNDggOGQgNDIgZjggNDggODUgZDIgNDggMGYgNDQgYzEgNDggODUg
YzAgNzQgMWIgPDRjPiAzYiAzOCAwZiA4NCBiZiAwMCAwMCAwMCA0OCA4YiA0MCAwOCA0OCA4NSBj
MCA3NCAwOSA0OCA4MyBlOCAwOAo+ICAgICA+IFvCoCA1OTAuNTMxODkxXSBSU1A6IDAwMTg6ZmZm
ZmM5MDAwM2ZjZmU5OCBFRkxBR1M6IDAwMDEwMjgyCj4gICAgID4gW8KgIDU5MC41MzE4OTVdIFJB
WDogZmZmZmM5MDAwMzNlYmU5OCBSQlg6IDAwMDA1NjJlMTA1YWU1NjAgUkNYOiAwMDAwMDAwMDAw
MDAwMDAwCj4gICAgID4gW8KgIDU5MC41MzE4OThdIFJEWDogZmZmZmM5MDAwMzNlYmVhMCBSU0k6
IGZmZmZmZmZmODIyNDY3YmQgUkRJOiAwMDAwMDAwMDAwMDAwMDAwCj4gICAgID4gW8KgIDU5MC41
MzE5MDBdIFJCUDogMDAwMDAwMDAwMDAwMDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAw
MDAwMDAwMDAwMDAwMDAwCj4gICAgID4gW8KgIDU5MC41MzE5MDJdIFIxMDogMDAwMDAwMDAwMDAw
MDAwMCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiBmZmZmZmZmZjgyZDQzMzk4Cj4gICAgID4g
W8KgIDU5MC41MzE5MDVdIFIxMzogMDAwMDAwMDAwMDAwMDA0ZiBSMTQ6IGZmZmY4ODgyMzNmMzQw
MDAgUjE1OiBmZmZmODg4MjA3ZTY3MzM4Cj4gICAgID4gW8KgIDU5MC41MzE5MDddIEZTOsKgIDAw
MDA3ZmYwMDRiZDVjNDAoMDAwMCkgR1M6ZmZmZjg4ODMzMjIwMDAwMCgwMDAwKSBrbmxHUzowMDAw
MDAwMDAwMDAwMDAwCj4gICAgID4gW8KgIDU5MC41MzE5MTBdIENTOsKgIDAwMTAgRFM6IDAwMDAg
RVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gICAgID4gW8KgIDU5MC41MzE5MTNdIENS
MjogZmZmZmM5MDAwMzNlYmU5OCBDUjM6IDAwMDAwMDAxMmRjYzAwMDQgQ1I0OiAwMDAwMDAwMDAw
MTcwNmYwCj4gICAgID4gW8KgIDU5MC41MzE5MTVdIENhbGwgVHJhY2U6Cj4gICAgID4gW8KgIDU5
MC41MzE5MThdwqAgPFRBU0s+Cj4gICAgID4gW8KgIDU5MC41MzE5MjFdwqAgPyBfX2RpZSsweDFh
LzB4NjAKPiAgICAgPiBbwqAgNTkwLjUzMTkyN13CoCA/IHBhZ2VfZmF1bHRfb29wcysweDE1OC8w
eDQ0MAo+ICAgICA+IFvCoCA1OTAuNTMxOTMyXcKgID8gZml4dXBfZXhjZXB0aW9uKzB4MWQvMHgy
ZjAKPiAgICAgPiBbwqAgNTkwLjUzMTkzNl3CoCA/IGV4Y19wYWdlX2ZhdWx0KzB4N2UvMHgxMzAK
PiAgICAgPiBbwqAgNTkwLjUzMTk0Ml3CoCA/IGFzbV9leGNfcGFnZV9mYXVsdCsweDIyLzB4MzAK
PiAgICAgPiBbwqAgNTkwLjUzMTk0OV3CoCA/IGlkZW1wb3RlbnRfaW5pdF9tb2R1bGUrMHhhYy8w
eDI5MAo+ICAgICA+IFvCoCA1OTAuNTMxOTUzXcKgID8gaWRlbXBvdGVudF9pbml0X21vZHVsZSsw
eDg2LzB4MjkwCj4gICAgID4gW8KgIDU5MC41MzE5NTddwqAgX194NjRfc3lzX2Zpbml0X21vZHVs
ZSsweDRkLzB4ODAKPiAgICAgPiBbwqAgNTkwLjUzMTk2Ml3CoCBkb19zeXNjYWxsXzY0KzB4NDcv
MHhlMAo+ICAgICA+IFvCoCA1OTAuNTMxOTY2XcKgIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdm
cmFtZSsweDRiLzB4NTMKPiAgICAgPiBbwqAgNTkwLjUzMTk3MV0gUklQOiAwMDMzOjB4N2ZmMDA0
Y2RjYWQ5Cj4gICAgID4gW8KgIDU5MC41MzE5NzVdIENvZGU6IGZmIGMzIDY2IDJlIDBmIDFmIDg0
IDAwIDAwIDAwIDAwIDAwIDBmIDFmIDQ0IDAwIDAwIDQ4IDg5IGY4IDQ4IDg5IGY3IDQ4IDg5IGQ2
IDQ4IDg5IGNhIDRkIDg5IGMyIDRkIDg5IGM4IDRjIDhiIDRjIDI0IDA4IDBmIDA1IDw0OD4gM2Qg
MDEgZjAgZmYgZmYgNzMgMDEgYzMgNDggOGIgMGQgMjcgNzMgMGMgMDAgZjcgZDggNjQgODkgMDEg
NDgKPiAgICAgPiBbwqAgNTkwLjUzMTk3OF0gUlNQOiAwMDJiOjAwMDA3ZmZlZGFhMjczYTggRUZM
QUdTOiAwMDAwMDIwMiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDEzOQo+ICAgICA+IFvCoCA1OTAu
NTMxOTgyXSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwNTYyZTEwNWFkYzkwIFJDWDog
MDAwMDdmZjAwNGNkY2FkOQo+ICAgICA+IFvCoCA1OTAuNTMxOTg0XSBSRFg6IDAwMDAwMDAwMDAw
MDAwMDAgUlNJOiAwMDAwNTYyZTEwNWFlNTYwIFJESTogMDAwMDAwMDAwMDAwMDAwMwo+ICAgICA+
IFvCoCA1OTAuNTMxOTg2XSBSQlA6IDAwMDAwMDAwMDAwMDAwMDAgUjA4OiAwMDAwN2ZmMDA0ZGE0
YjIwIFIwOTogMDAwMDAwMDAwMDAwMDAzZgo+ICAgICA+IFvCoCA1OTAuNTMxOTg4XSBSMTA6IDAw
MDAwMDAwMDAwMDAwNTAgUjExOiAwMDAwMDAwMDAwMDAwMjAyIFIxMjogMDAwMDU2MmUxMDVhZTU2
MAo+ICAgICA+IFvCoCA1OTAuNTMxOTkxXSBSMTM6IDAwMDAwMDAwMDAwNDAwMDAgUjE0OiAwMDAw
NTYyZTEwNWFkZGMwIFIxNTogMDAwMDAwMDAwMDAwMDAzZgo+ICAgICA+IFvCoCA1OTAuNTMxOTk0
XcKgIDwvVEFTSz4KPiAgICAgPiBbwqAgNTkwLjUzMTk5Nl0gTW9kdWxlcyBsaW5rZWQgaW46IHRo
aW5rcGFkX2FjcGkoKykgbnZyYW0gbGVkdHJpZ19hdWRpbyBwbGF0Zm9ybV9wcm9maWxlIDgwMjFx
IHVpbnB1dCBudmlkaWEoUE8pIGZ1c2UgbmZ0X2NoYWluX25hdCBuZl9uYXQgaGlkX2xlbm92byBi
YnN3aXRjaChPKSBzbmRfYWxvb3AgcmZjb21tIGJsdWV0b290aCBlY2RoX2dlbmVyaWMgZWNjIHV2
Y3ZpZGVvIHZpZGVvYnVmMl92bWFsbG9jIHZpZGVvYnVmMl9tZW1vcHMgdXZjIHZpZGVvYnVmMl92
NGwyIHZpZGVvZGV2IHZpZGVvYnVmMl9jb21tb24gbWMgc25kX2hkYV9jb2RlY19oZG1pIGRtX211
bHRpcGF0aCBkbV9tb2QgZGF4IGkyY19kZXYgaW50ZWxfcmFwbF9tc3IgcnRzeF9wY2lfc2RtbWMg
aW50ZWxfcmFwbF9jb21tb24geDg2X3BrZ190ZW1wX3RoZXJtYWwgaW50ZWxfcG93ZXJjbGFtcCBp
d2xtdm0gY29yZXRlbXAga3ZtX2ludGVsIGt2bSBpcnFieXBhc3MgaW5wdXRfbGVkcyBzbmRfaGRh
X2NvZGVjX2dlbmVyaWMgbGVkX2NsYXNzIHJ0c3hfcGNpIGl3bHdpZmkgaTkxNSB0cG1fdGlzIHRw
bV90aXNfY29yZSBzbmRfaGRhX2ludGVsIGkyY19hbGdvX2JpdCBzbmRfaW50ZWxfZHNwY2ZnIGRy
bV9idWRkeSBlMTAwMGUgc25kX2hkYV9jb2RlYyBkcm1fZGlzcGxheV9oZWxwZXIgc25kX2h3ZGVw
IHR0bSBzbmRfaGRhX2NvcmUgW2xhc3QgdW5sb2FkZWQ6IG52aWRpYShQTyldCj4gICAgID4gW8Kg
IDU5MC41MzIwNDhdIENSMjogZmZmZmM5MDAwMzNlYmU5OAo+ICAgICA+IFvCoCA1OTAuNTMyMDUx
XSAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0KPiAgICAgPiBbwqAgNTkwLjUz
MjA1NF0gUklQOiAwMDEwOnRwYWNwaV9yZmtfcHJvY2ZzX3dyaXRlKzB4OTAvMHgxNDAgW3RoaW5r
cGFkX2FjcGldCj4gICAgID4gW8KgIDU5MC41MzIwNzZdIENvZGU6IGM0IDA4IDg5IGQ4IDViIDVk
IDQxIDVjIDQxIDVkIGMzIGJkIDAxIDAwIDAwIDAwIGViIDllIDgzIGZkIGZmIDc0IGU3IGY2IDA1
IDI1IDcwIDAwIDAwIDgwIDc1IDU0IDRhIDhiIDA0IGU1IDcwIDg1IDRiIGExIDg5IGVmIDw0OD4g
OGIgNDAgMTAgNDggOGIgNDAgMDggZTggMzMgY2UgNzggZTAgNGEgOGIgMmMgZTUgNzAgODUgNGIg
YTEgODkKPiAgICAgPiBbwqAgNTkwLjUzMjA3OV0gUlNQOiAwMDE4OmZmZmZjOTAwMDMzZWJjNzgg
RUZMQUdTOiAwMDAxMDI0Ngo+ICAgICA+IFvCoCA1OTAuNTMyMDgyXSBSQVg6IDAwMDAwMDAwMDAw
MDAwMDAgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJDWDogMDAwMDAwMDAwMDAwMDA2NQo+ICAgICA+
IFvCoCA1OTAuNTMyMDg0XSBSRFg6IDAwMDAwMDAwMDAwMDAwMDYgUlNJOiBmZmZmZmZmZmExNGJj
MGQ3IFJESTogMDAwMDAwMDAwMDAwMDAwMQo+ICAgICA+IFvCoCA1OTAuNTMyMDg2XSBSQlA6IDAw
MDAwMDAwMDAwMDAwMDEgUjA4OiBmZmZmZmZmZmExNGNkMDk2IFIwOTogMDAwMDAwMDAwMDAwMDAy
Ywo+ICAgICA+IFvCoCA1OTAuNTMyMDg5XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiBmZmZm
YzkwMDAzM2ViYTYwIFIxMjogMDAwMDAwMDAwMDAwMDAwMAo+ICAgICA+IFvCoCA1OTAuNTMyMDkx
XSBSMTM6IDAwMDAwMDAwMDAwMDAxMjQgUjE0OiBmZmZmZmZmZmExNGNkMDkwIFIxNTogMDAwMDAw
MDAwMDAwMDAwMAo+ICAgICA+IFvCoCA1OTAuNTMyMDkzXSBGUzrCoCAwMDAwN2ZmMDA0YmQ1YzQw
KDAwMDApIEdTOmZmZmY4ODgzMzIyMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+
ICAgICA+IFvCoCA1OTAuNTMyMDk2XSBDUzrCoCAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDog
MDAwMDAwMDA4MDA1MDAzMwo+ICAgICA+IFvCoCA1OTAuNTMyMDk4XSBDUjI6IGZmZmZjOTAwMDMz
ZWJlOTggQ1IzOiAwMDAwMDAwMTJkY2MwMDA0IENSNDogMDAwMDAwMDAwMDE3MDZmMAo+ICAgICA+
IFvCoCA1OTAuNTMyMTAxXSBub3RlOiBtb2Rwcm9iZVsxMDk4NV0gZXhpdGVkIHdpdGggaXJxcyBk
aXNhYmxlZAo+ICAgICA+IFvCoCA1OTAuNTMyMTAzXSBub3RlOiBtb2Rwcm9iZVsxMDk4NV0gZXhp
dGVkIHdpdGggcHJlZW1wdF9jb3VudCAxCj4gICAgID4KPiAgICAgPgo+ICAgICA+Cj4gICAgID4g
RHVubm8gd2hldGVociB0aGlzIGlzIGtlcm5lbCBidWcgb3Igc29tZSBvdGhlciBwcm9ibGVtIHdp
dGggbXkga2VybmVsLiBTbyBqdXN0IGxldCB5b3Uga25vdyBhbmQgcGxlYXNlIGdpdmUgbWUgc29t
ZSBpZGVhcyBoZXJlLgo+ICAgICA+Cj4gICAgID4gcmVnYXJkcywKPiAgICAgPiBSYWZhxYIKPiAg
ICAgPgo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2li
bS1hY3BpLWRldmVsCg==
