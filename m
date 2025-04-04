Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD8DA7C404
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  4 Apr 2025 21:42:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u0mvF-0003Yt-Ew;
	Fri, 04 Apr 2025 19:41:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1u0mv7-0003Yd-GI
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 19:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IHgkaPNaHnijokxBfIx9XLDiVTiot4+ibuW1KBEcUj0=; b=ay3lBNJKj2YMk2xtjwWc76K3+1
 pr5IsIruSNdSG9zc9Pt3GWyXHw3Ad2MX4zgXHzNMFVZgqUTSnY+9RMCeA9DA6cFlL6tuxwBSvPPiW
 CbpQ91wpcV1bwuYMIOJUz8TQbpi4R72l3SQkAnNj8ofnRcV8FC3rrtL30jE4FfwlNWww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IHgkaPNaHnijokxBfIx9XLDiVTiot4+ibuW1KBEcUj0=; b=KqpF0fiWvU8Z/2gl+wMdz3TaH6
 LJx7ehNAMaTWasOwRPQnE2Pi1htsn8rIp4k9HhulVExafTgdEovHjm7RVG9t+mX+uBzHHRZm9CvyZ
 8rtRup0di9Q9PghFcHqwsKKJOBL5jyqk+H3mCJxyCyYiv7Lu+VfRqyhgXJa9VGRo/+m4=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0mum-0006F2-1M for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 19:41:36 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id 043D11380214;
 Fri,  4 Apr 2025 15:23:38 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-06.internal (MEProxy); Fri, 04 Apr 2025 15:23:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1743794618;
 x=1743881018; bh=IHgkaPNaHnijokxBfIx9XLDiVTiot4+ibuW1KBEcUj0=; b=
 H/SPwM+lB6O37KW2slaDmjAvGcq16O4m0kEe05/mLq3NAelbLhl2j7sD+ugNxDEt
 m/OTaDele4yfrv41lolYQtcGry8jt+yL6KDfT53kGNKhX5tKNSLDGYhboFqq1iTA
 R9sziTqrVTZCLOnDz09UKSQwy5vTSgBswIPhs5Q5PPj4NGazOB6IuuuiunaTNaBS
 rVrZCp319HbXxVXXQkvr9oJZVQUbvxMA2El2dC73ZLOyO1hoBl41f4ojb4axCYOl
 GVztmDNFp3LibRY4vr+W5XrHlmWzsY737kwcIibwNy2GNSAw18YyAXDYmFrYsCql
 mZwKMr1ZucEGL7wti86Ynw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1743794618; x=
 1743881018; bh=IHgkaPNaHnijokxBfIx9XLDiVTiot4+ibuW1KBEcUj0=; b=i
 cqG44ReXPgkjdrrvZgU3V9fNPLUZQzLvstCicViq9h9Hsdpg/FrIDE16Dm677Rht
 GZ4dW0nzD+Z0NRbcW790RfRDUOYT5YdgmEveViiWWidFDwPBCEv0alNVtTtAGQmF
 OGsGDw6DVVp90c+7Pp9jnYl4d8a0ZOnf/gFKa20XxjgPMFVHXy1ieUp1lLNeav9r
 43lpxtOya5b6PEqid3fVq+OyPzvubmvp75S54EnpmGtUl3go6/+WbkFz5bhSelpD
 0KgSo5baO9q0nRxpD9w20MAkFU9OPhficQ+OQZ6X9OpYqtkMVuucgLtIWdqCOyY0
 LJ5ubHRx0Z3n2Gw2p0jFw==
