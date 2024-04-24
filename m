Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BBF8B09AB
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkw-0002B0-69;
	Wed, 24 Apr 2024 12:29:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkg-00029H-MS
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r4y8mBLvF2B3Lj9tuHBd0FLdcMnBPN6u7k5p3xVqxXA=; b=VrIqaoiH5GUpPVU2YvpKcYs1MQ
 wOIU8U3lXN8GlKTqxnj3lWmEz4iO882uzH5W7SOS2bDzzT1waxaVgnDgEKuWp2r+q7Kfir6DPL/5D
 rKBvOWOASHFV2Hk5MDNsfO7WvHE2RIUO0RI+8WYFa9ZdcbGZR3jZI744gKvcwuiNYzUE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r4y8mBLvF2B3Lj9tuHBd0FLdcMnBPN6u7k5p3xVqxXA=; b=bEQe5LjqkgyjNzBl8vcKFSyUh5
 5vuX6tVII1hlNHN55zYUfrLtODXEP5jWlfTUWDNBg5MttBnJ75zdJrSwYhNaqU7uwf6jVat+z4ZAe
 9ElJZhGJyAqNjjXWuXHBAHa4gOnh5pmgHQIOyUphiR+KeWut8bwOmnK0MupHhzrzRJus=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkR-00024d-Fx for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r4y8mBLvF2B3Lj9tuHBd0FLdcMnBPN6u7k5p3xVqxXA=;
 b=O0oCsodVgweY0xz/7O/WfAWgH7MYAvsjhiNd7xCWEpJhVgsdYLTWUeOmmaZc+hzVJmR6mE
 2Fr/W1enaf8N/8vDBbl+FO76EeGk07ViaEgjXUX5VlImTasMRvAf9ROP/XR35NW6D+WfSy
 ghOfJycVsP0rj/tQgXkMA2knr0UmNP0=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-612-pzh4lwsUMESSvdoG0dfHqw-1; Wed,
 24 Apr 2024 08:28:58 -0400
X-MC-Unique: pzh4lwsUMESSvdoG0dfHqw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 290C329AC016;
 Wed, 24 Apr 2024 12:28:58 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 022EEC15771;
 Wed, 24 Apr 2024 12:28:56 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:26 +0200
Message-ID: <20240424122834.19801-17-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Change the hotkey_reserved_mask initialization to hardcode
 the list of reserved keys. There are only a few reserved keys and the code
 to iterate over the keymap will be removed when moving to sparse-k [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbkR-00024d-Fx
Subject: [ibm-acpi-devel] [PATCH v2 16/24] platform/x86: thinkpad_acpi:
 Change hotkey_reserved_mask initialization
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
Cc: Hans de Goede <hdegoede@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Change the hotkey_reserved_mask initialization to hardcode the list
of reserved keys. There are only a few reserved keys and the code to
iterate over the keymap will be removed when moving to sparse-keymaps.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 952bac635a18..cf5c741d1343 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3545,6 +3545,19 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 	dbg_printk(TPACPI_DBG_INIT | TPACPI_DBG_HKEY,
 		   "using keymap number %lu\n", keymap_id);
 
+	/* Keys which should be reserved on both IBM and Lenovo models */
+	hotkey_reserved_mask = TP_ACPI_HKEY_KBD_LIGHT_MASK |
+			       TP_ACPI_HKEY_VOLUP_MASK |
+			       TP_ACPI_HKEY_VOLDWN_MASK |
+			       TP_ACPI_HKEY_MUTE_MASK;
+	/*
+	 * Reserve brightness up/down unconditionally on IBM models, on Lenovo
+	 * models these are disabled based on acpi_video_get_backlight_type().
+	 */
+	if (keymap_id == TPACPI_KEYMAP_IBM_GENERIC)
+		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
+					TP_ACPI_HKEY_BRGHTDWN_MASK;
+
 	hotkey_keycode_map = kmemdup(&tpacpi_keymaps[keymap_id],
 			TPACPI_HOTKEY_MAP_SIZE,	GFP_KERNEL);
 	if (!hotkey_keycode_map) {
@@ -3560,9 +3573,6 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		if (hotkey_keycode_map[i] != KEY_RESERVED) {
 			input_set_capability(tpacpi_inputdev, EV_KEY,
 						hotkey_keycode_map[i]);
-		} else {
-			if (i < sizeof(hotkey_reserved_mask)*8)
-				hotkey_reserved_mask |= 1 << i;
 		}
 	}
 
@@ -3587,9 +3597,8 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 		/* Disable brightness up/down on Lenovo thinkpads when
 		 * ACPI is handling them, otherwise it is plain impossible
 		 * for userspace to do something even remotely sane */
-		hotkey_reserved_mask |=
-			(1 << TP_ACPI_HOTKEYSCAN_FNHOME)
-			| (1 << TP_ACPI_HOTKEYSCAN_FNEND);
+		hotkey_reserved_mask |= TP_ACPI_HKEY_BRGHTUP_MASK |
+					TP_ACPI_HKEY_BRGHTDWN_MASK;
 		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNHOME);
 		hotkey_unmap(TP_ACPI_HOTKEYSCAN_FNEND);
 	}
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
