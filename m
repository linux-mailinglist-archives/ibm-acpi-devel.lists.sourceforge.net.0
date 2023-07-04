Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE50747982
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  4 Jul 2023 23:20:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qGnQf-0002Nb-7y;
	Tue, 04 Jul 2023 21:19:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@weissschuh.net>) id 1qGnQd-0002NU-23
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 04 Jul 2023 21:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2FyWBApHLy+9ZgPJC0YzgYmTxrZLsJAs1IrsJ+5TcA4=; b=HiyO1ERWXwIUjbP8aN667Phjif
 fgmrIzC2FycEVryWNBBFGC+HqfuHSTXa3YPms72ZCa0vQBICmZc/ZVDjNlCWrLFawLMrbrRHopILU
 FpY5E2bFvqrlGAimhKWtjxPFfxzL33K01I0YVn9eyhLYTQTNpBtTKNpfGvhKGz4q3bbc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2FyWBApHLy+9ZgPJC0YzgYmTxrZLsJAs1IrsJ+5TcA4=; b=f
 4os20QkbvP7nhrqCb14e26LRoyh8iGBzpbARr4+8U2IKam2ceePAn54zSvpC2Fq5MXYo24Qp9mLa9
 K1dCB+DgeiyCRTuOoQfP6AVyKAbCFkEnWcTbuzr73wI72vsj5kX4GvCNLOQroE61c6iH7rJudsaH0
 ARqSdCzD1+VubOJY=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qGnQX-0004W2-Hz for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 04 Jul 2023 21:19:18 +0000
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=weissschuh.net;
 s=mail; t=1688504608;
 bh=jbuSoqRMhzPRGDqEOj7GbSYGStk9q68+nfDVDFfIYZk=;
 h=From:Subject:Date:To:Cc:From;
 b=bGkweJ794JmmVfgxTLgjYK550ygLtrWMHmBiuvhVIL0LA6ASD2LOXJBaFumsOJFY2
 +lX6NidkgD7Xebf3x+pExjSGcYvmtMNzncuZXS8It5X3Fbx/Ai2A9uxvQIcpRiy3/5
 iZQ7dfHXdpvS6w1zr0ljHbhxn0pd9fEx5CxEY6W8=
Date: Tue, 04 Jul 2023 23:03:16 +0200
Message-Id: <20230704-thinkpad_acpi-lockdep-v1-0-60129548a738@weissschuh.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABSJpGQC/x3MTQqAIBBA4avErBPsD6mrRIQ5Yw2FiUYE0t2Tl
 t/ivQSRAlOEoUgQ6ObIp8uoygLMpt1KgjEbalk3UslWXBu73WuctfEsjtPsSF4oJNujsn21dJB
 bH8jy83/H6X0/Ud86AGcAAAA=
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>, 
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <markgross@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688504608; l=601;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=jbuSoqRMhzPRGDqEOj7GbSYGStk9q68+nfDVDFfIYZk=;
 b=IHtg3/hynCvHsKnNvwKePQhZ9CcGpO3NqWiRP3PTAPABieoutwNtXLusQcBZgmP+0fX/6PJw2
 Q44HqUOfIh1B4QQoB+Ve0A2z86X7XoK5l+i/Hb3EI4nbWjmhz0+DP7A
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Validate locking requirements in thinkpad_acpi through lockdep.
    Signed-off-by: Thomas Weißschuh <linux@weissschuh.net> --- Thomas Weißschuh
    (2): platform/x86: thinkpad_acpi: take mutex for hotkey_mask_{set,get} platform/x86:
    thinkpad_acpi: use lockdep annotation [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qGnQX-0004W2-Hz
Subject: [ibm-acpi-devel] [PATCH 0/2] platform/x86: thinkpad_acpi: lockdep
 support
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

VmFsaWRhdGUgbG9ja2luZyByZXF1aXJlbWVudHMgaW4gdGhpbmtwYWRfYWNwaSB0aHJvdWdoIGxv
Y2tkZXAuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3NzY2h1
aC5uZXQ+Ci0tLQpUaG9tYXMgV2Vpw59zY2h1aCAoMik6CiAgICAgIHBsYXRmb3JtL3g4NjogdGhp
bmtwYWRfYWNwaTogdGFrZSBtdXRleCBmb3IgaG90a2V5X21hc2tfe3NldCxnZXR9CiAgICAgIHBs
YXRmb3JtL3g4NjogdGhpbmtwYWRfYWNwaTogdXNlIGxvY2tkZXAgYW5ub3RhdGlvbnMKCiBkcml2
ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCA0NSArKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxNyBk
ZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiAwMzI3NTU4NWNhYmQwMjQwOTQ0ZjE5ZjMzZDc1
ODRhMWIwOTlhM2E4CmNoYW5nZS1pZDogMjAyMzA3MDQtdGhpbmtwYWRfYWNwaS1sb2NrZGVwLTdk
ZWY5ZDdmOTFiNQoKQmVzdCByZWdhcmRzLAotLSAKVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdl
aXNzc2NodWgubmV0PgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2libS1hY3BpLWRldmVsCg==
