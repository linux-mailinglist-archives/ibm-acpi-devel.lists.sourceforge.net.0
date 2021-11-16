Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8FB453200
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Nov 2021 13:18:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mmxPq-00052W-Fy; Tue, 16 Nov 2021 12:18:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mmxPo-00052P-Pn
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 12:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ivLIU91LPyoFfswLElfvlfeeiyzOWB6T0gQL5luEzZs=; b=GKtx3nbn+YH7DuqxprmALbofrP
 eZ2WrTy8hMT7eMxItYx1EqA7Dc6PqB2nliriEECM0nHkD8CXFzJxwyFPv5w7JUaPz0TN5I2sfSHRT
 dUNch/tIH5oVot1G41ZGRYRLm1G5E7F/6Nbp8JJADnSOB+ZZnNi8IkThuYLjTm8Cc+30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ivLIU91LPyoFfswLElfvlfeeiyzOWB6T0gQL5luEzZs=; b=URL6UxWOsBIqL6G5XPHlIybHmm
 6ueL39dp/ftd8b1WytcBCrrFpI0Og7G6jxPYseIJOGA8A7Cr+hhWbVepJBWpGDfRDgYyErE86b6Ls
 19LBkIA6MfHA/jxWv4At5V81iYdGa3L6J1CNt1HSH4q1OQBQT6K+je0NNTiNegz3gYFs=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmxPn-00Emzx-2s
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 12:18:20 +0000
Date: Tue, 16 Nov 2021 13:18:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637065091;
 bh=cCgpA89cKBgN/pAn0p9KVi8LU03GGQSfKl3QzsHCXw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IqOFjlcX/Pgfrfec+ZiVtqFM7Oxra6IElEHtEWj3fzCyBvGm3Dd+stv9soWOciLXR
 v+7DgjstXGAf1c2O5745wioBd8HLs+TtQi/5wDSC7o/Cb91DibrSQpwL7n1QbzCvzQ
 OnLTVMWbU7jFPE5B0+hrXVBrDydlPxo5gxgJbTHA=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <754b4466-4636-4a51-980a-5e5c21953f44@t-8ch.de>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <20211113104225.141333-5-linux@weissschuh.net>
 <09a66da1-1a8b-a668-3179-81670303ea37@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09a66da1-1a8b-a668-3179-81670303ea37@redhat.com>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans, On 2021-11-16 11:58+0100, Hans de Goede wrote: >
 Thank you for working on this! Thanks for the review! 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mmxPn-00Emzx-2s
Subject: Re: [ibm-acpi-devel] [PATCH 4/4] platform/x86: thinkpad_acpi:
 support inhibit-charge
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, hadess@hadess.net,
 markpearson@lenovo.com, smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgSGFucywKCk9uIDIwMjEtMTEtMTYgMTE6NTgrMDEwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToK
PiBUaGFuayB5b3UgZm9yIHdvcmtpbmcgb24gdGhpcyEKClRoYW5rcyBmb3IgdGhlIHJldmlldyEK
Cj4gT24gMTEvMTMvMjEgMTE6NDIsIFRob21hcyBXZWnDn3NjaHVoIHdyb3RlOgo+ID4gQEAgLTk2
NzMsNiArOTcxMSwxMSBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3VyX3Nob3coc3Ry
dWN0IGRldmljZSAqZGV2LAo+ID4gIAkJCXJldHVybiAtRU5PREVWOwo+ID4gIAkJaWYgKHJldCkK
PiA+ICAJCQlhY3RpdmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVND
SEFSR0U7Cj4gPiArCX0gZWxzZSBpZiAoYXZhaWxhYmxlICYgQklUKFBPV0VSX1NVUFBMWV9DSEFS
R0VfQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdFKSkgewo+IAo+IFRoZSB1c2Ugb2YgZWxzZS1pZiBo
ZXJlIHNlZW1zIHdyb25nLCB0aGlzIHN1Z2dlc3RzIHRoYXQgYmF0dGVyeXMgY2FuIG5ldmVyCj4g
c3VwcG9ydCBib3RoIGZvcmNlLWRpc2NoYXJnZSBhbmQgaW5oaWJpdC1jaGFyZ2UgYmVoYXZpb3Is
IHdoaWNoIHRoZXkgY2FuLCBzbyB0aGlzCj4gbWVhbnMgdGhhdCBhY3RpdmUgY2FuIG5vdyBuZXZl
ciBnZXQgc2V0IHRvIEJFSEFWSU9VUl9JTkhJQklUX0NIQVJHRSBvbgo+IGJhdHRlcmllcyB3aGlj
aCBzdXBwb3J0IGJvdGguCj4gCj4gU28gQUZBSUNUIHRoZSBlbHNlIHBhcnQgb2YgdGhlIGVsc2Ug
aWYgc2hvdWxkIGJlIGRyb3BwZWQgaGVyZSwgbWFraW5nIHRoaXMKPiBhIG5ldyBzdGFuZCBhbG9u
ZSBpZiBibG9jay4KCkluZGVlZCwgSSdsbCBmaXggdGhpcyBsb2dpYyBmb3IgdjIuCgpUaGFua3Ms
ClRob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJt
LWFjcGktZGV2ZWwK
