Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE1CAAFE1B
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 17:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/sCLlWKoq2DSxe/4bo5dBRJ6Bo1SJWDTjAB54fLTJ1Q=; b=VcfC6CTpdES3TYJp2rB6BI9PiH
	oT1F81qCu2dLkJ3zK3kD261galS15lLvZGEZYb8YKJPpkLXgDa3l90X/1lwyQCFRgKwVH5FNSeBcw
	Z9Jb1v9meOi6+vLPFl7jNP+k1D0PHP2UCXiZdV1wxhC0z6T/ANC2CddSKdVNZBwqwLPE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2lk-0003Ii-IJ;
	Thu, 08 May 2025 15:02:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uD2li-0003IZ-VG
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 15:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q4zUMNZ2twNGBcld3+7a9zKNw3HEkXzGPijyVG9FSAA=; b=Bc6DAnCJcC1MUPT16NoRUU7wji
 1lTZC7rCookS6FbDqUiJWsWeqBNEyjX/IAIG4p/z93qAgtvfLrdbbFpcp7V9v8a6k2+NryfO7OIQ/
 hBrSbrknyYUbfV6xT5rQn4KZJ4ZUYXrwU+SUIeTtxdbkLP8aOjUKm/rUNCzrf/BmR7bg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q4zUMNZ2twNGBcld3+7a9zKNw3HEkXzGPijyVG9FSAA=; b=bm7yDUFqWcmMOFGcf3Yw6I8V62
 Y+aN8sLiqMs4d4O1tttXsXAD3Zc6138JYUcdsEGHcJozr9ucxEkO541bP7dJZYZH06GL/SDOTxpbj
 75WFZbjYr+rIMx4nFva7B7A21P9Q2ioNgFufLUjb7wQrnPyZOTHE7GPB17ifKE0WXlAw=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2li-0008AB-5y for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 15:02:38 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 56C4F114011D;
 Thu,  8 May 2025 11:02:27 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-12.internal (MEProxy); Thu, 08 May 2025 11:02:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1746716547;
 x=1746802947; bh=q4zUMNZ2twNGBcld3+7a9zKNw3HEkXzGPijyVG9FSAA=; b=
 gkVw4xFClo0NXUZZzuRleD4DxCy/QCGpn5ND/vCmymxZszC/99F0Zq7fWGsTM7j5
 LwbEw2L8OnRCJKnMWSapjOKb9NQwR3cY01QznQYwv5+/4bc8vDgTgj+nA7SgenC9
 1657LvRAYo/rHcQt2npKdS3dze15u0PgdSBMyfUHG1g0zfKssNUnZzSR/x/TWLI7
 p4JQOmY7kZvq8gdvL0MLMHzJGXrRKQtA6bj2r2sD3Mh8xmsto/4GApobjNALyNT1
 cuN9kay6M7rNddOUkhVHMWrD/xgWoMSRzONzJsuyk+eZLLHhm6Dn5/Bdwc/HoO0/
 Lv9NQsFkkYJ7dxSj4Qzyaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746716547; x=
 1746802947; bh=q4zUMNZ2twNGBcld3+7a9zKNw3HEkXzGPijyVG9FSAA=; b=H
 WAyOWVLlYG+5/x0wZmIAA5ufePaH/hlCEw/Ix9IUbwwcR4t9k5Lg1ecxpCoIBsK0
 8wHdf2fNbkmpchaMy10mBpsz17pNLqpGXSjJn3CgDqyxv1bvYk3AJIcAf8lheYTC
 Bj7CA51y+DJj1LVhbnM6s7/TjHWFbstlNb8N5eH1fcgLfO4FdBb7rKXEXRxgwHbx
 gDP48+zn1+6s4h4RymcUAKaeZejssRRxD+V1JX+1iODkLV4JL8ZiL3cBdYvfQoQG
 dR6OIo7O7YbSULeeRLkEwJ/JwCpIS0YRkOJCudkNaGdAjnvqK2MQzpJlh7zkSYuy
 VIFU5teGCG6IKopv1JPzQ==
