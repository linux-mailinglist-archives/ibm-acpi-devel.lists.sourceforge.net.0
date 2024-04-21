Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9698ABFDA
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOE-00035Y-4o;
	Sun, 21 Apr 2024 15:46:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZO5-00034U-1v
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86SulCLqVPYVAss5wTbv7h50nFisEK/xSBhkR+RzgcU=; b=YR5rWbaP1dtGsFfuehIPnQ3Vpz
 dBf1+F15cV8db+eyMgJMXFg4fJr1jVZBLaRH2clMyM8mhc9LCvEeIdeB5EA9GSC0cF6Fy1wY+Dd+r
 dpZMakv6JdpWCnM72yoXaqW8iJGtZ2wOP8M/5wiEmYVtX+cqkfRnk3xN5L7nso6qn/3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=86SulCLqVPYVAss5wTbv7h50nFisEK/xSBhkR+RzgcU=; b=BZzvPH9xNFn5vlV6YLeMZJAqQ9
 fTOUKKfd+0kur+hWkCTuO4N2udoDApNaaBYdLk3WcajDzTuBV4uE4B9F0Z4j3jQ3O/FpG60LIP+Qa
 LyvuPQeCUzRc1yFx+tBPIGV5ghqhJLqUEIiwKTnHTNyzdYTVMW+D9iGJFknlhc6M7zIQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZO3-0003TN-5V for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=86SulCLqVPYVAss5wTbv7h50nFisEK/xSBhkR+RzgcU=;
 b=L0PXRFzz2x2HMHn7bNYd8XAI6rPd6nCaAP8Slj8qL45X32kWE8IhH0RKzo3p+Z2jmTUX+e
 QlcY9AqstjH2gb84GfkUpJvKibNyQqsf+NdxDZSMsIoWmuJ67Fyh1onhZgBWQ2qeszH3mr
 3oqkht8s2BFDnLp6LN71xN97VkCSSEU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-iTnqqejcOBSDMktzwhkLLQ-1; Sun, 21 Apr 2024 11:45:42 -0400
X-MC-Unique: iTnqqejcOBSDMktzwhkLLQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D68C18065AE;
 Sun, 21 Apr 2024 15:45:41 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7388A40357A7;
 Sun, 21 Apr 2024 15:45:40 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:07 +0200
Message-ID: <20240421154520.37089-12-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -5.6 (-----)
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
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1ryZO3-0003TN-5V
Subject: [ibm-acpi-devel] [PATCH 11/24] platform/x86: thinkpad_acpi: Always
 call tpacpi_driver_event() for hotkeys
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

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 3a5c4dca5c1b..acd2c7e0dea6 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3712,9 +3712,6 @@ static void adaptive_keyboard_s_quickview_row(void)
 
 static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 {
-	if (tpacpi_driver_event(hkey))
-		return true;
-
 	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
 	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
 		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
@@ -3728,9 +3725,6 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
 
 static bool hotkey_notify_extended_hotkey(const u32 hkey)
 {
-	if (tpacpi_driver_event(hkey))
-		return true;
-
 	if (hkey >= TP_HKEY_EV_EXTENDED_KEY_START &&
 	    hkey <= TP_HKEY_EV_EXTENDED_KEY_END) {
 		unsigned int scancode = hkey - TP_HKEY_EV_EXTENDED_KEY_START +
@@ -3756,6 +3750,9 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 			return true;
 	}
 
+	if (tpacpi_driver_event(hkey))
+		return true;
+
 	/*
 	 * Original events are in the 0x10XX range, the adaptive keyboard
 	 * found in 2014 X1 Carbon emits events are of 0x11XX. In 2017
@@ -3765,7 +3762,7 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
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
