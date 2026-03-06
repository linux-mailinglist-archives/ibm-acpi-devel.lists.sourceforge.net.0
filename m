Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOeKJCHcqmkZXwEAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 06 Mar 2026 14:52:33 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED9C22221D
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 06 Mar 2026 14:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CmNhQWv3QCOmYty6ResZFf9dtUOHNCTzgZB0O0PJvnI=; b=ORiWp5YL6Ty+ZVAcz+wMXQdczl
	V0Rf5OWHWFpV7mxaY+PJgyoAriLPE2OEt17wG6qjz4t1nsj6iCvsaTE5o4PDOvgaV7anKlu1IOYzR
	0eUHWwWM8bUxjvfZ3AN9whcc57/yapaLKShDPDwal/fpi0slcMGozk26j11JgQqxFDzw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vyVb0-000819-UW;
	Fri, 06 Mar 2026 13:52:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1vyVaz-00080z-Hm
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Mar 2026 13:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KqL28PEa1gdOtcPjGDXJw5E9578ySQPb6ffvqQWlJsw=; b=bRYl1CqABvw2+1C9xlUU9ps0LP
 /pHqeJPojoh8YNr1TCKrFhjD2BrefP1opKec5rOuvEdiOVUm5J73re5RFWE73sDRqyErL1toag31S
 2tiWodcJf9sYPqIm3C7PZog1BatXSzEEHLGjaB82ml8SDmsWryqRSoXKHp/YEup4l7vU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KqL28PEa1gdOtcPjGDXJw5E9578ySQPb6ffvqQWlJsw=; b=OU5/T6xjcxU1iP0RfN4niDeu8v
 emg4EUuDF7Mwn+Inin1A1cQnbPaenbMpd4+DfqeIRu7VQj4rfgqPicm8hwDktDiE1ZHoOJNA9tJ76
 5tMhdPYuxJgCQVGDMBzBUIbX7PLi7ddCJcNCT1ufzqCwf3/5ZRbJjHLJtCOgtGveiq6k=;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vyVay-00053Z-Fw for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Mar 2026 13:52:01 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id 314491D00031;
 Fri,  6 Mar 2026 08:51:49 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Fri, 06 Mar 2026 08:51:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1772805108;
 x=1772891508; bh=KqL28PEa1gdOtcPjGDXJw5E9578ySQPb6ffvqQWlJsw=; b=
 TtWDTa6N5XdzgvKQFRhorHPTlhV7A0q9pfvjkhQqY5fdr27du0GljCVHIslFQ3V8
 76jLfCfN1kePsMixnpVK91d/MiXGm9c74xF/2jkVWzAVuugTi5U1Z4ccY9HCI6Aw
 aDoWfig19yKARf+nqAGbrIP7ubgq0dhfZXqGHrEbbdbJHk1f4iplppvTrhFmUMSp
 Noh2Y/EeL/SAm1Fe5eb4mpJIn+B1mw5yh3jKLg2Cf8jmptE5i6rCNvB1d55diKbP
 h5Op5s0g2r9E/oaXaI+jyYUQZwb0RmB6LFb1Ay1ULn8B8r8xhWyXMFcZ5pDcah1T
 5I53FncpVlxO/RdAr6tiHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1772805108; x=
 1772891508; bh=KqL28PEa1gdOtcPjGDXJw5E9578ySQPb6ffvqQWlJsw=; b=L
 blhBxcAshBjlo/AFGF1FaC49vbTEoasREDFsv033Yz63+tACjXJR8o28Ku5Umcrs
 ScVRCN0ETH8eaAmnPEsGxWDJDfn0ei00bo4npe2Zy1Loea3tyiWKfiNh1sBWVyKX
 J7IGf6J+2UXaxScTu/9e/N9ghx2YEaahlrPLJdozmuJqXPAwuTH2+Aty8Uzp/BK+
 3B8lRTM+C54pVymwN3mTHKqK0+/wp1LOQJrUBF0dwxLOpuG6uxbZIbY2AiboH0l0
 VuiwIKW940p79+2ZbNsceKNI7P1RCLJy2Qay84xom7NIHimIuJxoCKXpfIbNPQ4T
 9s7rDRyEDWqKFwZH4y8lA==
