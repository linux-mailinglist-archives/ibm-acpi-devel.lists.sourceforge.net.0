Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9207D747981
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  4 Jul 2023 23:20:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qGnQc-00048R-EA;
	Tue, 04 Jul 2023 21:19:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@weissschuh.net>) id 1qGnQa-00048L-HQ
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 04 Jul 2023 21:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eguXyzKTZkD9Z4lGPj900ptpIgDTK4/2D4wcFUab7ns=; b=Pc0WWfDJ+d0N5mxh1G4VHvo6qm
 cAi7XcBcClkfwJtS0BVFCuZDXUcXbHjfUPIkLcycuGXmDZbhgPtGMnYfSpEItN/0iNnApqDBVKgz8
 X9znMpOoKtrJYy7lNLRMyhMnVFVtFUHXU71wCE1mPJ49T9USEnc3ilxgbKgz+HZF142Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eguXyzKTZkD9Z4lGPj900ptpIgDTK4/2D4wcFUab7ns=; b=Wzgmr3iYtkqiW0O03ZQDfp6npB
 wd4wIM4s0eUkfonWMnGSPMIZsINRmiKL2fzrYhjjIJEV1/P7rc2txZeqVMNdsoUVgBfoOZrSe2xaI
 HpSe4zpAwO1xHv9UuhfnqYZhy+W221RX9b4Wyq+Gj/6XnNArLS/QKytDqTz0tgod7xd4=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qGnQX-006AHD-HT for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 04 Jul 2023 21:19:16 +0000
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=weissschuh.net;
 s=mail; t=1688504608;
 bh=5uR0LdnKjKs0n4uZv6fjdMfj3y5tRy2LwcBBWPqIGm8=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=cEWNAPOzRnEmGGm56FkorByHHnQ1fXlfXHSpwPgAGLWFVMKtdXyvHQaYappRDGLNK
 lLeBpAhGE61YK1DA5CmEU5BKjPlvwKJDnvsq5wiMqZ3tb0YJ6pzZzsTI3hKy4MlFlu
 BcH6/INRbYLcG0ziGw0ih3j4qep2BiDt8CfDDp2I=
Date: Tue, 04 Jul 2023 23:03:17 +0200
MIME-Version: 1.0
Message-Id: <20230704-thinkpad_acpi-lockdep-v1-1-60129548a738@weissschuh.net>
References: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
In-Reply-To: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>, 
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <markgross@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688504608; l=1340;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=5uR0LdnKjKs0n4uZv6fjdMfj3y5tRy2LwcBBWPqIGm8=;
 b=JuLe2U8TccNMJjW0vtcgW8wNPauuFWJBOT+UdbRBgSvpf4mkRCCrd5Pr0nQLZ4UWV3l21oOOj
 v+O+fIlQN0BB3IPpJhsHTjDGx3/aTXviz1RJSWmdmCNeVqIQTMEVPRP
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: hotkey_mask_set() and hotkey_mask_get() expect hotkey_mutex
 to be held. While it should not matter during initialization a following
 patch will enable lockdep for hotkey_mutex which would produce warn [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qGnQX-006AHD-HT
Subject: [ibm-acpi-devel] [PATCH 1/2] platform/x86: thinkpad_acpi: take
 mutex for hotkey_mask_{set, get}
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
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

aG90a2V5X21hc2tfc2V0KCkgYW5kIGhvdGtleV9tYXNrX2dldCgpIGV4cGVjdCBob3RrZXlfbXV0
ZXggdG8gYmUgaGVsZC4KV2hpbGUgaXQgc2hvdWxkIG5vdCBtYXR0ZXIgZHVyaW5nIGluaXRpYWxp
emF0aW9uIGEgZm9sbG93aW5nIHBhdGNoIHdpbGwKZW5hYmxlIGxvY2tkZXAgZm9yIGhvdGtleV9t
dXRleCB3aGljaCB3b3VsZCBwcm9kdWNlIHdhcm5pbmdzIGhlcmUuCgpTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3NzY2h1aC5uZXQ+Ci0tLQogZHJpdmVycy9wbGF0
Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNw
aS5jIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCmluZGV4IDE4NzAxOGZm
YjA2OC4uYjc5NmU2NWM5OWUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMKKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCkBA
IC0zNDc4LDcgKzM0NzgsOSBAQCBzdGF0aWMgaW50IF9faW5pdCBob3RrZXlfaW5pdChzdHJ1Y3Qg
aWJtX2luaXRfc3RydWN0ICppaWJtKQogCWlmICh0cF9mZWF0dXJlcy5ob3RrZXlfbWFzaykgewog
CQkvKiBob3RrZXlfc291cmNlX21hc2sgKm11c3QqIGJlIHplcm8gZm9yCiAJCSAqIHRoZSBmaXJz
dCBob3RrZXlfbWFza19nZXQgdG8gcmV0dXJuIGhvdGtleV9vcmlnX21hc2sgKi8KKwkJbXV0ZXhf
bG9jaygmaG90a2V5X211dGV4KTsKIAkJcmVzID0gaG90a2V5X21hc2tfZ2V0KCk7CisJCW11dGV4
X3VubG9jaygmaG90a2V5X211dGV4KTsKIAkJaWYgKHJlcykKIAkJCXJldHVybiByZXM7CiAKQEAg
LTM1NzcsOSArMzU3OSwxMSBAQCBzdGF0aWMgaW50IF9faW5pdCBob3RrZXlfaW5pdChzdHJ1Y3Qg
aWJtX2luaXRfc3RydWN0ICppaWJtKQogCQlob3RrZXlfZXhpdCgpOwogCQlyZXR1cm4gcmVzOwog
CX0KKwltdXRleF9sb2NrKCZob3RrZXlfbXV0ZXgpOwogCXJlcyA9IGhvdGtleV9tYXNrX3NldCgo
KGhvdGtleV9hbGxfbWFzayAmIH5ob3RrZXlfcmVzZXJ2ZWRfbWFzaykKIAkJCSAgICAgICB8IGhv
dGtleV9kcml2ZXJfbWFzaykKIAkJCSAgICAgICYgfmhvdGtleV9zb3VyY2VfbWFzayk7CisJbXV0
ZXhfdW5sb2NrKCZob3RrZXlfbXV0ZXgpOwogCWlmIChyZXMgPCAwICYmIHJlcyAhPSAtRU5YSU8p
IHsKIAkJaG90a2V5X2V4aXQoKTsKIAkJcmV0dXJuIHJlczsKCi0tIAoyLjQxLjAKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwg
bWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
