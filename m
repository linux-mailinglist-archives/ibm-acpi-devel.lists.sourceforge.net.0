Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2238B09B1
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkz-0005o2-0F;
	Wed, 24 Apr 2024 12:29:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkg-0005e1-GD
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSqdnxz7yQ43p7sPqX9rSv132sOibQ/BR3f9C9zBSg0=; b=ZABmgsV/aXuHLcNL29saAw9Hks
 kBFR3cSkwW0Gqz2+crkkJR7GUICtYKQc36ZZF2PjUNuiHSGolMrE+2ELk4zFreqQV2Y8QMvhRxqO5
 xog1seQ0KJpRoj5OxjpAR++hViimGGGkQKY7pUs29zzqn27It8Xct0bhUVDD271Z2HAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OSqdnxz7yQ43p7sPqX9rSv132sOibQ/BR3f9C9zBSg0=; b=SIFnj4uAa3tJEx6Tf9vsHdovD/
 eJpJT7v9mCBD/9p/r+TbCzTi/0N9AlwQ4U99+DfniveIRhbkWXKNAzBcNZ3bPRkoYAZQc068a4aJz
 maydUtDIF+l8oWmOlRwuQgiWL4SHm4/62CTanrvXE+1LLa0HyN62EeC22PfKSxss+G7E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkR-00024c-Gg for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961744;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OSqdnxz7yQ43p7sPqX9rSv132sOibQ/BR3f9C9zBSg0=;
 b=eIEinK80HFN8TicNe/2wp2VagDfM4uu7nt6YSVoed83Fdy04Upk+UlA2OEcuVOUeUTJku9
 vFakx7J1hHTDpaQyQOLQbrKEE8M7KY8brpsE2VMeMpHeo1RYjOMl7mfmO9zaaxITWb6TwU
 lwAhXZ8g0qN4EBgxo5YzBD/SHnelv7w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-IboGCCaaPRK96bMiZwvGSw-1; Wed, 24 Apr 2024 08:29:01 -0400
X-MC-Unique: IboGCCaaPRK96bMiZwvGSw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFACA811029;
 Wed, 24 Apr 2024 12:29:00 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC1F5C01595;
 Wed, 24 Apr 2024 12:28:59 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:28 +0200
Message-ID: <20240424122834.19801-19-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -5.9 (-----)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbkR-00024c-Gg
Subject: [ibm-acpi-devel] [PATCH v2 18/24] platform/x86: thinkpad_acpi: Drop
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

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 89931bb980be..6a136d124cab 100644
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
