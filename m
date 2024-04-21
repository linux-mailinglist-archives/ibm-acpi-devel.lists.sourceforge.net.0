Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A754E8ABFE4
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOW-000382-5K;
	Sun, 21 Apr 2024 15:46:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZOM-00035y-7t
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R6QrbtZCHBRTks1Xbnahfy+zyxyziZb4NRLnWdsoqbM=; b=hYIGToy60OVoyqdVNSm/rGof9G
 xhe8BerHEZVTNms2zbuigIQUCC+ttCUD/OjrXe28DaKxT5bWDB+EQQ+uNNeZe20YuTUsqcX6UGhhb
 YR6TeIZzVOccc1S/5N3kIlpjflPDIR1l5r8HBrjse0EX1U2x8Wl/wcX8CD7q4IPTIwzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R6QrbtZCHBRTks1Xbnahfy+zyxyziZb4NRLnWdsoqbM=; b=JGOy1oKSEIkwX//psGf/9mt5E0
 VWHVNqp/6m9dqIxQ3YVeLIhi4oZjff7D8T0HcQCtXj0y0WChuZQ1yaz4K2kW1yGnSb66zAPwwsZpR
 gIE5y/02uz2tW0f9Hf9aumtsBqz9EfOyh0TTTJMTBqYV5TvAAUMQTVoyLiLzgggVHJ6E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZOH-0003Ug-E9 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714354;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R6QrbtZCHBRTks1Xbnahfy+zyxyziZb4NRLnWdsoqbM=;
 b=GCg0SmPBtJZXLJjgFFq3X0nK1M0skHOBCAFxEwWU4RfGnp6NV7TF2d4tPmS7l1YyRMITi5
 U6s+B9PKNxmD4u0/uPpsqf3l6+xeaFfIh8HQESkprcQYIOihZKJJqNTxR/cBV1lfpZGvXD
 1BLA1Estlj3e3pzSsjibPTxDo42bBtQ=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-102-M3aZLmX3PQKXRNHEPER4bg-1; Sun,
 21 Apr 2024 11:45:51 -0400
X-MC-Unique: M3aZLmX3PQKXRNHEPER4bg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A67693C00098;
 Sun, 21 Apr 2024 15:45:50 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8C465407F3D4;
 Sun, 21 Apr 2024 15:45:49 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:14 +0200
Message-ID: <20240421154520.37089-19-hdegoede@redhat.com>
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
 Content preview: The input core already filters out EV_KEY events for
 KEY_RESERVED, 
 remove the check for this in tpacpi_input_send_key() and rely on the input
 core filtering instead. Also change tpacpi_input_send_key() to only report
 the scancode once instead of reporting it on both press and release. Together
 these 2 changes make tpacpi_input_send_key() behave the same as sparse_ [...]
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1ryZOH-0003Ug-E9
Subject: [ibm-acpi-devel] [PATCH 18/24] platform/x86: thinkpad_acpi: Drop
 KEY_RESERVED special handling
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

The input core already filters out EV_KEY events for KEY_RESERVED,
remove the check for this in tpacpi_input_send_key() and rely
on the input core filtering instead.

Also change tpacpi_input_send_key() to only report the scancode
once instead of reporting it on both press and release. Together
these 2 changes make tpacpi_input_send_key() behave the same as
sparse_keymap_report_event().

The goal of this patch is to have a separate commit with
the slightly different behavior from sparse_keymap_report_event()
before switching over to using the sparse-keymap helpers.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 5db46220d400..f70f87b216cb 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2283,19 +2283,17 @@ static bool tpacpi_input_send_key(const u32 hkey, bool *send_acpi_ev)
 	}
 
 	keycode = hotkey_keycode_map[scancode];
-	if (keycode != KEY_RESERVED) {
-		mutex_lock(&tpacpi_inputdev_send_mutex);
 
-		input_event(tpacpi_inputdev, EV_MSC, MSC_SCAN, scancode);
-		input_report_key(tpacpi_inputdev, keycode, 1);
-		input_sync(tpacpi_inputdev);
+	mutex_lock(&tpacpi_inputdev_send_mutex);
 
-		input_event(tpacpi_inputdev, EV_MSC, MSC_SCAN, scancode);
-		input_report_key(tpacpi_inputdev, keycode, 0);
-		input_sync(tpacpi_inputdev);
+	input_event(tpacpi_inputdev, EV_MSC, MSC_SCAN, scancode);
+	input_report_key(tpacpi_inputdev, keycode, 1);
+	input_sync(tpacpi_inputdev);
 
-		mutex_unlock(&tpacpi_inputdev_send_mutex);
-	}
+	input_report_key(tpacpi_inputdev, keycode, 0);
+	input_sync(tpacpi_inputdev);
+
+	mutex_unlock(&tpacpi_inputdev_send_mutex);
 
 	return true;
 }
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
