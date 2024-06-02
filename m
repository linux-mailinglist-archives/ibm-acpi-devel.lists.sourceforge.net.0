Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF1E8D748C
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  2 Jun 2024 11:20:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sDhN3-0005HU-U2;
	Sun, 02 Jun 2024 09:19:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1sDhN2-0005HN-Mo
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=maGBV9Z2yjHhoeEbt4H7Y8HObmsqJ3iuhgZaQpuKshM=; b=KDSAt1d/07Cv19h4on/EziC4qk
 CqqLEz1w2AVzFQYaHJPK/7QNyktL+zMPZczOTOOy4/xrUtZwMIRefpflO8qXO/JhtdXw8JnV/Qxzr
 JcE1svdJPGaUnSjNVx9OoG202CUdAVB5vvpQG0W5/ljFrpamVLJsOi5PkjCq2pfvdx0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=maGBV9Z2yjHhoeEbt4H7Y8HObmsqJ3iuhgZaQpuKshM=; b=WHPsLke2ZDrbNwDRKPKRcVyHAG
 HfZ2uRe60uym2wDC0YpHUjSCdqQS8Dw5bJFpsyv9tPJIbuFn52b/IsEW1Jg4fPeHLK/UbXOeG875r
 vDSPEkXspBuXw6uAiW1U5vd7M3pKYCydU+0TxIsDx+lRGDNVry/ER4pcXRxZgMm5QNsw=;
Received: from fgw22-7.mail.saunalahti.fi ([62.142.5.83])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sDhN3-0005GA-J9 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 02 Jun 2024 09:19:21 +0000
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw22.mail.saunalahti.fi (Halon) with ESMTP
 id e39b5d9a-20be-11ef-8e3d-005056bdf889;
 Sun, 02 Jun 2024 12:02:50 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jorge Lopez <jorge.lopez2@hp.com>, Li Zetao <lizetao1@huawei.com>,
 Simon Trimmer <simont@opensource.cirrus.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org
