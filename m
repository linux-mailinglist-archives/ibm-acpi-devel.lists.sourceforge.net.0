Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE11A7DF07
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  7 Apr 2025 15:25:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u1mTM-0006x5-Cr;
	Mon, 07 Apr 2025 13:25:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1u1mTK-0006wx-Co
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Apr 2025 13:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cpR5IP3ceQm23S+jJkguK/w2FLK0Q+5rUcmXH3zvLb0=; b=G5XvsdnHCWdDnTDdCXmaBtTx/a
 kq6DZSFski5TpCI/JSXNbAWHH5uODs8X0Kfsgg21/Ll9HOjM2iHYH/2Pk9b4kyGl1LVfXTRBFwul8
 1Ea9TzjUUUPgrsSgnA1XiOgGKu35OuS1D81BoXhI+aC6SwHC+71xwut9Y5sAm9+C/y40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cpR5IP3ceQm23S+jJkguK/w2FLK0Q+5rUcmXH3zvLb0=; b=R7bTJ5Ioo48o0lNLyhTW8nkUIh
 ZsFQNVARgTPCBulakEXVqdsyi9fjqPruyUstkKp9r85D+N8hVH93J/voySlPIapHujorUYg7qkYda
 3KNrsLU7HftZob6Jt8NbCwePf8ioiddW9O41TNcoC52k/SsEgwqzXFevA8calG8HADFQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u1mT3-0003ny-K3 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Apr 2025 13:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1744032278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cpR5IP3ceQm23S+jJkguK/w2FLK0Q+5rUcmXH3zvLb0=;
 b=cCgtjoPwQwnrnAVkWOPwrw3TsjhtaaAZmc6cGnts1TBgAguhqTun90lHQl4ftcr+3yA8zT
 EjEsP5KsBRDcIz3mFnlcLc35V9tcAJ0mTaUNG5pS5xwa9pGsSd93YnwAf8l3pV5fYRn2Zt
 ZmJQpzieMaglkN0LriE0/ewWxa5lqes=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-43-3NEsE2oqPXmvP71TKJdq1g-1; Mon, 07 Apr 2025 09:24:36 -0400
X-MC-Unique: 3NEsE2oqPXmvP71TKJdq1g-1
X-Mimecast-MFC-AGG-ID: 3NEsE2oqPXmvP71TKJdq1g_1744032276
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43cf327e9a2so37354035e9.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 07 Apr 2025 06:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744032274; x=1744637074;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cpR5IP3ceQm23S+jJkguK/w2FLK0Q+5rUcmXH3zvLb0=;
 b=Y3W6rB8Vw51cyNQTBCw9iq5xt8xUoONcwuHesLJ5hfX0Fn2VnivbUq94uIierqYhmS
 TBNAVJ+C3qV+mCrKsToCxk2yTvKzgqrrUe0oPge6wQZk4ozyKuQlVJhho02UC6CqHXWB
 tOlNNE6x9OBVHMTwcNU755YSirTVpcOhxDkj2d/T1q4eRl93NmSiU6cJdH8fLS3RW6Om
 IDpyNkIW+gkTiiqfUwRMRrHZMsPb23F+87fB0P66GdBCLOZqxQPsuY/4HsuehzfmVt9D
 tpXJ7U2gIeYEPVRbTvcFVLKKit/B/HXvkEsSc0k33YkuLvvjV0SYCr8xlC27CPGmKZsH
 9Bzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXsLAmpNHr/dPml0ywkxKpKE3ESZlZ9fS+YjK10IDFtsXBb7Du7DqEDpz+NMjoVnulrVVm7H9yzYsnmN++kPQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yze1j9ZOKzStT5uUes23TZP+Pb7Nm8ZY96nbLq2O8z+fK3hctHU
 /jiacmJSLYJEsoL1V4He55DfLr42GFZ6gfXQOzm8w4FYh4FU6epSn/sOljS351YrNxbwap2DMm6
 58LS9rDNQRlWlCaZ1zEY1rEELIrBYg1CV+6ICV2aLuO2GQkUVoMqrWk3PKRG0HbS9y3lburC2PW
 YizJsT