X-ME-Sender: <xms:9NuqaVa97MnFvIw0VPM7l8MSpT-LAOX5fujbs9_v92NLfutsAtZJTw>
 <xme:9NuqaXO1vqZbBf3BhnfcCgX0jv25XbCzuACZhvtVmuB49Cxcz4R4qaXwnruiv3gWm
 GS5uFWjAWF7sZ2kbstZMlcNPnLhE4sYs_4tTNpQZMYwyzIw3C39yUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieelgeehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedfofgrrhhk
 ucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtg
 grqeenucggtffrrghtthgvrhhnpefhveekjeeuueekfefhleeljeehuedugfetffdvteek
 ffejudelffdvjeekfeehvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhn
 sggprhgtphhtthhopedufedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggvrh
 gvkhhjohhhnhdrtghlrghrkhesghhmrghilhdrtghomhdprhgtphhtthhopegumhhithhr
 hidrthhorhhokhhhohhvsehgmhgrihhlrdgtohhmpdhrtghpthhtohepvhhishhhnhhuoh
 gtvhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdp
 rhgtphhtthhopehhrghnshhgsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehvshgrnh
 hkrghrsehlvghnohhvohdrtghomhdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghn
 sehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmhdqrggtphhiqdguvg
 hvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheptgho
 rhgsvghtsehlfihnrdhnvght
X-ME-Proxy: <xmx:9NuqaWrSg8AF5PROqsg5PnniT3zw8stMKk9h9ko_dxGZ-HlRyYnX5A>
 <xmx:9NuqafDnGNTnFzH1MeA3TSavB_FhggH-qHeTmcBeneDnW7frsS5HTA>
 <xmx:9NuqaRUBA003l2u1uDcXkQMBx5kHE4PpjTdg7MgckKvaJWg03RWX5A>
 <xmx:9NuqaRB4A84c0Id_cVe7DUfEvJfaFgH2uE2Q4HvB73dX9XkfAZ0sjg>
 <xmx:9NuqaaFxQmgVNhwslrv0vDqk3fKYErBbQn1eL1ef6aCzJxd4JJk8itiK>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 1D6CB2CE0072; Fri,  6 Mar 2026 08:51:48 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AA58JqlF_hbo
Date: Fri, 06 Mar 2026 08:51:25 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Vishnu Sankar" <vishnuocv@gmail.com>,
 "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>,
 "Hans de Goede" <hansg@kernel.org>, "Jonathan Corbet" <corbet@lwn.net>,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <8a352a34-5ddb-4aa8-b9e1-8c5c8aafca04@app.fastmail.com>
In-Reply-To: <CABxCQKvNO78SeVp9pAnBOSAF=x0eFn03F33ftW-x-rZCG0-84Q@mail.gmail.com>
References: <20260209063355.491189-1-vishnuocv@gmail.com>
 <CABxCQKvNO78SeVp9pAnBOSAF=x0eFn03F33ftW-x-rZCG0-84Q@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 23, 2026, at 6:28 PM, Vishnu Sankar wrote: >
 Hi, > > Gentle ping on this series. > > This is v7 addressing all previous
 review comments. > Please let me know if any further changes are ne [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [202.12.124.145 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vyVay-00053Z-Fw
Subject: Re: [ibm-acpi-devel] [PATCH v7 0/3] TrackPoint doubletap enablement
 and user control
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
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 7ED9C22221D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.50 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vishnuocv@gmail.com,m:dmitry.torokhov@gmail.com,m:hmh@hmh.eng.br,m:hansg@kernel.org,m:corbet@lwn.net,m:derekjohn.clark@gmail.com,m:ilpo.jarvinen@linux.intel.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:vsankar@lenovo.com,m:ibm-acpi-devel@lists.sourceforge.net,m:linux-input@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,hmh.eng.br,kernel.org,lwn.net,linux.intel.com];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	DMARC_NA(0.00)[squebb.ca];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,squebb.ca:s=fm2,messagingengine.com:s=fm1];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,squebb.ca:-,messagingengine.com:-];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