X-ME-Sender: <xms:uTHwZ3E1aFWCFSQbkf91kyF9Szn_PIZ66KCSSZDzX4B67UvnLZ5oGA>
 <xme:uTHwZ0VjhIdRMDDndGOHa0OUt3oJ8ADpZ2SdXSSFjeFfWQxnqlENBa-G4e-Iyw6Df
 Uose6MlenkmdtQPCtY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduledvvdejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertder
 tdejnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlh
 gvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhveekjeeuueek
 fefhleeljeehuedugfetffdvteekffejudelffdvjeekfeehvdenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhho
 vhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeeipdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehnihhtjhhoshhhihesghhmrghilhdrtghomhdprhgtphhtthho
 pehnjhhoshhhihdusehlvghnohhvohdrtghomhdprhgtphhtthhopehilhhpohdrjhgrrh
 hvihhnvghnsehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggt
 phhiqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpth
 htohephhguvghgohgvuggvsehrvgguhhgrthdrtghomhdprhgtphhtthhopehplhgrthhf
 ohhrmhdqughrihhvvghrqdigkeeisehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:uTHwZ5KaivU8HXTdNwYEjy6Lyn5k4EWQbHvliISXsMWNRSoFEKW55g>
 <xmx:uTHwZ1FoXnJXuILr9IICCFdoJElxDQO1EMaNGFZYN_cdlEaoIt1W0w>
 <xmx:uTHwZ9X02igNg_qGm2TfACP7pIdJ8DeBfr7PoWa-9kL7dRl7sCarUg>
 <xmx:uTHwZwM5dAgACf8OIe5ZGUQMGNXj0AJGPsnl2CcKBpkgLiNmE41xKA>
 <xmx:ujHwZ2WqSxvDx-8ohFa1xj8bv8bivFqRk1VqVbcUSUvHIyc2asYmwYld>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 1BE923C0069; Fri,  4 Apr 2025 15:23:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Tb4c09ec3c7670d42
