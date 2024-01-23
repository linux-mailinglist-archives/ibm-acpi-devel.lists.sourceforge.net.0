Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 745CF838B51
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Jan 2024 11:03:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rSDce-0005FA-6U;
	Tue, 23 Jan 2024 10:03:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rSDcc-0005Ew-IL
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 10:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s4vHu7YI8ReVxaX7r2Q7HbGVkviOB+zSucOVAIBtWfo=; b=kGcfK9ODUNOh7pDP29uikrydfx
 zVxA2PxKR4pmGSn2nbSA6lF1QdM8uIprLqIITI2hW1U1u+8fzBVlluINQ4cGA/z2HgFUW985XIj4S
 9AbLqRVqbo8z6E94LBA9iGeTEpIy2TYbQgvwMQ4z1A8DJzGASQ+/QWP0THdcRlocIro0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s4vHu7YI8ReVxaX7r2Q7HbGVkviOB+zSucOVAIBtWfo=; b=TzboIlC9gG638MMF6LOkr00Z6x
 ciEEpvYCkjjYVuL9TXOQ34EaIRHVCiOKQwgNN50ch8DUwul+FarIewrhFIFP6m6Gt71CTNBKS30cr
 uwWNgcLAYpuZTBda3ngwuUyMfrNThsbp2zuYrXTIrM4wHk147IQO+uw35unRfIkRFbmM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rSDcY-0000nN-P9 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 10:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1706004176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s4vHu7YI8ReVxaX7r2Q7HbGVkviOB+zSucOVAIBtWfo=;
 b=O9110ghxjFCERK8jpL+cuF9rLph5QG2dU2RSBDX1Ur/zISACYbF1xCdEOuomIyd9NDEtGI
 0zn05DpjnOh4JEsAXG7Y6dtCQZXWuDLuzteZaCYT8CJxZWwQETVBo1+kkxBt8HFFR9+LAd
 2xd+gkV3A3jpYR/R7PYfKPhT6DaJvaY=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-tG03f3aUNjeFDEH0HWznrg-1; Tue, 23 Jan 2024 05:02:54 -0500
X-MC-Unique: tG03f3aUNjeFDEH0HWznrg-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a2fe4e38084so310926366b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 02:02:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706004173; x=1706608973;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=s4vHu7YI8ReVxaX7r2Q7HbGVkviOB+zSucOVAIBtWfo=;
 b=bazFtmq/iMLx/0ydTxWg3LxqBeHr0azBwOzQsJIkNy0XwJTQBJabnUuuZAV1o6GPsB
 K4nvotzP1TBgE1UOys2b+F5ApMXmGI6rPe4vrroBlUCjvm5qOpf0kF1wQYLKS8Yj1sac
 owQvi9tgJ60BIKMpi+GyGEQ0yRl2lGG9OvKrZjTbMo7uMtQHdH6U9yn38Eex2wOZcw0+
 vE0H7GKvDykTbSmquiLGGRc1yak+EYuQHGx706ixtEEKuYrfrOCTJsvJOGVRJQT36eQ3
 pbYqUaLkI3rcv/8s2QmhlfGng12LocSvay2nxf6OaWP/JDs+jX9sB7wX4UpzTAKt2Vcf
 xiMQ==
X-Gm-Message-State: AOJu0Ywp1mhVD09Gr9/oy9daHvSKgBtyUv9dUMmbANdxBBiTmhfFEBPE
 SNqxyTWYAApX5nQqIH5Vgz5oTsaA4PXwtwWVBIRMJlJ6AWHfmRyQD0C2Ly4uODG8zm14lHyoBkq
 NgCczY/6INyDYH01gHkbDodWP7Cbc6Dk1sSE3TjBC9DYkb3OVUWAsc+VD19OjGUWQeRF/3jZw6J
 BO+gzR
X-Received: by 2002:a17:906:8925:b0:a2a:c113:2677 with SMTP id
 fr37-20020a170906892500b00a2ac1132677mr5005476ejc.61.1706004173084; 
 Tue, 23 Jan 2024 02:02:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEO+GYn52urH/a0bKNAX+3N4NKHk+zEzHZBfj944S6lgMRMLAyXHUPiWz1dPLx8rvainBDQSQ==
