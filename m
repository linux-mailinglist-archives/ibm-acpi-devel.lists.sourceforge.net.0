Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A2B8B0995
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbk8-0008OQ-OL;
	Wed, 24 Apr 2024 12:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbk7-0008OF-2o
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gOcYJ7QjDNUmjLYidLgoqDVvkZMatE/cwGfA65Igyjc=; b=PmED7578ogXaVn2ew5GmS7CFQm
 dlSY0lylw9BE9/Xva9Vnxg5TVh2xZSnyCZyjAvpuPurvbVI0FwYRDJkIv2aDiSHP0h9wTBDJmPBdm
 D2tzr3Qr9kTSf0aXuLdFZ0i9AAVPMJSx7qi/G7/wmrgOJ9qIUdF5rkAxvjAfQHgColi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gOcYJ7QjDNUmjLYidLgoqDVvkZMatE/cwGfA65Igyjc=; b=F3AFFeAnxmUQlUwHjge6ieb+Z5
 JTyadI/LEOZUUSaur6Lgc0YeXpyocR3X5koIrsWG1m+W7sSAruApbvH21R/rnFHY0KzioYyj1OjzD
 vdqCAaetgE7JAP+AIwYXnRxKo+bZ2vZePcfIUV3gCobMf0GZx6ruSODBJKKrMgJky5VY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbk5-00022D-So for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961723;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gOcYJ7QjDNUmjLYidLgoqDVvkZMatE/cwGfA65Igyjc=;
 b=hrW4jZjd5Ifk5tA3r0ZYmZZPPViSg5V7KJ7lsfQVnL0oVDVYANboPKzpLNtB5jYJL5m9hF
 yWTPX74dFXHzy0x8FdUwSEBO/FSaXbndg7fu6EZWhVCD7XHBn2g58fLBhPhC3OrRB7MVv/
 GmPdSvtSD3huSBywkle5wCI7RN6Awqw=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-7-80vOxQLfOfGKBvaIFDRFQQ-1; Wed,
 24 Apr 2024 08:28:39 -0400
X-MC-Unique: 80vOxQLfOfGKBvaIFDRFQQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC6B43806703;
 Wed, 24 Apr 2024 12:28:38 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C8331C13FA3;
 Wed, 24 Apr 2024 12:28:37 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:12 +0200
Message-ID: <20240424122834.19801-3-hdegoede@redhat.com>
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
 Content preview: Provide a hotkey_poll_stop_sync() dummy implementation when
 CONFIG_THINKPAD_ACPI_HOTKEY_POLL,
 so that the #ifdef-ery around hotkey_poll_stop_sync()
 can be removed from hotkey_exit(). Tested-by: Mark Pearson
 <mpearson-lenovo@squebb.ca>
 Signed-off-by: Hans de Goede <hdegoede@redhat.com> ---
 drivers/platform/x86/thinkpad_acpi.c
 | 5 +++-- 1 file changed, 3 insertions(+), 2 deletions(- [...] 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbk5-00022D-So
Subject: [ibm-acpi-devel] [PATCH v2 02/24] platform/x86: thinkpad_acpi:
 Provide hotkey_poll_stop_sync() dummy
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

Provide a hotkey_poll_stop_sync() dummy implementation when
CONFIG_THINKPAD_ACPI_HOTKEY_POLL, so that the #ifdef-ery around
hotkey_poll_stop_sync() can be removed from hotkey_exit().

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ba4df8f68c2a..fc5681808c3b 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2575,6 +2575,9 @@ static void hotkey_poll_setup_safe(const bool __unused)
 {
 }
 
+static void hotkey_poll_stop_sync(void)
+{
+}
 #endif /* CONFIG_THINKPAD_ACPI_HOTKEY_POLL */
 
 static int hotkey_inputdev_open(struct input_dev *dev)
@@ -3045,9 +3048,7 @@ static void tpacpi_send_radiosw_update(void)
 static void hotkey_exit(void)
 {
 	mutex_lock(&hotkey_mutex);
-#ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
 	hotkey_poll_stop_sync();
-#endif
 	dbg_printk(TPACPI_DBG_EXIT | TPACPI_DBG_HKEY,
 		   "restoring original HKEY status and mask\n");
 	/* yes, there is a bitwise or below, we want the
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
