Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F2896965D
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  3 Sep 2024 10:00:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1slORy-0000xT-Ma;
	Tue, 03 Sep 2024 07:59:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1slORx-0000xM-5y
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 03 Sep 2024 07:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hRoIG0TCGqG1Itvf9cxHn6HKDOm6/NT/d0f3e2vcwNM=; b=EydzZO0u0sI83Ge290yzi7nvRW
 UJC2DtvXSZ9QAJJcsPe4BRfH5ZTAAk4awnGqwtLqXK82TTPnjNtpWbRuez5QeH2O8cBkdkaVkSwEx
 ctwZPaPfRo/pabLT4auWHQvt3yHS92Fokb0o/hMaWEtbQES3NFnrDXIblAUBzbQxrSMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hRoIG0TCGqG1Itvf9cxHn6HKDOm6/NT/d0f3e2vcwNM=; b=ag9L0LhxyNSiRjuBQH8HdjEwhY
 uY2/EuWvfrmJSh9STchYFekqwmBqJYIsFyDs2FMzvPDydRjQx5B9c0u5/92fCSNxthsmYAeJzpwck
 GeOE521I6SynKOnFTmRwZlEVi/p1+gk10tkkDlqo4XLz2WnRJ/oXptrPVN60su13zebI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slORw-0004Va-7Z for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 03 Sep 2024 07:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725350373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hRoIG0TCGqG1Itvf9cxHn6HKDOm6/NT/d0f3e2vcwNM=;
 b=Z6MBJWVRz0JEErBu/+lJ9M6xhLWFbhDMxnqmAkWILkpS0ZyDaIvWuUOj0JjBWZ+C3ubLpN
 FDXuReftC1El1Uyiew20HMv8tFFB1rmhAxZa7vm7TFbZl4KBYaW4oWa3ttlWh2CiYsn243
 OtyuJdXoLr8HrXXmsEkkv0b9ph7bY2Y=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-63-ZYOdsRiyP06g_BNoQRsTGA-1; Tue, 03 Sep 2024 03:59:32 -0400
X-MC-Unique: ZYOdsRiyP06g_BNoQRsTGA-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a86f0c0af53so433796866b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 03 Sep 2024 00:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725350371; x=1725955171;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hRoIG0TCGqG1Itvf9cxHn6HKDOm6/NT/d0f3e2vcwNM=;
 b=MQZr5izj3kcezeB0g4AlLxZVkHSeyT0zPQvY4+YKJ3Xt9McGoNEGD8pq2K2pDw5aXN
 WlJggS1iGwC998ZYRN5uxHzMCW/4HXR/s0Jq63s0yU1hRuw5lFLmqyb9Q4zi//MeVmxb
 yR/4dvZzvgnJ/nqk0ia69lNNib40mFnsn5geMgMIBlapirm/UE6PmNpgaBhuEAjmT5yC
 efy9rFgvwAuALcsp1Fb+3zAQuCQ5Zr+3Fa8AveZvoIiO9CwVzpV/RtlfGs+RXZfLKrm1
 2skEJfObYXCZzlipH9aKY3Bjvf58zA4myyQ4gMzUZ1cknJP5+QGfCbYsUxRJrOhSuGJ1
 19xg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmGyw3xB1x+6vnHb040hi8GmdE8YdllJaeMI648HyM222p3FeGJeCSV0bcZJuy+pxr+IYFY7+Q6BXsjdtFMQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzboVI3YO41sQS6UI1gL5H06TqYbYQv7ByDGQO8MMZB51LNT6qJ
 BOsiwrTIY69pz/6qxW6Vb2DkM+0d7fbI/bxPmY/aIYc7YmD9h2D+BJh3nUWYRkNEIFgLrnKtmq1
 7xleNSgyi0XdjlOY0koldyOpwlZv41QjfFd4tG+eyQw2XaeHb7djZCOzfJfKP3flYgVYpcace
X-Received: by 2002:a17:907:7287:b0:a7d:2498:f927 with SMTP id
 a640c23a62f3a-a897fa7500emr1131944466b.44.1725350371296; 
 Tue, 03 Sep 2024 00:59:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjdHzldPZjnif2/B+2p4iyMwbTmPvp3Ldw3QQZjzqCYFmufDsmpmju1XQyzbQRwCafLEM5Iw==
