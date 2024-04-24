Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD98B09AF
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbky-0002BW-Jl;
	Wed, 24 Apr 2024 12:29:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkg-00029d-MS
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6nsKo0q4niaDpbjprANUt4BQhHVhyPgmHNzney+KoBg=; b=Ates0YrZQN2lajbk+lp0keBjdG
 NnWcoQZTOZtsAnsbKRFJcM8x+apmjt7PvWXo0s9h4g7CHx1YT2YzebkDUH/QfAgAScG2a8jvqhNET
 v7Q90+liyxAHZjeqQMXM07WxtL0lZa8GfqVwLFUos0SbJsvocZSe/dV/OSQWfFgORhn4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6nsKo0q4niaDpbjprANUt4BQhHVhyPgmHNzney+KoBg=; b=itlDIG5T8VfZK8/CVF8EvqAQ+1
 1u/0JOfvhcr/tWfMk6pMHqgS7EKvrzjhbdhED3m3TMnmC1j+gjC3uHDBctZ2i9xZFvKM35BbKTsxh
 VUZBlDCm+WdM0+g7sn15aLavF0W1oppnfljJgzS3opoIteftKy3bkIF41+3XKKkx6tpY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkV-00024x-5o for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6nsKo0q4niaDpbjprANUt4BQhHVhyPgmHNzney+KoBg=;
 b=MAppHl6aN5T6otnB56K39Ios/1ZeaMnj9yZGTg25d02YhUogGMD+goCjiuBm7UdDee4W84
 0WZBInNjpRJ7R7VdVxC1kaA9QkOzVIPetYuSGjH2yPhfuPLtCk6db4I7keFk9oURMXaKyA
 fVst15YBXuLDuwUobKHzPg/VMH7foMY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-7kET92U6MJuHD1N8VNqVWA-1; Wed, 24 Apr 2024 08:29:10 -0400
X-MC-Unique: 7kET92U6MJuHD1N8VNqVWA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 004A1830E85;
 Wed, 24 Apr 2024 12:29:10 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C75E1C13FA3;
 Wed, 24 Apr 2024 12:29:08 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:34 +0200
Message-ID: <20240424122834.19801-25-hdegoede@redhat.com>
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
 Content preview:  From: Mark Pearson <mpearson-lenovo@squebb.ca> The hotkey
 combination Fn + G can be used to disable the trackpoint doubletap feature
 on Windows. Add matching functionality for Linux. Signed-off-by: Mark Pearson
 <mpearson-lenovo@squebb.ca> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
 Link:
 https://lore.kernel.org/r/20240417173124.9953-4-mpearson-lenovo@squebb.ca
 [hdegoede@red [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbkV-00024x-5o
Subject: [ibm-acpi-devel] [PATCH v2 24/24] platform/x86: thinkpad_acpi:
 Support hotkey to disable trackpoint doubletap
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

From: Mark Pearson <mpearson-lenovo@squebb.ca>

The hotkey combination Fn + G can be used to disable the trackpoint
doubletap feature on Windows. Add matching functionality for Linux.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
Link: https://lore.kernel.org/r/20240417173124.9953-4-mpearson-lenovo@squebb.ca
[hdegoede@redhat.com: Adjust for switch to sparse-keymap keymaps]
[hdegoede@redhat.com: Do not log unknown event msg for doubletap when disabled]
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 7a27cbca6980..7e2288009063 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -183,6 +183,7 @@ enum tpacpi_hkey_event_t {
 						   * directly in the sparse-keymap.
 						   */
 	TP_HKEY_EV_AMT_TOGGLE		= 0x131a, /* Toggle AMT on/off */
+	TP_HKEY_EV_DOUBLETAP_TOGGLE	= 0x131c, /* Toggle trackpoint doubletap on/off */
 	TP_HKEY_EV_PROFILE_TOGGLE	= 0x131f, /* Toggle platform profile */
 
 	/* Reasons for waking up from S3/S4 */
@@ -372,6 +373,7 @@ static struct {
 	u32 hotkey_poll_active:1;
 	u32 has_adaptive_kbd:1;
 	u32 kbd_lang:1;
+	u32 trackpoint_doubletap:1;
 	struct quirk_entry *quirks;
 } tp_features;
 
@@ -3527,6 +3529,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
 
 	hotkey_poll_setup_safe(true);
 
+	/* Enable doubletap by default */
+	tp_features.trackpoint_doubletap = 1;
+
 	return 0;
 }
 
@@ -3826,7 +3831,9 @@ static bool hotkey_notify_8xxx(const u32 hkey, bool *send_acpi_ev)
 {
 	switch (hkey) {
 	case TP_HKEY_EV_TRACK_DOUBLETAP:
-		tpacpi_input_send_key(hkey, send_acpi_ev);
+		if (tp_features.trackpoint_doubletap)
+			tpacpi_input_send_key(hkey, send_acpi_ev);
+
 		return true;
 	default:
 		return false;
@@ -11033,6 +11040,9 @@ static bool tpacpi_driver_event(const unsigned int hkey_event)
 		else
 			dytc_control_amt(!dytc_amt_active);
 
+		return true;
+	case TP_HKEY_EV_DOUBLETAP_TOGGLE:
+		tp_features.trackpoint_doubletap = !tp_features.trackpoint_doubletap;
 		return true;
 	case TP_HKEY_EV_PROFILE_TOGGLE:
 		platform_profile_cycle();
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
