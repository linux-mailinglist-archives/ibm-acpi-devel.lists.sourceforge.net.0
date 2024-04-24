Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B5E8B099F
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkN-0005VU-D8;
	Wed, 24 Apr 2024 12:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkI-0005MX-4Y
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SgfbFtYFNUM9RnvzEqVv1Q0J+WIxJOhE6A52Glxaa+c=; b=EjfhlsqVc+l0vCTDIZelz+sRmn
 dWBGorkzfKcomZhO2ijkjQN95j0UEK6DGo3qGWHWznUf6wHe3zCXgcmdnSKCVY8fbvtaR0WjqpK6u
 V3sCD0bYGufvYz66uTD7ecsUAKRuXfahONwQjVKbNLI2KTeWAlWyZ/CcebWHxdDU/4KQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SgfbFtYFNUM9RnvzEqVv1Q0J+WIxJOhE6A52Glxaa+c=; b=kztXWj2dcTYcWSkGOJGE3JqlQr
 nIcR527MsGUW76HgfkgLvh9B8zDgmgQX2MSBKMMgPZTQF2JeVA2eOvPL51c3v1GMa/k41F2ZdMwBU
 UWV3oSGKLhjcVyEBMxOVGdpXO4bge19Q1SOgIIzStZ3zW3ipW1MA/uulxupahjQU6jb4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkG-00022f-2L for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SgfbFtYFNUM9RnvzEqVv1Q0J+WIxJOhE6A52Glxaa+c=;
 b=ZxYcmnRUJQU6ou7dlXJx4vC/7fv2Y14tRi+tQt+1IpU2vEsW0CbViGsgZz5uYwXzgRJQwZ
 656aH5/LAXJ/bhc8no/YiT1hpqi5Wqbfyte55pcVJtmq8NyVWjdQz9w7JEFDvPOi0dukvK
 b7jcPXeDflwv/X0BdV438QsG5a6D6dI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-Z4BA7TeEMJ6AIUHEudGySg-1; Wed, 24 Apr 2024 08:28:50 -0400
X-MC-Unique: Z4BA7TeEMJ6AIUHEudGySg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B67E0811029;
 Wed, 24 Apr 2024 12:28:49 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 91DD6C271B5;
 Wed, 24 Apr 2024 12:28:48 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:20 +0200
Message-ID: <20240424122834.19801-11-hdegoede@redhat.com>
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
 Content preview:  Move hotkey_user_mask check to tpacpi_input_send_key(), this
 is a preparation patch for further refactoring. Tested-by: Mark Pearson
 <mpearson-lenovo@squebb.ca>
 Signed-off-by: Hans de Goede <hdegoede@redhat.com> ---
 drivers/platform/x86/thinkpad_acpi.c
 | 7 +++++-- 1 file changed, 5 insertions(+), 2 deletions [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1rzbkG-00022f-2L
Subject: [ibm-acpi-devel] [PATCH v2 10/24] platform/x86: thinkpad_acpi: Move
 hotkey_user_mask check to tpacpi_input_send_key()
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

Move hotkey_user_mask check to tpacpi_input_send_key(), this is
a preparation patch for further refactoring.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ba440213ae49..05c1a562f6a1 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2256,6 +2256,10 @@ static void tpacpi_input_send_key(const unsigned int scancode)
 {
 	const unsigned int keycode = hotkey_keycode_map[scancode];
 
+	if (scancode < TP_ACPI_HOTKEYSCAN_ADAPTIVE_START &&
+	    !(hotkey_user_mask & (1 << scancode)))
+		return;
+
 	if (keycode != KEY_RESERVED) {
 		mutex_lock(&tpacpi_inputdev_send_mutex);
 
@@ -2275,8 +2279,7 @@ static void tpacpi_input_send_key(const unsigned int scancode)
 static void tpacpi_input_send_key_masked(const unsigned int scancode)
 {
 	hotkey_driver_event(scancode);
-	if (hotkey_user_mask & (1 << scancode))
-		tpacpi_input_send_key(scancode);
+	tpacpi_input_send_key(scancode);
 }
 
 #ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
