Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F20A7B83B
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  4 Apr 2025 09:26:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u0bRc-0005dk-Qm;
	Fri, 04 Apr 2025 07:26:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1u0bRc-0005de-3w
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 07:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6E6a0zcxJzbzPV5Gn2TbrJkt+nY4haYA/0m6ZvbKEjQ=; b=Dpt7EqC/Am74F7z5bO1OR8jfUB
 ZehGzssWXOZIo2WHv04th3GTDqgJ8yK5V33u0vT8JrTm+5yO1ETdLbxwBUor+dPdv7/6BGOj0szA6
 Lizv8YyP9TJDB5hzMYDNP53ALzSJVWWUq2Cn/GjHBMjqqFbRRuWQhcLHjnaIOsECILrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6E6a0zcxJzbzPV5Gn2TbrJkt+nY4haYA/0m6ZvbKEjQ=; b=QL15B3BBMFXIoGm0ZbLPFvWgtI
 HUwthgsVbbK9cCDgBAxHVqZC2X+SJlZZy0SfqwvyY70gNhM9tMkxpb1qS+DE9YkvpuJaFHZ7QdF7E
 5X9nwvin/lsc/V2iMeg+LxHUMh3c2Pg7ZYzsrQj2AQY/JZ7JNVfClep9q9Ibm9cM8SoQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0bRM-0001EC-0D for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 07:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1743751560;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6E6a0zcxJzbzPV5Gn2TbrJkt+nY4haYA/0m6ZvbKEjQ=;
 b=N5tL8pC7dN1My7XO6SDT989QSPok4Cqj8MW4tQFOFomDOCsCRODrSvRfi1+zAIoTg92xlF
 QJhqI4igFP/HW6mc5FKgaaj6d6CSvHL9Yw6xVWX6fDfKEIeG0Lq7zskqq0FqdrGyMnQ0h9
 +pEr1Zz9RisZ9688jfSgVB02MjdSmH4=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-235-k5jA20Q5MJGC55GzOPsL3Q-1; Fri, 04 Apr 2025 03:25:59 -0400
X-MC-Unique: k5jA20Q5MJGC55GzOPsL3Q-1
X-Mimecast-MFC-AGG-ID: k5jA20Q5MJGC55GzOPsL3Q_1743751558
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-ac737973c9bso137310466b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 04 Apr 2025 00:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743751557; x=1744356357;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6E6a0zcxJzbzPV5Gn2TbrJkt+nY4haYA/0m6ZvbKEjQ=;
 b=cJdAccfgzUY5fAAG/6XP4518ob1vZxMU5rL/OHvWe0elOaS1EsIP2iEKwYiVqkX5gv
 2bUnAvjpJnG0vKT9Dbi0wJa7ncQFi9RJBwSHtp0Bql6JiRReJC0FCIKswNcdJHzccSU/
 yrPpz4W1ax8pmsc8bzqaCw0j05r6qbUYTHQFOJ+ExNczvS4YHyBUINzsy4csqhv2aFqb
 HRpyENSNdQbxcjp8IoGwq9QsZfvtMt5VkOdWFH2OKqliptTzvSLX7XRJc0TQwX1ebTjT
 CsmlSIecykA1u/BiDpc9Q23G36lzyMVVj8PFT7NjAOurTaY8xHeMKH/oC2Yq82BxcnRF
 UbOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPZd10K3mk/523/xmW6z/WVo+fuhG4RWUTh0oJgNDbcZYqd/l8W0lNL7eqyuIjqG2DxhDrLz2eg0Fc5R9I0w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyvlJIB3Jokw1k4hjvLSN4kzgTPMch6J3XbPEVIHhVf9e4DuxB0
 p/1yD2RxnfG4/6yGMerISuCJivZp0ugDI4S1OIDMQsI+n7Q95aJjFwIis2phb/011DqwMF/7H+/
 WvV9SC8x8ho/ykLj8ew9Qafjq++Txbpe7Gzm30EK//W8g4La1uS56J/qFrmGKPZ5ELwBUrshshP
 zn3rVq
X-Gm-Gg: ASbGnctYXSOntqXL7s4Z+jqT7tsaz/YIhHLlQfWOQ2+Z3iJJ/WfZsb0a9D63oqE76Vn
 945wPQ2ovXLfE+ouxyT8BGV5sDNe8KEmu7qv66lo5F18yu3dZKRumdhyb/+QBvucCR1ynfhFxof
 4aZ+Akqhzi3VUuu/Q8ayROzA1NNm4OkD00kZ3WpV07ESPgmPrwhmCMFlXEqjbtZ/bf8HCNKJPms
 5X9d6XtUq2AbOa+uEYRWgKI778f7u1lnKlZcd0ZE8aMkwmgQb1/waERinVG8/vtOCculuYRzPef
 BGsUksM0L+DkXGRxLQn/hkLtQb6pfoQb65drnQ+4oryo208d0XBOq5pCT+PHACKJUECn/Ty2B5H
 FqibL5jIEJIs8wQJe+UgzJCZyiP8mwzq5mSksX01GIJN7D2lIQ6S20r57XGeVlrpzAQ==
