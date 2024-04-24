Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E01A8B099D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkO-000281-3J;
	Wed, 24 Apr 2024 12:29:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkI-000275-Av
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2u6+95SeKcOB4uKuNQwXuA4gi2xEOtr2FgNtlgItEGA=; b=TV6EphhYoOn93j3L3yHS6fdkz3
 h3s6a7+3OebfdpLM6Jy5/bChBsFD9VN/+enha3VEG5iOUoQaxhTdd+FFUurXr/f9cUyIeEJkA92IT
 vPZwe59uS3CL7qHf/HEbC6vdQb30qyajP+0ZGQH/gO4A33y97xVSLOiPhFsyhLn8i4zw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2u6+95SeKcOB4uKuNQwXuA4gi2xEOtr2FgNtlgItEGA=; b=NsLOwMdQKSm/CUwBegGxaoNe+Q
 coXKgVESuU0ficTSgXBhnozmf3kZLOVeMmw7aN+4Cwfpcm5SQNtrCaokIPoJE53ksFrdqJS/OtPOi
 L5q61X52YWSGo6pahdiaSWmXR1UtuLt339onx57G+IcazWXpBQEG5H0vuECxjMLs4qiU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkG-00023G-7b for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2u6+95SeKcOB4uKuNQwXuA4gi2xEOtr2FgNtlgItEGA=;
 b=SyLcwZZMhzT6b3vMLKvMjsD0JHUBGathmQVt39w5LExvtXiEqhEjTDhF2RFWDLG74iYlaX
 AC3H0tvRKMW7VOctzwCm2QrkQEu9UqKNLLGKpXTXh/CvIarrlBToF3lGUxdZWNNd1VP3yl
 37qh3dteTyEx0AnHEEs7fkFL3t4ciys=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-490-K8d84AJWMQigZU7YiRopvA-1; Wed, 24 Apr 2024 08:28:48 -0400
X-MC-Unique: K8d84AJWMQigZU7YiRopvA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FE0418065AA;
 Wed, 24 Apr 2024 12:28:47 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DE5F5C2595D;
 Wed, 24 Apr 2024 12:28:45 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:18 +0200
Message-ID: <20240424122834.19801-9-hdegoede@redhat.com>
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
 Content preview:  Factor out the adaptive kbd non hotkey event handling into
 adaptive_keyboard_change_row() and adaptive_keyboard_s_quickview_row() helpers
 and move the handling of TP_HKEY_EV_DFR_CHANGE_ROW and TP_HKEY [...] 
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
X-Headers-End: 1rzbkG-00023G-7b
Subject: [ibm-acpi-devel] [PATCH v2 08/24] platform/x86: thinkpad_acpi: Move
 adaptive kbd event handling to tpacpi_driver_event()
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

Factor out the adaptive kbd non hotkey event handling into
adaptive_keyboard_change_row() and adaptive_keyboard_s_quickview_row()
helpers and move the handling of TP_HKEY_EV_DFR_CHANGE_ROW and
TP_HKEY_EV_DFR_S_QUICKVIEW_ROW to tpacpi_driver_event().

This groups all the handling of hotkey events which do not emit
a key press event together in tpacpi_driver_event().

This also drops the returning of false as known-event value when
adaptive_keyboard_get_mode() / adaptive_keyboard_set_mode() fail.
These functions already log an error on failure, returning false just
leads to an extra messgae being logged about the hkey event being
unknown, which is wrong as the event is not unknown.

Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 86 +++++++++++++++-------------
 1 file changed, 46 insertions(+), 40 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 0bbc462d604c..f4d7f3c25a4a 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3677,51 +3677,51 @@ static int adaptive_keyboard_get_next_mode(int mode)
 	return adaptive_keyboard_modes[i];
 }
 
+static void adaptive_keyboard_change_row(void)
+{
+	int mode;
+
+	if (adaptive_keyboard_mode_is_saved) {
+		mode = adaptive_keyboard_prev_mode;
+		adaptive_keyboard_mode_is_saved = false;
+	} else {
+		mode = adaptive_keyboard_get_mode();
+		if (mode < 0)
+			return;
+		mode = adaptive_keyboard_get_next_mode(mode);
+	}
+
+	adaptive_keyboard_set_mode(mode);
+}
+
+static void adaptive_keyboard_s_quickview_row(void)
+{
+	int mode;
+
+	mode = adaptive_keyboard_get_mode();
+	if (mode < 0)
+		return;
+
+	adaptive_keyboard_prev_mode = mode;
+	adaptive_keyboard_mode_is_saved = true;
+
+	adaptive_keyboard_set_mode(FUNCTION_MODE);
+}
+
 static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 {
-	int current_mode = 0;
-	int new_mode = 0;
-
-	switch (hkey) {
-	case TP_HKEY_EV_DFR_CHANGE_ROW:
-		if (adaptive_keyboard_mode_is_saved) {
-			new_mode = adaptive_keyboard_prev_mode;
-			adaptive_keyboard_mode_is_saved = false;
-		} else {
-			current_mode = adaptive_keyboard_get_mode();
-			if (current_mode < 0)
-				return false;
-			new_mode = adaptive_keyboard_get_next_mode(
-					current_mode);
-		}
-
-		if (adaptive_keyboard_set_mode(new_mode) < 0)
-			return false;
-
+	if (tpacpi_driver_event(hkey))
 		return true;
 
-	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
-		current_mode = adaptive_keyboard_get_mode();
-		if (current_mode < 0)
-			return false;
-
-		adaptive_keyboard_prev_mode = current_mode;
-		adaptive_keyboard_mode_is_saved = true;
-
-		if (adaptive_keyboard_set_mode (FUNCTION_MODE) < 0)
-			return false;
-		return true;
-
-	default:
-		if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
-		    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
-			pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
-			return false;
-		}
-		tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
-				      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
-		return true;
+	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
+	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
+		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
+		return false;
 	}
+
+	tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
+			      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
+	return true;
 }
 
 static bool hotkey_notify_extended_hotkey(const u32 hkey)
@@ -11117,6 +11117,12 @@ static bool tpacpi_driver_event(const unsigned int hkey_event)
 		}
 		/* Key events are suppressed by default hotkey_user_mask */
 		return false;
+	case TP_HKEY_EV_DFR_CHANGE_ROW:
+		adaptive_keyboard_change_row();
+		return true;
+	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
+		adaptive_keyboard_s_quickview_row();
+		return true;
 	case TP_HKEY_EV_THM_CSM_COMPLETED:
 		lapsensor_refresh();
 		/* If we are already accessing DYTC then skip dytc update */
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
