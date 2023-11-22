Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D97F4FE1
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Nov 2023 19:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r5sEi-0002YJ-66;
	Wed, 22 Nov 2023 18:46:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r5sEg-0002YC-W3
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 22 Nov 2023 18:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D3ODkAsZ40xdTxpV02osQJ56S329xCPjg4PuzXonPT8=; b=mSAnBnJJ3RbUbSV27avb50wyRa
 tkNG0ABjfYzfC5t2Da0v1YIRNZsR6D33KZe/nvD8CiU7hVzL7esirMlHA8CLAQOamCCPK5SqKTE2X
 saa9LjOVh6zOM6d/aJa24PzYuJhfeO+VFalAB+XHEF34F9LnTp39HigvTN+u6Wjxfh/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:References
 :In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D3ODkAsZ40xdTxpV02osQJ56S329xCPjg4PuzXonPT8=; b=jaXkmsoS37I3aNYAFZVfEWZPJH
 XtCePGBUs7kq8Y2/iGYbPXlkw5Li5LOJSIqvDLocnEaoC7MPNzs55lGcJiSGKt9VRU5v4Nd5eiAEK
 CjHGWhNBbJSn3o+h1uS9aoBNHPtQ8AvqDWcc+n2lbHk65u1jnIk+ejPHJ1Zpb9BJx8ZA=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r5sEZ-00CynP-9J for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 22 Nov 2023 18:46:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 12BDD3200AE3;
 Wed, 22 Nov 2023 13:07:03 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 22 Nov 2023 13:07:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1700676423; x=1700762823; bh=D3ODkAsZ40xdTxpV02osQJ56S329xCPjg4P
 uzXonPT8=; b=rIMm0JKEtDtYeRFuAtCwmycbz4njOMNfIW23uySwhBBTcgmJR/r
 AR+UJCpo7Q9ur5wf8eoUFJNIahu1d+3HSwGuEtXzaKGrNZPi+xjiVpLpiQ2nk2nP
 C7U3mwoOQgrzIirWiY7JXIuQUG8+mrLSEekw5yUmlW9Nz+A8OA962yedsQAVoQbd
 jIAOv/uOjGqbFa5jdJcxf6nDEGXjDrNbh5dCsZmVEVlEb0PeyagLqNXZYuHRFbUv
 fpf32CfGsopjwIAozrGdK6iuYVrdqs5QdJBC/o62ixE1t+9vSvUn3PE5OxcYMKsZ
 qAk1nbIe9f7wTWZDjve1PbwovAxDQ8mx6Xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1700676423; x=1700762823; bh=D3ODkAsZ40xdTxpV02osQJ56S329xCPjg4P
 uzXonPT8=; b=JACtxRnkKYxyYX30Adu06DCNvVH2Mjyj6fpTSCGppQ79jB5Y3oC
 ctDQvIUUGx73Behb7A+QOPtNBaDC8rRE7ubGpBl3fJqlgt8WmNviswUFMoH/qYfo
 mcg0V9bWWfkZGvkN/c6W27IICta2VLxH61xyubvplK3T0+bDZBuX23aRSKShhT4a
 3YWBlq8iUnTlWg4R00iA+y2TgFqSWbY/FeonmG/lz8IY3bmVuagMwPQxYmsdSAp9
 1Ory5lgWR5dQsOJ8eYOSYv7FQcUmNvwOF+ZNffGvwhV/lHB6n4KQmTbzncjcTlZ7
 Tpk+eTVlmOM/i8DnFWm/ecXWhdC7G91i/5g==
X-ME-Sender: <xms:RkNeZSpFBrPPnTqDyY_Uy71xdp38iKlZyJZieUnxyh13SI7oJITpEA>
 <xme:RkNeZQpLfVKoQuqD7CAf0bWxcV4M9_DFJw3GQdG-d6na0JIEP4qEF0FfXn-c-ifjl
 eF8CTvZX_MGjjSl9HI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddguddtiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpedf
 ofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvg
 gssgdrtggrqeenucggtffrrghtthgvrhhnpefhfeegudeftefgteelgfekgfdvjeelleev
 gffhjeffhfdtiedtjeefkedvuefgkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdr
 tggr
X-ME-Proxy: <xmx:RkNeZXNHXIFh6b6urMMVEvt-Ckhv7Dh0vpAgHbZDulWidyMAzVycJQ>
 <xmx:RkNeZR4qY9k00S4ioYA_h6mxfBzXbho-Tiny2iHEgmfaNWVhp_277w>
 <xmx:RkNeZR6n-7qqnpKuUxav7dBlOs9hFHe7nYtQKHjcPLnW9LqmeMR2cQ>
 <xmx:R0NeZbkIiCcbMNb-aV5MHw_uAqwJ4VjGsFDMXBtHQAnW11OZO_734g>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 629ADC6008B; Wed, 22 Nov 2023 13:07:02 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1234-gac66594aae-fm-20231122.001-gac66594a
