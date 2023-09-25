Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDBC7AD3F1
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 25 Sep 2023 10:58:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qkhPt-0004ZS-Nc;
	Mon, 25 Sep 2023 08:58:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qkhPs-0004ZL-Br
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 25 Sep 2023 08:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9jYoDjvuIiF2NPGNNFR7POpOKaph301yFE9PJUJP/aA=; b=jT/G4VIcvctttKqmb22GKape0U
 IEb3MK0u+Ihlpeya+jyOxWVnYMK3Sj1/dxrUJ14EPV62/GBBJ4nCr8J8EMF+at5jVPgSgOwkuOaiv
 23kSnE+m3uDqG434T3xjcTKkfEJ1DhWmlkIX94X1DsJ/H0/pJSMHUOglKRLpDh/jm3FQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9jYoDjvuIiF2NPGNNFR7POpOKaph301yFE9PJUJP/aA=; b=Pkh4zygUXocguxl66f/VeIgw3w
 qIObvRqUM72BWbchKtsK294dql3XRS2hAU4n5YjwQ3jHTvyTrox5YRtM/sWjUU/JTaiPmkQ5ThmRc
 jHHRcMKqZEvcfyIBLi1h37tUlWmGMO8HyOTRTKXwZfNsW8vsxrlIE+M2KHpLfC5u+t/Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qkhPr-005gX5-3f for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 25 Sep 2023 08:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695632280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9jYoDjvuIiF2NPGNNFR7POpOKaph301yFE9PJUJP/aA=;
 b=fCimPoqy1XdpgxlA7aUyWSK8RSlObGiHYSVJ95Oeecj5+0SATVu9SBVwjKeTXMRWhOLjIp
 TVeXlNlHPolRsx/3v9ORMdcFEWlBiNryRaVDhZM9ZRmtsNiDRm8YrwmiyfCiAKcdzI01Df
 pLLmO6VrwIspWdcYiHBmuIOc/xebiXw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-246-tzq--CQwOriWWDdz1qWZSw-1; Mon, 25 Sep 2023 04:57:59 -0400
X-MC-Unique: tzq--CQwOriWWDdz1qWZSw-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-532af7e9dc0so4297406a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 25 Sep 2023 01:57:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695632278; x=1696237078;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9jYoDjvuIiF2NPGNNFR7POpOKaph301yFE9PJUJP/aA=;
 b=Ci6+rbDzWTfw9kBvBxzQnAsTe3Yui4J+oUjIS3i2XZfIfe7gnrB0fr6AysuB3EXkYj
 dECJUvvQL7k0Db7UlAZpBnmrgTAiOv0ze7vHbfXdFqFVl7/UzVD8Xff+BO1ElfImwtM7
 A8QaU4ikSE1nN8s98UDyQyI9ft+gbWPF8jtnsmvZ9v13/5g/WLoDk3STC4gOaXFtj24t
 /Xf90cjvvgvZyuzMMUJSM1xxw8U7Q7EcUWPBrqKnQpOgbKY4wywZwGNfI4i2Z5X7y9bt
 KUKxxKO1zshAP7qGcHDBdWrq9e8wlx5vPHzSlK6jgmPmK0zC8Z5iPhc0Pnmoj3fOu0Eh
 dxCg==
X-Gm-Message-State: AOJu0YySozdOBEyaxO0MRPtGaHb0MRGKupSVQc5MJIAeidsJp5uibvW9
 F6n5c66lKaNTM5I8unHncS1V7YTZvN0kAZ+pe0omLxx0xHdsnF9Ap3qhvi+4fOnEG4ruGeszVE5
 a0mNz2bm0CL/Zog8ShV9dx4nvYk123N1qGTc=
X-Received: by 2002:aa7:d7d4:0:b0:52f:a42a:85a3 with SMTP id
 e20-20020aa7d7d4000000b0052fa42a85a3mr5145195eds.0.1695632278261; 
 Mon, 25 Sep 2023 01:57:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWi9IMy9qmd+fxRBkEfI4zNh3gSWBYXC8dXmPklh/1AUGyK3RZVi4CUBMQfEKDMBdqZ0ZdKg==
X-Received: by 2002:aa7:d7d4:0:b0:52f:a42a:85a3 with SMTP id
 e20-20020aa7d7d4000000b0052fa42a85a3mr5145189eds.0.1695632277950; 
 Mon, 25 Sep 2023 01:57:57 -0700 (PDT)
