Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AEC8ABFE3
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOR-00037D-Dw;
	Sun, 21 Apr 2024 15:46:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZOF-00035m-Vv
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SuKvjF97wP5SiRRXeVZ80DuORnYCtp3wHlgNR1jQFUU=; b=K5LJgXv8et0ArMUQooMwOCZypk
 VgURnRUeQAdbTkYAb+EMgb7roh3kFrXn+4Vqq09v0U3EdbZnj62Ae6Mh5uAj51BecoMKD9QHRYIZ4
 vGqtN8g0Vt3lCBEVFkso96Ls7Rfrsf+uOqe3qOQSn+YbIKEMGllzvSD+LrGDMqjWdIvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SuKvjF97wP5SiRRXeVZ80DuORnYCtp3wHlgNR1jQFUU=; b=HJb1LSYG6L6CAPo3csijbSAbY/
 DFmPCF55IUXW6U7Z0tFuuMycHWwNLRd/cjfZeEU6hfrkHt0lwKqk2RgswW6PDQfo3PDsuq6F35Lk/
 cDxjcp49/6AHNukBBG7OeQHBRAdlLjzhjdG0vMnlTx4GZ4zM0rIxbqOueu8q0liCwrkI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZOD-0003UT-KV for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714351;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SuKvjF97wP5SiRRXeVZ80DuORnYCtp3wHlgNR1jQFUU=;
 b=GnxNKz11acs3rCmLWwAVoUERFqskx99W5LWgK0vE6K9VY5rw5bQNHo5w5F2RW5Zh4JHcHs
 thBSO2vH3QtgMNcxEKz3FVO7LdGc1QQ7YXqw+FuhqYOE7bsrQoppYeEZYztymMXiynrPHy
 S4mzI/+wfyWdai/3nEYC2WwssTqqfjE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-FFgOUaYBN0C6ORxIJMRPkw-1; Sun, 21 Apr 2024 11:45:46 -0400
X-MC-Unique: FFgOUaYBN0C6ORxIJMRPkw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 778E9802E4D;
 Sun, 21 Apr 2024 15:45:45 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 582D640829C3;
 Sun, 21 Apr 2024 15:45:44 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:10 +0200
Message-ID: <20240421154520.37089-15-hdegoede@redhat.com>
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
 Content preview: All callers of tpacpi_input_send_key() first call
 tpacpi_driver_event(), 
 move the tpacpi_driver_event() inside tpacpi_input_send_key() to avoid code
 duplication. For the original hotkey codes 0x1001 - 0x1020
 tpacpi_driver_event()
 never returns true. So the added "return true; " inside tpacpi_input_send_key()
 never happens when called from tpacpi_hotkey_send_key [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
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
X-Headers-End: 1ryZOD-0003UT-KV
Subject: [ibm-acpi-devel] [PATCH 14/24] platform/x86: thinkpad_acpi: Move
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

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 633701c218f2..bed66dd54920 100644
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
 
@@ -3731,9 +3733,6 @@ static bool hotkey_notify_hotkey(const u32 hkey, bool *send_acpi_ev)
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
