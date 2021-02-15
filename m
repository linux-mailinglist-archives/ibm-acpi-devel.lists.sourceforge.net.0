Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8B31BB5F
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Feb 2021 15:49:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lBfBM-0007RS-WB; Mon, 15 Feb 2021 14:49:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lBfB6-0007PM-Qq
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 15 Feb 2021 14:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YRfK8Bk4mjeIdIQtIIcq3AS9gHjU8s1j/0AXF6Z/USM=; b=dShXFOQXYLkzVL3OfLQqoD83mN
 YF+a3uLDBkqaNIqNbHC6i2WYG/vklNuUVoeipK1EIzCY5B0yNss5uVfFxJd7jJLA9h5aDdV+uRDot
 86hyA13+P8p5jvhX44LqlEqEA0miVX+sh/leG6ZG6yanQ6CStvyuiWP1qTEBEYbKpkX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YRfK8Bk4mjeIdIQtIIcq3AS9gHjU8s1j/0AXF6Z/USM=; b=KH24U08qa2rHlKuK1/4et22kCA
 ix5LUe1mW9T565fldYrTvnK3neAvhTg5XQ7unnnisj2DWqrIrQbu6e5cNWLzWhzOlaOtKHEtVmUOg
 7COfQyD3IPU6Q1/Q4C9sBB6yyndmqXYRej0EB1hqiHOxpC+o0oERaTUNBJddqs+CVE9k=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lBfAk-0003zD-W7
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 15 Feb 2021 14:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613400497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YRfK8Bk4mjeIdIQtIIcq3AS9gHjU8s1j/0AXF6Z/USM=;
 b=IZLUtMrk/XkvSEzOqq3WyuHvkIOwfgywrRCMM5b6Lvy6275EKSNkVVivpNVoMHx3JsLBeG
 gIciIPAXhNu650yYZY/RqyjdtrhbBZPKJQgy4vgaqKltXcqxtiWNMXKiwcjgwpg1blNoZy
 kJAk8UG6PqmI8WeK57eQ29gauCnyO+I=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-138---XEGT33Om6-M6zOBl_Zdw-1; Mon, 15 Feb 2021 09:48:13 -0500
X-MC-Unique: --XEGT33Om6-M6zOBl_Zdw-1
Received: by mail-ej1-f72.google.com with SMTP id aq28so4497955ejc.20
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Feb 2021 06:48:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YRfK8Bk4mjeIdIQtIIcq3AS9gHjU8s1j/0AXF6Z/USM=;
 b=UXS30wtBL0dJmkVCtfdDCQFf1Uoi1bLdyy/zCJlcd7WznosOJojbgTUUjuHht/XrYE
 ID97nIJbVeBTnThYnARPPk87DtrZvhwTyD8P/G4N7nD2WmPC/7eCWerc1FXj7fmOTNEg
 CzTAFo55nq1bFiqVJYR2KcGFNkmqwNIHQ+HawCcHtEAeM1Dj58nfaNpXKl+4mDzn/Nq3
 pa1jcWm3j01zhdOK8JAEnCTREjO4kfQPt5VWGboV3vlDZTD8WjFYsDX91LqcavpaqVf3
 gsTEG4eT2d8MUu4OrPMmDD+eGunZMWSGA+0AmzAT8FQ9isfSHU5mHTVh+j1H8oVTMHZB
 nuxg==
X-Gm-Message-State: AOAM533ekDsncdmT/77SZRi1NOi6QEMufP7rOJNCA9jlhYZXgo9HzwrR
 9cRMkWrS373CKsY7KMsdOt3aPi1sD+oQa5wZrR7M/t5vbcfx04+41aNUIqlk3XBO5oay2ZrPwtb
 Yfwz5o3eb7cFVtjFTTMEyu3rfV4U3qi5oDjY=
X-Received: by 2002:a50:fe89:: with SMTP id d9mr16264763edt.57.1613400492608; 
 Mon, 15 Feb 2021 06:48:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw5qa5DaqB3+ojJU8jKMD+t9ZZ9UYr6VQDIhV1y97P5RjIUMPnA+lywIGrS+cP7iM/mWq7AGA==