Received: from [192.168.43.127] ([109.37.149.50])
 by smtp.gmail.com with ESMTPSA id
 n18-20020a05640206d200b005224d960e66sm5201641edy.96.2023.09.25.01.57.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Sep 2023 01:57:55 -0700 (PDT)
Message-ID: <74ad10fa-f0f6-f80f-7db3-fb01aae6f2d5@redhat.com>
Date: Mon, 25 Sep 2023 10:57:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Jiri Slaby <jirislaby@kernel.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Len Brown <lenb@kernel.org>, hmh@hmh.eng.br,
 Mark Pearson <mpearson-lenovo@squebb.ca>
References: <047d3c51-0a9e-4c3e-beef-625a7aa4f3c3@kernel.org>
 <505264f5-cbbb-4ffe-a3e4-93d2397e80da@kernel.org>
 <beeab87b-820a-475a-b0c6-99b1b8e491ea@kernel.org>
 <207922c7-7a56-499b-bbfd-9e8d6a0a06df@kernel.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <207922c7-7a56-499b-bbfd-9e8d6a0a06df@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  +Cc Mark Pearson for thinkpad_acpi dytc support Jiri, On 9/25/23
    09:38, Jiri Slaby wrote: > On 25. 09. 23, 9:19, Jiri Slaby wrote: >> But
   convert_dytc_to_profile() doesn't handle this at all. Do I have a newer DYTC
    interface? Or a broken one? > >    � [...] 
 
 Content analysis details:   (-1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qkhPr-005gX5-3f
Subject: Re: [ibm-acpi-devel] WARNING at drivers/acpi/platform_profile.c:74
 in platform_profile_show()
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

K0NjIE1hcmsgUGVhcnNvbiBmb3IgdGhpbmtwYWRfYWNwaSBkeXRjIHN1cHBvcnQKCkppcmksCgpP
biA5LzI1LzIzIDA5OjM4LCBKaXJpIFNsYWJ5IHdyb3RlOgo+IE9uIDI1LiAwOS4gMjMsIDk6MTks
IEppcmkgU2xhYnkgd3JvdGU6Cj4+IEJ1dCBjb252ZXJ0X2R5dGNfdG9fcHJvZmlsZSgpIGRvZXNu
J3QgaGFuZGxlIHRoaXMgYXQgYWxsLiBEbyBJIGhhdmUgYSBuZXdlciBEWVRDIGludGVyZmFjZT8g
T3IgYSBicm9rZW4gb25lPwo+IAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDYXNl
ICgweDAwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB7Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTG9jYWwxID0gMHgwMTAwCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTG9jYWwxIHw9IDB4ODAwMDAwMDAKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBMb2NhbDEgfD0gMHgwMAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIExvY2FsMSB8PSAweDAxCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiAKPiBJLmUuIHZlcnNpb24gOC4wLCBpdCBzZWVtcy4K
PiAKPiBGdWxsIERTRFQgZm9yIHJlZmVyZW5jZToKPiBodHRwczovL2RlY2liZWwuZmkubXVuaS5j
ei9+eHNsYWJ5L24vRFNEVC5kc2wKCk1hcmssIGNhbiB5b3UgcGxlYXNlIHRha2UgYSBsb29rIGF0
IHRoaXMgKGl0IGlzIGEgdGhpbmtwYWRfYWNwaSBkeXRjIGlzc3VlKT8KCkppcmksIFRoYW5rIHlv
dSBmb3IgYWxsIHRoZSBkZWJ1Z2dpbmcgeW91IGhhdmUgZG9uZSBvbiB0aGlzLiBDYW4geW91IHBs
ZWFzZSBmaWxlCmEgYnVnIHdpdGggdGhlIGRldGFpbHMgLyBzdW1tYXJ5IGhlcmU6CgpodHRwczov
L2J1Z3ppbGxhLmtlcm5lbC5vcmcvZW50ZXJfYnVnLmNnaT9wcm9kdWN0PURyaXZlcnMKClVzaW5n
IFBsYXRmb3JtX3g4NiBhcyBjb21wb25lbnQgc28gdGhhdCBNYXJrIGhhcyBhbGwgdGhlIGluZm8g
aW4gb25lIHBsYWNlID8KCgpSZWdhcmRzLAoKSGFucwoKcC5zLgoKTWFyaywgbWF5YmUgc2hvdWxk
IGFkZCB5b3UgdG8gdGhlIE1BSU5UQUlORVJTIHNlY3Rpb24gZm9yIHRoaW5rcGFkX2FjcGkgPwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNw
aS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRl
dmVsCg==
