Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A658B09AE
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:30:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkw-0004fb-2f;
	Wed, 24 Apr 2024 12:29:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkg-0004cl-36
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ODEE8uab+7y14MTrzin7BjbgUbVRVvKejJ6ig3O4HCQ=; b=OPfk6aXj0C7CtTHEP7GE1qVeta
 wjCareg3vJtMe/SqUA6dN9xODi0JfUZFONps8xQSGHSMXegFPIGtoK0DUth6nnCNmZ3eSEAAWeBSJ
 VYRLLOlbUptFgUCeJ/bpQm++keZCwxGCmOcrs0PQUM4UIvkzDP9vxAZFsVm5MZsmAKDQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ODEE8uab+7y14MTrzin7BjbgUbVRVvKejJ6ig3O4HCQ=; b=jLg/c8PVWUkUDL+17uqUlSYXvX
 /zHIPJGwMsVjntI1Gel/5vPdqhGW4jKOA9LRs//LNAhzoAe/qrA6CbNVeehWEXp4biLyFgYtQcSyr
 rTQTmEdcvASHYfSdVK8ELnzVB2J3amG1mW494utNnOp759/Z/a65hy/2WlMxgQn1mAks=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkZ-00025Z-R5 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ODEE8uab+7y14MTrzin7BjbgUbVRVvKejJ6ig3O4HCQ=;
 b=jJU7DTtaTu1ugHr5/DYA03ngUNq/sg3xEi7979/6QkD/bCKZAk2BiyPXaIqGOik+010b3r
 i2L33G6yuHvhIGx+QAXkBsQnBt4JVpr/2+eMfsovXyrExiGcfIraliXARhOyM0npgqFfCg
 RTvU7H3Py8usElo9p9wylgWUUv1GuVw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-326-CKYZo1chOcG9Fu0UrBp7rA-1; Wed, 24 Apr 2024 08:29:10 -0400
X-MC-Unique: CKYZo1chOcG9Fu0UrBp7rA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98534104B503;
 Wed, 24 Apr 2024 12:29:08 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 73C79C13FA7;
 Wed, 24 Apr 2024 12:29:06 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:33 +0200
Message-ID: <20240424122834.19801-24-hdegoede@redhat.com>
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
 Content preview:  From: Mark Pearson <mpearson-lenovo@squebb.ca> New Lenovo
 platforms are adding the FN+N key to generate system debug details that
 support
 can use for collecting important details on any customer cases for Windows.
 Add the infrastructure so we can [...] 
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
X-Headers-End: 1rzbkZ-00025Z-R5
Subject: [ibm-acpi-devel] [PATCH v2 23/24] platform/x86: thinkpad_acpi:
 Support for system debug info hotkey
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

New Lenovo platforms are adding the FN+N key to generate system debug
details that support can use for collecting important details on any
customer cases for Windows.
Add the infrastructure so we can do the same on Linux by sending
a KEY_VENDOR keycode to userspace.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
Link: https://lore.kernel.org/r/20240417173124.9953-3-mpearson-lenovo@squebb.ca
[hdegoede@redhat.com: Adjust for switch to sparse-keymap keymaps]
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index b6d6466215e1..7a27cbca6980 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3271,6 +3271,7 @@ static const struct key_entry keymap_lenovo[] __initconst = {
 	 * after switching to sparse keymap support. The mappings above use translated
 	 * scancodes to preserve uAPI compatibility, see tpacpi_input_send_key().
 	 */
+	{ KE_KEY, 0x131d, { KEY_VENDOR } }, /* System debug info, similar to old ThinkPad key */
 	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
 	{ KE_END }
 };
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
