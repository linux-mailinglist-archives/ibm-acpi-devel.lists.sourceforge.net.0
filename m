Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E50D08B09A8
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkm-0008RL-Ie;
	Wed, 24 Apr 2024 12:29:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkK-0008PO-DU
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mK3Hc7ZFofFM9Zf9Re1qp9IuYreHHDkQG7ObPY71tzA=; b=BtLqlGV50/88cnG7vCdUmCB0vg
 HpuXhwaWMbkW9zPxw+eUIJz0rwX5fYUU65KosUJyAHMxEWL5c9Nm47l/vDqzGEsYJ6P5NLRuxMC+y
 Fcxt/q9FfjCMpBebrOcXOSN/TeEBncWYJZqFNTetZMhlCVsJ7tHgcABsoftKXD6VpIj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mK3Hc7ZFofFM9Zf9Re1qp9IuYreHHDkQG7ObPY71tzA=; b=JTB6dRkLjmh1SJ+UisleIIg/9v
 EnJ1vDtPhQlgwxcH/5yUWzi+rQAgaDq3HOMFteFXH36n17rgwl5FQizVamWO1gDlZw5OgpcL2+Yio
 KhF6uqtEprtMVP0DR2/zXKEaycgNQkQ7yhuP2eVuUuCheWrLaMmwTQFi1/edjR8Usq9Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkI-00023O-W0 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mK3Hc7ZFofFM9Zf9Re1qp9IuYreHHDkQG7ObPY71tzA=;
 b=Z5n/cMDatPULMzo2GW3B7l/PRhkxBj4wGuLQvi4JVBLhBU25+sIvnWeKK7rfnbwhVrKMQt
 9lme4AHDojcl0P0YE0RowmPsBkv8/Ai/ynn0ZR1UBaUz5tv3RmTSt+NQyYw/KBPO2OYFyv
 bBC4FeoZRfsgsXVs84JXbIy8eomtQA8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-487-koMY1mCrNR-9o7_P6O--Mg-1; Wed, 24 Apr 2024 08:28:53 -0400
X-MC-Unique: koMY1mCrNR-9o7_P6O--Mg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6AE781B561;
 Wed, 24 Apr 2024 12:28:52 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8EDA4C15771;
 Wed, 24 Apr 2024 12:28:51 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:22 +0200
Message-ID: <20240424122834.19801-13-hdegoede@redhat.com>
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
 Content preview:  Both are only 1 / 2 lines and both only have 1 caller fold
 the contents into tpacpi_hotkey_send_key() which is their single caller.
 Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca> Signed-off-by: Hans de
 Goede <hdegoede@redhat.com> --- drivers/platform/x86/thinkpad_acpi.c | 16
 ++ 1 file changed, 2 insertions(+), 1 [...] 
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
X-Headers-End: 1rzbkI-00023O-W0
Subject: [ibm-acpi-devel] [PATCH v2 12/24] platform/x86: thinkpad_acpi: Drop
 tpacpi_input_send_key_masked() and hotkey_driver_event()
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

Both are only 1 / 2 lines and both only have 1 caller fold the contents
into tpacpi_hotkey_send_key() which is their single caller.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 25758d252f27..593093884cc5 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -1919,7 +1919,6 @@ static u32 hotkey_acpi_mask;		/* events enabled in firmware */
 static u16 *hotkey_keycode_map;
 
 static bool tpacpi_driver_event(const unsigned int hkey_event);
-static void hotkey_driver_event(const unsigned int scancode);
 static void hotkey_poll_setup(const bool may_warn);
 
 /* HKEY.MHKG() return bits */
@@ -2275,20 +2274,14 @@ static void tpacpi_input_send_key(const unsigned int scancode)
 	}
 }
 
-/* Do NOT call without validating scancode first */
-static void tpacpi_input_send_key_masked(const unsigned int scancode)
-{
-	hotkey_driver_event(scancode);
-	tpacpi_input_send_key(scancode);
-}
-
 #ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
 static struct tp_acpi_drv_struct ibm_hotkey_acpidriver;
 
 /* Do NOT call without validating scancode first */
 static void tpacpi_hotkey_send_key(unsigned int scancode)
 {
-	tpacpi_input_send_key_masked(scancode);
+	tpacpi_driver_event(TP_HKEY_EV_ORIG_KEY_START + scancode);
+	tpacpi_input_send_key(scancode);
 }
 
 static void hotkey_read_nvram(struct tp_nvram_state *n, const u32 m)
@@ -11168,11 +11161,6 @@ static bool tpacpi_driver_event(const unsigned int hkey_event)
 	return false;
 }
 
-static void hotkey_driver_event(const unsigned int scancode)
-{
-	tpacpi_driver_event(TP_HKEY_EV_ORIG_KEY_START + scancode);
-}
-
 /* --------------------------------------------------------------------- */
 
 /* /proc support */
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