MIME-Version: 1.0
Message-Id: <ca976ed9-24c5-4c2f-95bf-3deaf1ad0dbc@app.fastmail.com>
In-Reply-To: <36bb8aaf-643c-4736-abe5-e5a911f24aa1@app.fastmail.com>
References: <mpearson-lenovo@squebb.ca>
 <20231113165453.6335-1-mpearson-lenovo@squebb.ca>
 <c8a025e-2da2-693f-aa94-679aba79827b@linux.intel.com>
 <36bb8aaf-643c-4736-abe5-e5a911f24aa1@app.fastmail.com>
Date: Wed, 22 Nov 2023 13:06:42 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Nov 13, 2023, at 12:15 PM, Mark Pearson wrote: > Thanks
    Ilpo, > > On Mon, Nov 13, 2023, at 11:59 AM, Ilpo Järvinen wrote: >> On
   Mon, 13 Nov 2023, Mark Pearson wrote: >> >>> Some new Thinkpads [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [64.147.123.19 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r5sEZ-00CynP-9J
Subject: Re: [ibm-acpi-devel] [PATCH v3] platform/x86: Add support for
 improved performance mode
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
Cc: Hans de Goede <hdegoede@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 "Limonciello, Mario" <mario.limonciello@amd.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

CgpPbiBNb24sIE5vdiAxMywgMjAyMywgYXQgMTI6MTUgUE0sIE1hcmsgUGVhcnNvbiB3cm90ZToK
PiBUaGFua3MgSWxwbywKPgo+IE9uIE1vbiwgTm92IDEzLCAyMDIzLCBhdCAxMTo1OSBBTSwgSWxw
byBKw6RydmluZW4gd3JvdGU6Cj4+IE9uIE1vbiwgMTMgTm92IDIwMjMsIE1hcmsgUGVhcnNvbiB3
cm90ZToKPj4KPj4+IFNvbWUgbmV3IFRoaW5rcGFkcyBoYXZlIGEgbmV3IGltcHJvdmVkIHBlcmZv
cm1hbmNlIG1vZGUgYXZhaWxhYmxlLgo+Pj4gQWRkIHN1cHBvcnQgdG8gbWFrZSB0aGlzIG1vZGUg
dXNhYmxlLgo+Pj4gCj4+PiBUbyBhdm9pZCBoYXZpbmcgdG8gY3JlYXRlIGEgbmV3IHByb2ZpbGUs
IGp1c3QgdXNlIHRoZSBpbXByb3ZlZCBwZXJmb3JtYW5jZQo+Pj4gbW9kZSBpbiBwbGFjZSBvZiB0
aGUgZXhpc3RpbmcgcGVyZm9ybWFuY2UgbW9kZSwgd2hlbiBhdmFpbGFibGUuCj4+PiAKPj4+IFRl
c3RlZCBvbiBQMTRzIEFNRCBHNCBBTUQuCj4+PiAKPj4+IFNpZ25lZC1vZmYtYnk6IE1hcmsgUGVh
cnNvbiA8bXBlYXJzb24tbGVub3ZvQHNxdWViYi5jYT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBpbiB2
MjogdXBkYXRlZCBpbXBsZW1lbnRhdGlvbiBmb3IgRFlUQ19VUF9TVVBQT1JUIGRlZmluZQo+Pj4g
Q2hhbmdlcyBpbiB2MzogCj4+PiAgLSBBZGQgaW4gbWlzc2luZyBCSVQgZm9yIGRlZmluZSwgc29t
ZWhvdyBsb3N0IGluIHByZXZpb3VzIGNvbW1pdAo+Pj4gIC0gQ29zbWV0aWMgY2xlYW4tdXBzCj4+
PiAKPj4+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCAyOCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMo
KykKPj4+IAo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2Fj
cGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4gaW5kZXggYWQ0
NjA0MTdmOTAxLi4zYTlkMmNjNzFiNmEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BsYXRmb3Jt
L3g4Ni90aGlua3BhZF9hY3BpLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYwo+Pj4gQEAgLTEwMTM2LDYgKzEwMTM2LDcgQEAgc3RhdGljIHN0cnVjdCBpYm1f
c3RydWN0IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEgPSB7Cj4+PiAgCj4+PiAgI2RlZmluZSBEWVRD
X0NNRF9TRVQgICAgICAgICAgMSAvKiBUbyBlbmFibGUvZGlzYWJsZSBJQyBmdW5jdGlvbiBtb2Rl
ICovCj4+PiAgI2RlZmluZSBEWVRDX0NNRF9NTUNfR0VUICAgICAgOCAvKiBUbyBnZXQgY3VycmVu
dCBNTUMgZnVuY3Rpb24gYW5kIG1vZGUgKi8KPj4+ICsjZGVmaW5lIERZVENfQ01EX1VQX0NBUCAg
ICAgMHhBIC8qIFRvIGdldCBVbHRyYS1wZXJmb3JtYW5jZSBjYXBhYmlsaXR5ICovCj4+PiAgI2Rl
ZmluZSBEWVRDX0NNRF9SRVNFVCAgICAweDFmZiAvKiBUbyByZXNldCBiYWNrIHRvIGRlZmF1bHQg
Ki8KPj4+ICAKPj4+ICAjZGVmaW5lIERZVENfQ01EX0ZVTkNfQ0FQICAgICAzIC8qIFRvIGdldCBE
WVRDIGNhcGFiaWxpdGllcyAqLwo+Pj4gQEAgLTEwMTUyLDYgKzEwMTUzLDcgQEAgc3RhdGljIHN0
cnVjdCBpYm1fc3RydWN0IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEgPSB7Cj4+PiAgCj4+PiAgI2Rl
ZmluZSBEWVRDX0ZVTkNUSU9OX1NURCAgICAgMCAgLyogRnVuY3Rpb24gPSAwLCBzdGFuZGFyZCBt
b2RlICovCj4+PiAgI2RlZmluZSBEWVRDX0ZVTkNUSU9OX0NRTCAgICAgMSAgLyogRnVuY3Rpb24g
PSAxLCBsYXAgbW9kZSAqLwo+Pj4gKyNkZWZpbmUgRFlUQ19GVU5DVElPTl9UTVMgICAgIDkgIC8q
IEZ1bmN0aW9uID0gOSwgVE1TIG1vZGUgKi8KPj4+ICAjZGVmaW5lIERZVENfRlVOQ1RJT05fTU1D
ICAgICAxMSAvKiBGdW5jdGlvbiA9IDExLCBNTUMgbW9kZSAqLwo+Pj4gICNkZWZpbmUgRFlUQ19G
VU5DVElPTl9QU0MgICAgIDEzIC8qIEZ1bmN0aW9uID0gMTMsIFBTQyBtb2RlICovCj4+PiAgI2Rl
ZmluZSBEWVRDX0ZVTkNUSU9OX0FNVCAgICAgMTUgLyogRnVuY3Rpb24gPSAxNSwgQU1UIG1vZGUg
Ki8KPj4+IEBAIC0xMDE2MywxMSArMTAxNjUsMTQgQEAgc3RhdGljIHN0cnVjdCBpYm1fc3RydWN0
IHByb3hzZW5zb3JfZHJpdmVyX2RhdGEgPSB7Cj4+PiAgI2RlZmluZSBEWVRDX01PREVfTU1DX0xP
V1BPV0VSIDMgIC8qIExvdyBwb3dlciBtb2RlICovCj4+PiAgI2RlZmluZSBEWVRDX01PREVfTU1D
X0JBTEFOQ0UgIDB4RiAgLyogRGVmYXVsdCBtb2RlIGFrYSBiYWxhbmNlZCAqLwo+Pj4gICNkZWZp
bmUgRFlUQ19NT0RFX01NQ19ERUZBVUxUICAwICAvKiBEZWZhdWx0IG1vZGUgZnJvbSBNTUNfR0VU
LCBha2EgYmFsYW5jZWQgKi8KPj4+ICsjZGVmaW5lIERZVENfTk9NT0RFICAgICAgICAgICAgMHhG
ICAvKiBXaGVuIEZ1bmN0aW9uIGRvZXMgbm90IGhhdmUgYSBtb2RlICovCj4+PiAgCj4+PiAgI2Rl
ZmluZSBEWVRDX01PREVfUFNDX0xPV1BPV0VSIDMgIC8qIExvdyBwb3dlciBtb2RlICovCj4+PiAg
I2RlZmluZSBEWVRDX01PREVfUFNDX0JBTEFOQ0UgIDUgIC8qIERlZmF1bHQgbW9kZSBha2EgYmFs
YW5jZWQgKi8KPj4+ICAjZGVmaW5lIERZVENfTU9ERV9QU0NfUEVSRk9STSAgNyAgLyogSGlnaCBw
b3dlciBtb2RlIGFrYSBwZXJmb3JtYW5jZSAqLwo+Pj4gIAo+Pj4gKyNkZWZpbmUgRFlUQ19VUF9T
VVBQT1JUICAgIEJJVCg4KSAgLyogVWx0cmEtcGVyZm9ybWFuY2UgKFRNUykgbW9kZSBzdXBwb3J0
ICovCj4+PiArCj4+PiAgI2RlZmluZSBEWVRDX0VSUl9NQVNLICAgICAgIDB4RiAgLyogQml0cyAw
LTMgaW4gY21kIHJlc3VsdCBhcmUgdGhlIGVycm9yIHJlc3VsdCAqLwo+Pj4gICNkZWZpbmUgRFlU
Q19FUlJfU1VDQ0VTUyAgICAgIDEgIC8qIENNRCBjb21wbGV0ZWQgc3VjY2Vzc2Z1bCAqLwo+Pj4g
IAo+Pj4gQEAgLTEwMTg1LDYgKzEwMTkwLDcgQEAgc3RhdGljIGVudW0gcGxhdGZvcm1fcHJvZmls
ZV9vcHRpb24gZHl0Y19jdXJyZW50X3Byb2ZpbGU7Cj4+PiAgc3RhdGljIGF0b21pY190IGR5dGNf
aWdub3JlX2V2ZW50ID0gQVRPTUlDX0lOSVQoMCk7Cj4+PiAgc3RhdGljIERFRklORV9NVVRFWChk
eXRjX211dGV4KTsKPj4+ICBzdGF0aWMgaW50IGR5dGNfY2FwYWJpbGl0aWVzOwo+Pj4gK3N0YXRp
YyBib29sIGR5dGNfdWx0cmFwZXJmX2NhcDsKPj4+ICBzdGF0aWMgYm9vbCBkeXRjX21tY19nZXRf
YXZhaWxhYmxlOwo+Pj4gIHN0YXRpYyBpbnQgcHJvZmlsZV9mb3JjZTsKPj4+ICAKPj4+IEBAIC0x
MDM1NSw2ICsxMDM2MSwxNyBAQCBzdGF0aWMgaW50IGR5dGNfcHJvZmlsZV9zZXQoc3RydWN0IHBs
YXRmb3JtX3Byb2ZpbGVfaGFuZGxlciAqcHByb2YsCj4+PiAgCWlmIChlcnIpCj4+PiAgCQlnb3Rv
IHVubG9jazsKPj4+ICAKPj4+ICsJLyogU2V0IFRNUyBtb2RlIGFwcHJvcHJpYXRlbHkgKGVuYWJs
ZSBmb3IgcGVyZm9ybWFuY2UpLCBpZiBhdmFpbGFibGUgKi8KPj4+ICsJaWYgKGR5dGNfdWx0cmFw
ZXJmX2NhcCkgewo+Pj4gKwkJaW50IGNtZDsKPj4+ICsKPj4+ICsJCWNtZCA9IERZVENfU0VUX0NP
TU1BTkQoRFlUQ19GVU5DVElPTl9UTVMsIERZVENfTk9NT0RFLAo+Pj4gKwkJCQkgICAgICAgcHJv
ZmlsZSA9PSBQTEFURk9STV9QUk9GSUxFX1BFUkZPUk1BTkNFKTsKPj4+ICsJCWVyciA9IGR5dGNf
Y29tbWFuZChjbWQsICZvdXRwdXQpOwo+Pj4gKwkJaWYgKGVycikKPj4+ICsJCQlyZXR1cm4gZXJy
Owo+Pj4gKwl9Cj4+PiArCj4+PiAgCWlmIChkeXRjX2NhcGFiaWxpdGllcyAmIEJJVChEWVRDX0ZD
X01NQykpIHsKPj4+ICAJCWlmIChwcm9maWxlID09IFBMQVRGT1JNX1BST0ZJTEVfQkFMQU5DRUQp
IHsKPj4+ICAJCQkvKgo+Pj4gQEAgLTEwNDI5LDYgKzEwNDQ2LDcgQEAgc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIgZHl0Y19wcm9maWxlID0gewo+Pj4gIHN0YXRpYyBpbnQg
dHBhY3BpX2R5dGNfcHJvZmlsZV9pbml0KHN0cnVjdCBpYm1faW5pdF9zdHJ1Y3QgKmlpYm0pCj4+
PiAgewo+Pj4gIAlpbnQgZXJyLCBvdXRwdXQ7Cj4+PiArCWludCBjbWQ7Cj4+PiAgCj4+PiAgCS8q
IFNldHVwIHN1cHBvcnRlZCBtb2RlcyAqLwo+Pj4gIAlzZXRfYml0KFBMQVRGT1JNX1BST0ZJTEVf
TE9XX1BPV0VSLCBkeXRjX3Byb2ZpbGUuY2hvaWNlcyk7Cj4+PiBAQCAtMTA0ODQsNiArMTA1MDIs
MTYgQEAgc3RhdGljIGludCB0cGFjcGlfZHl0Y19wcm9maWxlX2luaXQoc3RydWN0IGlibV9pbml0
X3N0cnVjdCAqaWlibSkKPj4+ICAJCWRiZ19wcmludGsoVFBBQ1BJX0RCR19JTklULCAiTm8gRFlU
QyBzdXBwb3J0IGF2YWlsYWJsZVxuIik7Cj4+PiAgCQlyZXR1cm4gLUVOT0RFVjsKPj4+ICAJfQo+
Pj4gKwllcnIgPSBkeXRjX2NvbW1hbmQoRFlUQ19DTURfVVBfQ0FQLCAmb3V0cHV0KTsKPj4KPj4g
SG1tLCBhcmUgeW91IG1pc3NpbmcgZXJyb3IgaGFuZGxpbmcgaGVyZT8KPj4KPiBEb2guLi4ueWVz
LCBpdCBzaG91bGQgY2hlY2sgdGhhdC4gTXkgYmFkLgo+Cj4gSSdsbCBob2xkIG9mZiBhIGRheSBv
ciB0d28gb24gdGhlIG5leHQgcGF0Y2ggc28gSSdtIG5vdCBzcGFtbWluZyB0aGUgCj4gbGlzdCBp
biBjYXNlIHRoZXJlIGlzIG90aGVyIGZlZWRiYWNrLCBhbmQgZG8gYSBmaXggZm9yIHRoYXQuIAo+
IEkgZG9uJ3Qgd2FudCB0aGUgZHJpdmVyIHRvIGVycm9yIG91dCBvbiB0aGlzIC0gYnV0IGl0IHNo
b3VsZG4ndCBjaGVjayAKPiAoYW5kIHBvdGVudGlhbGx5IGVuYWJsZSkgdGhlIGZlYXR1cmUgaWYg
dGhhdCByZWdpc3RlciByZWFkIGZhaWxzLiBJIAo+IHdpbGwgZ28gYW5kIGRvdWJsZSBjaGVjayBv
biBzb21lIG9sZGVyIHBsYXRmb3JtcyB0b28gYXMgYSBzYW5pdHkgY2hlY2suCj4KPiBUaGFua3Mg
Zm9yIHRoZSByZXZpZXcuCgpKdXN0IGFuIHVwZGF0ZSwgYXMgaXQncyB0YWtpbmcgbWUgbG9uZ2Vy
IHRvIGdldCB3aGF0IEkgdGhvdWdodCB3b3VsZCBiZSB0aGUgZmluYWwgdmVyc2lvbiBvZiB0aGlz
IHBhdGNoIGRvbmUuCgpJIGRpZCBzb21lIHJlZ3Jlc3Npb24gdGVzdGluZyBvbiBvdGhlciBwbGF0
Zm9ybXMsIGFzIGEgc2FuaXR5IGNoZWNrLCBhbmQgZm91bmQgb24gdGhlIFoxNiBHMSB0aGF0IGl0
IGlzIHJlcG9ydGluZyB0aGlzIGZlYXR1cmUgYXMgc3VwcG9ydGVkLCBidXQgdW5mb3J0dW5hdGVs
eSBpdCBkb2Vzbid0IHdvcmsgKGl0IHN3aXRjaGVzIHRvIGxvdyBwb3dlciBtb2RlKQoKVGhpcyBp
cyBhIEZXIGlzc3VlIHNvIEknbSBhc2tpbmcgdGhlIEZXIHRlYW0gZm9yIGNsYXJpZmljYXRpb24g
b24gd2h5IEknbSBzZWVpbmcgdGhpcywgd2h5IGl0IGlzbid0IHdvcmtpbmcsIGFuZCBob3cgdG8g
Zml4IGl0LiAKVGhpcyBpcyBnb2luZyB0byB0YWtlIHNvbWUgdGltZSB1bmZvcnR1bmF0ZWx5LCBz
byB0aGlzIHBhdGNoIHdpbGwgYmUgZGVsYXllZCBhIGJpdC4gQXBvbG9naWVzIHRvIGFueWJvZHkg
d2FpdGluZyBmb3IgdGhpcyBpbXByb3ZlbWVudC4KClRoYW5rcwpNYXJrCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
