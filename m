Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4805D8ABFE2
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOR-00012t-3k;
	Sun, 21 Apr 2024 15:46:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZO3-00011Y-8w
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+dNVfH4aGVacLkbXT0WRWWwSuiiGQo9z/8wu7tgvq18=; b=ctToJdhM5ovirdKKCJB+IFL03e
 Ep0d0S77dRLg58xDtBnukCZ+WDjd4c/0Pf1yBdGHs8uFIK78K8qjTWukD7sapLapmUsP0scQrPE37
 ddW5m2QUGBFI2IwXq1yLAbwSrEVVRRi1PtbZsEcDCMxTJatvN1u5GnwYtP7gDu+W+jXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+dNVfH4aGVacLkbXT0WRWWwSuiiGQo9z/8wu7tgvq18=; b=CC3JOXAk3ETPFlp0E81cWJrYCg
 +2MemgFsBdYC2K6YGWbhaUqgwJ+A9v8ob8xs4aDNQIGmjWZzIE3tGtxy9kTWAmEpb37TjemZ42v7j
 g8I6Xj2BsyLaXCv3lPQdLqiM2meaeAUP3RuGFtW+CxJOY4qEZeQxZcBHqzGDzq9iLtPU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZO1-0003TI-Qn for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+dNVfH4aGVacLkbXT0WRWWwSuiiGQo9z/8wu7tgvq18=;
 b=dW4Wf0MkfG6I4ucRlOUIbZspe47lBvVDG2hSSqYRrwPWnk2yDLifP4iMJem94CzLWLwlps
 +dwSUl296Ws40bY/0cXZM9B1oUGS6/cfVVEQauGu0q3/FULkXcQxhncHPdLbkBfHpeFWyN
 fWSZ3nsEzKN4NtIJEiI/vb4VY6gZLL8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-Smf0iJuyOPqSaf_2W2UNjg-1; Sun, 21 Apr 2024 11:45:38 -0400
X-MC-Unique: Smf0iJuyOPqSaf_2W2UNjg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A69F91011324;
 Sun, 21 Apr 2024 15:45:37 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BC4C402482D;
 Sun, 21 Apr 2024 15:45:36 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:04 +0200
Message-ID: <20240421154520.37089-9-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Factor out the adaptive kbd non hotkey event handling into
 adaptive_keyboard_change_row() and adaptive_keyboard_s_quickview_row() helpers
 and move the handling of TP_HKEY_EV_DFR_CHANGE_ROW and TP_HKEY [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ryZO1-0003TI-Qn
Subject: [ibm-acpi-devel] [PATCH 08/24] platform/x86: thinkpad_acpi: Move
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

This is a preparation patch for moving to sparse-keymaps.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 85 +++++++++++++++-------------
 1 file changed, 45 insertions(+), 40 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 0bbc462d604c..e8d30f4af126 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3677,51 +3677,50 @@ static int adaptive_keyboard_get_next_mode(int mode)
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
+	int mode = adaptive_keyboard_get_mode();
+
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
@@ -11117,6 +11116,12 @@ static bool tpacpi_driver_event(const unsigned int hkey_event)
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