X-ME-Sender: <xms:g8ccaHVu-De_ZNVgqdZCPlc3QHdu7HPD-gvGX8hArhElaOo72n5Liw>
 <xme:g8ccaPlB1pmr-N6G2n6AYt18M8PQLCOtGSRzb3X9PqHSoFChjeUTV6qgsR7kT3t41
 3UsBkld5pY0xY0OLc4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvledttdegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertder
 tdejnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlh
 gvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhveekjeeuueek
 fefhleeljeehuedugfetffdvteekffejudelffdvjeekfeehvdenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhho
 vhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthho
 peifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopegrnhgurhhihidrshhhvghvtg
 hhvghnkhhosehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhj
 rghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqd
 grtghpihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgt
 phhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtoheplhhinh
 hugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphhl
 rghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:g8ccaDYlbLZZwIAWO0EroYiaxD8xid2-gHEg7Casr5GPkD6jCdjCEg>
 <xmx:g8ccaCXIJTz9iLzPHA_inFOIssXca8e204mrjyEorzB0YZf7cV6c1Q>
 <xmx:g8ccaBk6R2Ivzt7zKbUUiyVCk_v0C_-JL0DwIgCG12B0fFHA_0uZEQ>
 <xmx:g8ccaPfOeJRm0Bhs_dJgvzyYTR7-dSorGpmtIN_AKWP27dP5NpJ-vQ>
 <xmx:g8ccaDYb8yhCfkyUtay0E5mmkSoapBD1v7IubKTAbWzBnQLIyWgxuDRN>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 01A973C006C; Thu,  8 May 2025 11:02:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T747cf12b99a35bad
Date: Thu, 08 May 2025 11:02:06 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <9deccaae-8c03-4e3f-a833-294ff060c527@app.fastmail.com>
In-Reply-To: <aBzAkfJvVA04r-2U@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
 <6feeae5a-3928-8198-7ed6-2080c929d7c5@linux.intel.com>
 <c8ad9e6d-772d-4954-a3b9-ecafe7e3bdc7@app.fastmail.com>
 <aBzAkfJvVA04r-2U@smile.fi.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, May 8, 2025, at 10:32 AM, Andy Shevchenko wrote: >
    On Thu, May 08, 2025 at 10:28:26AM -0400, Mark Pearson wrote: >> On Thu,
   May 8, 2025, at 10:03 AM, Ilpo Järvinen wrote: >> > On Wed, 7 May 2 [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [103.168.172.154 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [103.168.172.154 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [103.168.172.154 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1uD2li-0008AB-5y
Subject: Re: [ibm-acpi-devel] [PATCH 2/2] platform/x86: export thinkpad_acpi
 handles
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
Cc: Armin Wolf <W_Armin@gmx.de>, ibm-acpi-devel@lists.sourceforge.net,
 ikepanhc@gmail.com, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVGh1LCBNYXkgOCwgMjAyNSwgYXQgMTA6MzIgQU0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToK
PiBPbiBUaHUsIE1heSAwOCwgMjAyNSBhdCAxMDoyODoyNkFNIC0wNDAwLCBNYXJrIFBlYXJzb24g
d3JvdGU6Cj4+IE9uIFRodSwgTWF5IDgsIDIwMjUsIGF0IDEwOjAzIEFNLCBJbHBvIErDpHJ2aW5l
biB3cm90ZToKPj4gPiBPbiBXZWQsIDcgTWF5IDIwMjUsIE1hcmsgUGVhcnNvbiB3cm90ZToKPgo+
IC4uLgo+Cj4+ID4+ICtFWFBPUlRfU1lNQk9MX0dQTCh0cF9hY3BpX2dldF9oYW5kbGUpOwo+PiA+
Cj4+ID4gUGxlYXNlIHB1dCB0aGVzZSBzeW1ib2xzIGludG8gYSBuYW1lc3BhY2UuCj4+IAo+PiBT
b3JyeSwgbm90IHF1aXRlIHN1cmUgd2hhdCB5b3UgbWVhbiBoZXJlLiBDb3VsZCB5b3UgcG9pbnQg
bWUgYXQgYW4gZXhhbXBsZT8KPgo+IFVzZSBfTlMgdmFyaWFudCBvZiBleHBvcnQuCj4KVGhhbmtz
IDopCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJt
LWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNw
aS1kZXZlbAo=
