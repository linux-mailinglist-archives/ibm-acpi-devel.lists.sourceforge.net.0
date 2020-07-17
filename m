Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF74223AB8
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jul 2020 13:42:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jwOl1-0004ba-Vr; Fri, 17 Jul 2020 11:42:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jwOky-0004bE-AK
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qiiTCNya4knXKs5AxhGGf8x1TgrdQl/qReA9nncjnNg=; b=csio0fByIl79jtPk+f2Y/nxT4a
 eyHHy8oJf1rM8evl9rDmTmlgh2bduIo9p5zyMIf91kovy9MvK71u7Zvxzi1cNM0m7z1Ur7Vb4IUIj
 /kJ6Ppsdb/ShEBhHW/Y844Hum+cqQdsfvVJu892C0njfP6lTBpQe3421qJchRToxZol0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qiiTCNya4knXKs5AxhGGf8x1TgrdQl/qReA9nncjnNg=; b=ce3pexOP0w5ikWPJxiw21xwOp6
 z5zPoZjo9Otvy2K3VeyfDbD24IkZifrjM7ufDuak+e6t0VOEdt/AK7AhmGGFOe5+KZnWoYfI5DeJL
 5Db4IhtkQMO2CCiCCrx2EMn1ouPs6GjNh7KO4vOxkXrvoxLPm5+uQS3ZEWSnvqqRlS50=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jwOkw-004M5M-Ml
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 11:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594986129;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qiiTCNya4knXKs5AxhGGf8x1TgrdQl/qReA9nncjnNg=;
 b=IZp+RNgvDooooZfhJHpUWxMal+4XSBkk4fhpCqaHMeqRYHEWXLeu7mWJi0PeB14PHNPl1Q
 1lOTcA3YEbSxOveD53ivV28lW06GGjxUUCW+Gli/BBlPsZDW7kru0Gh8JgYVHisd3iE0dp
 K5EGn1y47+lOSz1Nk3pqWAFq5pl3OuM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-DVYQz0QJMGWeCsjNLwWN5A-1; Fri, 17 Jul 2020 07:42:07 -0400
X-MC-Unique: DVYQz0QJMGWeCsjNLwWN5A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B97D2C7465;
 Fri, 17 Jul 2020 11:42:05 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-162.ams2.redhat.com
 [10.36.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B65F5D9E7;
 Fri, 17 Jul 2020 11:42:03 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
Date: Fri, 17 Jul 2020 13:41:54 +0200
Message-Id: <20200717114155.56222-3-hdegoede@redhat.com>
In-Reply-To: <20200717114155.56222-1-hdegoede@redhat.com>
References: <20200717114155.56222-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwOkw-004M5M-Ml
Subject: [ibm-acpi-devel] [PATCH 2/3] platform/x86: thinkpad_acpi: Add
 support for new hotkeys found on X1C8 / T14
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

New Lenovo Thinkpad models, e.g. the X1 Carbon 8th gen and the new T14 gen1
models have 3 new symbols / shortcuts on their F9-F11 keys (and the
thinkpad_acpi driver receives 3 new hkey events for these):

F9:  Has a symbol resembling a rectangular speech baloon, the manual says
     the hotkey functions shows or hides the notification center
F10: Has a symbol of a telephone horn which has been picked up from the
     receiver, the manual says: "Answer incoming calls"
F11: Has a symbol of a telephone horn which is resting on the receiver,
     the manual says: "Decline incoming calls"

This commit adds support for these 3 new hotkeys.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 7dd84cb4fcef..7fc44b6f8370 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -1915,6 +1915,10 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_CALCULATOR,
 	TP_ACPI_HOTKEYSCAN_BLUETOOTH,
 	TP_ACPI_HOTKEYSCAN_KEYBOARD,
+	TP_ACPI_HOTKEYSCAN_1316, /* 0x1316 scancode is unknown */
+	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
+	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
+	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
 
 	/* Hotkey keymap size */
 	TPACPI_HOTKEY_MAP_LEN
@@ -3431,11 +3435,15 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN, KEY_UNKNOWN,
 		KEY_UNKNOWN,
 
-		KEY_BOOKMARKS,       /* Favorite app, 0x311 */
-		KEY_RESERVED,        /* Clipping tool */
-		KEY_CALC,            /* Calculator (above numpad, P52) */
-		KEY_BLUETOOTH,       /* Bluetooth */
-		KEY_KEYBOARD         /* Keyboard, 0x315 */
+		KEY_BOOKMARKS,			/* Favorite app, 0x311 */
+		KEY_RESERVED,			/* Clipping tool */
+		KEY_CALC,			/* Calculator (above numpad, P52) */
+		KEY_BLUETOOTH,			/* Bluetooth */
+		KEY_KEYBOARD,			/* Keyboard, 0x315 */
+		KEY_UNKNOWN,			/* 0x316, unknown */
+		KEY_NOTIFICATION_CENTER,	/* Notification Center */
+		KEY_PICKUP_PHONE,		/* Answer incoming call */
+		KEY_HANGUP_PHONE,		/* Decline incoming call */
 		},
 	};
 
-- 
2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