X-Received: by 2002:a17:906:8925:b0:a2a:c113:2677 with SMTP id
 fr37-20020a170906892500b00a2ac1132677mr5005466ejc.61.1706004172785; 
 Tue, 23 Jan 2024 02:02:52 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 s2-20020a170906354200b00a293c6cc184sm14243632eja.24.2024.01.23.02.02.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jan 2024 02:02:52 -0800 (PST)
Message-ID: <17047781-70f4-40ce-8228-ea28f07ae108@redhat.com>
Date: Tue, 23 Jan 2024 11:02:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rafal Lalik <rafallalik@gmail.com>, ibm-acpi-devel@lists.sourceforge.net, 
 ilpo.jarvinen@linux.intel.com
References: <5367c372-a56e-4fae-9467-d27722eacea5@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <5367c372-a56e-4fae-9467-d27722eacea5@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 1/23/24 02:22, Rafal Lalik wrote: > Hi,
 > > I am experiencing
 issues with tpacpi module. It started with one of the kernel-6 versions,
 but cannot pin point exact version. It stated with being unabl [...] 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rSDcY-0000nN-P9
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAxLzIzLzI0IDAyOjIyLCBSYWZhbCBMYWxpayB3cm90ZToKPiBIaSwKPiAKPiBJIGFt
IGV4cGVyaWVuY2luZyBpc3N1ZXMgd2l0aCB0cGFjcGkgbW9kdWxlLiBJdCBzdGFydGVkIHdpdGgg
b25lIG9mIHRoZSBrZXJuZWwtNiB2ZXJzaW9ucywgYnV0IGNhbm5vdCBwaW4gcG9pbnQgZXhhY3Qg
dmVyc2lvbi4gSXQgc3RhdGVkIHdpdGggYmVpbmcgdW5hYmxlIHRvIGhpYmVybmF0ZSB0aGUgc3lz
dGVtLiBJIGZpZ3VyZWQgb3V0IGl0IHdhcyBkdWUgdG8gb25lIG9mIHRoZSB1ZGV2LXdvcmtlciBw
cm9jZXNzZXMgYmVpbmcgaW4gdGhlICd1bmludGVycnVwdGlibGUgc2xlZXAnIHN0YXRlLgo+IAo+
IEkgZGlnIHRoZSBpc3N1ZSBmdXJ0aGVyIGFuZCBmb3VuZCBvdXQgdGhhdCB0aGVyZSBhcmUgaXNz
dWVzIHdpdGggdGhlIHRoaW5rcGFkX2FjcGkgbW9kdWxlIHdoaWNoIGNyYXNoZXMgb24gbG9hZGlu
Zy4gaXQgd2FzIGF1dG9sb2FkZWQgc28gSSBibGFja2xpc3RlZCBpdCBhbmQgdGhlIGhpYmVybmF0
aW9uIGlzc3VlcyB3ZXJlIGdvbmUuCj4gCj4gQnV0IG5vdyB3aXRoIGl0IGJlaW5nIGJsYWNrbGlz
dGVkIG9uIGJvb3QsIEkgbWEgdHJ5aW5nIHRvIGxvYWQgaXQgbWFudWFsbHkgd2l0aCBmb2xsb3dp
bmcgcmVzdWx0Lgo+IAo+IMKgICMgbW9kcHJvYmUgdGhpbmtwYWRfYWNwaQo+IMKgIEtpbGxlZAoK
VGhlIGNyYXNoIHNlZW1zIHRvIGhhcHBlbiBvbiBtb2R1bGUgbG9hZGluZyB0aW1lLCBiZWZvcmUg
ZXZlbgp0aGUgbW9kdWxlJ3MgaW5pdCgpIGZ1bmN0aW9uIGlzIHJ1bi4KCllvdSBtZW50aW9uIHRo
YXQgeW91IGFyZSBzZWVpbmcgdGhpcyB3aXRoIG11bHRpcGxlIGtlcm5lbAp2ZXJzaW9ucyByaWdo
dCA/CgpTbyBJIGd1ZXNzIHRoaXMgaXMgc29tZXRoaW5nIHNwZWNpZmljIHRvIHlvdXIga2VybmVs
IGNvbmZpZ3VyYXRpb24KYW5kL29yIHRoZSBjb21waWxlciB5b3UgYXJlIHVzaW5nLgoKUmVnYXJk
cywKCkhhbnMKCgoKPiBkbWVzZyBzaG93cyBtZSB0aGlzOgo+IAo+IFvCoCA1OTAuNTMxODI5XSBC
VUc6IHVuYWJsZSB0byBoYW5kbGUgcGFnZSBmYXVsdCBmb3IgYWRkcmVzczogZmZmZmM5MDAwMzNl
YmU5OAo+IFvCoCA1OTAuNTMxODM4XSAjUEY6IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2Vy
bmVsIG1vZGUKPiBbwqAgNTkwLjUzMTg0MV0gI1BGOiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3Qt
cHJlc2VudCBwYWdlCj4gW8KgIDU5MC41MzE4NDVdIFBHRCAxMDAwMDAwNjcgUDREIDEwMDAwMDA2
NyBQVUQgMTAwMTJjMDY3IFBNRCAxMDc4NTMwNjcgUFRFIDAKPiBbwqAgNTkwLjUzMTg1Ml0gT29w
czogMDAwMCBbIzJdIFBSRUVNUFQgU01QIFBUSQo+IFvCoCA1OTAuNTMxODc0XSBDUFU6IDAgUElE
OiAxMDk4NSBDb21tOiBtb2Rwcm9iZSBUYWludGVkOiBQwqDCoMKgwqAgVUTCoMKgwqAgT8KgwqDC
oMKgwqDCoCA2LjcuMS1nZW50b28tcjEgIzEKPiBbwqAgNTkwLjUzMTg3OF0gSGFyZHdhcmUgbmFt
ZTogTEVOT1ZPIDIwQVJTMFhMMDAvMjBBUlMwWEwwMCwgQklPUyBHSkVUQTRXVyAoMi41NCApIDAz
LzI3LzIwMjAKPiBbwqAgNTkwLjUzMTg4MF0gUklQOiAwMDEwOmlkZW1wb3RlbnRfaW5pdF9tb2R1
bGUrMHhhYy8weDI5MAo+IFvCoCA1OTAuNTMxODg3XSBDb2RlOiA3YSBjYSBhZSAwMCA0OSBjMSBl
ZCAzOCAzMSBjOSA0YSA4YiAxNCBlZCAyMCAzMSBkNCA4MiA0ZSA4ZCAyNCBlZCAyMCAzMSBkNCA4
MiA0OCA4ZCA0MiBmOCA0OCA4NSBkMiA0OCAwZiA0NCBjMSA0OCA4NSBjMCA3NCAxYiA8NGM+IDNi
IDM4IDBmIDg0IGJmIDAwIDAwIDAwIDQ4IDhiIDQwIDA4IDQ4IDg1IGMwIDc0IDA5IDQ4IDgzIGU4
IDA4Cj4gW8KgIDU5MC41MzE4OTFdIFJTUDogMDAxODpmZmZmYzkwMDAzZmNmZTk4IEVGTEFHUzog
MDAwMTAyODIKPiBbwqAgNTkwLjUzMTg5NV0gUkFYOiBmZmZmYzkwMDAzM2ViZTk4IFJCWDogMDAw
MDU2MmUxMDVhZTU2MCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDAKPiBbwqAgNTkwLjUzMTg5OF0gUkRY
OiBmZmZmYzkwMDAzM2ViZWEwIFJTSTogZmZmZmZmZmY4MjI0NjdiZCBSREk6IDAwMDAwMDAwMDAw
MDAwMDAKPiBbwqAgNTkwLjUzMTkwMF0gUkJQOiAwMDAwMDAwMDAwMDAwMDAwIFIwODogMDAwMDAw
MDAwMDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKPiBbwqAgNTkwLjUzMTkwMl0gUjEwOiAw
MDAwMDAwMDAwMDAwMDAwIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IGZmZmZmZmZmODJkNDMz
OTgKPiBbwqAgNTkwLjUzMTkwNV0gUjEzOiAwMDAwMDAwMDAwMDAwMDRmIFIxNDogZmZmZjg4ODIz
M2YzNDAwMCBSMTU6IGZmZmY4ODgyMDdlNjczMzgKPiBbwqAgNTkwLjUzMTkwN10gRlM6wqAgMDAw
MDdmZjAwNGJkNWM0MCgwMDAwKSBHUzpmZmZmODg4MzMyMjAwMDAwKDAwMDApIGtubEdTOjAwMDAw
MDAwMDAwMDAwMDAKPiBbwqAgNTkwLjUzMTkxMF0gQ1M6wqAgMDAxMCBEUzogMDAwMCBFUzogMDAw
MCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPiBbwqAgNTkwLjUzMTkxM10gQ1IyOiBmZmZmYzkwMDAz
M2ViZTk4IENSMzogMDAwMDAwMDEyZGNjMDAwNCBDUjQ6IDAwMDAwMDAwMDAxNzA2ZjAKPiBbwqAg
NTkwLjUzMTkxNV0gQ2FsbCBUcmFjZToKPiBbwqAgNTkwLjUzMTkxOF3CoCA8VEFTSz4KPiBbwqAg
NTkwLjUzMTkyMV3CoCA/IF9fZGllKzB4MWEvMHg2MAo+IFvCoCA1OTAuNTMxOTI3XcKgID8gcGFn
ZV9mYXVsdF9vb3BzKzB4MTU4LzB4NDQwCj4gW8KgIDU5MC41MzE5MzJdwqAgPyBmaXh1cF9leGNl
cHRpb24rMHgxZC8weDJmMAo+IFvCoCA1OTAuNTMxOTM2XcKgID8gZXhjX3BhZ2VfZmF1bHQrMHg3
ZS8weDEzMAo+IFvCoCA1OTAuNTMxOTQyXcKgID8gYXNtX2V4Y19wYWdlX2ZhdWx0KzB4MjIvMHgz
MAo+IFvCoCA1OTAuNTMxOTQ5XcKgID8gaWRlbXBvdGVudF9pbml0X21vZHVsZSsweGFjLzB4Mjkw
Cj4gW8KgIDU5MC41MzE5NTNdwqAgPyBpZGVtcG90ZW50X2luaXRfbW9kdWxlKzB4ODYvMHgyOTAK
PiBbwqAgNTkwLjUzMTk1N13CoCBfX3g2NF9zeXNfZmluaXRfbW9kdWxlKzB4NGQvMHg4MAo+IFvC
oCA1OTAuNTMxOTYyXcKgIGRvX3N5c2NhbGxfNjQrMHg0Ny8weGUwCj4gW8KgIDU5MC41MzE5NjZd
wqAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NGIvMHg1Mwo+IFvCoCA1OTAuNTMx
OTcxXSBSSVA6IDAwMzM6MHg3ZmYwMDRjZGNhZDkKPiBbwqAgNTkwLjUzMTk3NV0gQ29kZTogZmYg
YzMgNjYgMmUgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgMGYgMWYgNDQgMDAgMDAgNDggODkgZjgg
NDggODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkgYzIgNGQgODkgYzggNGMgOGIgNGMgMjQg
MDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCA4YiAwZCAyNyA3MyAwYyAw
MCBmNyBkOCA2NCA4OSAwMSA0OAo+IFvCoCA1OTAuNTMxOTc4XSBSU1A6IDAwMmI6MDAwMDdmZmVk
YWEyNzNhOCBFRkxBR1M6IDAwMDAwMjAyIE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMTM5Cj4gW8Kg
IDU5MC41MzE5ODJdIFJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA1NjJlMTA1YWRjOTAg
UkNYOiAwMDAwN2ZmMDA0Y2RjYWQ5Cj4gW8KgIDU5MC41MzE5ODRdIFJEWDogMDAwMDAwMDAwMDAw
MDAwMCBSU0k6IDAwMDA1NjJlMTA1YWU1NjAgUkRJOiAwMDAwMDAwMDAwMDAwMDAzCj4gW8KgIDU5
MC41MzE5ODZdIFJCUDogMDAwMDAwMDAwMDAwMDAwMCBSMDg6IDAwMDA3ZmYwMDRkYTRiMjAgUjA5
OiAwMDAwMDAwMDAwMDAwMDNmCj4gW8KgIDU5MC41MzE5ODhdIFIxMDogMDAwMDAwMDAwMDAwMDA1
MCBSMTE6IDAwMDAwMDAwMDAwMDAyMDIgUjEyOiAwMDAwNTYyZTEwNWFlNTYwCj4gW8KgIDU5MC41
MzE5OTFdIFIxMzogMDAwMDAwMDAwMDA0MDAwMCBSMTQ6IDAwMDA1NjJlMTA1YWRkYzAgUjE1OiAw
MDAwMDAwMDAwMDAwMDNmCj4gW8KgIDU5MC41MzE5OTRdwqAgPC9UQVNLPgo+IFvCoCA1OTAuNTMx
OTk2XSBNb2R1bGVzIGxpbmtlZCBpbjogdGhpbmtwYWRfYWNwaSgrKSBudnJhbSBsZWR0cmlnX2F1
ZGlvIHBsYXRmb3JtX3Byb2ZpbGUgODAyMXEgdWlucHV0IG52aWRpYShQTykgZnVzZSBuZnRfY2hh
aW5fbmF0IG5mX25hdCBoaWRfbGVub3ZvIGJic3dpdGNoKE8pIHNuZF9hbG9vcCByZmNvbW0gYmx1
ZXRvb3RoIGVjZGhfZ2VuZXJpYyBlY2MgdXZjdmlkZW8gdmlkZW9idWYyX3ZtYWxsb2MgdmlkZW9i
dWYyX21lbW9wcyB1dmMgdmlkZW9idWYyX3Y0bDIgdmlkZW9kZXYgdmlkZW9idWYyX2NvbW1vbiBt
YyBzbmRfaGRhX2NvZGVjX2hkbWkgZG1fbXVsdGlwYXRoIGRtX21vZCBkYXggaTJjX2RldiBpbnRl
bF9yYXBsX21zciBydHN4X3BjaV9zZG1tYyBpbnRlbF9yYXBsX2NvbW1vbiB4ODZfcGtnX3RlbXBf
dGhlcm1hbCBpbnRlbF9wb3dlcmNsYW1wIGl3bG12bSBjb3JldGVtcCBrdm1faW50ZWwga3ZtIGly
cWJ5cGFzcyBpbnB1dF9sZWRzIHNuZF9oZGFfY29kZWNfZ2VuZXJpYyBsZWRfY2xhc3MgcnRzeF9w
Y2kgaXdsd2lmaSBpOTE1IHRwbV90aXMgdHBtX3Rpc19jb3JlIHNuZF9oZGFfaW50ZWwgaTJjX2Fs
Z29fYml0IHNuZF9pbnRlbF9kc3BjZmcgZHJtX2J1ZGR5IGUxMDAwZSBzbmRfaGRhX2NvZGVjIGRy
bV9kaXNwbGF5X2hlbHBlciBzbmRfaHdkZXAgdHRtIHNuZF9oZGFfY29yZSBbbGFzdCB1bmxvYWRl
ZDogbnZpZGlhKFBPKV0KPiBbwqAgNTkwLjUzMjA0OF0gQ1IyOiBmZmZmYzkwMDAzM2ViZTk4Cj4g
W8KgIDU5MC41MzIwNTFdIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+IFvC
oCA1OTAuNTMyMDU0XSBSSVA6IDAwMTA6dHBhY3BpX3Jma19wcm9jZnNfd3JpdGUrMHg5MC8weDE0
MCBbdGhpbmtwYWRfYWNwaV0KPiBbwqAgNTkwLjUzMjA3Nl0gQ29kZTogYzQgMDggODkgZDggNWIg
NWQgNDEgNWMgNDEgNWQgYzMgYmQgMDEgMDAgMDAgMDAgZWIgOWUgODMgZmQgZmYgNzQgZTcgZjYg
MDUgMjUgNzAgMDAgMDAgODAgNzUgNTQgNGEgOGIgMDQgZTUgNzAgODUgNGIgYTEgODkgZWYgPDQ4
PiA4YiA0MCAxMCA0OCA4YiA0MCAwOCBlOCAzMyBjZSA3OCBlMCA0YSA4YiAyYyBlNSA3MCA4NSA0
YiBhMSA4OQo+IFvCoCA1OTAuNTMyMDc5XSBSU1A6IDAwMTg6ZmZmZmM5MDAwMzNlYmM3OCBFRkxB
R1M6IDAwMDEwMjQ2Cj4gW8KgIDU5MC41MzIwODJdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6
IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwMDAwMDAwMDAwMDY1Cj4gW8KgIDU5MC41MzIwODRd
IFJEWDogMDAwMDAwMDAwMDAwMDAwNiBSU0k6IGZmZmZmZmZmYTE0YmMwZDcgUkRJOiAwMDAwMDAw
MDAwMDAwMDAxCj4gW8KgIDU5MC41MzIwODZdIFJCUDogMDAwMDAwMDAwMDAwMDAwMSBSMDg6IGZm
ZmZmZmZmYTE0Y2QwOTYgUjA5OiAwMDAwMDAwMDAwMDAwMDJjCj4gW8KgIDU5MC41MzIwODldIFIx
MDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IGZmZmZjOTAwMDMzZWJhNjAgUjEyOiAwMDAwMDAwMDAw
MDAwMDAwCj4gW8KgIDU5MC41MzIwOTFdIFIxMzogMDAwMDAwMDAwMDAwMDEyNCBSMTQ6IGZmZmZm
ZmZmYTE0Y2QwOTAgUjE1OiAwMDAwMDAwMDAwMDAwMDAwCj4gW8KgIDU5MC41MzIwOTNdIEZTOsKg
IDAwMDA3ZmYwMDRiZDVjNDAoMDAwMCkgR1M6ZmZmZjg4ODMzMjIwMDAwMCgwMDAwKSBrbmxHUzow
MDAwMDAwMDAwMDAwMDAwCj4gW8KgIDU5MC41MzIwOTZdIENTOsKgIDAwMTAgRFM6IDAwMDAgRVM6
IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gW8KgIDU5MC41MzIwOThdIENSMjogZmZmZmM5
MDAwMzNlYmU5OCBDUjM6IDAwMDAwMDAxMmRjYzAwMDQgQ1I0OiAwMDAwMDAwMDAwMTcwNmYwCj4g
W8KgIDU5MC41MzIxMDFdIG5vdGU6IG1vZHByb2JlWzEwOTg1XSBleGl0ZWQgd2l0aCBpcnFzIGRp
c2FibGVkCj4gW8KgIDU5MC41MzIxMDNdIG5vdGU6IG1vZHByb2JlWzEwOTg1XSBleGl0ZWQgd2l0
aCBwcmVlbXB0X2NvdW50IDEKPiAKPiAKPiAKPiBEdW5ubyB3aGV0ZWhyIHRoaXMgaXMga2VybmVs
IGJ1ZyBvciBzb21lIG90aGVyIHByb2JsZW0gd2l0aCBteSBrZXJuZWwuIFNvIGp1c3QgbGV0IHlv
dSBrbm93IGFuZCBwbGVhc2UgZ2l2ZSBtZSBzb21lIGlkZWFzIGhlcmUuCj4gCj4gcmVnYXJkcywK
PiBSYWZhxYIKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9pYm0tYWNwaS1kZXZlbAo=
