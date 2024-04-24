Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C698F8B09A1
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkJ-0005PM-1h;
	Wed, 24 Apr 2024 12:29:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkH-0005MF-2u
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rxllWnGW1IHTo0CYnccw0r1tPbbjKeuMrMlqqu/rXWg=; b=Cmc+iYi0jGzAFJThNafHOrPHyd
 cL9eG/e2kOIyFAc5r9uhJ7E/p5VdGqsdCeW0xFISQbYouC/fMHJK2vAD/ZLDRRKPi81fdoGHhOv7k
 Ue1skBhD3x3WjNfAmGR7fvi6CX5yNTZx6I128cCpuWLSUQG5YALuYGV/eeSJhnTLvxWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rxllWnGW1IHTo0CYnccw0r1tPbbjKeuMrMlqqu/rXWg=; b=at+fEeRmhorpsetlgFDLEaSONn
 o5jBwKysesTUULQyp0sp9v/Vtx9ABXC1nVoxvf6z6jILT7PLqk1OwCaDgmTvi8eAx0VQ/vuPfDkqv
 xPK1OrETQZsa7lJPvJyK3LgBwo3cqZzUc6b1X3XrYYUSx/+Qx5f6WcSbRWeMU9K9iQ/s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkG-000237-27 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rxllWnGW1IHTo0CYnccw0r1tPbbjKeuMrMlqqu/rXWg=;
 b=fJJObaOHPnAcBq5GERXviTMhZxGKdEazxr33c8A4lWChdBTh11iZPpZGyvMeOhLKstP6o7
 Jq8rIGB8io8Z6SPpm779+H7NRMRqo3450+/5N9qvRqc1OI4ld9wpsjGqFEmLZdrlYNbYmQ
 N3LKWZ3YEhx7ydMpJHYxAXXnCUXHEnI=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-596-WsFaPRIJNW2XkgtHSGOhyQ-1; Wed,
 24 Apr 2024 08:28:54 -0400
X-MC-Unique: WsFaPRIJNW2XkgtHSGOhyQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1816E29AC01F;
 Wed, 24 Apr 2024 12:28:54 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E327FC271B0;
 Wed, 24 Apr 2024 12:28:52 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:23 +0200
Message-ID: <20240424122834.19801-14-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Move the mapping of hkey events to scancodes to
 tpacpi_input_send_key(), 
 this results in a nice cleanup and prepares things for adding sparse-keymap
 support. Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca> Signed-off-by:
 Hans de Goede <hdegoede@redhat.com> --- drivers/platform/x86/thinkpad_acpi.c
 | 81 +++++++++ 1 file changed, 24 ins [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbkG-000237-27
Subject: [ibm-acpi-devel] [PATCH v2 13/24] platform/x86: thinkpad_acpi: Move
 hkey > scancode mapping to tpacpi_input_send_key()
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

Move the mapping of hkey events to scancodes to tpacpi_input_send_key(),
this results in a nice cleanup and prepares things for adding sparse-keymap
support.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 81 +++++++++-------------------
 1 file changed, 24 insertions(+), 57 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 593093884cc5..08419dede995 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2250,15 +2250,28 @@ static void tpacpi_input_send_tabletsw(void)
 	}
 }
 
