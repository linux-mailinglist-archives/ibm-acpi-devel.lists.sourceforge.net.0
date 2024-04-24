Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C54648B09A0
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkL-0004aM-NX;
	Wed, 24 Apr 2024 12:29:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkI-0004ZJ-A9
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IxC43M8Mawg7aalqwEn5qO0qdwjgtbqBNRS0N1xfmgc=; b=lnKCdCcl3Cm2ZByrM4YRPgEsbm
 ZM8XTpIyBzNnTu+6rkIR3krirQmuwfJrWs9oGOc2UJ9rH7h+cpRK2aauAje6LjF6zcxWmyl2eNPlo
 bXwl4zrlNARBaHYKMo65KiJZgb7uWRUU0W753zuGnw0ZZIswJy8qrWDMZ+1vO/IYwkjw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IxC43M8Mawg7aalqwEn5qO0qdwjgtbqBNRS0N1xfmgc=; b=lDS0TBpi+ihLIHf4GN2bghMm4W
 PixQ8sJQ1t4Q8w1zeQMEbJnBDEIwZS3r/AxHSJX1Y3iAUKUEhrF6o04AXvnR+z5qA+4TWD5u8CWGA
 hqXI4vVulw/uo8QSSljblDC1ME7UmcqdVvVRBR+hE41VANJAXSys0mtKR/sNS6Dw5YEU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkH-00023K-PK for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961735;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IxC43M8Mawg7aalqwEn5qO0qdwjgtbqBNRS0N1xfmgc=;
 b=Q0H2cl1lfTg12iyBLV6f+LDD6p7Sxn6gdLW1/QQNTUJmznbjnmSsNyUSLnet/fbUNrWl38
 NJZf7f06/1D1qp1Q+zO9FakjkTcmcl2ewyKOEihPR1/g8n+iJ6ZJwjdjj3mrbeUcJWPlSk
 SSJdx5IHcidElS66YCf5NaFVi2+iGrY=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-344-pWNuZHY6M6m3hkmxAdiJnA-1; Wed,
 24 Apr 2024 08:28:51 -0400
X-MC-Unique: pWNuZHY6M6m3hkmxAdiJnA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6043829AC01C;
 Wed, 24 Apr 2024 12:28:51 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E5870C13FA6;
 Wed, 24 Apr 2024 12:28:49 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:21 +0200
Message-ID: <20240424122834.19801-12-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Call tpacpi_driver_event() at the top of
 hotkey_notify_hotkey()
 for all (orig / adaptive / extended) hotkey types, rather then having the
 orig code path call tpacpi_input_send_key_masked() which calls [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1rzbkH-00023K-PK
Subject: [ibm-acpi-devel] [PATCH v2 11/24] platform/x86: thinkpad_acpi:
 Always call tpacpi_driver_event() for hotkeys
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

Call tpacpi_driver_event() at the top of hotkey_notify_hotkey() for all
(orig / adaptive / extended) hotkey types, rather then having the orig
code path call tpacpi_input_send_key_masked() which calls it through
hotkey_driver_event() and having the adaptive / extended helpers call
it separately.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 05c1a562f6a1..25758d252f27 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3713,9 +3713,6 @@ static void adaptive_keyboard_s_quickview_row(void)
 
 static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 {
-	if (tpacpi_driver_event(hkey))
-		return true;
-
 	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
 	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
 		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
@@ -3729,9 +3726,6 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 
 static bool hotkey_notify_extended_hotkey(const u32 hkey)
 {
-	if (tpacpi_driver_event(hkey))
-		return true;
-
 	if (hkey >= TP_HKEY_EV_EXTENDED_KEY_START &&
 	    hkey <= TP_HKEY_EV_EXTENDED_KEY_END) {
 		unsigned int scancode = hkey - TP_HKEY_EV_EXTENDED_KEY_START +
@@ -3757,6 +3751,9 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 			return true;
 	}
 
+	if (tpacpi_driver_event(hkey))
+		return true;
+
 	/*
 	 * Original events are in the 0x10XX range, the adaptive keyboard
 	 * found in 2014 X1 Carbon emits events are of 0x11XX. In 2017
@@ -3766,7 +3763,7 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 	case 0:
 		if (hkey >= TP_HKEY_EV_ORIG_KEY_START &&
 		    hkey <= TP_HKEY_EV_ORIG_KEY_END) {
-			tpacpi_input_send_key_masked(scancode);
+			tpacpi_input_send_key(scancode);
 			return true;
 		}
 		break;
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
