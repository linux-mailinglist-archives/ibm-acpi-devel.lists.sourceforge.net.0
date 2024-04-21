Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F698ABFE5
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOX-0003XJ-JZ;
	Sun, 21 Apr 2024 15:46:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZOH-0003Uf-9k
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=soMQvIDFn2hV9rOkbrtpr5VaPlC0qyFAQ0wlLL8jG5c=; b=I+F1bGV3ttRiGoJP6TAc3RZ1UJ
 hPsayQotC1pHb+1vDIrFfC6bZvv35Z31AdE0mQFHCcaZoUoHONy0LiVf4coD2pdVeLJVhBGp3Pj9a
 zfLpJuyLh35XyGrHZV3lmkhuRq30Eg0R5jQYB4wxaezm5xSwVPLT+uGjMioVGL9az8ho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=soMQvIDFn2hV9rOkbrtpr5VaPlC0qyFAQ0wlLL8jG5c=; b=HillrxAhZKFNdnF2bhxxy9YgYN
 v3XRtNAV4oEOGNFOHoPezDlYc6zLYKfEJB8SNu1CAklobJnuOaGdUl5bWQXyRJka3OZm6viy6Z/lI
 4BMFNlhgot5u5h1xhfXCzLnYwNlvZ3fXzV1CBwwai6lHLTwXgxI2j6LJqzMj8fE8emxU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZOE-0003UZ-Iv for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714352;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=soMQvIDFn2hV9rOkbrtpr5VaPlC0qyFAQ0wlLL8jG5c=;
 b=W0CU8f6bKCJd7V65Rc8Y06DZxQQ20uGlBlGRIQfsrrMdMUKQBgABlJ2/h+mHCf8+qNlLPi
 Q/KWNhMUAMOIBOHk6xCIqXAuGXP/Rj7GZyxP/K2ytca1baHQsBS+NHcIioGQ/gT8f6skVW
 OQMNEKbDiO7cg8NnEd+Gg8DV9Qcw9r4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-496-mBwWsH7oNdavdXxNiC5P5w-1; Sun, 21 Apr 2024 11:45:48 -0400
X-MC-Unique: mBwWsH7oNdavdXxNiC5P5w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1604989A248;
 Sun, 21 Apr 2024 15:45:48 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EE81240357A7;
 Sun, 21 Apr 2024 15:45:46 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:12 +0200
Message-ID: <20240421154520.37089-17-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Change the hotkey_reserved_mask initialization to hardcode
 the list of reserved keys. There are only a few reserved keys and the code
 to iterate over the keymap will be removed when moving to sparse-k [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ryZOE-0003UZ-Iv
Subject: [ibm-acpi-devel] [PATCH 16/24] platform/x86: thinkpad_acpi: Change
 hotkey_reserved_mask initialization
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

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ace615752c93..30219ba43208 100644
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
