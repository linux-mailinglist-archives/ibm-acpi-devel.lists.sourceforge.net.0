Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEB047E675
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 23 Dec 2021 17:37:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n0R58-0005gA-DM; Thu, 23 Dec 2021 16:36:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1n0R56-0005fy-N9
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 23 Dec 2021 16:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VnMgFshQCk4H2aviO2aDotAcxDTpL1gsve23sQb3mus=; b=WSfxwP8zze3cjFw7LWLyAj9Xqi
 HBSuKP3Ol6mRF3fNYv3w+W6FZXL5kJkxE6jKvuDbYRWIZBnqWqsHqTnipbeLTIdmS4ZRBksao28oL
 dIrJbcDak9S///rdG30uypgy6r7rBeP5BZdiqc7pPEnNQ0iRwK9cxY8+Nf9sqpgAr57c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VnMgFshQCk4H2aviO2aDotAcxDTpL1gsve23sQb3mus=; b=RQafzsmq478x92x+ePVlIAoQLY
 +DHsYgvja2USpTE4uaa+J97b0wGMbGtc3Yg4knTREnW4FXPQlfItN2+KEgME2i/PELDlw7K3B8/SY
 gruoulDpbqJWsMnMSuigPb7PZ8TQ1gMOAPwWJmBfIA0oxk7nZMeEJ3vdV7Pt4F/dBgyc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0R52-007REE-9I
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 23 Dec 2021 16:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640277390;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VnMgFshQCk4H2aviO2aDotAcxDTpL1gsve23sQb3mus=;
 b=N/GKLEMip3NTu6ojdkDtMgCIWPEyOQOGbURyIAcmtt4sv1nzdwVlQb2yevjEbPUILPPyND
 dLNZtLwjopaWE2dgTgxiQj4fZMuJ2UctyywWsEbZf6aHwghBLk1foxGITb5R6O9PURHkKI
 QFciOwabGIwIcjzypcMyoD96iDQEWas=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-34-D_nFkOfiPDao1wcVdO0q5Q-1; Thu, 23 Dec 2021 11:36:26 -0500
X-MC-Unique: D_nFkOfiPDao1wcVdO0q5Q-1
Received: by mail-ed1-f70.google.com with SMTP id
 s12-20020a50ab0c000000b003efdf5a226fso4880539edc.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 23 Dec 2021 08:36:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=VnMgFshQCk4H2aviO2aDotAcxDTpL1gsve23sQb3mus=;
 b=mx2Qsq9+wdAk2YDohFcXW7BUJyM/H20uEM+juXGrWXZ7jmau0yrLWgVWBh7Z90FIUA
 DcZqKbsyIZmMoqsPy7Y1gxj84/ZnLvtEIydPhpeR1TZTjx1wLRor9HUoe3MSshCsmfRH
 905wDgOszGa0mbuRRVrM9I5XGyJ1k0EUYZJozxmIDGvgBZ4lC8c1nUU/G2BPy1KLHFN6
 WCW5fRqw9tlEIyJsU+KCs3wMcf+Mj3gcZzpdqS+KnooqfFJ9afCyd7rDjm5s4ck8gBGI
 fNomQuxG/QXwWboHKgNvL8EJzP1h1Id452Sp8KAkC+S7EoFketLOO7dNb0RTtSyvdLsZ
 99yQ==
X-Gm-Message-State: AOAM531BobA2X6O18v0K3tzW7tIFB8l3doXczBtIQrjK3odVSnXKrC4Q
 bw/8B/sG0yumXG8n0CQnsW4eEf8MdB2ooD2lCIwAONbXtPYZPBMka6s/OVrfLUkxGznfp3/yBv8
 ya1gWikYe/0QfHAmAnM1Y1jwgYR+lcOdpdt4=
X-Received: by 2002:a05:6402:4386:: with SMTP id
 o6mr2718879edc.47.1640277385411; 
 Thu, 23 Dec 2021 08:36:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJybYzBVsP6qb8DsgTwNs41sNtraY7y2+U2l4h5Ei5i/50HTzdvEGT1u4q5PFrTjOTqU1QpfDQ==
X-Received: by 2002:a05:6402:4386:: with SMTP id
 o6mr2718865edc.47.1640277385250; 
 Thu, 23 Dec 2021 08:36:25 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id p7sm2134763edu.84.2021.12.23.08.36.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Dec 2021 08:36:24 -0800 (PST)