X-Gm-Gg: ASbGnctL1464uofSl/dFoYzPpe0CogGPRXnaI8CfUIQz+wu65KDis504nXrjP0zj6qz
 vD6YoIqAwwno1yjfDVCzidN/ZGobNuYRVGbcfSsY/O4ylYBz1iBDev0WayTXfqnCQGzN1QCNXji
 NbOcXuilYcBBQgy4+niYRysgAIxpp3GAzEa770/gNB6VXsuNk0Rrm8Tqtvi9i7MUmSm5cHeNRzw
 vhcPmsnjQji+hBWTlNoLbcURbVVuJ6t+WQTQlHHmKaWTSfLLfX/I/IIhHWkrs4lhXk4G8hykhrL
 Ib0vfu1sb8I1jfesg1w=
X-Received: by 2002:a05:600c:1e0f:b0:43c:f332:7038 with SMTP id
 5b1f17b1804b1-43ee0769282mr59967945e9.21.1744032274356; 
 Mon, 07 Apr 2025 06:24:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSQueWUiJuKXQEqtLstyahcc3tPrRf+Tqf2y4kZcS/ArCR5BraphVoOvD8hrZTNkd6ytinyA==
X-Received: by 2002:a05:600c:1e0f:b0:43c:f332:7038 with SMTP id
 5b1f17b1804b1-43ee0769282mr59967775e9.21.1744032273997; 
 Mon, 07 Apr 2025 06:24:33 -0700 (PDT)
Received: from [10.40.98.122] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39c301ba3c4sm12302528f8f.59.2025.04.07.06.24.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Apr 2025 06:24:33 -0700 (PDT)
Message-ID: <c56025c9-da1a-428f-b5cf-4c3f0f9f51d6@redhat.com>
Date: Mon, 7 Apr 2025 15:24:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitin Joshi <nitjoshi@gmail.com>, Mark Pearson
 <mpearson-lenovo@squebb.ca>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>
References: <20250403053127.4777-1-nitjoshi@gmail.com>
 <dbb95bde-8163-4799-8414-c60ba1c69aa5@redhat.com>
 <cf577f4d-ebfe-4b23-b918-2d59d9e81271@gmail.com>
 <f3f53d44-379a-42a4-9638-9e8532a83624@redhat.com>
 <0b0f51ab-667e-4497-8f24-2b9433427d1c@gmail.com>
 <255bb094-ad3a-4711-866f-659b2687c929@app.fastmail.com>
 <f9256d26-6d74-4526-8ec8-3ea7edd01792@gmail.com>
