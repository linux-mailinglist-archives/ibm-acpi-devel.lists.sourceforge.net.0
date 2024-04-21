Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A86838ABFE7
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 17:46:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryZOW-00013f-9G;
	Sun, 21 Apr 2024 15:46:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1ryZOL-00012f-VT
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E+mzqNt5w3qnJcmko8jwwdLwE5oPIFcZ7M11zY2tmRU=; b=YVruYuJ4aAQRUu7bZZxIzZrpl3
 7FT3auUL3FSeuhFldqaDWGjeK8F/VYHEzkzrYVPw1s6Hce31dR74+nANXWbMH2cRUeeq9Np1EbyJl
 W0wBfrTODqX1VV4fFPlvPywyKY3N2fAeKMQb89/EWLrfcpRZ92EeyEfxp+NN5lep+rW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E+mzqNt5w3qnJcmko8jwwdLwE5oPIFcZ7M11zY2tmRU=; b=mGxDRDbfMOHyt2MLjEsb6IRVwk
 v5M+1TBGmrZPXUhRoYY85wiOccS0QT+F/BrpVpDdqoeWsa9+SrAFsFeLq0jHoMC7gGItPGtyBhY7k
 hXJQ+eO/GAHd/+RQ6vrMJKFIFAiXRxmzMYDen6f7hw0Q6Y+Rg4DJqwIEUY6D6hRO37G4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ryZOE-0003Ub-Ty for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 15:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713714357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E+mzqNt5w3qnJcmko8jwwdLwE5oPIFcZ7M11zY2tmRU=;
 b=XAA4JyXO16ufkKL3VV8p6I+tQJgPsVJRbxdqFUtED1ReLeK117I7Zz5ZFu3/yeniJ7eaE7
 7uCfVyv2c9y4m0Yj2aizgeD2S7exN+p1gYMWZaCukKZqtDuwN/CzNQ8u2LzzC8FOtw4x/0
 s/SK9e5kk7Rwf5Z+W0rHsKX4r7MSg5g=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-677-HS1oUmW_NnubOSSC2Rz-dA-1; Sun,
 21 Apr 2024 11:45:55 -0400
X-MC-Unique: HS1oUmW_NnubOSSC2Rz-dA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB1203C00098;
 Sun, 21 Apr 2024 15:45:54 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8D76A40357A7;
 Sun, 21 Apr 2024 15:45:53 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sun, 21 Apr 2024 17:45:17 +0200
Message-ID: <20240421154520.37089-22-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-1-hdegoede@redhat.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Mark Pearson <mpearson-lenovo@squebb.ca> Modify how
 known_ev event is handled in preparation for adding new hkey event range.
 Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca> Link:
 https://lore.kernel.org/r/20240417173124.9953-1-mpearson-lenovo@squebb.ca
 Reviewed-by: Hans de Goede <hdegoede@redhat.com> Signed-off-by: [...] 
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1ryZOE-0003Ub-Ty
Subject: [ibm-acpi-devel] [PATCH 21/24] platform/x86: thinkpad_acpi:
 Simplify known_ev handling
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

Modify how known_ev event is handled in preparation for adding new hkey
event range.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Link: https://lore.kernel.org/r/20240417173124.9953-1-mpearson-lenovo@squebb.ca
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index fc60857b39ec..cd54a2455ac8 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3840,6 +3840,7 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 		}
 
 		send_acpi_ev = true;
+		known_ev = false;
 
 		switch (hkey >> 12) {
 		case 1:
@@ -3863,8 +3864,6 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				/* FIXME: kick libata if SATA link offline */
 				known_ev = true;
 				break;
-			default:
-				known_ev = false;
 			}
 			break;
 		case 4:
@@ -3887,11 +3886,8 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				tpacpi_send_radiosw_update();
 				send_acpi_ev = 0;
 				known_ev = true;
-				break;
 			}
-			fallthrough;	/* to default */
-		default:
-			known_ev = false;
+			break;
 		}
 		if (!known_ev) {
 			pr_notice("unhandled HKEY event 0x%04x\n", hkey);
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