X-Received: by 2002:a17:907:6e90:b0:ac3:121e:f2cb with SMTP id
 a640c23a62f3a-ac7d16bc073mr221567366b.1.1743751557433; 
 Fri, 04 Apr 2025 00:25:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3xX6cJ0ZuIBD0jeNhqgsPhwmbj5rfBAgKK+ofJXZ7lsbB8oxwIRwRWyGI5aXrOiRqZ5jBnQ==
X-Received: by 2002:a17:907:6e90:b0:ac3:121e:f2cb with SMTP id
 a640c23a62f3a-ac7d16bc073mr221565166b.1.1743751557047; 
 Fri, 04 Apr 2025 00:25:57 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac7bfe5d6absm212679766b.16.2025.04.04.00.25.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Apr 2025 00:25:56 -0700 (PDT)
Message-ID: <f3f53d44-379a-42a4-9638-9e8532a83624@redhat.com>
Date: Fri, 4 Apr 2025 09:25:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, ilpo.jarvinen@linux.intel.com
References: <20250403053127.4777-1-nitjoshi@gmail.com>
 <dbb95bde-8163-4799-8414-c60ba1c69aa5@redhat.com>
 <cf577f4d-ebfe-4b23-b918-2d59d9e81271@gmail.com>
In-Reply-To: <cf577f4d-ebfe-4b23-b918-2d59d9e81271@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IpqPLea2K9xTrBexeUcSzLaSlCaPKe2H8oOE_0t6820_1743751558
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, On 4-Apr-25 8:44 AM, Nitin Joshi wrote: > Hello
 Hans, > > Thank you for reviewing patch. > > On 4/3/25 19:34, Hans de Goede
 wrote: >> Hi Nitin, >> >> On 3-Apr-25 7:31 AM, Nitin Joshi wrote: >>> New
 Le [...] 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u0bRM-0001EC-0D
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad-acpi: Add
 support for new hotkey for camera shutter switch
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
From: Hans de Goede via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Hans de Goede <hdegoede@redhat.com>
Cc: mpearson-lenovo@squebb.ca, ibm-acpi-devel@lists.sourceforge.net,
 njoshi1@lenovo.com, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTml0aW4sCgpPbiA0LUFwci0yNSA4OjQ0IEFNLCBOaXRpbiBKb3NoaSB3cm90ZToKPiBIZWxs
