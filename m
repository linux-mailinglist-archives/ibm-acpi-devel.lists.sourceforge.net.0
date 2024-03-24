Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93933887F22
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 24 Mar 2024 22:22:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1roVI4-0006DK-6M;
	Sun, 24 Mar 2024 21:22:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1roVI2-0006D9-Cx
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IfP08NkGSU5kw3djwr6jz0i5FQEQ+nuYjW7asb0rxPA=; b=hcEGDkiB2wlQiiM9v+HEswFvgO
 hpzMPwCxuJOCogERFiizgO+Y6qdd+0SZH9u0ndUkBDI7HEE+AG2iOI9U+kZEIFpe+d3d2C72EGl3m
 FujMR7ePADRRbte0kJnD4gZlgZCkFBfolgouZ9OrqqbjVRXZUob4xUItpKOO+T9cvYDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IfP08NkGSU5kw3djwr6jz0i5FQEQ+nuYjW7asb0rxPA=; b=E9mvm5z6Jpp2/5qWy8Yj4jy1PU
 SpoaGpxVmW3yZVmYsERxH9U3lVukeBWRYXS3YxhCuptXue2s0g0caMwbsL2ARLmx23bsTIgIGIrra
 RJjdA+0gju97dw7sGceTXeCiQs3Xe5oavfXcGe2HHFIJXEIGD4uezGSgwo15lt6ig8GY=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roVI1-0002No-6i for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 24 Mar 2024 21:22:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id 0FB9413800E1;
 Sun, 24 Mar 2024 17:08:36 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 24 Mar 2024 17:08:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1711314516; x=
 1711400916; bh=IfP08NkGSU5kw3djwr6jz0i5FQEQ+nuYjW7asb0rxPA=; b=t
 FtKub94hR63Ps2KzHc0L757lTsZnpUWLbTmBqEYnH79JM5g8qjvO/yHF8T0pH/1k
 lOfpOrGSoQBBvpWrAuO9w7B5q9LNSlOcDhWwZLOizGuLHpgt0Q4zwoPqrTar44fR
 gfkCYcvayjPflC43CWrskcriZdkKJt4t+FSYPOR775O4yzSW9uVga4/neivwq7dH
 10H+N9zH6Lsp7BOKvcHj5IzVcwzyEmX5pAvXqGAd/Zjx3ixLL7vfrBO8/TRti4DR
 /BRvUhiu9p5B1oJ/2t/JTmW+N4aNfWWbaFg5sUwTEuQTFXIGqbmbgK7TT+nGFtBF
 JO3TdYbTNO4n4ueB1csgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711314516; x=
 1711400916; bh=IfP08NkGSU5kw3djwr6jz0i5FQEQ+nuYjW7asb0rxPA=; b=p
 sCJmSteQgyVdA2nkXKyySBt4gnMv3ILVFN3aKsj9eB8Y4cLhiAZBCiltZyw2fMe4
 qtCknPhMErUOpc765FxpUBL0/uLtNlrNUoWuMp9xtYj9QalQHfUgO1SrgYCn5OtQ
 MDDqxkpe3zrQJkA7u1OjljuB4w1JeY5FKoo018DQlnDhyr+j4UlO4bHT3+IHywjb
 ZAAgB/P+CpAD2pixvMJo3nj9IU/N34DGvVT1wRTayc76o2N0LRhCm2Yt19fAUOE2
 asOiOAOVKJJFnsmkWvyf/UipTVUEGdzmhL5gGnIt4BS5vSRQk3VqnRM1jae2bC3c
 Eh2vGZlHFNu2DAbWKnXcw==
X-ME-Sender: <xms:U5YAZm6vXRl1SMu21oDTGD-i3IXqiLkGuJrLpDWfOZDQi6H5Biz74A>
 <xme:U5YAZv6h3l12vpRcI7KWu7AFgND1xSUgb9M2sknZeTVvKvugAfSxe-Fsm6UK4pdun
 B6sUyZVliwabGcFjhk>
X-ME-Received: <xmr:U5YAZleF3Y7q86RFJxxYv-qcKX0_D9ZQdPSIjFLoy3Tl74gHovTdAUUPG2-7>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtjedgudeglecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduucdludehmdenucfjughrpe
 fhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghr
 shhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtf
 frrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteeigeeugfekhffhgeejudeu
 teehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:U5YAZjJcNX2f-FlyjkuEcm1QdzqUo738g7MZLdRAWVncbCmb6YOMOA>
 <xmx:U5YAZqLx6NZZorJdstS0RzfNzmQtmIH_sETBSydMLN7yeP2bNDqBpw>
 <xmx:U5YAZkwKhYjUbt7QkBEnsTZs70_YxMrhXwkHkaAKFqZWp8LKaoEI9g>
 <xmx:U5YAZuI7k4B3JmQ9DGLneph04VduaJCRg4lVVCuaYu36Mv0SmBBZpQ>
 <xmx:VJYAZlblMDL0eBqxiVNmS3XqBPd6ozMAO3sjusIrgK29HoNEo7u0VA>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 17:08:35 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Sun, 24 Mar 2024 17:07:58 -0400
Message-ID: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add support for new input events on Lenovo laptops that need
 exporting to user space. Lenovo trackpoints are adding the ability to generate
 a doubletap event. Add a new keycode to allow this to be used by userspace.
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1roVI1-0002No-6i
Subject: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap and
 system debug info keycodes
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
Cc: ibm-acpi-devel@lists.sourceforge.net, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 vsankar@lenovo.com, hdegoede@redhat.com, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Add support for new input events on Lenovo laptops that need exporting to
user space.

Lenovo trackpoints are adding the ability to generate a doubletap event.
Add a new keycode to allow this to be used by userspace.

Lenovo support is using FN+N with Windows to collect needed details for
support cases. Add a keycode so that we'll be able to provide similar
support on Linux.

Suggested-by: Peter Hutterer <peter.hutterer@redhat.com>

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>
---
 include/uapi/linux/input-event-codes.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
index 03edf2ccdf6c..bd3baca95749 100644
--- a/include/uapi/linux/input-event-codes.h
+++ b/include/uapi/linux/input-event-codes.h
@@ -686,6 +686,8 @@
 #define KEY_SIDEVU_SONAR               0x287
 #define KEY_NAV_INFO                   0x288
 #define KEY_BRIGHTNESS_MENU            0x289
+#define KEY_DOUBLECLICK                0x28a
+#define KEY_SYS_DEBUG_INFO             0x28b
 
 /*
  * Some keyboards have keys which do not have a defined meaning, these keys
-- 
2.44.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
