Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A6F8B099C
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkO-00028E-DS;
	Wed, 24 Apr 2024 12:29:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkM-00027p-Qy
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XGRfok/6unr1+qVxnKywpzSejxrLgiYMakPBmTLB2KY=; b=Kqi0eaG74gUJ/hp3/lB9soJiz2
 1ub8MuxpI5YvitLec2yS2VewsgcTdbag2yEyGxh6KIkT594UU3emT3EkLqSrHPokFryqKY5PDvRip
 WfHfgMNOFd1KwhOs0fDVptEl+O3skKk7Vlup8H3XsZZowrrIXV9cOrRGge5nXT7nv2oI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XGRfok/6unr1+qVxnKywpzSejxrLgiYMakPBmTLB2KY=; b=jTSbSD/K9Gp9w891R9aGGx0qLJ
 xA9euyl9nCTVL+U7fZU2Y2jXD/7Aukw2wXS/WliI7SYe6mGxlCx0ZQHw2IzXTw5yCrVVZk80GaQf6
 Zq5M7td7+DZyuAWcPxC1Alp5426piPNtY5qKqpiezjHBM4PmWWSbSQiZX0vYt4qdsUqQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkL-00023Z-NQ for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XGRfok/6unr1+qVxnKywpzSejxrLgiYMakPBmTLB2KY=;
 b=f1S+6l8Ey4lSEtKRP0dqUtvOicbpnit+pqTjAjWtem79iJMeiD7+Hbpsg4Mut8UmdF/TlM
 B1XGoskFKY8nQ5V7J6xOgJ6r+vG7QKtsAfZ+cW8AK1FkqB7oPOUeWmYTdcaC9qo8F1Uq83
 vyqTNH7ZT3DMAy781kaUkKm8Yf0RsA8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-vOjExRNQNiqbrZbEcFa7Qg-1; Wed, 24 Apr 2024 08:28:55 -0400
X-MC-Unique: vOjExRNQNiqbrZbEcFa7Qg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B4768DCFC3;
 Wed, 24 Apr 2024 12:28:55 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 46A20C13FA3;
 Wed, 24 Apr 2024 12:28:54 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:24 +0200
Message-ID: <20240424122834.19801-15-hdegoede@redhat.com>
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
 Content preview: All callers of tpacpi_input_send_key() first call
 tpacpi_driver_event(), 
 move the tpacpi_driver_event() inside tpacpi_input_send_key() to avoid code
 duplication. For the original hotkey codes 0x1001 - 0x1020
 tpacpi_driver_event()
 never returns true. So the added "return true; " inside tpacpi_input_send_key()
 never happens when called from tpacpi_hotkey_send_key [...] 
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
X-Headers-End: 1rzbkL-00023Z-NQ
Subject: [ibm-acpi-devel] [PATCH v2 14/24] platform/x86: thinkpad_acpi: Move
 tpacpi_driver_event() call to tpacpi_input_send_key()
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

All callers of tpacpi_input_send_key() first call tpacpi_driver_event(),
move the tpacpi_driver_event() inside tpacpi_input_send_key() to avoid
code duplication.

For the original hotkey codes 0x1001 - 0x1020 tpacpi_driver_event() never
returns true. So the added "return true;" inside tpacpi_input_send_key()
never happens when called from tpacpi_hotkey_send_key() so behavior does
not change.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 08419dede995..9b38770412ab 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2254,6 +2254,9 @@ static bool tpacpi_input_send_key(const u32 hkey)
 {
 	unsigned int keycode, scancode;
 
+	if (tpacpi_driver_event(hkey))
+		return true;
+
 	if (hkey >= TP_HKEY_EV_ORIG_KEY_START &&
 	    hkey <= TP_HKEY_EV_ORIG_KEY_END) {
 		scancode = hkey - TP_HKEY_EV_ORIG_KEY_START;
@@ -2295,7 +2298,6 @@ static struct tp_acpi_drv_struct ibm_hotkey_acpidriver;
 /* Do NOT call without validating scancode first */
 static void tpacpi_hotkey_send_key(unsigned int scancode)
 {
-	tpacpi_driver_event(TP_HKEY_EV_ORIG_KEY_START + scancode);
 	tpacpi_input_send_key(TP_HKEY_EV_ORIG_KEY_START + scancode);
 }
 
@@ -3732,9 +3734,6 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
 			return true;
 	}
 
-	if (tpacpi_driver_event(hkey))
-		return true;
-
 	return tpacpi_input_send_key(hkey);
 }
 
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