byBIYW5zLAo+IAo+IFRoYW5rIHlvdSBmb3IgcmV2aWV3aW5nIHBhdGNoLgo+IAo+IE9uIDQvMy8y
NSAxOTozNCwgSGFucyBkZSBHb2VkZSB3cm90ZToKPj4gSGkgTml0aW4sCj4+Cj4+IE9uIDMtQXBy
LTI1IDc6MzEgQU0sIE5pdGluIEpvc2hpIHdyb3RlOgo+Pj4gTmV3IExlbm92byBUaGlua3BhZCBt
b2RlbHMsIGUuZy4gdGhlICdYOS0xNCBHZW4gMScgYW5kICdYOS0xNSBHZW4gMScKPj4+IGhhcyBu
ZXcgc2hvcnRjdXQgb24gRjkga2V5IGkuZSB0byBzd2l0Y2ggY2FtZXJhIHNodXR0ZXIgYW5kIGl0
Cj4+PiBzZW5kIGEgbmV3IDB4MTMxYiBoa2V5IGV2ZW50IHdoZW4gRjkga2V5IGlzIHByZXNzZWQu
Cj4+Pgo+Pj4gVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciBuZXcgaGtleSAweDEzMWIuCj4+
PiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBKb3NoaSA8bml0am9zaGlAZ21haWwuY29tPgo+Pgo+PiBE
b2VzIHRoZSBFQyBhbHNvIGFjdHVhbGx5IGVuYWJsZS9kaXNhYmxlIHRoZSBjYW1lcmEgaW4gcmVz
cG9uc2UgdG8KPj4gdGhpcyBuZXcgaG90a2V5LCBvciBpcyB0aGlzIHB1cmVseSBhIHJlcXVlc3Qg
dG8gdXNlcnNwYWNlIC8gdGhlIE9TCj4+IHRvIGVuYWJsZS9kaXNhYmxlIHRoZSBjYW1lcmEKPiBF
bmFibGUvZGlzYWJsZSBpcyBhY3R1YWxseSBiZWluZyBkb25lIGJ5IEVDLiBDYW1lcmEgZW5hYmxl
bWVudCBmb3IgdGhlc2UgcHJvZHVjdHMgYXJlIHN0aWxsIGluIHRlc3RpbmcgcGhhc2UuCj4gPwoK
T2ssIEkgYXNzdW1lIHdlIGNhbiBhbHNvIGdldCB0aGUgc3RhdGUgKGVuYWJsZWQgdnMgZGlzYWJs
ZWQpCmUuZy4gZnJvbSB0aGUgZXZlbnQ/IEluIHRoYXQgY2FzZSB0aGUgZXZlbnRzIHNob3VsZCBi
ZSByZXBvcnRlZCB1c2luZwpFVl9TVywgU1dfQ0FNRVJBX0xFTlNfQ09WRVIgYW5kIHdlIHNob3Vs
ZCBhbHNvIGdldCB0aGUgaW5pdGlhbApzdGF0ZSBhbmQgc2V0IHRoZSBzd2l0Y2ggdG8gdGhlIGlu
aXRpYWwgc3RhdGUgYmVmb3JlIHJlZ2lzdGVyaW5nCnRoZSBpbnB1dCBkZXZpY2UuCgpSZWdhcmRz
LAoKSGFucwoKCgoKPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRf
YWNwaS5jIHwgMiArKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9k
cml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4+IGluZGV4IDAzODRjZjMxMTg3
OC4uODBmNzdmOWM3YTU4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhp
bmtwYWRfYWNwaS5jCj4+PiArKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMKPj4+IEBAIC0xODIsNiArMTgyLDcgQEAgZW51bSB0cGFjcGlfaGtleV9ldmVudF90IHsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICogZGlyZWN0bHkgaW4gdGhlIHNwYXJzZS1rZXltYXAuCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4gwqDCoMKgwqDCoCBU
UF9IS0VZX0VWX0FNVF9UT0dHTEXCoMKgwqDCoMKgwqDCoCA9IDB4MTMxYSwgLyogVG9nZ2xlIEFN
VCBvbi9vZmYgKi8KPj4+ICvCoMKgwqAgVFBfSEtFWV9FVl9DQU1FUkFTSFVUVEVSX1RPR0dMRSA9
IDB4MTMxYiwgLyogVG9nZ2xlIENhbWVyYSBTaHV0dGVyICovCj4+PiDCoMKgwqDCoMKgIFRQX0hL
RVlfRVZfRE9VQkxFVEFQX1RPR0dMRcKgwqDCoCA9IDB4MTMxYywgLyogVG9nZ2xlIHRyYWNrcG9p
bnQgZG91YmxldGFwIG9uL29mZiAqLwo+Pj4gwqDCoMKgwqDCoCBUUF9IS0VZX0VWX1BST0ZJTEVf
VE9HR0xFwqDCoMKgID0gMHgxMzFmLCAvKiBUb2dnbGUgcGxhdGZvcm0gcHJvZmlsZSBpbiAyMDI0
IHN5c3RlbXMgKi8KPj4+IMKgwqDCoMKgwqAgVFBfSEtFWV9FVl9QUk9GSUxFX1RPR0dMRTLCoMKg
wqAgPSAweDE0MDEsIC8qIFRvZ2dsZSBwbGF0Zm9ybSBwcm9maWxlIGluIDIwMjUgKyBzeXN0ZW1z
ICovCj4+PiBAQCAtMzI3MSw2ICszMjcyLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBrZXlfZW50
cnkga2V5bWFwX2xlbm92b1tdIF9faW5pdGNvbnN0ID0gewo+Pj4gwqDCoMKgwqDCoMKgICogYWZ0
ZXIgc3dpdGNoaW5nIHRvIHNwYXJzZSBrZXltYXAgc3VwcG9ydC4gVGhlIG1hcHBpbmdzIGFib3Zl
IHVzZSB0cmFuc2xhdGVkCj4+PiDCoMKgwqDCoMKgwqAgKiBzY2FuY29kZXMgdG8gcHJlc2VydmUg
dUFQSSBjb21wYXRpYmlsaXR5LCBzZWUgdHBhY3BpX2lucHV0X3NlbmRfa2V5KCkuCj4+PiDCoMKg
wqDCoMKgwqAgKi8KPj4+ICvCoMKgwqAgeyBLRV9LRVksIFRQX0hLRVlfRVZfQ0FNRVJBU0hVVFRF
Ul9UT0dHTEUsIHsgS0VZX0NBTUVSQV9BQ0NFU1NfVE9HR0xFIH0gfSwKPj4+IMKgwqDCoMKgwqAg
eyBLRV9LRVksIDB4MTMxZCwgeyBLRVlfVkVORE9SIH0gfSwgLyogU3lzdGVtIGRlYnVnIGluZm8s
IHNpbWlsYXIgdG8gb2xkIFRoaW5rUGFkIGtleSAqLwo+Pj4gwqDCoMKgwqDCoCB7IEtFX0tFWSwg
MHgxMzIwLCB7IEtFWV9MSU5LX1BIT05FIH0gfSwKPj4+IMKgwqDCoMKgwqAgeyBLRV9LRVksIFRQ
X0hLRVlfRVZfVFJBQ0tfRE9VQkxFVEFQIC8qIDB4ODAzNiAqLywgeyBLRVlfUFJPRzQgfSB9LAo+
Pgo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpp
Ym0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1h
Y3BpLWRldmVsCg==
