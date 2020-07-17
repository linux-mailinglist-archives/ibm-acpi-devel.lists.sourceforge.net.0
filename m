Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADED223AB6
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jul 2020 13:42:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jwOkv-0005LE-QU; Fri, 17 Jul 2020 11:42:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jwOkt-0005Kv-OD
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P+tmySyYwC+RAUr3jiRtntADuMTAWZTMpRNx+zgwWY0=; b=FWDM+G6vQH5q+YrvmlySHpYuqK
 GoXhpU49sUn/6WjrqrAS3nZ5GjOArj8YxC/Ak8ehfWKzeUyS+pLOhM3mq8GSaXaH0gf26SK4c+2JT
 pAPUMGJdYJlmXIgPCVBk2cv3+CwLuU8JP9fRnNIumYSNfCxdLSsfIghZRmPDVCjluNJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P+tmySyYwC+RAUr3jiRtntADuMTAWZTMpRNx+zgwWY0=; b=mTzS2QxyC5iI9blr6+ZMuFD9Zq
 hQy++YKDwTTBY2vXsRGAzW7+LhzVRrltA5sSyVUcFZJmD4ASM7BquBWH5ZC9JZjy+kTPgTx/C8jjW
 +HwBT0jundwOElYxEK63wJJ+nnyXokBKL/Z1MXVy4VdO6J89hI9tcyQnUhwmMDfhk6h0=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jwOkr-007LYf-J1
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594986131;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P+tmySyYwC+RAUr3jiRtntADuMTAWZTMpRNx+zgwWY0=;
 b=WnBL+2szhZtccqTdAeuCJJ4f0o7EqqZxSQJDLKRcyyf/bwSubkXR8ZiZ/LOm218OrMDxac
 T0nlHR2OtS9O5hY0NPJkGosF7fN2x6LQ2fxEYlz9GcZJ0PPPDt9K/CGf5SBiD+jsjPWVnl
 w2tkNfK/3kOFwFQAXS8FmsTYnnIP+j4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-SGpgbV4wPlS_ZTh7C4RDIA-1; Fri, 17 Jul 2020 07:42:10 -0400
X-MC-Unique: SGpgbV4wPlS_ZTh7C4RDIA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68EA7106B242;
 Fri, 17 Jul 2020 11:42:08 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-162.ams2.redhat.com
 [10.36.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0955A5D9E7;
 Fri, 17 Jul 2020 11:42:05 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Fri, 17 Jul 2020 13:41:55 +0200
Message-Id: <20200717114155.56222-4-hdegoede@redhat.com>
In-Reply-To: <20200717114155.56222-1-hdegoede@redhat.com>
References: <20200717114155.56222-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwOkr-007LYf-J1
Subject: [ibm-acpi-devel] [PATCH 3/3] platform/x86: thinkpad_acpi: Map
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Benjamin Berg <bberg@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 Christian Kellner <ckellner@redhat.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
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

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 7fc44b6f8370..70d533b0c907 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3436,7 +3436,7 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_UNKNOWN,
 
 		KEY_BOOKMARKS,			/* Favorite app, 0x311 */
-		KEY_RESERVED,			/* Clipping tool */
+		KEY_SELECTIVE_SCREENSHOT,	/* Clipping tool */
 		KEY_CALC,			/* Calculator (above numpad, P52) */
 		KEY_BLUETOOTH,			/* Bluetooth */
 		KEY_KEYBOARD,			/* Keyboard, 0x315 */
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
