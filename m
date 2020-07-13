Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE6922E3C8
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:57:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsNm-0002sA-85; Mon, 27 Jul 2020 01:56:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <grandmaster@al2klimov.de>) id 1jv3mu-00036G-JY
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jul 2020 19:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iq4xSM3oUMqL+bi4ou0c9Y8xBjLCQUsFrzcBg9cTWJc=; b=g2eapUSRHJ6xbSUWEHvWytlTnt
 LhhKlMaH6NUpdRBqpyFlkWZMaq89PUq+IctEIQjbaBr8ySMs04FQZr2MVXUL7Q3s+/XIxCT4HRo9j
 DH/zWD6QxjGwLXp0aYxu9c6Fc08yuSGM8rkw3UZVGn+zcDb6w9IczMMfPMtr2j0bSkYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iq4xSM3oUMqL+bi4ou0c9Y8xBjLCQUsFrzcBg9cTWJc=; b=F
 cGQ0B5340hsj0DmiNQH1B8/UEi/LCfjGFxmmGbtMJqrbaRg5BdTO47YT4fgeIOHBTFTeKwUbDy0ab
 OmDjjtKT7uiJarqTMVejXBeq0+BkZV/PyYJwXpblwCCE/t93pF5PrJbiJ3uoJd+npLh31+3zpo6g8
 U3GKj1N7JM0fchUc=;
Received: from smtp.al2klimov.de ([78.46.175.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jv3ms-005qcF-En
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jul 2020 19:06:52 +0000
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 72635BC0E4;
 Mon, 13 Jul 2020 19:06:35 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: ibm-acpi@hmh.eng.br, dvhart@infradead.org, andy@infradead.org,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 13 Jul 2020 21:06:28 +0200
Message-Id: <20200713190629.37242-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv3ms-005qcF-En
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:42:52 +0000
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Replace HTTP
 links with HTTPS ones
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely or at least not just HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.

 Sorry again to all maintainers who complained about subject lines.
 Now I realized that you want an actually perfect prefixes,
 not just subsystem ones.
 I tried my best...
 And yes, *I could* (at least half-)automate it.
 Impossible is nothing! :)


 drivers/platform/x86/thinkpad_acpi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ff7f0a4f2475..24fc16eca550 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -7957,7 +7957,7 @@ static struct ibm_struct volume_driver_data = {
  *	does so, its initial value is meaningless (0x07).
  *
  *	For firmware bugs, refer to:
- *	http://thinkwiki.org/wiki/Embedded_Controller_Firmware#Firmware_Issues
+ *	https://thinkwiki.org/wiki/Embedded_Controller_Firmware#Firmware_Issues
  *
  * 	----
  *
@@ -7982,7 +7982,7 @@ static struct ibm_struct volume_driver_data = {
  *	mode.
  *
  *	For firmware bugs, refer to:
- *	http://thinkwiki.org/wiki/Embedded_Controller_Firmware#Firmware_Issues
+ *	https://thinkwiki.org/wiki/Embedded_Controller_Firmware#Firmware_Issues
  *
  *	----
  *
@@ -10094,7 +10094,7 @@ static int __must_check __init get_thinkpad_model_data(
 	 * X32 or newer, all Z series;  Some models must have an
 	 * up-to-date BIOS or they will not be detected.
 	 *
-	 * See http://thinkwiki.org/wiki/List_of_DMI_IDs
+	 * See https://thinkwiki.org/wiki/List_of_DMI_IDs
 	 */
 	while ((dev = dmi_find_device(DMI_DEV_TYPE_OEM_STRING, NULL, dev))) {
 		if (sscanf(dev->name,
@@ -10613,8 +10613,8 @@ MODULE_DEVICE_TABLE(acpi, ibm_htk_device_ids);
 /*
  * DMI matching for module autoloading
  *
- * See http://thinkwiki.org/wiki/List_of_DMI_IDs
- * See http://thinkwiki.org/wiki/BIOS_Upgrade_Downloads
+ * See https://thinkwiki.org/wiki/List_of_DMI_IDs
+ * See https://thinkwiki.org/wiki/BIOS_Upgrade_Downloads
  *
  * Only models listed in thinkwiki will be supported, so add yours
  * if it is not there yet.
-- 
2.27.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
