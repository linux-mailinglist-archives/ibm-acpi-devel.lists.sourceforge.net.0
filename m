Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D01158AE8E8
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Apr 2024 16:01:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzGhB-0006Xv-AE;
	Tue, 23 Apr 2024 14:00:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzGh9-0006Xp-SA
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 14:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gAr04plxsfqfMR7Jan9ViG+aWoXel/y1Jwe5PfVL2QU=; b=Ln4oVmM6TMaEhWimLxeI7Oo/jg
 HrDjfVSZGjyR9cGGG7X02kr746jcRM5YMeMbiKrc6HMSdDtcDTMnN6F+oDP7SCLh0cDQ0AIzmv32m
 2ytsZ4Aac5eH8Z1U5K5r5DOyp2j0QS3XqobiThXIs4qBUhdBC+11kXfS9yXYmk5xmmxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gAr04plxsfqfMR7Jan9ViG+aWoXel/y1Jwe5PfVL2QU=; b=TFOVjhZPvOtJAF+p6E7z5KGzkw
 gaD70lSeZIkK4kTmsDSMOlFkUsK6YTmvjCbCIJiYY9RBK8bM+cVmyCFtUbZZaReCMJ5WdZFxU5XtI
 qTuJbGdIvHgkfTMlCL+Pq/ezryzypqTFCdAqcKmd7jw9CLPeMdkW1xa12BUxwsCuAl7c=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzGh8-00082q-8C for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 14:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713880815;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gAr04plxsfqfMR7Jan9ViG+aWoXel/y1Jwe5PfVL2QU=;
 b=VLUZoIQm91alwe5leQUaIxr69QwNUUzU9/f1PpJS+mI0i2reu9XUA0K1YpzoTAdEPs2zot
 PiHld5zp2MlPzpx78oTASmTYO/7gqowEjEwZhG//M3TC05qxdCgGX7kn4JQjX1C3yS4eXE
 vmieKVI0F1xVPU4AbudT1+rO+ieJIyw=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-587-ymJ2x5TzM6CYP8sxhmQLAw-1; Tue, 23 Apr 2024 10:00:10 -0400
X-MC-Unique: ymJ2x5TzM6CYP8sxhmQLAw-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-571fe81ac60so1522469a12.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Apr 2024 07:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713880809; x=1714485609;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gAr04plxsfqfMR7Jan9ViG+aWoXel/y1Jwe5PfVL2QU=;
 b=T2WJIWZCC1fr+0kzcsm/rzLJHAkteRITnW/ErqV0iBOGD4nbMQp4y8K23RHn059kSg
 Ub9HtiYABG607wkNjzhL3/Col2hAQ3OB17XEZC8Et8DK3uPDrZlgeMU84pTsJ9/MAW0f
 t1+2DrQLyr1fdw5g/kCwacv0zBWjrx1vjGyCG3dWWYAImav7N1HkdgpvITqE7/mBT2Pv
 /TeeQoeKWliaHn2jvDz5MKKIgNq3F7Xfd8mI8i2xJ0bonhOZYtTjBXgA1sjFRc9bVhpt
 8RR10UpfLmB4GXXRcPWnv8utlNTyLBxR5qV9TC4323m2d0mxA88v+CZJi1o95cpk4giz
 h9hg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVn5QlN0214oCLCp7hI/aZSRuOm3jTJgjuegS3/SdLfMjZpssJrmXBf1i9WNYDFyhBRRa9xXayYZsCB/yxd0/WG1EDV4OnFxYMm3ADpM1ui01HAdkA=
X-Gm-Message-State: AOJu0YwKxJHaNWGssaBALrxnbnUAOXu5wlI5NyBR4cLL4AxjIMVzPcZ6
 s8ITFkQi1OBrsAMXWWPCYnOpf4Ca2kVpyxMXhn14a4boNttBiKl7gTslIQjYmr+O3SnuO9a/W4C
 6hV5dmbyq1GqxQtOI91YL48Hk7en3+BNkJRkxppQ3QRUcTWrKKvw0WzISIHELWVtzYMtSNgX1E5
 8DI9KoCdM=