Date: Fri, 04 Apr 2025 15:23:16 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Nitin Joshi" <nitjoshi@gmail.com>, "Hans de Goede" <hdegoede@redhat.com>, 
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <255bb094-ad3a-4711-866f-659b2687c929@app.fastmail.com>
In-Reply-To: <0b0f51ab-667e-4497-8f24-2b9433427d1c@gmail.com>
References: <20250403053127.4777-1-nitjoshi@gmail.com>
 <dbb95bde-8163-4799-8414-c60ba1c69aa5@redhat.com>
 <cf577f4d-ebfe-4b23-b918-2d59d9e81271@gmail.com>
 <f3f53d44-379a-42a4-9638-9e8532a83624@redhat.com>
 <0b0f51ab-667e-4497-8f24-2b9433427d1c@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nitin, On Fri, Apr 4, 2025, at 5:02 AM, Nitin Joshi wrote:
 > Hello Hans, > > On 4/4/25 16:25, Hans de Goede wrote: >> Hi Nitin, >> >>
 On 4-Apr-25 8:44 AM, Nitin Joshi wrote: >>> Hello Hans, >>> >>> Thank you
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.144 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u0mum-0006F2-1M
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi1 <njoshi1@lenovo.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTml0aW4sCgpPbiBGcmksIEFwciA0LCAyMDI1LCBhdCA1OjAyIEFNLCBOaXRpbiBKb3NoaSB3
cm90ZToKPiBIZWxsbyBIYW5zLAo+Cj4gT24gNC80LzI1IDE2OjI1LCBIYW5zIGRlIEdvZWRlIHdy
b3RlOgo+PiBIaSBOaXRpbiwKPj4gCj4+IE9uIDQtQXByLTI1IDg6NDQgQU0sIE5pdGluIEpvc2hp
IHdyb3RlOgo+Pj4gSGVsbG8gSGFucywKPj4+Cj4+PiBUaGFuayB5b3UgZm9yIHJldmlld2luZyBw
YXRjaC4KPj4+Cj4+PiBPbiA0LzMvMjUgMTk6MzQsIEhhbnMgZGUgR29lZGUgd3JvdGU6Cj4+Pj4g
SGkgTml0aW4sCj4+Pj4KPj4+PiBPbiAzLUFwci0yNSA3OjMxIEFNLCBOaXRpbiBKb3NoaSB3cm90
ZToKPj4+Pj4gTmV3IExlbm92byBUaGlua3BhZCBtb2RlbHMsIGUuZy4gdGhlICdYOS0xNCBHZW4g
MScgYW5kICdYOS0xNSBHZW4gMScKPj4+Pj4gaGFzIG5ldyBzaG9ydGN1dCBvbiBGOSBrZXkgaS5l
IHRvIHN3aXRjaCBjYW1lcmEgc2h1dHRlciBhbmQgaXQKPj4+Pj4gc2VuZCBhIG5ldyAweDEzMWIg
aGtleSBldmVudCB3aGVuIEY5IGtleSBpcyBwcmVzc2VkLgo+Pj4+Pgo+Pj4+PiBUaGlzIGNvbW1p
dCBhZGRzIHN1cHBvcnQgZm9yIG5ldyBoa2V5IDB4MTMxYi4KPj4+Pj4gU2lnbmVkLW9mZi1ieTog
Tml0aW4gSm9zaGkgPG5pdGpvc2hpQGdtYWlsLmNvbT4KPj4+Pgo+Pj4+IERvZXMgdGhlIEVDIGFs
c28gYWN0dWFsbHkgZW5hYmxlL2Rpc2FibGUgdGhlIGNhbWVyYSBpbiByZXNwb25zZSB0bwo+Pj4+
IHRoaXMgbmV3IGhvdGtleSwgb3IgaXMgdGhpcyBwdXJlbHkgYSByZXF1ZXN0IHRvIHVzZXJzcGFj
ZSAvIHRoZSBPUwo+Pj4+IHRvIGVuYWJsZS9kaXNhYmxlIHRoZSBjYW1lcmEKPj4+IEVuYWJsZS9k
aXNhYmxlIGlzIGFjdHVhbGx5IGJlaW5nIGRvbmUgYnkgRUMuIENhbWVyYSBlbmFibGVtZW50IGZv
ciB0aGVzZSBwcm9kdWN0cyBhcmUgc3RpbGwgaW4gdGVzdGluZyBwaGFzZS4KPj4+ID8KPj4gCj4+
IE9rLCBJIGFzc3VtZSB3ZSBjYW4gYWxzbyBnZXQgdGhlIHN0YXRlIChlbmFibGVkIHZzIGRpc2Fi
bGVkKQo+PiBlLmcuIGZyb20gdGhlIGV2ZW50PyBJbiB0aGF0IGNhc2UgdGhlIGV2ZW50cyBzaG91
bGQgYmUgcmVwb3J0ZWQgdXNpbmcKPj4gRVZfU1csIFNXX0NBTUVSQV9MRU5TX0NPVkVSIGFuZCB3
ZSBzaG91bGQgYWxzbyBnZXQgdGhlIGluaXRpYWwKPj4gc3RhdGUgYW5kIHNldCB0aGUgc3dpdGNo
IHRvIHRoZSBpbml0aWFsIHN0YXRlIGJlZm9yZSByZWdpc3RlcmluZwo+PiB0aGUgaW5wdXQgZGV2
aWNlLgo+IEVuYWJsZS9EaXNhYmxlIHN0YXR1cyB3aWxsIGJlIGRldGVybWluZSBpbiBJUFUgc2lk
ZSB3aGljaCByZWNlaXZlcyAKPiBub3RpZmljYXRpb24gZnJvbSBFQy4gU28sIHRoZSBvbmx5IHdh
eSB0byBkZXRlcm1pbmUgdGhlIHN0YXR1cyB3b3VsZCBiZSAKPiB0byBkZXRlcm1pbmUgdGhlIHN0
YXR1cyBpbiBJUFUgc2lkZS4KPiBTbywgcHVycG9zZSBvZiB0aGlzIHBhdGNoIHdpbGwgb25seSB0
byBhdm9pZCAidW5oYW5kbGVkIGhrZXkgZXZlbnQiIAo+IGVycm9yIGZyb20gdGhpbmtwYWRfYWNw
aSBkcml2ZXIuCj4gUGxlYXNlIGxldCBtZSBrbm93LCBpZiBpIGFtIG1pc3Npbmcgc29tZXRoaW5n
Lgo+CgpJIGhhZG4ndCB0aG91Z2h0IGFib3V0IHRoaXMgLSBidXQgd2UgbmVlZCB0byBiZSBhYmxl
IHRvIHRyYWNrIHRoZSBzdGF0dXMgdG8gbWFrZSBzdXJlIChldmVudHVhbGx5KSB0aGF0IHRoZSBy
aWdodCBzdGF0dXMgZ2V0cyBkaXNwbGF5ZWQgaW4gdXNlcnNwYWNlLiBJdCB3b3VsZCBiZSBiYWQg
aWYgaXQgd2FzIG91dCBvZiBzeW5jIHdpdGggdGhlIElQVS4KCklzIHRoZSBpbml0aWFsIHN0YXR1
cyBhbHdheXMgZ29pbmcgdG8gYmUgZGlzYWJsZWQsIG9yIGRvIHdlIG5lZWQgYSBtZWNoYW5pc20g
ZnJvbSBJbnRlbCB0byBwcm9iZSB0aGUgY3VycmVudCBzdGF0dXM/CgpNYXJrCgo+PiAKPj4gUmVn
YXJkcywKPj4gCj4+IEhhbnMKPj4gCj4gVGhhbmtzICYgUmVnYXJkcywKPiBOaXRpbiBKb3NoaQo+
PiAKPj4gCj4+IAo+Pj4+PiAtLS0KPj4+Pj4gIMKgIGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYyB8IDIgKysKPj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFk
X2FjcGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4+PiBpbmRl
eCAwMzg0Y2YzMTE4NzguLjgwZjc3ZjljN2E1OCAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9w
bGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0v
eDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4+PiBAQCAtMTgyLDYgKzE4Miw3IEBAIGVudW0gdHBhY3Bp
X2hrZXlfZXZlbnRfdCB7Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGRpcmVjdGx5IGluIHRoZSBzcGFyc2Uta2V5bWFwLgo+
Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPj4+Pj4gIMKgwqDCoMKgwqAgVFBfSEtFWV9FVl9BTVRfVE9HR0xFwqDCoMKgwqDC
oMKgwqAgPSAweDEzMWEsIC8qIFRvZ2dsZSBBTVQgb24vb2ZmICovCj4+Pj4+ICvCoMKgwqAgVFBf
SEtFWV9FVl9DQU1FUkFTSFVUVEVSX1RPR0dMRSA9IDB4MTMxYiwgLyogVG9nZ2xlIENhbWVyYSBT
aHV0dGVyICovCj4+Pj4+ICDCoMKgwqDCoMKgIFRQX0hLRVlfRVZfRE9VQkxFVEFQX1RPR0dMRcKg
wqDCoCA9IDB4MTMxYywgLyogVG9nZ2xlIHRyYWNrcG9pbnQgZG91YmxldGFwIG9uL29mZiAqLwo+
Pj4+PiAgwqDCoMKgwqDCoCBUUF9IS0VZX0VWX1BST0ZJTEVfVE9HR0xFwqDCoMKgID0gMHgxMzFm
LCAvKiBUb2dnbGUgcGxhdGZvcm0gcHJvZmlsZSBpbiAyMDI0IHN5c3RlbXMgKi8KPj4+Pj4gIMKg
wqDCoMKgwqAgVFBfSEtFWV9FVl9QUk9GSUxFX1RPR0dMRTLCoMKgwqAgPSAweDE0MDEsIC8qIFRv
Z2dsZSBwbGF0Zm9ybSBwcm9maWxlIGluIDIwMjUgKyBzeXN0ZW1zICovCj4+Pj4+IEBAIC0zMjcx
LDYgKzMyNzIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGtleV9lbnRyeSBrZXltYXBfbGVub3Zv
W10gX19pbml0Y29uc3QgPSB7Cj4+Pj4+ICDCoMKgwqDCoMKgwqAgKiBhZnRlciBzd2l0Y2hpbmcg
dG8gc3BhcnNlIGtleW1hcCBzdXBwb3J0LiBUaGUgbWFwcGluZ3MgYWJvdmUgdXNlIHRyYW5zbGF0
ZWQKPj4+Pj4gIMKgwqDCoMKgwqDCoCAqIHNjYW5jb2RlcyB0byBwcmVzZXJ2ZSB1QVBJIGNvbXBh
dGliaWxpdHksIHNlZSB0cGFjcGlfaW5wdXRfc2VuZF9rZXkoKS4KPj4+Pj4gIMKgwqDCoMKgwqDC
oCAqLwo+Pj4+PiArwqDCoMKgIHsgS0VfS0VZLCBUUF9IS0VZX0VWX0NBTUVSQVNIVVRURVJfVE9H
R0xFLCB7IEtFWV9DQU1FUkFfQUNDRVNTX1RPR0dMRSB9IH0sCj4+Pj4+ICDCoMKgwqDCoMKgIHsg
S0VfS0VZLCAweDEzMWQsIHsgS0VZX1ZFTkRPUiB9IH0sIC8qIFN5c3RlbSBkZWJ1ZyBpbmZvLCBz
aW1pbGFyIHRvIG9sZCBUaGlua1BhZCBrZXkgKi8KPj4+Pj4gIMKgwqDCoMKgwqAgeyBLRV9LRVks
IDB4MTMyMCwgeyBLRVlfTElOS19QSE9ORSB9IH0sCj4+Pj4+ICDCoMKgwqDCoMKgIHsgS0VfS0VZ
LCBUUF9IS0VZX0VWX1RSQUNLX0RPVUJMRVRBUCAvKiAweDgwMzYgKi8sIHsgS0VZX1BST0c0IH0g
fSwKPj4+Pgo+Pj4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2libS1hY3BpLWRldmVsCg==
