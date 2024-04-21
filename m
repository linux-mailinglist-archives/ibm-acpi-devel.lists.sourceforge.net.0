Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CBF8ABFDB
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZO4-0003SI-Ls;
	Sun, 21 Apr 2024 15:45:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZO2-0003Rr-AO
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OsjauILosSwsdrban+b3pKebhm2tdkEwIbD6csXmSwY=; b=mx6uluX/Hdia0wAtdzfkyhR6ZR
 YeijIQb3sWUXIyI98kw9A6ZV7acOQ0ML9gwtiLIvq83ZicnN13wJSfo7dpXUiO4WgnUgXmZ8RtoRe
 3RAr8Ur689CALF8uAHZLxTM6+TAPMnHJsqH7/3ChYfYp53tQ+mtqKr4FYsBXlKLpPvkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OsjauILosSwsdrban+b3pKebhm2tdkEwIbD6csXmSwY=; b=ObGDQRWBHbUxKLvpjtpX092X4w
 IkMBiwDBGCnUTBTKI7tKqR/62NBPCzSq3y2pMLs2XTymPcOeh5Heifm6hRRNIawIPBoZeDtnd3SVY
 191u4986HZ4c2pyFQ9fIp1EtWuTvR8RfYq42ZkqY5T/4WOWNTokhMTarS0mkYGDsVjRM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZO1-0003Su-Cf for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OsjauILosSwsdrban+b3pKebhm2tdkEwIbD6csXmSwY=;
 b=i6Yyu72paswUC7HqJowds6j4Xsk9Gkz+KbgOrvG+imB65z+etF9EEDTzusdOi4XVFuFYMt
 Mk+Qex8+kPqgjc4RNFHfDammG08m1QAeK4f9l56+6o/N1yUFMqYelPAdkPSrcdeZIGmNuZ
 LYOEpD+SYix4RNMKNC2GrjtGpd5hAV8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-96-_lPldDwnN8-4IWetk47L4Q-1; Sun, 21 Apr 2024 11:45:32 -0400
X-MC-Unique: _lPldDwnN8-4IWetk47L4Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CCE789A245;
 Sun, 21 Apr 2024 15:45:31 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12BF040357A7;
 Sun, 21 Apr 2024 15:45:29 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:44:59 +0200
Message-ID: <20240421154520.37089-4-hdegoede@redhat.com>
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
 Content preview:  send_acpi_ev, ignore_acpi_ev are already initialized to true
 resp. false by hotkey_notify() before calling the various helpers. Drop the
 needless re-initialization from the helpers. Signed-off-by: Hans de Goede
 <hdegoede@redhat.com> --- drivers/platform/x86/thinkpad_acpi.c | 24 +++++
 1 file changed, 5 insertions(+), 19 deletions(-) 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1ryZO1-0003Su-Cf
Subject: [ibm-acpi-devel] [PATCH 03/24] platform/x86: thinkpad_acpi: Drop
 setting send_/ignore_acpi_ev defaults twice
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

send_acpi_ev, ignore_acpi_ev are already initialized to true resp. false by
hotkey_notify() before calling the various helpers. Drop the needless
re-initialization from the helpers.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 24 +++++-------------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index fc5681808c3b..007223fded30 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3754,14 +3754,12 @@ static bool hotkey_notify_extended_hotkey(const u32 hkey)
 	return false;
 }
 
+/* 0x1000-0x1FFF: key presses */
 static bool hotkey_notify_hotkey(const u32 hkey,
 				 bool *send_acpi_ev,
 				 bool *ignore_acpi_ev)
 {
-	/* 0x1000-0x1FFF: key presses */
 	unsigned int scancode = hkey & 0xfff;
-	*send_acpi_ev = true;
-	*ignore_acpi_ev = false;
 
 	/*
 	 * Original events are in the 0x10XX range, the adaptive keyboard
@@ -3794,14 +3792,11 @@ static bool hotkey_notify_hotkey(const u32 hkey,
 	return false;
 }
 
+/* 0x2000-0x2FFF: Wakeup reason */
 static bool hotkey_notify_wakeup(const u32 hkey,
 				 bool *send_acpi_ev,
 				 bool *ignore_acpi_ev)
 {
-	/* 0x2000-0x2FFF: Wakeup reason */
-	*send_acpi_ev = true;
-	*ignore_acpi_ev = false;
-
 	switch (hkey) {
 	case TP_HKEY_EV_WKUP_S3_UNDOCK: /* suspend, undock */
 	case TP_HKEY_EV_WKUP_S4_UNDOCK: /* hibernation, undock */
@@ -3834,14 +3829,11 @@ static bool hotkey_notify_wakeup(const u32 hkey,
 	return true;
 }
 
+/* 0x4000-0x4FFF: dock-related events */
 static bool hotkey_notify_dockevent(const u32 hkey,
 				 bool *send_acpi_ev,
 				 bool *ignore_acpi_ev)
 {
-	/* 0x4000-0x4FFF: dock-related events */
-	*send_acpi_ev = true;
-	*ignore_acpi_ev = false;
-
 	switch (hkey) {
 	case TP_HKEY_EV_UNDOCK_ACK:
 		/* ACPI undock operation completed after wakeup */
@@ -3879,14 +3871,11 @@ static bool hotkey_notify_dockevent(const u32 hkey,
 	}
 }
 
+/* 0x5000-0x5FFF: human interface helpers */
 static bool hotkey_notify_usrevent(const u32 hkey,
 				 bool *send_acpi_ev,
 				 bool *ignore_acpi_ev)
 {
-	/* 0x5000-0x5FFF: human interface helpers */
-	*send_acpi_ev = true;
-	*ignore_acpi_ev = false;
-
 	switch (hkey) {
 	case TP_HKEY_EV_PEN_INSERTED:  /* X61t: tablet pen inserted into bay */
 	case TP_HKEY_EV_PEN_REMOVED:   /* X61t: tablet pen removed from bay */
@@ -3914,14 +3903,11 @@ static bool hotkey_notify_usrevent(const u32 hkey,
 static void thermal_dump_all_sensors(void);
 static void palmsensor_refresh(void);
 
+/* 0x6000-0x6FFF: thermal alarms/notices and keyboard events */
 static bool hotkey_notify_6xxx(const u32 hkey,
 				 bool *send_acpi_ev,
 				 bool *ignore_acpi_ev)
 {
-	/* 0x6000-0x6FFF: thermal alarms/notices and keyboard events */
-	*send_acpi_ev = true;
-	*ignore_acpi_ev = false;
-
 	switch (hkey) {
 	case TP_HKEY_EV_THM_TABLE_CHANGED:
 		pr_debug("EC reports: Thermal Table has changed\n");
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