In-Reply-To: <f9256d26-6d74-4526-8ec8-3ea7edd01792@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oWSDY096ADzN682H97y_QFYCuAs2dmwFDlU0b82rW5M_1744032276
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, On 7-Apr-25 05:27, Nitin Joshi wrote: > Hello Mark,
 > > On 4/5/25 04:23, Mark Pearson wrote: >> Hi Nitin, >> >> On Fri, Apr 4,
 2025, at 5:02 AM, Nitin Joshi wrote: >>> Hello Hans, >>> >>> On 4/4/25 16
 [...] Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u1mT3-0003ny-K3
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi1 <njoshi1@lenovo.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTml0aW4sCgpPbiA3LUFwci0yNSAwNToyNywgTml0aW4gSm9zaGkgd3JvdGU6Cj4gSGVsbG8g
TWFyaywKPiAKPiBPbiA0LzUvMjUgMDQ6MjMsIE1hcmsgUGVhcnNvbiB3cm90ZToKPj4gSGkgTml0
aW4sCj4+Cj4+IE9uIEZyaSwgQXByIDQsIDIwMjUsIGF0IDU6MDIgQU0sIE5pdGluIEpvc2hpIHdy
b3RlOgo+Pj4gSGVsbG8gSGFucywKPj4+Cj4+PiBPbiA0LzQvMjUgMTY6MjUsIEhhbnMgZGUgR29l
ZGUgd3JvdGU6Cj4+Pj4gSGkgTml0aW4sCj4+Pj4KPj4+PiBPbiA0LUFwci0yNSA4OjQ0IEFNLCBO
aXRpbiBKb3NoaSB3cm90ZToKPj4+Pj4gSGVsbG8gSGFucywKPj4+Pj4KPj4+Pj4gVGhhbmsgeW91
IGZvciByZXZpZXdpbmcgcGF0Y2guCj4+Pj4+Cj4+Pj4+IE9uIDQvMy8yNSAxOTozNCwgSGFucyBk
ZSBHb2VkZSB3cm90ZToKPj4+Pj4+IEhpIE5pdGluLAo+Pj4+Pj4KPj4+Pj4+IE9uIDMtQXByLTI1
IDc6MzEgQU0sIE5pdGluIEpvc2hpIHdyb3RlOgo+Pj4+Pj4+IE5ldyBMZW5vdm8gVGhpbmtwYWQg
bW9kZWxzLCBlLmcuIHRoZSAnWDktMTQgR2VuIDEnIGFuZCAnWDktMTUgR2VuIDEnCj4+Pj4+Pj4g
aGFzIG5ldyBzaG9ydGN1dCBvbiBGOSBrZXkgaS5lIHRvIHN3aXRjaCBjYW1lcmEgc2h1dHRlciBh
bmQgaXQKPj4+Pj4+PiBzZW5kIGEgbmV3IDB4MTMxYiBoa2V5IGV2ZW50IHdoZW4gRjkga2V5IGlz
IHByZXNzZWQuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIG5l
dyBoa2V5IDB4MTMxYi4KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBKb3NoaSA8bml0am9z
aGlAZ21haWwuY29tPgo+Pj4+Pj4KPj4+Pj4+IERvZXMgdGhlIEVDIGFsc28gYWN0dWFsbHkgZW5h
YmxlL2Rpc2FibGUgdGhlIGNhbWVyYSBpbiByZXNwb25zZSB0bwo+Pj4+Pj4gdGhpcyBuZXcgaG90
a2V5LCBvciBpcyB0aGlzIHB1cmVseSBhIHJlcXVlc3QgdG8gdXNlcnNwYWNlIC8gdGhlIE9TCj4+
Pj4+PiB0byBlbmFibGUvZGlzYWJsZSB0aGUgY2FtZXJhCj4+Pj4+IEVuYWJsZS9kaXNhYmxlIGlz
IGFjdHVhbGx5IGJlaW5nIGRvbmUgYnkgRUMuIENhbWVyYSBlbmFibGVtZW50IGZvciB0aGVzZSBw
cm9kdWN0cyBhcmUgc3RpbGwgaW4gdGVzdGluZyBwaGFzZS4KPj4+Pj4gPwo+Pj4+Cj4+Pj4gT2ss
IEkgYXNzdW1lIHdlIGNhbiBhbHNvIGdldCB0aGUgc3RhdGUgKGVuYWJsZWQgdnMgZGlzYWJsZWQp
Cj4+Pj4gZS5nLiBmcm9tIHRoZSBldmVudD8gSW4gdGhhdCBjYXNlIHRoZSBldmVudHMgc2hvdWxk
IGJlIHJlcG9ydGVkIHVzaW5nCj4+Pj4gRVZfU1csIFNXX0NBTUVSQV9MRU5TX0NPVkVSIGFuZCB3
ZSBzaG91bGQgYWxzbyBnZXQgdGhlIGluaXRpYWwKPj4+PiBzdGF0ZSBhbmQgc2V0IHRoZSBzd2l0
Y2ggdG8gdGhlIGluaXRpYWwgc3RhdGUgYmVmb3JlIHJlZ2lzdGVyaW5nCj4+Pj4gdGhlIGlucHV0
IGRldmljZS4KPj4+IEVuYWJsZS9EaXNhYmxlIHN0YXR1cyB3aWxsIGJlIGRldGVybWluZSBpbiBJ
UFUgc2lkZSB3aGljaCByZWNlaXZlcwo+Pj4gbm90aWZpY2F0aW9uIGZyb20gRUMuIFNvLCB0aGUg
b25seSB3YXkgdG8gZGV0ZXJtaW5lIHRoZSBzdGF0dXMgd291bGQgYmUKPj4+IHRvIGRldGVybWlu
ZSB0aGUgc3RhdHVzIGluIElQVSBzaWRlLgo+Pj4gU28sIHB1cnBvc2Ugb2YgdGhpcyBwYXRjaCB3
aWxsIG9ubHkgdG8gYXZvaWQgInVuaGFuZGxlZCBoa2V5IGV2ZW50Igo+Pj4gZXJyb3IgZnJvbSB0
aGlua3BhZF9hY3BpIGRyaXZlci4KPj4+IFBsZWFzZSBsZXQgbWUga25vdywgaWYgaSBhbSBtaXNz
aW5nIHNvbWV0aGluZy4KCldlIGRvbid0IHdhbnQgdG8ganVzdCBhdm9pZCB0aGUgInVuaGFuZGxl
ZCBoa2V5IGV2ZW50IiBtZXNzYWdlLAp3ZSBhbHNvIHdhbnQgdG8gc2VuZCBhbiBldmVudCB0byB1
c2Vyc3BhY2UgdGhhdCB0aGUgY2FtZXJhIGhhcwpiZWVuIGVuYWJsZWQgb3IgZGlzYWJsZWQsIGlu
Y2x1ZGluZyBpbmZvcm1hdGlvbiBpZiBpdCBpcwpiZWluZyBlbmFibGVkIG9yIGJlaW5nIGRpc2Fi
bGVkLiBUaGlzIHdheSB1c2Vyc3BhY2UgY2FuIHNob3cgYW4gT1NECmluZGljYXRpbmcgdGhhdCB0
aGUgY2FtZXJhIGhhcyBiZWVuIGVuYWJsZWQvZGlzYWJsZWQgc2ltaWxhciB0byBob3cKd2UgZG8g
dGhpcyB3aGVuIGUuZy4gdGhlIG1pYyBpcyBtdXRlZC4KClRoaXMgbXVzdCBiZSByZXBvcnRlZCB0
byB1c2Vyc3BhY2UgdXNpbmcgU1dfQ0FNRVJBX0xFTlNfQ09WRVIsIHdoaWNoIGlzCndoYXQgYWxs
IGtlcm5lbCBjb2RlIHdoaWNoIHJlcG9ydHMgY2FtZXJhIHNodXR0ZXIgc3RhdGUKKGJlIGl0IGEg
dHJ1ZSBzaHV0dGVyIG9yIGh3IGJsYWNraW5nIG91dCBvZiB0aGUgaW1hZ2UpIGlzIHVzaW5nIG5v
dy4KCk9yIG1heWJlIHRoZSBJUFU2IGRyaXZlciBpdHNlbGYgY2FuIHJlcG9ydCBTV19DQU1FUkFf
TEVOU19DT1ZFUiwKYXNzdW1pbmcgdGhlIElQVTYgZHJpdmVyIGFsc28gcmVjZWl2ZXMgYW4gZXZl
bnQgd2hlbiB0aGUgY2FtZXJhCnNodXR0ZXIgc3RhdHVzIGNoYW5nZXMgPwoKPj4gSSBoYWRuJ3Qg
dGhvdWdodCBhYm91dCB0aGlzIC0gYnV0IHdlIG5lZWQgdG8gYmUgYWJsZSB0byB0cmFjayB0aGUg
c3RhdHVzIHRvIG1ha2Ugc3VyZSAoZXZlbnR1YWxseSkgdGhhdCB0aGUgcmlnaHQgc3RhdHVzIGdl
dHMgZGlzcGxheWVkIGluIHVzZXJzcGFjZS4gSXQgd291bGQgYmUgYmFkIGlmIGl0IHdhcyBvdXQg
b2Ygc3luYyB3aXRoIHRoZSBJUFUuCj4+Cj4+IElzIHRoZSBpbml0aWFsIHN0YXR1cyBhbHdheXMg
Z29pbmcgdG8gYmUgZGlzYWJsZWQsIG9yIGRvIHdlIG5lZWQgYSBtZWNoYW5pc20gZnJvbSBJbnRl
bCB0byBwcm9iZSB0aGUgY3VycmVudCBzdGF0dXM/Cj4gCj4gSSBuZWVkIHRvIGNoZWNrIHJlZ2Fy
ZGluZyB0aGlzIGJ1dCBBRkFJSywgd2UgZG9uJ3QgaGF2ZSBhbnkgb3RoZXIgbWVjaGFuaXNtIHRv
IHByb2JlIGN1cnJlbnQgc3RhdHVzLiBBbHNvICwgdGhlcmUgd2FzIHNvbWUgc2VjdXJpdHkgY29u
Y2VybiBpbnZvbHZlZCBpbiB0aGlzIHdoaWNoIGkgbmVlZCB0byBjbGFyaWZ5LgoKSSBkb24ndCBz
ZWUgaG93IHVzZXJzcGFjZSBrbm93aW5nIGlmIHRoZSBzaHV0dGVyIGlzIGluIG9wZW4vY2xvc2Vk
CnN0YXRlIGltcGFjdHMgc2VjdXJpdHkuIFVzZXJzcGFjZSBzdGlsbCBjYW5ub3QgY29udHJvbCB0
aGUgc2h1dHRlci4KClJlZ2FyZHMsCgpIYW5zCgoKCgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+IMKgIMKg
IGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyB8IDIgKysKPj4+Pj4+PiDCoCDC
oCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Pj4+Pj4KPj4+Pj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJpdmVycy9wbGF0
Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+Pj4+Pj4gaW5kZXggMDM4NGNmMzExODc4Li44MGY3
N2Y5YzdhNTggMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtw
YWRfYWNwaS5jCj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNw
aS5jCj4+Pj4+Pj4gQEAgLTE4Miw2ICsxODIsNyBAQCBlbnVtIHRwYWNwaV9oa2V5X2V2ZW50X3Qg
ewo+Pj4+Pj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICogZGlyZWN0bHkgaW4gdGhlIHNwYXJzZS1rZXltYXAuCj4+Pj4+Pj4gwqAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ki8KPj4+Pj4+PiDCoCDCoMKgwqDCoMKgIFRQX0hLRVlfRVZfQU1UX1RPR0dMRcKgwqDCoMKgwqDC
oMKgID0gMHgxMzFhLCAvKiBUb2dnbGUgQU1UIG9uL29mZiAqLwo+Pj4+Pj4+ICvCoMKgwqAgVFBf
SEtFWV9FVl9DQU1FUkFTSFVUVEVSX1RPR0dMRSA9IDB4MTMxYiwgLyogVG9nZ2xlIENhbWVyYSBT
aHV0dGVyICovCj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoCBUUF9IS0VZX0VWX0RPVUJMRVRBUF9UT0dH
TEXCoMKgwqAgPSAweDEzMWMsIC8qIFRvZ2dsZSB0cmFja3BvaW50IGRvdWJsZXRhcCBvbi9vZmYg
Ki8KPj4+Pj4+PiDCoCDCoMKgwqDCoMKgIFRQX0hLRVlfRVZfUFJPRklMRV9UT0dHTEXCoMKgwqAg
PSAweDEzMWYsIC8qIFRvZ2dsZSBwbGF0Zm9ybSBwcm9maWxlIGluIDIwMjQgc3lzdGVtcyAqLwo+
Pj4+Pj4+IMKgIMKgwqDCoMKgwqAgVFBfSEtFWV9FVl9QUk9GSUxFX1RPR0dMRTLCoMKgwqAgPSAw
eDE0MDEsIC8qIFRvZ2dsZSBwbGF0Zm9ybSBwcm9maWxlIGluIDIwMjUgKyBzeXN0ZW1zICovCj4+
Pj4+Pj4gQEAgLTMyNzEsNiArMzI3Miw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qga2V5X2VudHJ5
IGtleW1hcF9sZW5vdm9bXSBfX2luaXRjb25zdCA9IHsKPj4+Pj4+PiDCoCDCoMKgwqDCoMKgwqAg
KiBhZnRlciBzd2l0Y2hpbmcgdG8gc3BhcnNlIGtleW1hcCBzdXBwb3J0LiBUaGUgbWFwcGluZ3Mg
YWJvdmUgdXNlIHRyYW5zbGF0ZWQKPj4+Pj4+PiDCoCDCoMKgwqDCoMKgwqAgKiBzY2FuY29kZXMg
dG8gcHJlc2VydmUgdUFQSSBjb21wYXRpYmlsaXR5LCBzZWUgdHBhY3BpX2lucHV0X3NlbmRfa2V5
KCkuCj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoMKgICovCj4+Pj4+Pj4gK8KgwqDCoCB7IEtFX0tFWSwg
VFBfSEtFWV9FVl9DQU1FUkFTSFVUVEVSX1RPR0dMRSwgeyBLRVlfQ0FNRVJBX0FDQ0VTU19UT0dH
TEUgfSB9LAo+Pj4+Pj4+IMKgIMKgwqDCoMKgwqAgeyBLRV9LRVksIDB4MTMxZCwgeyBLRVlfVkVO
RE9SIH0gfSwgLyogU3lzdGVtIGRlYnVnIGluZm8sIHNpbWlsYXIgdG8gb2xkIFRoaW5rUGFkIGtl
eSAqLwo+Pj4+Pj4+IMKgIMKgwqDCoMKgwqAgeyBLRV9LRVksIDB4MTMyMCwgeyBLRVlfTElOS19Q
SE9ORSB9IH0sCj4+Pj4+Pj4gwqAgwqDCoMKgwqDCoCB7IEtFX0tFWSwgVFBfSEtFWV9FVl9UUkFD
S19ET1VCTEVUQVAgLyogMHg4MDM2ICovLCB7IEtFWV9QUk9HNCB9IH0sCj4+Pj4+Pgo+Pj4+Pgo+
Pj4+Cj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJt
LWFjcGktZGV2ZWwK