Message-ID: <31a528b8-8318-dc09-3a06-80f76771744a@redhat.com>
Date: Thu, 23 Dec 2021 17:36:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 linux-acpi@vger.kernel.org, Len Brown <lenb@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <20211222212014.66971-1-linux@weissschuh.net>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211222212014.66971-1-linux@weissschuh.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas, On 12/22/21 22:20, Thomas Weißschuh wrote: > The
    EC/ACPI firmware on Lenovo ThinkPads used to report a status > of "Unknown"
    when the battery is between the charge start and > charge stop thresholds.
    [...] 
 
 Content analysis details:   (-3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0R52-007REE-9I
Subject: Re: [ibm-acpi-devel] [PATCH] ACPI: battery: Add the ThinkPad "Not
 Charging" quirk
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
Cc: "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Richard Hughes <richard@hughsie.com>,
 Ognjen Galic <smclt30p@gmail.com>, ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Bastien Nocera <hadess@hadess.net>, markpearson@lenovo.com,
 platform-driver-x86@vger.kernel.org, David Zeuthen <davidz@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVGhvbWFzLAoKT24gMTIvMjIvMjEgMjI6MjAsIFRob21hcyBXZWnDn3NjaHVoIHdyb3RlOgo+
IFRoZSBFQy9BQ1BJIGZpcm13YXJlIG9uIExlbm92byBUaGlua1BhZHMgdXNlZCB0byByZXBvcnQg
YSBzdGF0dXMKPiBvZiAiVW5rbm93biIgd2hlbiB0aGUgYmF0dGVyeSBpcyBiZXR3ZWVuIHRoZSBj
aGFyZ2Ugc3RhcnQgYW5kCj4gY2hhcmdlIHN0b3AgdGhyZXNob2xkcy4gT24gV2luZG93cywgaXQg
cmVwb3J0cyAiTm90IENoYXJnaW5nIgo+IHNvIHRoZSBxdWlyayBoYXMgYmVlbiBhZGRlZCB0byBh
bHNvIHJlcG9ydCBjb3JyZWN0bHkuCj4gCj4gTm93IHRoZSAic3RhdHVzIiBhdHRyaWJ1dGUgcmV0
dXJucyAiTm90IENoYXJnaW5nIiB3aGVuIHRoZQo+IGJhdHRlcnkgb24gVGhpbmtQYWRzIGlzIG5v
dCBwaHlzaWNhbHkgY2hhcmdpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOfc2No
dWggPGxpbnV4QHdlaXNzc2NodWgubmV0PgoKVGhhbmtzLCBwYXRjaCBsb29rcyBnb29kIHRvIG1l
LgoKQXMgZm9yIHRoZSB1c2Vyc3BhY2UgaXNzdWVzIGluIGRlYWxpbmcgd2l0aCB0aGUKUE9XRVJf
U1VQUExZX1NUQVRVU19OT1RfQ0hBUkdJTkcgc3RhdHVzLCB0aG9zZSBpbmRlZWQKaGF2ZSBsb25n
IGJlZW4gZml4ZWQgYW5kIHRoaXMgc3RhdHVzIGlzIGFscmVhZHkgcmV0dXJuZWQKYWNwaS8vYmF0
dGVyeS5jIGZyb20gdGhlIGFjcGlfYmF0dGVyeV9oYW5kbGVfZGlzY2hhcmdpbmcoKQpmdW5jdGlv
biBmb3IgYSB3aGlsZSBubzsgYW5kIHdlIGhhdmUgaGFkIG5vIGNvbXBsYWludHMKYWJvdXQgdGhh
dDoKClJldmlld2VkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgoKUmVn
YXJkcywKCkhhbnMKCgoKCj4gLS0tCj4gCj4gVGhpcyBpcyB0aGUgc2FtZSBhczogaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDIwNTM1OS8KPiAKPiBQcmV2aW91c2x5IHRoaXMg
cGF0Y2ggaGFzIGJlZW4gYXBwbGllZFswXSBidXQgdGhlbiByZXZlcnRlZCBmcm9tIC1uZXh0Cj4g
YmVjYXVzZSBpdCBjYXVzZWQgYSByZWdyZXNzaW9uIGluIFVQb3dlci4KPiBUaGlzIHJlZ3Jlc3Np
b24gaG93ZXZlciBoYXMgYmVlbiBmaXhlZCBpbiBVUG93ZXIgaW4gbGF0ZSAyMDE4WzFdLAo+IHdp
dGggdGhlIGZpeGVkIHZlcnNpb24gMC45OS4xMCByZWxlYXNlZCBpbiBlYXJseSAyMDE5IFsyXS4K
PiBTbyBtYXliZSBpdCBpcyBub3cgdGltZSB0byByZWludHJvZHVjZSB0aGlzIGNoYW5nZS4KPiAK
PiBPZ25lbjoKPiAKPiBBcyB0aGUgcGF0Y2ggd2FzIG9yaWdpbmFsbHkgZGV2ZWxvcGVkIGJ5IHlv
dSwgY291bGQgc2VuZCBhCj4gU2lnbmVkLW9mZi1ieS10YWcsIHNvIEkgY2FuIGF0dHJpYnV0ZSB5
b3UgYXMgY28tZGV2ZWxvcGVyPwo+IAo+IE9yIG1heWJlIHRoZSBvcmlnaW5hbCBwYXRjaCBjb3Vs
ZCBqdXN0IGJlIHJlLWFwcGxpZWQ/Cj4gCj4gVGhlIG9yaWdpbmFsIHBhdGNoIGhhZCB0aGUgZm9s
bG93aW5nIHRhZ3MsIHdoaWNoIEknbSBub3Qgc3VyZSB0byBoYW5kbGUKPiBmb3IgdGhpcyBjYXNl
Ogo+IAo+IFJldmlld2VkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFp
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogT2duamVuIEdhbGljIDxzbWNsdDMwcEBnbWFpbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbC5qLnd5c29ja2lAaW50
ZWwuY29tPgo+IAo+IEFsc28gQ2MtaW5nIHRoZSBVUG93ZXIgbWFpbnRhaW5lcnMgZm9yIHRoZWly
IG9waW5pb246Cj4gCj4gQ2M6IEJhc3RpZW4gTm9jZXJhIDxoYWRlc3NAaGFkZXNzLm5ldD4KPiBD
YzogRGF2aWQgWmV1dGhlbiA8ZGF2aWR6QHJlZGhhdC5jb20+Cj4gQ2M6IFJpY2hhcmQgSHVnaGVz
IDxyaWNoYXJkQGh1Z2hzaWUuY29tPgo+IAo+IFswXSBBcHBsaWVkIGFzIDkxZWVhNzBlNWU1Y2Ux
MmViMWM3Y2Q5MjJlNTYxZmFiNDNlMjAxYmQKPiBbMV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL3Vwb3dlci91cG93ZXIvLS9tZXJnZV9yZXF1ZXN0cy8xOS9jb21taXRzCj4gWzJdIGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy91cG93ZXIvdXBvd2VyLy0vY29tbWl0LzIxNTA0
OWU3YjgwYzVmMjRjYjM1Y2QyMjlhNDQ1YzZjZjE5YmQzODEKPiAtLS0KPiAgZHJpdmVycy9hY3Bp
L2JhdHRlcnkuYyB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDIyIGluc2VydGlvbnMoKykKPiAKPiAKPiBiYXNlLWNvbW1pdDogZmE1NWI3ZGNkYzQzYzFhYTFi
YTEyYmNhOWQyZGQ0MzE4YzJhMGRiZgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYmF0
dGVyeS5jIGIvZHJpdmVycy9hY3BpL2JhdHRlcnkuYwo+IGluZGV4IDhhZmE4NWQ2ZWI2YS4uZWFk
MDExNGYyN2M5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYWNwaS9iYXR0ZXJ5LmMKPiArKysgYi9k
cml2ZXJzL2FjcGkvYmF0dGVyeS5jCj4gQEAgLTUzLDYgKzUzLDcgQEAgc3RhdGljIGludCBiYXR0
ZXJ5X2JpeF9icm9rZW5fcGFja2FnZTsKPiAgc3RhdGljIGludCBiYXR0ZXJ5X25vdGlmaWNhdGlv
bl9kZWxheV9tczsKPiAgc3RhdGljIGludCBiYXR0ZXJ5X2FjX2lzX2Jyb2tlbjsKPiAgc3RhdGlj
IGludCBiYXR0ZXJ5X2NoZWNrX3BtaWMgPSAxOwo+ICtzdGF0aWMgaW50IGJhdHRlcnlfcXVpcmtf
bm90Y2hhcmdpbmc7Cj4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgY2FjaGVfdGltZSA9IDEwMDA7Cj4g
IG1vZHVsZV9wYXJhbShjYWNoZV90aW1lLCB1aW50LCAwNjQ0KTsKPiAgTU9EVUxFX1BBUk1fREVT
QyhjYWNoZV90aW1lLCAiY2FjaGUgdGltZSBpbiBtaWxsaXNlY29uZHMiKTsKPiBAQCAtMjE3LDYg
KzIxOCw4IEBAIHN0YXRpYyBpbnQgYWNwaV9iYXR0ZXJ5X2dldF9wcm9wZXJ0eShzdHJ1Y3QgcG93
ZXJfc3VwcGx5ICpwc3ksCj4gIAkJCXZhbC0+aW50dmFsID0gUE9XRVJfU1VQUExZX1NUQVRVU19D
SEFSR0lORzsKPiAgCQllbHNlIGlmIChhY3BpX2JhdHRlcnlfaXNfY2hhcmdlZChiYXR0ZXJ5KSkK
PiAgCQkJdmFsLT5pbnR2YWwgPSBQT1dFUl9TVVBQTFlfU1RBVFVTX0ZVTEw7Cj4gKwkJZWxzZSBp
ZiAoYmF0dGVyeV9xdWlya19ub3RjaGFyZ2luZykKPiArCQkJdmFsLT5pbnR2YWwgPSBQT1dFUl9T
VVBQTFlfU1RBVFVTX05PVF9DSEFSR0lORzsKPiAgCQllbHNlCj4gIAkJCXZhbC0+aW50dmFsID0g
UE9XRVJfU1VQUExZX1NUQVRVU19VTktOT1dOOwo+ICAJCWJyZWFrOwo+IEBAIC0xMTExLDYgKzEx
MTQsMTIgQEAgYmF0dGVyeV9kb19ub3RfY2hlY2tfcG1pY19xdWlyayhjb25zdCBzdHJ1Y3QgZG1p
X3N5c3RlbV9pZCAqZCkKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IF9faW5p
dCBiYXR0ZXJ5X3F1aXJrX25vdF9jaGFyZ2luZyhjb25zdCBzdHJ1Y3QgZG1pX3N5c3RlbV9pZCAq
ZCkKPiArewo+ICsJYmF0dGVyeV9xdWlya19ub3RjaGFyZ2luZyA9IDE7Cj4gKwlyZXR1cm4gMDsK
PiArfQo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWlfc3lzdGVtX2lkIGJhdF9kbWlfdGFi
bGVbXSBfX2luaXRjb25zdCA9IHsKPiAgCXsKPiAgCQkvKiBORUMgTFo3NTAvTFMgKi8KPiBAQCAt
MTE1NSw2ICsxMTY0LDE5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1pX3N5c3RlbV9pZCBiYXRf
ZG1pX3RhYmxlW10gX19pbml0Y29uc3QgPSB7Cj4gIAkJCURNSV9NQVRDSChETUlfUFJPRFVDVF9W
RVJTSU9OLCAiTGVub3ZvIE1JSVggMzIwLTEwSUNSIiksCj4gIAkJfSwKPiAgCX0sCj4gKwl7Cj4g
KwkJLyoKPiArCQkgKiBPbiBMZW5vdm8gVGhpbmtQYWRzIHRoZSBCSU9TIHNwZWNpZmljYXRpb24g
ZGVmaW5lcwo+ICsJCSAqIGEgc3RhdGUgd2hlbiB0aGUgYml0cyBmb3IgY2hhcmdpbmcgYW5kIGRp
c2NoYXJnaW5nCj4gKwkJICogYXJlIGJvdGggc2V0IHRvIDAuIFRoYXQgc3RhdGUgaXMgIk5vdCBD
aGFyZ2luZyIuCj4gKwkJICovCj4gKwkJLmNhbGxiYWNrID0gYmF0dGVyeV9xdWlya19ub3RfY2hh
cmdpbmcsCj4gKwkJLmlkZW50ID0gIkxlbm92byBUaGlua1BhZCIsCj4gKwkJLm1hdGNoZXMgPSB7
Cj4gKwkJCURNSV9NQVRDSChETUlfU1lTX1ZFTkRPUiwgIkxFTk9WTyIpLAo+ICsJCQlETUlfTUFU
Q0goRE1JX1BST0RVQ1RfVkVSU0lPTiwgIlRoaW5rUGFkIiksCj4gKwkJfSwKPiArCX0sCj4gIAl7
fSwKPiAgfTsKPiAgCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vaWJtLWFjcGktZGV2ZWwK
