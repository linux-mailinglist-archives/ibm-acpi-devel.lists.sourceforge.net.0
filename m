Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4703549BE6
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Jun 2022 20:42:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o0p05-00044r-4q; Mon, 13 Jun 2022 18:41:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rjw@rjwysocki.net>) id 1o0p04-00044l-7o
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jun 2022 18:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O59FGlac8M+ThYh69FiEckdmy+0YkMKvY63y7KP4uVM=; b=VjJrDKvZhhWoxkSE1yE394nKMf
 p3vPAC0NTUgkPLRmC9eVkSb1ewYMC0dioOaF9K+dMx08qWWG6xXMV+Kq+DV2QNxEo47j4kpm/Z59D
 02vbAhFhdWULX/XPt9s7u+LPp2tEHNG/dZOIKIg3Nkl8LouNdY57PQGMNfT1/blUUQQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O59FGlac8M+ThYh69FiEckdmy+0YkMKvY63y7KP4uVM=; b=JRHd29YIeT3KNbT9Y4DZ7NI7uE
 tNkRCmADbj67xo5BDnFUAfWz9PXn1h/Epx6dwHikA/LwTpbpC2r98vXq/k/Cf1GzRZsafHDlp033z
 JR+f7EV5wLEW1aE/fMxmvMdIMkKSpHqCZ9vcRqm0tAx0NKtkAb9RDp1CImoxgvs3VaEQ=;
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0ozo-0002Xx-8L
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jun 2022 18:41:15 +0000
Received: from localhost (127.0.0.1) (HELO v370.home.net.pl)
 by /usr/run/smtp (/usr/run/postfix/private/idea_relay_lmtp) via UNIX with SMTP
 (IdeaSmtpServer 5.0.0)
 id 6919db4401a1fb40; Mon, 13 Jun 2022 20:40:55 +0200
Received: from kreacher.localnet (unknown [213.134.187.64])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by v370.home.net.pl (Postfix) with ESMTPSA id 6A2CF66C81D;
 Mon, 13 Jun 2022 20:40:54 +0200 (CEST)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linux ACPI <linux-acpi@vger.kernel.org>
Date: Mon, 13 Jun 2022 20:30:19 +0200
Message-ID: <2091400.OBFZWjSADL@kreacher>
In-Reply-To: <2653857.mvXUDI8C0e@kreacher>
References: <1843211.tdWV9SEqCh@kreacher> <2653857.mvXUDI8C0e@kreacher>
MIME-Version: 1.0
X-CLIENT-IP: 213.134.187.64
X-CLIENT-HOSTNAME: 213.134.187.64
X-VADE-SPAMSTATE: clean
X-VADE-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedruddujedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfjqffogffrnfdpggftiffpkfenuceurghilhhouhhtmecuudehtdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkjghfggfgtgesthfuredttddtjeenucfhrhhomhepfdftrghfrggvlhculfdrucghhihsohgtkhhifdcuoehrjhifsehrjhifhihsohgtkhhirdhnvghtqeenucggtffrrghtthgvrhhnpedvffeuiedtgfdvtddugeeujedtffetteegfeekffdvfedttddtuefhgeefvdejhfenucfkphepvddufedrudefgedrudekjedrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvddufedrudefgedrudekjedrieegpdhhvghlohepkhhrvggrtghhvghrrdhlohgtrghlnhgvthdpmhgrihhlfhhrohhmpedftfgrfhgrvghlucflrdcuhgihshhotghkihdfuceorhhjfiesrhhjfiihshhotghkihdrnhgvtheqpdhnsggprhgtphhtthhopeduuddprhgtphhtthhopehlihhnuhigqdgrtghpihesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhpmhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegrnhgurhhihidrshhhvghvtghhvghnkhhosehlihhnuhigrdhi
 nhhtvghlrdgtohhmpdhrtghpthhtohepmhhikhgrrdifvghsthgvrhgsvghrgheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtohepshgrkhgrrhhirdgrihhluhhssehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpdhrtghpthhtohepmhgrrhhkghhrohhssheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohepphhlrghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-DCC--Metrics: v370.home.net.pl 1024; Body=11 Fuz1=11 Fuz2=11
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Rafael J. Wysocki <rafael.j.wysocki@intel.com> Instead
 of walking the list of children of an ACPI device directly,
 use acpi_dev_for_each_child()
 to carry out an action for all of the given ACPI device's children. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0ozo-0002Xx-8L
Subject: [ibm-acpi-devel] [PATCH v2 12/16] platform/x86/thinkpad_acpi: Use
 acpi_dev_for_each_child()
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
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Instead of walking the list of children of an ACPI device directly,
use acpi_dev_for_each_child() to carry out an action for all of
the given ACPI device's children.

This will help to eliminate the children list head from struct
acpi_device as it is redundant and it is used in questionable ways
in some places (in particular, locking is needed for walking the
list pointed to it safely, but it is often missing).

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

v1 -> v2:
   * Eliminate unnecessary branch (Andy).

---
 drivers/platform/x86/thinkpad_acpi.c |   53 +++++++++++++++++------------------
 1 file changed, 27 insertions(+), 26 deletions(-)

Index: linux-pm/drivers/platform/x86/thinkpad_acpi.c
===================================================================
--- linux-pm.orig/drivers/platform/x86/thinkpad_acpi.c
+++ linux-pm/drivers/platform/x86/thinkpad_acpi.c
@@ -6841,6 +6841,31 @@ static const struct backlight_ops ibm_ba
 
 /* --------------------------------------------------------------------- */
 
+static int __init tpacpi_evaluate_bcl(struct acpi_device *adev, void *not_used)
+{
+	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
+	union acpi_object *obj;
+	acpi_status status;
+	int rc;
+
+	status = acpi_evaluate_object(adev->handle, "_BCL", NULL, &buffer);
+	if (ACPI_FAILURE(status))
+		return 0;
+
+	obj = buffer.pointer;
+	if (!obj || obj->type != ACPI_TYPE_PACKAGE) {
+		acpi_handle_info(adev->handle,
+				 "Unknown _BCL data, please report this to %s\n",
+				 TPACPI_MAIL);
+		rc = 0;
+	} else {
+		rc = obj->package.count;
+	}
+	kfree(obj);
+
+	return rc;
+}
+
 /*
  * Call _BCL method of video device.  On some ThinkPads this will
  * switch the firmware to the ACPI brightness control mode.
@@ -6848,37 +6873,13 @@ static const struct backlight_ops ibm_ba
 
 static int __init tpacpi_query_bcl_levels(acpi_handle handle)
 {
-	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
-	union acpi_object *obj;
-	struct acpi_device *device, *child;
-	int rc;
+	struct acpi_device *device;
 
 	device = acpi_fetch_acpi_dev(handle);
 	if (!device)
 		return 0;
 
-	rc = 0;
-	list_for_each_entry(child, &device->children, node) {
-		acpi_status status = acpi_evaluate_object(child->handle, "_BCL",
-							  NULL, &buffer);
-		if (ACPI_FAILURE(status)) {
-			buffer.length = ACPI_ALLOCATE_BUFFER;
-			continue;
-		}
-
-		obj = (union acpi_object *)buffer.pointer;
-		if (!obj || (obj->type != ACPI_TYPE_PACKAGE)) {
-			pr_err("Unknown _BCL data, please report this to %s\n",
-				TPACPI_MAIL);
-			rc = 0;
-		} else {
-			rc = obj->package.count;
-		}
-		break;
-	}
-
-	kfree(buffer.pointer);
-	return rc;
+	return acpi_dev_for_each_child(device, tpacpi_evaluate_bcl, NULL);
 }
 
 





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
