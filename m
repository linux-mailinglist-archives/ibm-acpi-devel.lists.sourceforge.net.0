Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3864726122B
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  8 Sep 2020 15:52:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kFe2y-0007eA-6I; Tue, 08 Sep 2020 13:52:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kFe2w-0007dz-TQ
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 13:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IIzrHUv8ibcbWv5IZd04X9ojSRoI+IcjBa56NjrRf8s=; b=Oqal17XfUw3w6tMCj9sSup0iMu
 Z2D4+LXlSTShN2YUNRbiAe/i1eHStg1kiUWZi3Ip4F4U2ZeT1ojLBetDW1LFoECukWATlipAw+y5X
 036WCPiZ8mmehGpyNR7qx0kY/4t37meE1LlXbCktvB7unyBQ8WiNcOkywK8sTdTp/OmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IIzrHUv8ibcbWv5IZd04X9ojSRoI+IcjBa56NjrRf8s=; b=DpKKx32fRHnmAZtz0A+bHFzIEA
 FSfrfd6xfv0EdlN/Ue0bSbnEhvgCAQNIlc/4AXEIYG4Udm0J6uz7a/d7+qvqTA4DpomppQ4Tw3/XR
 dYBWOu4Sn9OoHF+h3BScP7N7PJYuzmAKFqSpWcddtK9W64L+yfUIAVqsj1EalGeFZT40=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kFe2s-00GrKE-T4
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 13:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599573133;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IIzrHUv8ibcbWv5IZd04X9ojSRoI+IcjBa56NjrRf8s=;
 b=LvAKKLl3A55hoQamcwrvMZ2vRXHRQW+GU+6QS/9LNVpOvBqyZ9DJvC53EOcRbUcpgERdaX
 M8sAvwQNbkIE329L7vVRBnayf8ZwE0ufl6O5Fa+yjGDaC8d/ooyGBrdyOlXZOXUtRWm6mq
 AeiI2rJbVHggKNFZczWcG5H33LteBwI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-Ba-J-m8mPv-7reFMOdqKJw-1; Tue, 08 Sep 2020 09:52:12 -0400
X-MC-Unique: Ba-J-m8mPv-7reFMOdqKJw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DF7C1084CA3;
 Tue,  8 Sep 2020 13:52:10 +0000 (UTC)
Received: from x1.localdomain (ovpn-114-188.ams2.redhat.com [10.36.114.188])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C15D27CC7;
 Tue,  8 Sep 2020 13:51:59 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Tue,  8 Sep 2020 15:51:47 +0200
Message-Id: <20200908135147.4044-5-hdegoede@redhat.com>
In-Reply-To: <20200908135147.4044-1-hdegoede@redhat.com>
References: <20200908135147.4044-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFe2s-00GrKE-T4
Subject: [ibm-acpi-devel] [PATCH v2 4/4] platform/x86: thinkpad_acpi: Map
 Clipping tool hotkey to KEY_SELECTIVE_SCREENSHOT
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
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 linux-input@vger.kernel.org, Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Commit 696c6523ec8f ("platform/x86: thinkpad_acpi: add mapping for new
hotkeys") added support for a bunch of new hotkeys, but the
clipping/snipping tool hotkey got ignored because there was no good
key-code to map it to.

Recently a new KEY_SELECTIVE_SCREENSHOT keycode was added by commit
3b059da9835c ("Input: allocate keycode for "Selective Screenshot" key")
quoting from the commit message:

"New Chrome OS keyboards have a "snip" key that is basically a selective
screenshot (allows a user to select an area of screen to be copied).
Allocate a keycode for it."

Support for this "snip" key seems like it is also a good match for the
clipping/snipping tool hotkey, so map this hotkey to the new
KEY_SELECTIVE_SCREENSHOT key-code.

Reviewed-by: Bastien Nocera <hadess@hadess.net>
Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 4b701e9a0392..47925c319d7b 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3434,7 +3434,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_UNKNOWN,
 
 		KEY_BOOKMARKS,			/* Favorite app, 0x311 */
-		KEY_RESERVED,			/* Clipping tool */
+		KEY_SELECTIVE_SCREENSHOT,	/* Clipping tool */
 		KEY_CALC,			/* Calculator (above numpad, P52) */
 		KEY_BLUETOOTH,			/* Bluetooth */
 		KEY_KEYBOARD,			/* Keyboard, 0x315 */
-- 
2.28.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
