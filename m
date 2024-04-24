Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EED2B8B09A7
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkn-0008Rf-44;
	Wed, 24 Apr 2024 12:29:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkR-0008Pw-KD
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=siYZsqknV5oaJbisuTMcBjL55sHZciVQiQTii0iwrMQ=; b=KXgI1Cjopz74z3pk3hFxyAxfui
 einhYP9ZzBFWhRza0q4bfKWKBeimdLE8KTLLiNwcCPkLQY3MOZV02aoKfNh4cakjYad87BCVKjxi3
 tJLIc57semN++U74bpjASGET0HA4ZHTfcQ5yiB38+9A/WGfOu+TPPs5skhiuF8Td3Z/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=siYZsqknV5oaJbisuTMcBjL55sHZciVQiQTii0iwrMQ=; b=bv96ylDaIZOuA9GnO4g5CGqFUa
 6FiyGEjb4dfrn3XYJpzmHUUAXJV7m7iWZfD3WKHxB6eKaiD/9Dc+oQXoa/bRB01Lf0ZaqWG5+nm+Y
 LgKAKdvlOJSbnrQTXFa20heT+NDkjPZJPjjPg+546JO/jE9d14TovweG+F0swO0ozIYk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkQ-00024U-0u for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961748;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=siYZsqknV5oaJbisuTMcBjL55sHZciVQiQTii0iwrMQ=;
 b=CYv6RE1VloozSgux0jZ+k5VPRkKEE1YddOUIkZD5dOa+w0uT9gtqZ+/ExlyxwB+tI0PARj
 0nnn24RfEwgzTfZ+IdJ4+svcKeaqC4m2vwa4p6hPYU4t4VlYL7hvvHm9X2eF6TfILtHLK0
 VFaGkVY6zfIh16Fb48d22F6XLY4qak8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-444-0iLcTKMXOjWWF2Fbqpx9RA-1; Wed, 24 Apr 2024 08:29:04 -0400
X-MC-Unique: 0iLcTKMXOjWWF2Fbqpx9RA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8EFB1811029;
 Wed, 24 Apr 2024 12:29:03 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 69ABCC13FA5;
 Wed, 24 Apr 2024 12:29:02 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:30 +0200
Message-ID: <20240424122834.19801-21-hdegoede@redhat.com>
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
 Content preview:  The X1 carbon 2014 / 2nd gen's adaptive keyboard top row's
 "Home" mode, which is 1 of the 2 modes Linux supports, has clipping-tool
 and cloud buttons which so far are not mapped. I assume these were left as
 KEY_RESERVED because no suitable KEY_FOO codes were available when support
 was added. 
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
X-Headers-End: 1rzbkQ-00024U-0u
Subject: [ibm-acpi-devel] [PATCH v2 20/24] platform/x86: thinkpad_acpi: Add
 mappings for adaptive kbd clipping-tool and cloud keys
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

The X1 carbon 2014 / 2nd gen's adaptive keyboard top row's "Home" mode,
which is 1 of the 2 modes Linux supports, has clipping-tool and cloud
buttons which so far are not mapped.

I assume these were left as KEY_RESERVED because no suitable KEY_FOO codes
were available when support was added.

In the mean time we have gotten KEY_SELECTIVE_SCREENSHOT and this has been
used for the clipping-tool function under Fn + PrtSc on more traditional
ThinkPad keyboards already.

Finding a KEY_FOO code for the cloud key is harder looking at the symbol
it seems to refer to cloud-storage which made me think of file syncing,
or file transfer which has let me to pick KEY_XFER for this.

Note this is based on looking at a picture of the adaptive top row
in Home mode and has not been tested on an actual adaptive keyboard.

Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 8af9406f2a13..469ff6a39d18 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3234,8 +3234,8 @@ static const struct key_entry keymap_lenovo[] __initconst = {
 	/* Adaptive keyboard mappings for Carbon X1 2014 translated scancodes 0x20 - 0x33 */
 	{ KE_KEY, TP_ACPI_HOTKEYSCAN_MUTE2, { KEY_RESERVED } },
 	{ KE_KEY, TP_ACPI_HOTKEYSCAN_BRIGHTNESS_ZERO, { KEY_BRIGHTNESS_MIN } },
-	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL, { KEY_RESERVED } },
-	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLOUD, { KEY_RESERVED } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLIPPING_TOOL, { KEY_SELECTIVE_SCREENSHOT } },
+	{ KE_KEY, TP_ACPI_HOTKEYSCAN_CLOUD, { KEY_XFER } },
 	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK9, { KEY_RESERVED } },
 	{ KE_KEY, TP_ACPI_HOTKEYSCAN_VOICE, { KEY_VOICECOMMAND } },
 	{ KE_KEY, TP_ACPI_HOTKEYSCAN_UNK10, { KEY_RESERVED } },
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