Date: Sun,  2 Jun 2024 11:57:55 +0300
Message-ID: <20240602090244.1666360-3-andy.shevchenko@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
References: <20240602090244.1666360-1-andy.shevchenko@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use 2-argument strscpy(), which is not only shorter but also
 provides an additional check that destination buffer is an array.
 Signed-off-by:
 Andy Shevchenko --- .../x86/hp/hp-bioscfg/enum-attributes.c | 18 +++++
 .../x86/hp/hp-bioscfg/int-attributes.c
 | 7 ++----- .../x86/hp/hp-bioscfg/order-list-attributes.c | [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [62.142.5.83 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.83 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [62.142.5.83 listed in sa-trusted.bondedsender.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1sDhN3-0005GA-J9
Subject: [ibm-acpi-devel] [PATCH v1 2/7] platform/x86: hp: hp-bioscfg: Use
 2-argument strscpy()
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
Cc: Mark Pearson <markpearson@lenovo.com>, "Luke D. Jones" <luke@ljones.dev>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Corentin Chary <corentin.chary@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Use 2-argument strscpy(), which is not only shorter but also provides
an additional check that destination buffer is an array.

Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
 .../x86/hp/hp-bioscfg/enum-attributes.c       | 18 +++++-------------
 .../x86/hp/hp-bioscfg/int-attributes.c        |  7 ++-----
 .../x86/hp/hp-bioscfg/order-list-attributes.c | 18 +++++-------------
 .../x86/hp/hp-bioscfg/passwdobj-attributes.c  | 19 +++++--------------
 .../x86/hp/hp-bioscfg/spmobj-attributes.c     |  3 +--
 .../x86/hp/hp-bioscfg/string-attributes.c     | 12 ++++--------
 6 files changed, 22 insertions(+), 55 deletions(-)

diff --git a/drivers/platform/x86/hp/hp-bioscfg/enum-attributes.c b/drivers/platform/x86/hp/hp-bioscfg/enum-attributes.c
index a2402d31c146..c50ad5880503 100644
--- a/drivers/platform/x86/hp/hp-bioscfg/enum-attributes.c
+++ b/drivers/platform/x86/hp/hp-bioscfg/enum-attributes.c
@@ -52,9 +52,7 @@ static void update_enumeration_value(int instance_id, char *attr_value)
 {
 	struct enumeration_data *enum_data = &bioscfg_drv.enumeration_data[instance_id];
 
-	strscpy(enum_data->current_value,
-		attr_value,
-		sizeof(enum_data->current_value));
+	strscpy(enum_data->current_value, attr_value);
 }
 
 ATTRIBUTE_S_COMMON_PROPERTY_SHOW(display_name, enumeration);
@@ -174,8 +172,7 @@ static int hp_populate_enumeration_elements_from_package(union acpi_object *enum
 		case VALUE:
 			break;
 		case PATH:
-			strscpy(enum_data->common.path, str_value,
-				sizeof(enum_data->common.path));
+			strscpy(enum_data->common.path, str_value);
 			break;
 		case IS_READONLY:
 			enum_data->common.is_readonly = int_value;
@@ -222,9 +219,7 @@ static int hp_populate_enumeration_elements_from_package(union acpi_object *enum
 				if (ret)
 					return -EINVAL;
 
-				strscpy(enum_data->common.prerequisites[reqs],
-					str_value,
-					sizeof(enum_data->common.prerequisites[reqs]));
+				strscpy(enum_data->common.prerequisites[reqs], str_value);
 
 				kfree(str_value);
 				str_value = NULL;
@@ -236,8 +231,7 @@ static int hp_populate_enumeration_elements_from_package(union acpi_object *enum
 			break;
 
 		case ENUM_CURRENT_VALUE:
-			strscpy(enum_data->current_value,
-				str_value, sizeof(enum_data->current_value));
+			strscpy(enum_data->current_value, str_value);
 			break;
 		case ENUM_SIZE:
 			if (int_value > MAX_VALUES_SIZE) {
@@ -278,9 +272,7 @@ static int hp_populate_enumeration_elements_from_package(union acpi_object *enum
 				 * is greater than MAX_VALUES_SIZE
 				 */
 				if (size < MAX_VALUES_SIZE)
-					strscpy(enum_data->possible_values[pos_values],
-						str_value,
-						sizeof(enum_data->possible_values[pos_values]));
+					strscpy(enum_data->possible_values[pos_values], str_value);
 
 				kfree(str_value);
 				str_value = NULL;
diff --git a/drivers/platform/x86/hp/hp-bioscfg/int-attributes.c b/drivers/platform/x86/hp/hp-bioscfg/int-attributes.c
index 86b7ac63fec2..6c7f4d5fa9cb 100644
--- a/drivers/platform/x86/hp/hp-bioscfg/int-attributes.c
+++ b/drivers/platform/x86/hp/hp-bioscfg/int-attributes.c
@@ -192,8 +192,7 @@ static int hp_populate_integer_elements_from_package(union acpi_object *integer_
 			integer_data->current_value = int_value;
 			break;
 		case PATH:
-			strscpy(integer_data->common.path, str_value,
-				sizeof(integer_data->common.path));
+			strscpy(integer_data->common.path, str_value);
 			break;
 		case IS_READONLY:
 			integer_data->common.is_readonly = int_value;
@@ -240,9 +239,7 @@ static int hp_populate_integer_elements_from_package(union acpi_object *integer_
 				if (ret)
 					continue;
 
-				strscpy(integer_data->common.prerequisites[reqs],
-					str_value,
-					sizeof(integer_data->common.prerequisites[reqs]));
+				strscpy(integer_data->common.prerequisites[reqs], str_value);
 				kfree(str_value);
 				str_value = NULL;
 			}
diff --git a/drivers/platform/x86/hp/hp-bioscfg/order-list-attributes.c b/drivers/platform/x86/hp/hp-bioscfg/order-list-attributes.c
index 1ff09dfb7d7e..c6e57bb9d8b7 100644
--- a/drivers/platform/x86/hp/hp-bioscfg/order-list-attributes.c
+++ b/drivers/platform/x86/hp/hp-bioscfg/order-list-attributes.c
@@ -57,9 +57,7 @@ static void update_ordered_list_value(int instance, char *attr_value)
 {
 	struct ordered_list_data *ordered_list_data = &bioscfg_drv.ordered_list_data[instance];
 
-	strscpy(ordered_list_data->current_value,
-		attr_value,
-		sizeof(ordered_list_data->current_value));
+	strscpy(ordered_list_data->current_value, attr_value);
 }
 
 ATTRIBUTE_S_COMMON_PROPERTY_SHOW(display_name, ordered_list);
@@ -179,13 +177,11 @@ static int hp_populate_ordered_list_elements_from_package(union acpi_object *ord
 		/* Assign appropriate element value to corresponding field*/
 		switch (eloc) {
 		case VALUE:
-			strscpy(ordered_list_data->current_value,
-				str_value, sizeof(ordered_list_data->current_value));
+			strscpy(ordered_list_data->current_value, str_value);
 			replace_char_str(ordered_list_data->current_value, COMMA_SEP, SEMICOLON_SEP);
 			break;
 		case PATH:
-			strscpy(ordered_list_data->common.path, str_value,
-				sizeof(ordered_list_data->common.path));
+			strscpy(ordered_list_data->common.path, str_value);
 			break;
 		case IS_READONLY:
 			ordered_list_data->common.is_readonly = int_value;
@@ -227,9 +223,7 @@ static int hp_populate_ordered_list_elements_from_package(union acpi_object *ord
 				if (ret)
 					continue;
 
-				strscpy(ordered_list_data->common.prerequisites[reqs],
-					str_value,
-					sizeof(ordered_list_data->common.prerequisites[reqs]));
+				strscpy(ordered_list_data->common.prerequisites[reqs], str_value);
 
 				kfree(str_value);
 				str_value = NULL;
@@ -271,9 +265,7 @@ static int hp_populate_ordered_list_elements_from_package(union acpi_object *ord
 			part = strsep(&part_tmp, COMMA_SEP);
 
 			for (olist_elem = 0; olist_elem < MAX_ELEMENTS_SIZE && part; olist_elem++) {
-				strscpy(ordered_list_data->elements[olist_elem],
-					part,
-					sizeof(ordered_list_data->elements[olist_elem]));
+				strscpy(ordered_list_data->elements[olist_elem], part);
 				part = strsep(&part_tmp, COMMA_SEP);
 			}
 			ordered_list_data->elements_size = olist_elem;
diff --git a/drivers/platform/x86/hp/hp-bioscfg/passwdobj-attributes.c b/drivers/platform/x86/hp/hp-bioscfg/passwdobj-attributes.c
index f7efe217a4bb..35936c05e45b 100644
--- a/drivers/platform/x86/hp/hp-bioscfg/passwdobj-attributes.c
+++ b/drivers/platform/x86/hp/hp-bioscfg/passwdobj-attributes.c
@@ -101,13 +101,9 @@ static int store_password_instance(struct kobject *kobj, const char *buf,
 
 	if (!ret) {
 		if (is_current)
-			strscpy(bioscfg_drv.password_data[id].current_password,
-				buf_cp,
-				sizeof(bioscfg_drv.password_data[id].current_password));
+			strscpy(bioscfg_drv.password_data[id].current_password, buf_cp);
 		else
-			strscpy(bioscfg_drv.password_data[id].new_password,
-				buf_cp,
-				sizeof(bioscfg_drv.password_data[id].new_password));
+			strscpy(bioscfg_drv.password_data[id].new_password, buf_cp);
 	}
 
 	kfree(buf_cp);
@@ -272,8 +268,7 @@ static int hp_populate_password_elements_from_package(union acpi_object *passwor
 		case VALUE:
 			break;
 		case PATH:
-			strscpy(password_data->common.path, str_value,
-				sizeof(password_data->common.path));
+			strscpy(password_data->common.path, str_value);
 			break;
 		case IS_READONLY:
 			password_data->common.is_readonly = int_value;
@@ -315,9 +310,7 @@ static int hp_populate_password_elements_from_package(union acpi_object *passwor
 				if (ret)
 					break;
 
-				strscpy(password_data->common.prerequisites[reqs],
-					str_value,
-					sizeof(password_data->common.prerequisites[reqs]));
+				strscpy(password_data->common.prerequisites[reqs], str_value);
 
 				kfree(str_value);
 				str_value = NULL;
@@ -359,9 +352,7 @@ static int hp_populate_password_elements_from_package(union acpi_object *passwor
 				if (ret)
 					break;
 
-				strscpy(password_data->encodings[pos_values],
-					str_value,
-					sizeof(password_data->encodings[pos_values]));
+				strscpy(password_data->encodings[pos_values], str_value);
 				kfree(str_value);
 				str_value = NULL;
 
diff --git a/drivers/platform/x86/hp/hp-bioscfg/spmobj-attributes.c b/drivers/platform/x86/hp/hp-bioscfg/spmobj-attributes.c
index 86f90238750c..2b00a14792e9 100644
--- a/drivers/platform/x86/hp/hp-bioscfg/spmobj-attributes.c
+++ b/drivers/platform/x86/hp/hp-bioscfg/spmobj-attributes.c
@@ -365,8 +365,7 @@ int hp_populate_secure_platform_data(struct kobject *attr_name_kobj)
 	/* Populate data for Secure Platform Management */
 	bioscfg_drv.spm_data.attr_name_kobj = attr_name_kobj;
 
-	strscpy(bioscfg_drv.spm_data.attribute_name, SPM_STR,
-		sizeof(bioscfg_drv.spm_data.attribute_name));
+	strscpy(bioscfg_drv.spm_data.attribute_name, SPM_STR);
 
 	bioscfg_drv.spm_data.is_enabled = 0;
 	bioscfg_drv.spm_data.mechanism = 0;
diff --git a/drivers/platform/x86/hp/hp-bioscfg/string-attributes.c b/drivers/platform/x86/hp/hp-bioscfg/string-attributes.c
index f0c20070094d..27758b779b2d 100644
--- a/drivers/platform/x86/hp/hp-bioscfg/string-attributes.c
+++ b/drivers/platform/x86/hp/hp-bioscfg/string-attributes.c
@@ -50,7 +50,7 @@ static void update_string_value(int instance_id, char *attr_value)
 	struct string_data *string_data = &bioscfg_drv.string_data[instance_id];
 
 	/* Write settings to BIOS */
-	strscpy(string_data->current_value, attr_value, sizeof(string_data->current_value));
+	strscpy(string_data->current_value, attr_value);
 }
 
 /*
@@ -178,12 +178,10 @@ static int hp_populate_string_elements_from_package(union acpi_object *string_ob
 		/* Assign appropriate element value to corresponding field*/
 		switch (eloc) {
 		case VALUE:
-			strscpy(string_data->current_value,
-				str_value, sizeof(string_data->current_value));
+			strscpy(string_data->current_value, str_value);
 			break;
 		case PATH:
-			strscpy(string_data->common.path, str_value,
-				sizeof(string_data->common.path));
+			strscpy(string_data->common.path, str_value);
 			break;
 		case IS_READONLY:
 			string_data->common.is_readonly = int_value;
@@ -231,9 +229,7 @@ static int hp_populate_string_elements_from_package(union acpi_object *string_ob
 				if (ret)
 					continue;
 
-				strscpy(string_data->common.prerequisites[reqs],
-					str_value,
-					sizeof(string_data->common.prerequisites[reqs]));
+				strscpy(string_data->common.prerequisites[reqs], str_value);
 				kfree(str_value);
 				str_value = NULL;
 			}
-- 
2.45.1



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