-/* Do NOT call without validating scancode first */
-static void tpacpi_input_send_key(const unsigned int scancode)
+static bool tpacpi_input_send_key(const u32 hkey)
 {
-	const unsigned int keycode = hotkey_keycode_map[scancode];
+	unsigned int keycode, scancode;
 
-	if (scancode < TP_ACPI_HOTKEYSCAN_ADAPTIVE_START &&
-	    !(hotkey_user_mask & (1 << scancode)))
-		return;
+	if (hkey >= TP_HKEY_EV_ORIG_KEY_START &&
+	    hkey <= TP_HKEY_EV_ORIG_KEY_END) {
+		scancode = hkey - TP_HKEY_EV_ORIG_KEY_START;
+		if (!(hotkey_user_mask & (1 << scancode)))
+			return true; /* Not reported but still a known code */
+	} else if (hkey >= TP_HKEY_EV_ADAPTIVE_KEY_START &&
+		   hkey <= TP_HKEY_EV_ADAPTIVE_KEY_END) {
+		scancode = hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
+			   TP_ACPI_HOTKEYSCAN_ADAPTIVE_START;
+	} else if (hkey >= TP_HKEY_EV_EXTENDED_KEY_START &&
+		   hkey <= TP_HKEY_EV_EXTENDED_KEY_END) {
+		scancode = hkey - TP_HKEY_EV_EXTENDED_KEY_START +
+			   TP_ACPI_HOTKEYSCAN_EXTENDED_START;
+	} else {
+		return false;
+	}
 
+	keycode = hotkey_keycode_map[scancode];
 	if (keycode != KEY_RESERVED) {
 		mutex_lock(&tpacpi_inputdev_send_mutex);
 
@@ -2272,6 +2285,8 @@ static void tpacpi_input_send_key(const unsigned int scancode)
 
 		mutex_unlock(&tpacpi_inputdev_send_mutex);
 	}
+
+	return true;
 }
 
 #ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
@@ -2281,7 +2296,7 @@ static struct tp_acpi_drv_struct ibm_hotkey_acpidriver;
 static void tpacpi_hotkey_send_key(unsigned int scancode)
 {
 	tpacpi_driver_event(TP_HKEY_EV_ORIG_KEY_START + scancode);
-	tpacpi_input_send_key(scancode);
+	tpacpi_input_send_key(TP_HKEY_EV_ORIG_KEY_START + scancode);
 }
 
 static void hotkey_read_nvram(struct tp_nvram_state *n, const u32 m)
@@ -3704,42 +3719,15 @@ static void adaptive_keyboard_s_quickview_row(void)
 	adaptive_keyboard_set_mode(FUNCTION_MODE);
 }
 
-static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
-{
-	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
-	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
-		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
-		return false;
-	}
-
-	tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
-			      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
-	return true;
-}
-
-static bool hotkey_notify_extended_hotkey(const u32 hkey)
-{
-	if (hkey >= TP_HKEY_EV_EXTENDED_KEY_START &&
-	    hkey <= TP_HKEY_EV_EXTENDED_KEY_END) {
-		unsigned int scancode = hkey - TP_HKEY_EV_EXTENDED_KEY_START +
-					TP_ACPI_HOTKEYSCAN_EXTENDED_START;
-		tpacpi_input_send_key(scancode);
-		return true;
-	}
-
-	return false;
-}
-
 /* 0x1000-0x1FFF: key presses */
 static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 {
-	unsigned int scancode = hkey - TP_HKEY_EV_ORIG_KEY_START;
-
 	/* Never send ACPI netlink events for original hotkeys (hkey: 0x1001 - 0x1020) */
 	if (hkey >= TP_HKEY_EV_ORIG_KEY_START && hkey <= TP_HKEY_EV_ORIG_KEY_END) {
 		*send_acpi_ev = false;
 
 		/* Original hotkeys may be polled from NVRAM instead */
+		unsigned int scancode = hkey - TP_HKEY_EV_ORIG_KEY_START;
 		if (hotkey_source_mask & (1 << scancode))
 			return true;
 	}
@@ -3747,28 +3735,7 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 	if (tpacpi_driver_event(hkey))
 		return true;
 
-	/*
-	 * Original events are in the 0x10XX range, the adaptive keyboard
-	 * found in 2014 X1 Carbon emits events are of 0x11XX. In 2017
-	 * models, additional keys are emitted through 0x13XX.
-	 */
-	switch ((hkey >> 8) & 0xf) {
-	case 0:
-		if (hkey >= TP_HKEY_EV_ORIG_KEY_START &&
-		    hkey <= TP_HKEY_EV_ORIG_KEY_END) {
-			tpacpi_input_send_key(scancode);
-			return true;
-		}
-		break;
-
-	case 1:
-		return adaptive_keyboard_hotkey_notify_hotkey(hkey);
-
-	case 3:
-		return hotkey_notify_extended_hotkey(hkey);
-	}
-
-	return false;
+	return tpacpi_input_send_key(hkey);
 }
 
 /* 0x2000-0x2FFF: Wakeup reason */
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