X-Received: by 2002:a50:d6d7:0:b0:56f:e7b9:e67d with SMTP id
 l23-20020a50d6d7000000b0056fe7b9e67dmr11876810edj.12.1713880809445; 
 Tue, 23 Apr 2024 07:00:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFV/E++vCrfXwtgda+yWW2d+dHT3eIjCXiO+Ttf0/yeB9KUXHhuFX4TzsqC+7HUcEEq/XbOCg==
X-Received: by 2002:a50:d6d7:0:b0:56f:e7b9:e67d with SMTP id
 l23-20020a50d6d7000000b0056fe7b9e67dmr11876790edj.12.1713880809019; 
 Tue, 23 Apr 2024 07:00:09 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 15-20020a0564021f4f00b00571d74c6074sm5113539edz.46.2024.04.23.07.00.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Apr 2024 07:00:08 -0700 (PDT)
Message-ID: <22165abe-b74c-4bbc-8a26-3abf58d9024d@redhat.com>
Date: Tue, 23 Apr 2024 16:00:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-4-hdegoede@redhat.com>
 <4f62150d-da65-7ecf-fc5d-50afa5dfccb3@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <4f62150d-da65-7ecf-fc5d-50afa5dfccb3@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 4/22/24 10:07 AM, Ilpo Järvinen wrote: > On Sun, 21
    Apr 2024, Hans de Goede wrote: > >> send_acpi_ev, ignore_acpi_ev are already
    initialized to true resp. false by > > Wording here is odd (but I'm [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzGh8-00082q-8C
Subject: Re: [ibm-acpi-devel] [PATCH 03/24] platform/x86: thinkpad_acpi:
 Drop setting send_/ignore_acpi_ev defaults twice
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

SGksCgpPbiA0LzIyLzI0IDEwOjA3IEFNLCBJbHBvIErDpHJ2aW5lbiB3cm90ZToKPiBPbiBTdW4s
IDIxIEFwciAyMDI0LCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+IAo+PiBzZW5kX2FjcGlfZXYsIGln
bm9yZV9hY3BpX2V2IGFyZSBhbHJlYWR5IGluaXRpYWxpemVkIHRvIHRydWUgcmVzcC4gZmFsc2Ug
YnkKPiAKPiBXb3JkaW5nIGhlcmUgaXMgb2RkIChidXQgSSdtIG5vdCBuYXRpdmUgc28gY291bGQg
YmUgSSBqdXN0IGRvbid0IAo+IHVuZGVyc3RhbmQgd2hhdCAidHJ1ZSByZXNwLiBmYWxzZSIgaXMg
c3VwcG9zZWQgdG8gbWVhbi9maXQgaW50byB0aGUgCj4gZ2VuZXJhbCBzdHJ1Y3R1cmUgb2YgdGhp
cyBzZW50ZW5jZSkuIEkgY291bGQgbm9uZXRoZWxlc3MgZ3Vlc3MgdGhlIAo+IGdlbmVyYWwgbWVh
bmluZyBvZiB0aGUgc2VudGVuY2UgZGVzcGl0ZSB0aGF0LCBidXQgeW91IG1pZ2h0IHdhbnQgdG8g
Cj4gY29uc2lkZXIgcmV3b3JkaW5nIGl0IGludG8gc29tZXRoaW5nIHRoYXQgaXMgZWFzaWVyIHRv
IHVuZGVyc3RhbmQuCgpPaywgSSBoYXZlIGNoYW5nZWQgdGhpcyB0bzoKCiIiIgpzZW5kX2FjcGlf
ZXYgYW5kIGlnbm9yZV9hY3BpX2V2IGFyZSBhbHJlYWR5IGluaXRpYWxpemVkIHRvIHRydWUgYW5k
IGZhbHNlCnJlc3BlY3RpdmVseSBieSBob3RrZXlfbm90aWZ5KCkgYmVmb3JlIGNhbGxpbmcgdGhl
IHZhcmlvdXMgaGVscGVycy4gRHJvcAp0aGUgbmVlZGxlc3MgcmUtaW5pdGlhbGl6YXRpb24gZnJv
bSB0aGUgaGVscGVycy4KIiIiCgpub3cuCgo+IAo+IFRoZSBjb2RlIGNoYW5nZSBpcyBmaW5lLAo+
IAo+IFJldmlld2VkLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRl
bC5jb20+CgpUaGFuayB5b3UuCgpSZWdhcmRzLAoKSGFucwoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0
CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
