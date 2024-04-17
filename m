Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D70B8A8A40
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Apr 2024 19:32:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rx98O-00069e-D0;
	Wed, 17 Apr 2024 17:31:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rx98L-00069E-RM
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8PaLecGiVuq16/Fn0qwhMRkqDVyOGQRBV6HYgL9CGPM=; b=Nw6HlhsGtUKIcQOXRnbRcYbZFH
 QoJnnXLWY65oOyEJjpIaWyMruwCbc7QL7gsByUwU3aEJmLvXIlWgMzN3gpQwVmQLlDEOXWRJ6yMbv
 xBsXCg/RYY3IChIiMBXskjEUzHEb073WopiF09NM3OY+vZbKVHBM0rFknHmJCj/FS1ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8PaLecGiVuq16/Fn0qwhMRkqDVyOGQRBV6HYgL9CGPM=; b=VO5RoAW5sHUuklagBiIAvnHneK
 Yf08T5Hy3wNA5ep3cGnhF08jv4Gr9V2tVEY4unr6QIvHD/02oZseqYauJF9xM6o6ZxcgXH8AJM9H5
 5t8SozoHjRU86BvOfbnwylupNP/DKs6ky6mrXZHDNxN/S//rXXjr9xXyJ5ES5Ql/HLoM=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx98L-0007La-74 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:31:45 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 81A891380240;
 Wed, 17 Apr 2024 13:31:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 17 Apr 2024 13:31:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713375094; x=
 1713461494; bh=8PaLecGiVuq16/Fn0qwhMRkqDVyOGQRBV6HYgL9CGPM=; b=X
 CTh1WsG7m7CeWuQXzC6O9miHFzw7D7qogV4q3SIgTXTOezHTWs4TYFVbNOiLpK5P
 ZUZWne6ullHLdyoYENd4KYt7U4FFn6tseiMHLfBu9jCay5g/vd35WjCLprlv+HPG
 o1BJ2Om3QJ1y0L3/VEu1mkYfnApBMjRtJ5yxuBfm4AnSo6+N6z0hTrd9D3O2ndW+
 b/6DMztpxkqmRZJ56D/Fk8qVYub/LVySUt5NUgVPmu2qZETJQbZxMyirDJB7dfPJ
 AGuddqf5AltN/eSyWCW87w3pemY2hfuCidZ6arGaGGO3pxSUM/5Bz+im8BreGyC3
 kijRMeqE2gEAdaAKgXeQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713375094; x=
 1713461494; bh=8PaLecGiVuq16/Fn0qwhMRkqDVyOGQRBV6HYgL9CGPM=; b=i
 nT51Q5R7oQKSCArWg0YNMpfyKJd/hHShDzSR5iBBiJSTZfmnJq2URZk0Y7Z56inP
 1ccdyRP7RWYVW/Yb5fSp0zy9odDDVZL23rMQSxVS16zzwwc9W/BX3lAJ2sRVPJ9l
 AnDEQlPMGv9yHj42TnP4PdKrfAvoWxEFrnZJyGDg5WOyQuCOF4ge5ZQ4h5BCc1gE
 cT94rw14Ju92fYhGNW5zDyjL7UJlsPbPj0UZG6GzswUoSAy7PBsmGxlfqOvQbFml
 V3PDAHCkcTgeUPaUf2oOaozkumj85CBDbXHyrDA1Mo99runo23Laxe2FbvQk3iqT
 TB1MXnSPcvdFEYKZQmi2w==
X-ME-Sender: <xms:dQcgZs1GaO8wFZORwAr9ER0AaLtl5hCeguG8FWhtqVTS96PdJK9bUg>
 <xme:dQcgZnFv9PFpLKjcIpS52r2TOHD9Yhmnecogu6MnXAC6dSteqpnSqJFfhT9vLmWxS
 v2U5aAqWQ6OQLRFxtM>
X-ME-Received: <xmr:dQcgZk5Rv1Kbraruuit6HhsxwsOARvhgXziO3Tzv_G_KPaABLO8bGw1OjrVz0xb82QuYBlM3JVlTpKc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejkedguddufecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:dQcgZl0eTftfbUvV4Lr_MX6HrJCK76DQZlR3mIGILAscmwz3HYhOtg>
 <xmx:dQcgZvE_HSkPxXMcOj2vjJTJ59RPZfNK5pcS14FcaLp2nKOsetZQyw>
 <xmx:dQcgZu9b-Tn6iuMj60uX8orR2c2XdD1vaIH2AQ9rohDE5OhISJVrRA>
 <xmx:dQcgZklwtiy87DmNQrUdELgU1_LhUML2k7Xw2C7-OknebeLQ_wAerA>
 <xmx:dgcgZn-wh5Rgj-EAYdZUoim25eoR5ycRkplYNwrxIEAj2zc4xo4r9qs7>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Apr 2024 13:31:33 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Wed, 17 Apr 2024 13:31:06 -0400
Message-ID: <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Modify how known_ev event is handled in preparation for
 adding
 new keycode range. Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
 --- Changes in v2: - New addition to series based on recommendations from
 review. - Note previous input patch was dropped so in numbering gets r [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rx98L-0007La-74
Subject: [ibm-acpi-devel] [PATCH v2 1/4] platform/x86: thinkpad_acpi:
 simplify known_ev handling
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com, hdegoede@redhat.com,
 hmh@hmh.eng.br, ilpo.jarvinen@linux.intel.com, peter.hutterer@redhat.com,
 njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Modify how known_ev event is handled in preparation for adding new keycode
range.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
Changes in v2: 
 - New addition to series based on recommendations from review.
 - Note previous input patch was dropped so in numbering gets replaced by this.

 drivers/platform/x86/thinkpad_acpi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 82429e59999d..3b48d893280f 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -4026,6 +4026,7 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 
 		send_acpi_ev = true;
 		ignore_acpi_ev = false;
+		known_ev = false;
 
 		switch (hkey >> 12) {
 		case 1:
@@ -4051,8 +4052,6 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
 				/* FIXME: kick libata if SATA link offline */
 				known_ev = true;
 				break;
-			default:
-				known_ev = false;
 			}
 			break;
 		case 4:
@@ -4078,11 +4077,8 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
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