Ck9uIE1vbiwgRmViIDIzLCAyMDI2LCBhdCA2OjI4IFBNLCBWaXNobnUgU2Fua2FyIHdyb3RlOgo+
IEhpLAo+Cj4gR2VudGxlIHBpbmcgb24gdGhpcyBzZXJpZXMuCj4KPiBUaGlzIGlzIHY3IGFkZHJl
c3NpbmcgYWxsIHByZXZpb3VzIHJldmlldyBjb21tZW50cy4KPiBQbGVhc2UgbGV0IG1lIGtub3cg
aWYgYW55IGZ1cnRoZXIgY2hhbmdlcyBhcmUgbmVlZGVkLgo+Cj4gVGhhbmtzLAo+IFZpc2hudQo+
Cj4KPiBPbiBNb24sIEZlYiA5LCAyMDI2IGF0IDM6MzTigK9QTSBWaXNobnUgU2Fua2FyIDx2aXNo
bnVvY3ZAZ21haWwuY29tPiB3cm90ZToKPj4KPj4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBw
b3J0IGZvciBUcmFja1BvaW50IGRvdWJsZXRhcCB3aXRoIGEgY2xlYXIgYW5kCj4+IHNpbXBsZSBz
ZXBhcmF0aW9uIG9mIHJlc3BvbnNpYmlsaXRpZXMgYmV0d2VlbiBkcml2ZXJzOgo+Pgo+PiAxLiBG
aXJtd2FyZSBlbmFibGVtZW50ICh0cmFja3BvaW50LmMpOgo+PiAgICBBdXRvbWF0aWNhbGx5IGVu
YWJsZXMgZG91YmxldGFwIG9uIGNhcGFibGUgaGFyZHdhcmUgZHVyaW5nIGRldmljZQo+PiAgICBk
ZXRlY3Rpb24uCj4+Cj4+IDIuIFVzZXIgY29udHJvbCAodGhpbmtwYWRfYWNwaS5jKToKPj4gICAg
UHJvdmlkZXMgYSBzeXNmcyBpbnRlcmZhY2UgdG8gZW5hYmxlIG9yIGRpc2FibGUgZGVsaXZlcnkg
b2YgZG91YmxldGFwCj4+ICAgIGV2ZW50cyB0byB1c2Vyc3BhY2UuCj4+Cj4+IFRoZSBhcHByb2Fj
aCBmb2xsb3dzIHRoZSBLSVNTIHByaW5jaXBsZToKPj4gLSBUaGUgVHJhY2tQb2ludCBkcml2ZXIg
ZW5hYmxlcyBoYXJkd2FyZSBmdW5jdGlvbmFsaXR5IGJ5IGRlZmF1bHQuCj4+IC0gVGhlIHRoaW5r
cGFkX2FjcGkgZHJpdmVyIGNvbnRyb2xzIHdoZXRoZXIgQUNQSSBkb3VibGV0YXAgZXZlbnRzIGFy
ZQo+PiAgIGRlbGl2ZXJlZCwgdXNpbmcgZXhpc3RpbmcgaG90a2V5IGZpbHRlcmluZyBpbmZyYXN0
cnVjdHVyZS4KPj4gLSBObyBjcm9zcy1kcml2ZXIgQVBJcyBvciBkdWFsIGZpbHRlcmluZyBwYXRo
cyBhcmUgaW50cm9kdWNlZC4KPj4KPj4gQ2hhbmdlcyBpbiB2NzoKPj4gLSBSZW1vdmVkIHVud2Fu
dGVkIGNvbW1lbnRzIGFuZCBsb2dzCj4+Cj4+IENoYW5nZXMgaW4gdjY6Cj4+IC0gRG9jdW1lbnRh
dGlvbjogZml4IGZvcm1hdHRpbmcgb2YgdGhlIGRvdWJsZXRhcF9lbmFibGUgc3lzZnMgYXR0cmli
dXRlCj4+ICAgZGVzY3JpcHRpb24gKHNlcGFyYXRlICJWYWx1ZXMiIGxpc3QpCj4+Cj4+IENoYW5n
ZXMgaW4gdjU6Cj4+IC0gUmVuYW1lIHN5c2ZzIGF0dHJpYnV0ZSBmcm9tIGRvdWJsZXRhcF9maWx0
ZXIgdG8gZG91YmxldGFwX2VuYWJsZSB0bwo+PiAgIHJlZmxlY3QgYWN0dWFsIGJlaGF2aW9yLgo+
PiAtIEZpeCBpbnZlcnRlZCBsb2dpYyBzbyBldmVudHMgYXJlIGRlbGl2ZXJlZCBvbmx5IHdoZW4g
ZG91YmxldGFwIGlzCj4+ICAgZW5hYmxlZC4KPj4gLSBTdXBwcmVzcyBBQ1BJIGhvdGtleSBkZWxp
dmVyeSBpbnN0ZWFkIG9mIGluamVjdGluZyBvciBmaWx0ZXJpbmcgaW5wdXQKPj4gICBldmVudHMu
Cj4+IC0gUmVnaXN0ZXIgdGhlIHN5c2ZzIGF0dHJpYnV0ZSB2aWEgaG90a2V5X2F0dHJpYnV0ZXNb
XSBpbnN0ZWFkIG9mCj4+ICAgZGV2aWNlX2NyZWF0ZV9maWxlKCkuCj4+IC0gRHJvcCB1bm5lY2Vz
c2FyeSBoZWxwZXIgd3JhcHBlcnMgYW5kIGRlYnVnIGxvZ2dpbmcuCj4+IC0gVXBkYXRlIERvY3Vt
ZW50YXRpb24gdG8gcmVmbGVjdCB0aGUgbmV3IG5hbWluZyBhbmQgc2VtYW50aWNzLgo+Pgo+PiBD
aGFuZ2VzIGluIHY0Ogo+PiAtIENvbXBsZXRlIHJlZGVzaWduIGJhc2VkIG9uIHJldmlld2VyIGZl
ZWRiYWNrLgo+PiAtIHRyYWNrcG9pbnQuYzogU2ltcGxpZmllZCB0byBvbmx5IGVuYWJsZSBkb3Vi
bGV0YXAgYnkgZGVmYXVsdC4KPj4gLSB0cmFja3BvaW50LmM6IFJlbW92ZWQgYWxsIHN5c2ZzIGF0
dHJpYnV0ZXMgYW5kIGdsb2JhbCB2YXJpYWJsZXMuCj4+IC0gdHJhY2twb2ludC5jOiBVc2VzIGZp
cm13YXJlIElEIGRldGVjdGlvbiB3aXRoIGRlbnkgbGlzdC4KPj4gLSB0aGlua3BhZF9hY3BpLmM6
IEFkZGVkIHN5c2ZzIGludGVyZmFjZSBmb3Iga2VybmVsLWxldmVsIGV2ZW50IGNvbnRyb2wuCj4+
IC0gdGhpbmtwYWRfYWNwaS5jOiBObyBjcm9zcy1kcml2ZXIgZGVwZW5kZW5jaWVzLgo+PiAtIERv
Y3VtZW50YXRpb246IFVwZGF0ZWQgdG8gcmVmbGVjdCBzaW1wbGlmaWVkIHN5c2ZzIGFwcHJvYWNo
Lgo+Pgo+PiBDaGFuZ2VzIGluIHYzOgo+PiAtIE5vIGNoYW5nZXMuCj4+Cj4+IENoYW5nZXMgaW4g
djI6Cj4+IC0gSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2VzLgo+PiAtIFJlbW92ZWQgdW5uZWNlc3Nh
cnkgY29tbWVudHMgYW5kIGRlYnVnIG1lc3NhZ2VzLgo+PiAtIFN3aXRjaGVkIHRvIHN0cnN0YXJ0
cygpIHVzYWdlLgo+PiAtIFNpbXBsaWZpZWQgZmlybXdhcmUgY2FwYWJpbGl0eSBkZXRlY3Rpb24g
bG9naWMuCj4+Cj4+IFRoaXMgdmVyc2lvbiBhZGRyZXNzZXMgdGhlIHJlbWFpbmluZyByZXZpZXcg
ZmVlZGJhY2sgYnkgY29ycmVjdGluZyB0aGUKPj4gbmFtaW5nIGFuZCBsb2dpYyBpbnZlcnNpb24s
IGFsaWduaW5nIHN5c2ZzIHNlbWFudGljcyB3aXRoIGJlaGF2aW9yLCBhbmQKPj4gZnVsbHkgaW50
ZWdyYXRpbmcgd2l0aCBleGlzdGluZyB0aGlua3BhZF9hY3BpIGhvdGtleSBoYW5kbGluZy4KPj4K
Pj4gVmlzaG51IFNhbmthciAoMyk6Cj4+ICAgaW5wdXQ6IHRyYWNrcG9pbnQgLSBFbmFibGUgZG91
YmxldGFwIGJ5IGRlZmF1bHQgb24gY2FwYWJsZSBkZXZpY2VzCj4+ICAgcGxhdGZvcm0veDg2OiB0
aGlua3BhZF9hY3BpOiBBZGQgc3lzZnMgY29udHJvbCBmb3IgVHJhY2tQb2ludAo+PiAgICAgZG91
YmxlLXRhcAo+PiAgIERvY3VtZW50YXRpb246IHRoaW5rcGFkLWFjcGkgLSBEb2N1bWVudCBkb3Vi
bGV0YXBfZW5hYmxlIGF0dHJpYnV0ZQo+Pgo+PiAgLi4uL2FkbWluLWd1aWRlL2xhcHRvcHMvdGhp
bmtwYWQtYWNwaS5yc3QgICAgIHwgMjEgKysrKysrKysrCj4+ICBkcml2ZXJzL2lucHV0L21vdXNl
L3RyYWNrcG9pbnQuYyAgICAgICAgICAgICAgfCA0NSArKysrKysrKysrKysrKysrKysrCj4+ICBk
cml2ZXJzL2lucHV0L21vdXNlL3RyYWNrcG9pbnQuaCAgICAgICAgICAgICAgfCAgNSArKysKPj4g
IGRyaXZlcnMvcGxhdGZvcm0veDg2L2xlbm92by90aGlua3BhZF9hY3BpLmMgICB8IDQyICsrKysr
KysrKysrKysrLS0tCj4+ICA0IGZpbGVzIGNoYW5nZWQsIDEwNiBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+Pgo+PiAtLQo+PiAyLjUxLjAKPj4KPgo+Cj4gLS0KPgo+IFJlZ2FyZHMsCj4K
PiAgICAgICBWaXNobnUgU2Fua2FyCgpIaSBJbHBvLAoKSSB3YXMganVzdCBkaXNjdXNzaW5nIHRo
aXMgd2l0aCBWaXNobnUgYW5kIHdhbnRlZCB0byBjaGVjayBpZiBhbnl0aGluZyBlbHNlIHdhcyBu
ZWVkZWQgZnJvbSB5b3VyIHBlcnNwZWN0aXZlIGZvciB0aGlzIHBhdGNoPwoKSSBhc3N1bWUgYXQg
dGhpcyBwb2ludCB3ZSdyZSB3YWl0aW5nIGZvciB0aGUgNy4xIG1lcmdlIHdpbmRvdyB0byBvcGVu
LiBQbGVhc2UgZG8gbGV0IHVzIGtub3cgaWYgdGhlcmUncyBhbnl0aGluZyB5b3UgbmVlZCBmcm9t
IHVzIGluIHRoZSBtZWFudGltZS4gCldlIGNhbid0IGdldCB0aGlzIHB1bGxlZCBpbnRvIHRoZSBk
aXN0cm8ncyB1bnRpbCBpdCdzIGFjY2VwdGVkIHVwc3RyZWFtIC0gYW5kIHdoaWxlIGl0J3Mgbm90
IGEgY3JpdGljYWwgZmVhdHVyZSwgd2UnZCBsb3ZlIGl0IHRvIGJlIGluIHBsYWNlIGZvciB0aGUg
TGludXggcHJlbG9hZHMgZm9yIHRoZSAyMDI2IHBsYXRmb3JtcyAoY29taW5nIHVwIHNvb24pCgpU
aGFua3MKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
aWJtLWFjcGktZGV2ZWwK