X-Received: by 2002:a50:fe89:: with SMTP id d9mr16264755edt.57.1613400492427; 
 Mon, 15 Feb 2021 06:48:12 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id w8sm9737368edd.39.2021.02.15.06.48.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Feb 2021 06:48:12 -0800 (PST)
To: Nitin Joshi <nitjoshi@gmail.com>
References: <20210212055856.232702-1-njoshi1@lenovo.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <aebc72ff-769b-f0b0-6cf6-186963bf726b@redhat.com>
Date: Mon, 15 Feb 2021 15:48:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210212055856.232702-1-njoshi1@lenovo.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBfAk-0003zD-W7
Subject: Re: [ibm-acpi-devel] [PATCH 1/2] platorm/x86: thinkpad_acpi: sysfs
 interface to reduce wlan tx power
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
Cc: Mark Pearson <markpearson@lenovo.com>, ibm-acpi-devel@lists.sourceforge.net,
 Nitin Joshi <njoshi1@lenovo.com>, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTml0aW4sCgpPbiAyLzEyLzIxIDY6NTggQU0sIE5pdGluIEpvc2hpIHdyb3RlOgo+IFNvbWUg
bmV3ZXIgVGhpbmtwYWRzIGhhdmUgdGhlIFdMQU4gYW50ZW5uYSBwbGFjZWQgY2xvc2UgdG8gdGhl
IFdXQU4KPiBhbnRlbm5hLiBJbiB0aGVzZSBjYXNlcyBGQ0MgY2VydGlmaWNhdGlvbiByZXF1aXJl
cyB0aGF0IHdoZW4gV1dBTiBpcwo+IGFjdGl2ZSB3ZSByZWR1Y2UgV0xBTiB0cmFuc21pc3Npb24g
cG93ZXIuIEEgbmV3IER5bmFtaWMgUG93ZXIKPiBSZWR1Y3Rpb24gQ29udHJvbCAoRFBSQykgbWV0
aG9kIGlzIGF2YWlsYWJsZSBmcm9tIHRoZSBCSU9TIG9uIHRoZXNlCj4gcGxhdGZvcm1zIHRvIHJl
ZHVjZSBvciByZXN0b3JlIFdMQU4gVHggcG93ZXIuCj4gCj4gVGhpcyBwYXRjaCBwcm92aWRlcyBh
IHN5c2ZzIGludGVyZmFjZSB0aGF0IHVzZXJzcGFjZSBjYW4gdXNlIHRvIGFkanVzdCB0aGUKPiBX
TEFOIHBvd2VyIGFwcHJvcHJpYXRlbHkuCj4gCj4gUmV2aWV3ZWQtYnk6IE1hcmsgUGVhcnNvbiA8
bWFya3BlYXJzb25AbGVub3ZvLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBKb3NoaSA8bmpv
c2hpMUBsZW5vdm8uY29tPgoKVGhpcyBwYXRjaCBhcyB3ZWxsIGFzIHBhdGNoIDIvMiBnZW5lcmFs
bHkgbG9vayBvayB0byBtZS4KClRoZSBvbmUgdGhpbmcgd2hpY2ggc3RhbmRzIG91dCBpcyB0aGU6
CgoJCSp3bGFuX3R4cmVkdWNlID0gLTE7CgpSZXNwOgoKCQkqd3dhbl9hbnRlbm5hdHlwZSA9IC0x
OwoKCWRlZmF1bHQ6CgkJcmV0dXJuIHN5c2ZzX2VtaXQoYnVmLCAidW5rbm93biB0eXBlXG4iKTsK
CkJpdHMsIHdoaWNoIEJhcm5hYsOhcyBhbHJlYWR5IHBvaW50ZWQgb3V0LgoKSWYgeW91IGNhbiBw
cmVwYXJlIGEgdjIgb2YgdGhpcyBwYXRjaC1zZXQgYWRkcmVzc2luZyBhbGwgdGhlCnJldmlldyBy
ZW1hcmtzIHdoaWNoIHlvdSBoYXZlIHJlY2VpdmVkIHNvIGZhciB0aGVuIHRoYXQKd291bGQgYmUg
Z3JlYXQuCgpSZWdhcmRzLAoKSGFucwoKCgoKPiAtLS0KPiAgLi4uL2FkbWluLWd1aWRlL2xhcHRv
cHMvdGhpbmtwYWQtYWNwaS5yc3QgICAgIHwgIDE4ICsrKwo+ICBkcml2ZXJzL3BsYXRmb3JtL3g4
Ni90aGlua3BhZF9hY3BpLmMgICAgICAgICAgfCAxMzYgKysrKysrKysrKysrKysrKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMTU0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9hZG1pbi1ndWlkZS9sYXB0b3BzL3RoaW5rcGFkLWFjcGkucnN0IGIvRG9jdW1lbnRh
dGlvbi9hZG1pbi1ndWlkZS9sYXB0b3BzL3RoaW5rcGFkLWFjcGkucnN0Cj4gaW5kZXggNWZlMWFk
ZTg4YzE3Li4xMDQxMDgxMWI5OTAgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1n
dWlkZS9sYXB0b3BzL3RoaW5rcGFkLWFjcGkucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9hZG1p
bi1ndWlkZS9sYXB0b3BzL3RoaW5rcGFkLWFjcGkucnN0Cj4gQEAgLTUxLDYgKzUxLDcgQEAgZGV0
YWlsZWQgZGVzY3JpcHRpb24pOgo+ICAJLSBVV0IgZW5hYmxlIGFuZCBkaXNhYmxlCj4gIAktIExD
RCBTaGFkb3cgKFByaXZhY3lHdWFyZCkgZW5hYmxlIGFuZCBkaXNhYmxlCj4gIAktIExhcCBtb2Rl
IHNlbnNvcgo+ICsJLSBXTEFOIHRyYW5zbWlzc2lvbiBwb3dlciBjb250cm9sCj4gIAo+ICBBIGNv
bXBhdGliaWxpdHkgdGFibGUgYnkgbW9kZWwgYW5kIGZlYXR1cmUgaXMgbWFpbnRhaW5lZCBvbiB0
aGUgd2ViCj4gIHNpdGUsIGh0dHA6Ly9pYm0tYWNwaS5zZi5uZXQvLiBJIGFwcHJlY2lhdGUgYW55
IHN1Y2Nlc3Mgb3IgZmFpbHVyZQo+IEBAIC0xNDQ3LDYgKzE0NDgsMjMgQEAgdGhleSBkaWZmZXIg
YmV0d2VlbiBkZXNrIGFuZCBsYXAgbW9kZS4KPiAgVGhlIHByb3BlcnR5IGlzIHJlYWQtb25seS4g
SWYgdGhlIHBsYXRmb3JtIGRvZXNuJ3QgaGF2ZSBzdXBwb3J0IHRoZSBzeXNmcwo+ICBjbGFzcyBp
cyBub3QgY3JlYXRlZC4KPiAgCj4gK1dMQU4gdHJhbnNtaXNzaW9uIHBvd2VyIGNvbnRyb2wKPiAr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiArCj4gK3N5c2ZzOiB3bGFuX3R4X3N0
cmVuZ3RoX3JlZHVjZQo+ICsKPiArU29tZSBuZXdlciBUaGlua3BhZHMgaGF2ZSB0aGUgV0xBTiBh
bnRlbm5hIHBsYWNlZCBjbG9zZSB0byB0aGUgV1dBTiBhbnRlbm5hLgo+ICtUaGlzIGludGVyZmFj
ZSB3aWxsIGJlIHVzZWQgYnkgdXNlcnNwYWNlIHRvIHJlZHVjZSB0aGUgV0xBTiBUeCBwb3dlciBz
dHJlbmd0aAo+ICt3aGVuIFdXQU4gaXMgYWN0aXZlLCBhcyBpcyByZXF1aXJlZCBmb3IgRkNDIGNl
cnRpZmljYXRpb24uCj4gKwo+ICtUaGUgYXZhaWxhYmxlIGNvbW1hbmRzIGFyZTo6Cj4gKwo+ICsg
ICAgICAgIGVjaG8gJzAnID4gL3N5cy9kZXZpY2VzL3BsYXRmb3JtL3RoaW5rcGFkX2FjcGkvd2xh
bl90eF9zdHJlbmd0aF9yZWR1Y2UKPiArICAgICAgICBlY2hvICcxJyA+IC9zeXMvZGV2aWNlcy9w
bGF0Zm9ybS90aGlua3BhZF9hY3BpL3dsYW5fdHhfc3RyZW5ndGhfcmVkdWNlCj4gKwo+ICtUaGUg
Zmlyc3QgY29tbWFuZCByZXN0b3JlcyB0aGUgd2xhbiB0cmFuc21pc3Npb24gcG93ZXIgYW5kIHRo
ZSBsYXR0ZXIgb25lCj4gK3JlZHVjZXMgd2xhbiB0cmFuc21pc3Npb24gcG93ZXIuCj4gKwo+ICBF
WFBFUklNRU5UQUw6IFVXQgo+ICAtLS0tLS0tLS0tLS0tLS0tLQo+ICAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJpdmVycy9wbGF0Zm9ybS94
ODYvdGhpbmtwYWRfYWNwaS5jCj4gaW5kZXggZjNlOGVjYThkODZkLi42ZGJiZDRhMTQyNjQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gKysrIGIv
ZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gQEAgLTk5ODMsNiArOTk4Mywx
MzggQEAgc3RhdGljIHN0cnVjdCBpYm1fc3RydWN0IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEgPSB7
Cj4gIAkuZXhpdCA9IHByb3hzZW5zb3JfZXhpdCwKPiAgfTsKPiAgCj4gKy8qKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqCj4gKyAqIERQUkMoRHluYW1pYyBQb3dlciBSZWR1Y3Rpb24gQ29udHJvbCkgc3ViZHJpdmVy
LCBmb3IgdGhlIExlbm92byBXV0FOCj4gKyAqIGFuZCBXTEFOIGZlYXR1cmUuCj4gKyAqLwo+ICsj
ZGVmaW5lIERQUkNfR0VUX1dMQU5fU1RBVEUgICAgICAgICAgICAgMHgyMDAwMAo+ICsjZGVmaW5l
IERQUkNfU0VUX1dMQU5fUE9XRVJfUkVEVUNFICAgICAgMHgwMDAzMDAxMAo+ICsjZGVmaW5lIERQ
UkNfU0VUX1dMQU5fUE9XRVJfRlVMTCAgICAgICAgMHgwMDAzMDEwMAo+ICtzdGF0aWMgaW50IGhh
c193bGFudHhyZWR1Y2U7Cj4gK3N0YXRpYyBpbnQgd2xhbl90eHJlZHVjZTsKPiArCj4gK3N0YXRp
YyBpbnQgZHByY19jb21tYW5kKGludCBjb21tYW5kLCBpbnQgKm91dHB1dCkKPiArewo+ICsJYWNw
aV9oYW5kbGUgZHByY19oYW5kbGU7Cj4gKwo+ICsJaWYgKEFDUElfRkFJTFVSRShhY3BpX2dldF9o
YW5kbGUoaGtleV9oYW5kbGUsICJEUFJDIiwgJmRwcmNfaGFuZGxlKSkpIHsKPiArCQkvKiBQbGF0
Zm9ybSBkb2Vzbid0IHN1cHBvcnQgRFBSQyAqLwo+ICsJCXJldHVybiAtRU5PREVWOwo+ICsJfQo+
ICsKPiArCWlmICghYWNwaV9ldmFsZihkcHJjX2hhbmRsZSwgb3V0cHV0LCBOVUxMLCAiZGQiLCBj
b21tYW5kKSkKPiArCQlyZXR1cm4gLUVJTzsKPiArCj4gKwkvKgo+ICsJICogTUVUSE9EX0VSUiBn
ZXRzIHJldHVybmVkIG9uIGRldmljZXMgd2hlcmUgZmV3IGNvbW1hbmRzIGFyZSBub3Qgc3VwcG9y
dGVkCj4gKwkgKiBmb3IgZXhhbXBsZSBXTEFOIHBvd2VyIHJlZHVjZSBjb21tYW5kIGlzIG5vdCBz
dXBwb3J0ZWQgb24gc29tZSBkZXZpY2VzLgo+ICsJICovCj4gKwlpZiAoKm91dHB1dCAmIE1FVEhP
RF9FUlIpCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4g
K3N0YXRpYyBpbnQgZ2V0X3dsYW5fc3RhdGUoaW50ICpoYXNfd2xhbnR4cmVkdWNlLCBpbnQgKnds
YW5fdHhyZWR1Y2UpCj4gK3sKPiArCWludCBvdXRwdXQsIGVycjsKPiArCj4gKwkvKiBHZXQgY3Vy
cmVudCBXTEFOIFBvd2VyIFRyYW5zbWlzc2lvbiBzdGF0ZSAqLwo+ICsJZXJyID0gZHByY19jb21t
YW5kKERQUkNfR0VUX1dMQU5fU1RBVEUsICZvdXRwdXQpOwo+ICsJaWYgKGVycikKPiArCQlyZXR1
cm4gZXJyOwo+ICsKPiArCWlmIChvdXRwdXQgJiBCSVQoNCkpCj4gKwkJKndsYW5fdHhyZWR1Y2Ug
PSAxOwo+ICsJZWxzZSBpZiAob3V0cHV0ICYgQklUKDgpKQo+ICsJCSp3bGFuX3R4cmVkdWNlID0g
MDsKPiArCWVsc2UKPiArCQkqd2xhbl90eHJlZHVjZSA9IC0xOwo+ICsKPiArCSpoYXNfd2xhbnR4
cmVkdWNlID0gMTsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICsvKiBzeXNmcyB3bGFuIGVudHJ5
ICovCj4gK3N0YXRpYyBzc2l6ZV90IHdsYW5fdHhfc3RyZW5ndGhfcmVkdWNlX3Nob3coc3RydWN0
IGRldmljZSAqZGV2LAo+ICsJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gKwkJ
CQljaGFyICpidWYpCj4gK3sKPiArCWludCBlcnI7Cj4gKwo+ICsJZXJyID0gZ2V0X3dsYW5fc3Rh
dGUoJmhhc193bGFudHhyZWR1Y2UsICZ3bGFuX3R4cmVkdWNlKTsKPiArCWlmIChlcnIpCj4gKwkJ
cmV0dXJuIGVycjsKPiArCj4gKwlyZXR1cm4gc3lzZnNfZW1pdChidWYsICIlZFxuIiwgd2xhbl90
eHJlZHVjZSk7Cj4gK30KPiArCj4gK3N0YXRpYyBzc2l6ZV90IHdsYW5fdHhfc3RyZW5ndGhfcmVk
dWNlX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiArCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmli
dXRlICphdHRyLAo+ICsJCQkJY29uc3QgY2hhciAqYnVmLCBzaXplX3QgY291bnQpCj4gK3sKPiAr
CWludCBvdXRwdXQsIGVycjsKPiArCXVuc2lnbmVkIGxvbmcgdDsKPiArCj4gKwlpZiAocGFyc2Vf
c3RydG91bChidWYsIDEsICZ0KSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwl0cGFjcGlf
ZGlzY2xvc2VfdXNlcnRhc2soYXR0ci0+YXR0ci5uYW1lLAo+ICsJCQkJIldMQU4gdHggc3RyZW5n
dGggcmVkdWNlZCAlbHVcbiIsIHQpOwo+ICsKPiArCXN3aXRjaCAodCkgewo+ICsJY2FzZSAwOgo+
ICsJCWVyciA9IGRwcmNfY29tbWFuZChEUFJDX1NFVF9XTEFOX1BPV0VSX0ZVTEwsICZvdXRwdXQp
Owo+ICsJCWJyZWFrOwo+ICsJY2FzZSAxOgo+ICsJCWVyciA9IGRwcmNfY29tbWFuZChEUFJDX1NF
VF9XTEFOX1BPV0VSX1JFRFVDRSwgJm91dHB1dCk7Cj4gKwkJYnJlYWs7Cj4gKwlkZWZhdWx0Ogo+
ICsJCWVyciA9IC1FSU5WQUw7Cj4gKwkJZGV2X2VycigmdHBhY3BpX3BkZXYtPmRldiwgIlVua25v
d24gb3BlcmF0aW5nIG1vZGUuIElnbm9yaW5nXG4iKTsKPiArCQlicmVhazsKPiArCX0KPiArCj4g
KwlzeXNmc19ub3RpZnkoJnRwYWNwaV9wZGV2LT5kZXYua29iaiwgTlVMTCwgIndsYW5fdHhfc3Ry
ZW5ndGhfcmVkdWNlIik7Cj4gKwlyZXR1cm4gY291bnQ7Cj4gK30KPiArc3RhdGljIERFVklDRV9B
VFRSX1JXKHdsYW5fdHhfc3RyZW5ndGhfcmVkdWNlKTsKPiArCj4gK3N0YXRpYyBpbnQgdHBhY3Bp
X2RwcmNfaW5pdChzdHJ1Y3QgaWJtX2luaXRfc3RydWN0ICppaWJtKQo+ICt7Cj4gKwlpbnQgd2xh
bnR4X2VyciwgZXJyOwo+ICsKPiArCXdsYW50eF9lcnIgPSBnZXRfd2xhbl9zdGF0ZSgmaGFzX3ds
YW50eHJlZHVjZSwgJndsYW5fdHhyZWR1Y2UpOwo+ICsJLyoKPiArCSAqIElmIHN1cHBvcnQgaXNu
J3QgYXZhaWxhYmxlIChFTk9ERVYpIGZvciBib3RoIGRldmljZXMgdGhlbiBxdWl0LCBidXQKPiAr
CSAqIGRvbid0IHJldHVybiBhbiBlcnJvci4KPiArCSAqLwo+ICsJaWYgKHdsYW50eF9lcnIgPT0g
LUVOT0RFVikKPiArCQlyZXR1cm4gMDsKPiArCS8qIE90aGVyd2lzZSwgaWYgdGhlcmUgd2FzIGFu
IGVycm9yIHJldHVybiBpdCAqLwo+ICsJaWYgKHdsYW50eF9lcnIgJiYgKHdsYW50eF9lcnIgIT0g
LUVOT0RFVikpCj4gKwkJcmV0dXJuIHdsYW50eF9lcnI7Cj4gKwo+ICsJaWYgKGhhc193bGFudHhy
ZWR1Y2UpIHsKPiArCQllcnIgPSBzeXNmc19jcmVhdGVfZmlsZSgmdHBhY3BpX3BkZXYtPmRldi5r
b2JqLAo+ICsJCQkJJmRldl9hdHRyX3dsYW5fdHhfc3RyZW5ndGhfcmVkdWNlLmF0dHIpOwo+ICsJ
CWlmIChlcnIpCj4gKwkJCXJldHVybiBlcnI7Cj4gKwl9Cj4gKwlyZXR1cm4gMDsKPiArfQo+ICsK
PiArc3RhdGljIHZvaWQgZHByY19leGl0KHZvaWQpCj4gK3sKPiArCWlmIChoYXNfd2xhbnR4cmVk
dWNlKQo+ICsJCXN5c2ZzX3JlbW92ZV9maWxlKCZ0cGFjcGlfcGRldi0+ZGV2LmtvYmosICZkZXZf
YXR0cl93bGFuX3R4X3N0cmVuZ3RoX3JlZHVjZS5hdHRyKTsKPiArfQo+ICsKPiArc3RhdGljIHN0
cnVjdCBpYm1fc3RydWN0IGRwcmNfZHJpdmVyX2RhdGEgPSB7Cj4gKwkubmFtZSA9ICJkcHJjIiwK
PiArCS5leGl0ID0gZHByY19leGl0LAo+ICt9Owo+ICsKPiAgLyoqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioK
PiAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioKPiAgICoKPiBAQCAtMTA0NzUsNiArMTA2MDcsMTAgQEAg
c3RhdGljIHN0cnVjdCBpYm1faW5pdF9zdHJ1Y3QgaWJtc19pbml0W10gX19pbml0ZGF0YSA9IHsK
PiAgCQkuaW5pdCA9IHRwYWNwaV9wcm94c2Vuc29yX2luaXQsCj4gIAkJLmRhdGEgPSAmcHJveHNl
bnNvcl9kcml2ZXJfZGF0YSwKPiAgCX0sCj4gKwl7Cj4gKwkJLmluaXQgPSB0cGFjcGlfZHByY19p
bml0LAo+ICsJCS5kYXRhID0gJmRwcmNfZHJpdmVyX2RhdGEsCj4gKwl9LAo+ICB9Owo+ICAKPiAg
c3RhdGljIGludCBfX2luaXQgc2V0X2libV9wYXJhbShjb25zdCBjaGFyICp2YWwsIGNvbnN0IHN0
cnVjdCBrZXJuZWxfcGFyYW0gKmtwKQo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGkt
ZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