X-Received: by 2002:a17:907:7287:b0:a7d:2498:f927 with SMTP id
 a640c23a62f3a-a897fa7500emr1131942366b.44.1725350370823; 
 Tue, 03 Sep 2024 00:59:30 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a8989196b79sm647996566b.112.2024.09.03.00.59.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2024 00:59:30 -0700 (PDT)
Message-ID: <485b452b-360b-4464-b606-8adb8dec5c5f@redhat.com>
Date: Tue, 3 Sep 2024 09:59:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthias Fetzer <kontakt@matthias-fetzer.de>
References: <f99e558d-c62a-41eb-93b3-cf00c016d907@stanley.mountain>
 <9566460c-4d0f-4ead-9fa1-a265c936c3d9@redhat.com>
 <f6f5a75d-5014-49be-a82d-d8d4b5192e3b@matthias-fetzer.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <f6f5a75d-5014-49be-a82d-d8d4b5192e3b@matthias-fetzer.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 9/2/24 10:26 PM, Matthias Fetzer wrote: > Hi Hans,
 > > Am 27.08.24 um 11:09 schrieb Hans de Goede: >> Hi Dan, >> >> On 8/27/24
 10:45 AM, Dan Carpenter wrote: >>> Hello Matthias Fetzer, >>> >>> Comm [...]
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1slORw-0004Va-7Z
Subject: Re: [ibm-acpi-devel] [bug report] platform/x86: thinkpad_acpi: Add
 Thinkpad Edge E531 fan support
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
Cc: ibm-acpi-devel@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@linaro.org>, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA5LzIvMjQgMTA6MjYgUE0sIE1hdHRoaWFzIEZldHplciB3cm90ZToKPiBIaSBIYW5z
LAo+IAo+IEFtIDI3LjA4LjI0IHVtIDExOjA5IHNjaHJpZWIgSGFucyBkZSBHb2VkZToKPj4gSGkg
RGFuLAo+Pgo+PiBPbiA4LzI3LzI0IDEwOjQ1IEFNLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+Pj4g
SGVsbG8gTWF0dGhpYXMgRmV0emVyLAo+Pj4KPj4+IENvbW1pdCA1N2QwNTU3ZGZhNDkgKCJwbGF0
Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IEFkZCBUaGlua3BhZCBFZGdlCj4+PiBFNTMxIGZhbiBz
dXBwb3J0IikgZnJvbSBBdWcgMTYsIDIwMjQgKGxpbnV4LW5leHQpLCBsZWFkcyB0byB0aGUKPj4+
IGZvbGxvd2luZyBTbWF0Y2ggc3RhdGljIGNoZWNrZXIgd2FybmluZzoKPj4+Cj4+PiDCoMKgwqDC
oGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYzo4Mzg3IGZhbl9zZXRfZW5hYmxl
KCkKPj4+IMKgwqDCoMKgZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdzJy4KPj4+Cj4+PiBk
cml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4+IMKgwqDCoMKgIDgzMTkgc3Rh
dGljIGludCBmYW5fc2V0X2VuYWJsZSh2b2lkKQo+Pj4gwqDCoMKgwqAgODMyMCB7Cj4+PiDCoMKg
wqDCoCA4MzIxwqDCoMKgwqDCoMKgwqDCoCB1OCBzOwo+Pj4gwqDCoMKgwqAgODMyMsKgwqDCoMKg
wqDCoMKgwqAgaW50IHJjOwo+Pj4gwqDCoMKgwqAgODMyMwo+Pj4gwqDCoMKgwqAgODMyNMKgwqDC
oMKgwqDCoMKgwqAgaWYgKCFmYW5fY29udHJvbF9hbGxvd2VkKQo+Pj4gwqDCoMKgwqAgODMyNcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRVBFUk07Cj4+PiDCoMKgwqDC
oCA4MzI2Cj4+PiDCoMKgwqDCoCA4MzI3wqDCoMKgwqDCoMKgwqDCoCBpZiAobXV0ZXhfbG9ja19r
aWxsYWJsZSgmZmFuX211dGV4KSkKPj4+IMKgwqDCoMKgIDgzMjjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVSRVNUQVJUU1lTOwo+Pj4gwqDCoMKgwqAgODMyOQo+Pj4g
wqDCoMKgwqAgODMzMMKgwqDCoMKgwqDCoMKgwqAgc3dpdGNoIChmYW5fY29udHJvbF9hY2Nlc3Nf
bW9kZSkgewo+Pj4gwqDCoMKgwqAgODMzMcKgwqDCoMKgwqDCoMKgwqAgY2FzZSBUUEFDUElfRkFO
X1dSX0FDUElfRkFOUzoKPj4+IMKgwqDCoMKgIDgzMzLCoMKgwqDCoMKgwqDCoMKgIGNhc2UgVFBB
Q1BJX0ZBTl9XUl9UUEVDOgo+Pj4gwqDCoMKgwqAgODMzM8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJjID0gZmFuX2dldF9zdGF0dXMoJnMpOwo+Pj4gwqDCoMKgwqAgODMzNMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyYykKPj4+IMKgwqDCoMKgIDgzMzXCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiDC
oMKgwqDCoCA4MzM2Cj4+PiDCoMKgwqDCoCA4MzM3wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyogRG9uJ3QgZ28gb3V0IG9mIGVtZXJnZW5jeSBmYW4gbW9kZSAqLwo+Pj4gwqDCoMKg
wqAgODMzOMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChzICE9IDcpIHsKPj4+
IMKgwqDCoMKgIDgzMznCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcyAmPSAweDA3Owo+Pj4gwqDCoMKgwqAgODM0MMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzIHw9IFRQX0VDX0ZBTl9BVVRPIHwgNDsgLyogbWlu
IGZhbiBzcGVlZCA0ICovCj4+PiDCoMKgwqDCoCA4MzQxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqAgODM0Mgo+Pj4gwqDCoMKgwqAgODM0M8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghYWNwaV9lY193cml0ZShmYW5fc3RhdHVzX29mZnNl
dCwgcykpCj4+PiDCoMKgwqDCoCA4MzQ0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJjID0gLUVJTzsKPj4+IMKgwqDCoMKgIDgzNDXCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIHsKPj4+IMKgwqDCoMKgIDgzNDbCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHBfZmVhdHVyZXMuZmFuX2N0cmxf
c3RhdHVzX3VuZGVmID0gMDsKPj4+IMKgwqDCoMKgIDgzNDfCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmMgPSAwOwo+Pj4gwqDCoMKgwqAgODM0OMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgIDgzNDnCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+IMKgwqDCoMKgIDgzNTAKPj4+IMKgwqDC
oMKgIDgzNTHCoMKgwqDCoMKgwqDCoMKgIGNhc2UgVFBBQ1BJX0ZBTl9XUl9BQ1BJX1NGQU46Cj4+
PiDCoMKgwqDCoCA4MzUywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmMgPSBmYW5f
Z2V0X3N0YXR1cygmcyk7Cj4+PiDCoMKgwqDCoCA4MzUzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKHJjKQo+Pj4gwqDCoMKgwqAgODM1NMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+IMKgwqDCoMKgIDgzNTUKPj4+IMKg
wqDCoMKgIDgzNTbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzICY9IDB4MDc7Cj4+
PiDCoMKgwqDCoCA4MzU3Cj4+PiDCoMKgwqDCoCA4MzU4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLyogU2V0IGZhbiB0byBhdCBsZWFzdCBsZXZlbCA0ICovCj4+PiDCoMKgwqDCoCA4
MzU5wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcyB8PSA0Owo+Pj4gwqDCoMKgwqAg
ODM2MAo+Pj4gwqDCoMKgwqAgODM2McKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
ICghYWNwaV9ldmFsZihzZmFuX2hhbmRsZSwgTlVMTCwgTlVMTCwgInZkIiwgcykpCj4+PiDCoMKg
wqDCoCA4MzYywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJjID0gLUVJTzsKPj4+IMKgwqDCoMKgIDgzNjPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBlbHNlCj4+PiDCoMKgwqDCoCA4MzY0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJjID0gMDsKPj4+IMKgwqDCoMKgIDgzNjXCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+IMKgwqDCoMKgIDgzNjYKPj4+IMKgwqDCoMKg
IDgzNjfCoMKgwqDCoMKgwqDCoMKgIGNhc2UgVFBBQ1BJX0ZBTl9XUl9BQ1BJX0ZBTlc6Cj4+PiDC
oMKgwqDCoCA4MzY4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFhY3BpX2V2
YWxmKGZhbndfaGFuZGxlLCBOVUxMLCBOVUxMLCAidmRkIiwgMHg4MTA2LCAweDA1KSkgewo+Pj4g
wqDCoMKgwqAgODM2OcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByYyA9IC1FSU87Cj4+PiDCoMKgwqDCoCA4MzcwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4gwqDCoMKgwqAgODM3McKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgIDgzNzLCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWFjcGlfZXZhbGYoZmFud19oYW5kbGUsIE5VTEwsIE5V
TEwsICJ2ZGQiLCAweDgxMDAsIDB4MDApKSB7Cj4+PiDCoMKgwqDCoCA4MzczwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJjID0gLUVJTzsKPj4+IMKgwqDC
oMKgIDgzNzTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YnJlYWs7Cj4+PiDCoMKgwqDCoCA4Mzc1wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+Pj4gwqDCoMKgwqAgODM3Ngo+Pj4gwqDCoMKgwqAgODM3N8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJjID0gMDsKPj4+Cj4+PiBzIGlzbid0IHNldCBvbiB0aGlzIHBhdGgKPj4+
Cj4+PiDCoMKgwqDCoCA4Mzc4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7
Cj4+PiDCoMKgwqDCoCA4Mzc5Cj4+PiDCoMKgwqDCoCA4MzgwwqDCoMKgwqDCoMKgwqDCoCBkZWZh
dWx0Ogo+Pj4gwqDCoMKgwqAgODM4McKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJj
ID0gLUVOWElPOwo+Pj4gwqDCoMKgwqAgODM4MsKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKg
wqAgODM4Mwo+Pj4gwqDCoMKgwqAgODM4NMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZm
YW5fbXV0ZXgpOwo+Pj4gwqDCoMKgwqAgODM4NQo+Pj4gwqDCoMKgwqAgODM4NsKgwqDCoMKgwqDC
oMKgwqAgaWYgKCFyYykKPj4+IC0tPiA4Mzg3wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdmRiZ19wcmludGsoVFBBQ1BJX0RCR19GQU4sCj4+PiDCoMKgwqDCoCA4Mzg4wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJmYW4gY29udHJvbDogc2V0
IGZhbiBjb250cm9sIHJlZ2lzdGVyIHRvIDB4JTAyeFxuIiwKPj4+IMKgwqDCoMKgIDgzODnCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcyk7Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgXgo+Pj4gSGVyZQo+Pj4KPj4+IMKgwqDCoMKgIDgzOTDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiByYzsKPj4+IMKgwqDCoMKgIDgzOTEgfQo+Pgo+PiBUaGFuayB5b3UgZm9yIHJlcG9ydGlu
ZyB0aGlzLgo+Pgo+PiBTaW5jZSB0aGlzIGlzIGp1c3QgYSBkZWJ1ZyBwcmludCBJIHRoaW5rIGl0
IGlzIGJlc3QgdG8gZml4IHRoaXMgYnkganVzdAo+PiBpbml0aWFsaXppbmcgcyB0byAwIHdoZW4g
aXQgaXMgZGVjbGFyZWQgYW5kIHRoZW4ganVzdCBsb2cgMAo+PiBpbiB0aGUgVFBBQ1BJX0ZBTl9X
Ul9BQ1BJX0ZBTlcgY2FzZS4KPj4KPj4gQW55b25lIGdvdCBhbnkgYmV0dGVyIHN1Z2dlc3Rpb25z
ID8KPj4KPj4gUmVnYXJkcywKPj4KPj4gSGFucwo+Pgo+Pgo+IAo+IFNpbmNlIHRoZXJlIGRvIG5v
dCBzZWVtIHRvIGJlIGFueSBvdGhlciBzdWdnZXN0aW9ucyBJJ2xsIGZpeCBpdCB0aGF0Cj4gd2F5
Lgo+IFNoYWxsIEkgbWFrZSBhIGNvbXBsZXRlbHkgbmV3IHBhdGNoIGZvciB0aGlzIHNpbmNlIGl0
IGlzIGFscmVhZHkgb24geW91cgo+IHJldmlldyBicmFuY2ggb3Igd291bGQgYSBmaXhlZCB2NSBi
ZSBlbm91Z2g/CgpQbGVhc2Ugc3VibWl0IGEgbmV3IHBhdGNoIG9uIHRvcCBvZiBwbGF0Zm9ybS1k
cml2ZXJzLXg4Ni9mb3ItbmV4dApvciBvbiB0b3Agb2YgcGxhdGZvcm0tZHJpdmVycy14ODYvcmV2
aWV3LWhhbnMgYWRkcmVzc2luZyBqdXN0IHRoaXMKd2FybmluZy4KClJlZ2FyZHMsCgpIYW5zCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNw
aS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRl
dmVsCg==
