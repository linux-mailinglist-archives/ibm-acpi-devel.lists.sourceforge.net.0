Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E14AE21D1
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 20 Jun 2025 20:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BduD5NcQB/zST8lW6hsRohuTPjevx095Kno9fPa+AGI=; b=ZdhT+LdjelmbMoYe3L5WIkcn/T
	DI3lwp8Tc/CFW6Z9jmeN6IK7LFn5b3qzoVjMEvc7iyyqscDdr4eYpl3F19xDt0b9kPc/CbPSBE0Ad
	pIbH4rYyxdkFOaRWRccWO9EUQ+J4l7a6xu2sF3B0zRlBijMjn5zcMerep7EC/oXlXrWE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uSgD9-0004mg-By;
	Fri, 20 Jun 2025 18:11:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uSgD7-0004mZ-UU
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Ykv1WdH4LN+2KFW44tucEmnHyrkAkxKCk4JhHN/PwA=; b=h+5H4fuiwhz9GflhkUufBnae9F
 XwpFcmJun5ie250grYaSqWBHCGQvyDbLCsg6DdUyiZmS4tK/Zt/szYx0szO4LUIE762EN1nfNO/Zv
 vDtFkH16W1ndvkm5ReRTVvGk4G5SCNBY+7PjYleqg1Hxt7K5Muz/18A7WfPmJ8yfnmYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Ykv1WdH4LN+2KFW44tucEmnHyrkAkxKCk4JhHN/PwA=; b=WpR1j+uzSb/R3Fz+5tdNQlTCl2
 WtfJG31ORSe7871uFvoCvmDFm0gsmpcVWID5qStvKqV5W407TuANNuPB8AcEyOBzFUh0+aqhxmXYU
 YvSGa5nssmggBojiZhWRGfNm8OD0RWCocMwpLf7RYPuufZ5VnD6A/J1wAgYAwEj+kCg8=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSgD6-0005vr-9a for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:11:33 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 8CF3E1380452;
 Fri, 20 Jun 2025 14:11:26 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Fri, 20 Jun 2025 14:11:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1750443086; x=
 1750529486; bh=7Ykv1WdH4LN+2KFW44tucEmnHyrkAkxKCk4JhHN/PwA=; b=g
 ljf9ICtn+X+z8zxwNDRDewHfl8ECDDVBVsq43S2FcVliq8K4Z50LTYM5DuJF/q9Q
 Z5kvmjaHYd7QgWVQwev9X3blbxmtYIKSgb5sgLpQ4ccDgNHUvug+DTgpyDrrF3iP
 fVLjdEtOOED0Q8zEGx46hveht3eZK2M4DzvfG9ykLVMSJP0yUrJSB5s7hqaqzIay
 JquovmmNJwwJocdCE+p3ezpsm+5yXeMIi9VY1qOMtsXNTxqX+YneGfJ2AB3KtUYL
 RVg1vTT+5FveGGvV3Y7Vxwjwoab6TnqO/9mUPcntxo0HnAjSP7C24bkaY4cQIw80
 /3eM8IhFL4kEyGWzpn9IA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1750443086; x=1750529486; bh=7
 Ykv1WdH4LN+2KFW44tucEmnHyrkAkxKCk4JhHN/PwA=; b=pjqcciv+lBW2Htzrp
 PhK6WOlkPxS3Y+aCRwV3FE+A0anC5kWthJnQEexiAFCAnnHTrR8mcb8e7KkdaPLZ
 oG0Ucun8Gs+xF6916w7OnGuVfXXVkHsNHFHzufCVKF6u5DtAsA0P7lOngAF9kYj+
 /+KP6pXAtZ1INbYqgvO/qbo+3mPkFTl+daBTveyswVhdOKtmN8kHHg1GS3rte3eD
 4htvSsWeXa1nqtPGw5tMDQrCG2r6FYs+uPr8K1X87Z8jRhYhCEBReT0+l8LlMao4
 NwAr8TvwODvDEV9CFy2SVxPFyBLoKdfQwTTH3mJStagmatbEcDX3egFNO1o5pqds
 Nh/aQ==
X-ME-Sender: <xms:TaRVaEsWzAmJI77s8IdbqvkK1mf4a1mchrx7sUTOFCvGKVkzBD284A>
 <xme:TaRVaBf8Bmdoknykbe-Pvp4aI9bOVGG5o3FO4SwzlcMDNkL3sWOGvaXEhRH_FdWsT
 bOItwbrTH6UL6WzBko>
X-ME-Received: <xmr:TaRVaPxXCnMQlFLIzZppO7It2ZuqggJrc6ASr-jyLiGMvX2F3XgOxmOYUkfXHW0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdeltdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegoufhush
 hpvggtthffohhmrghinhculdegledmnegoteeftdduqddtudculdduhedmnecujfgurhep
 hffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrrhhkucfrvggrrh
 hsohhnuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggft
 rfgrthhtvghrnhepjeeltedtgeeigeekffethfduheevtdfhveejheeukeejgfdvvdevve
 egteehieeunecuffhomhgrihhnpehsohhurhgtvghfohhrghgvrdhnvghtnecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqd
 hlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepkedpmhhouggvpehs
 mhhtphhouhhtpdhrtghpthhtohepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprhgtphhtthhopehh
 uggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtohepihhlphhordhjrghrvh
 hinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqdgrtghp
 ihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtth
 hopehplhgrthhfohhrmhdqughrihhvvghrqdigkeeisehvghgvrhdrkhgvrhhnvghlrdho
 rhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrd
 horhhgpdhrtghpthhtohepghgurghmjhgrnhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:TaRVaHNKpy9uwYt1mSbzQ3erixZ7_DCFs0f0U5QzJHJyHVR1hroftA>
 <xmx:TaRVaE_JZS8VdoR3drAANYThAk_Tme6AnZrt1hW6wsQhuadToUHMhg>
 <xmx:TaRVaPVM7jjGF_m3UvZpsvrnO4esCddvi8bKvAVqxWpfgVLeiKPlnA>
 <xmx:TaRVaNdzFDFMbWYvh26bsrpQPvMJ3NjvsYncgmFdtAg8-btiUA_pPw>
 <xmx:TqRVaCM1BHo8XsBPrgUl0i_IgRTYo3wVf2YFlu6KrMe1a3X93Yg_V4_e>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Jun 2025 14:11:24 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Fri, 20 Jun 2025 14:11:10 -0400
Message-ID: <20250620181119.2519546-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: 2025 Thinkpads F11 key launch the Intel Unison app on Windows,
 which does some sort of smart sharing between laptop and phone. Map this
 key event to KEY_LINK_PHONE as the closest thing we have. This prevents an
 error message being displayed on key press. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uSgD6-0005vr-9a
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: handle HKEY
 0x1402 event
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
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com,
 Damjan Georgievski <gdamjan@gmail.com>, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

2025 Thinkpads F11 key launch the Intel Unison app on Windows,
which does some sort of smart sharing between laptop and phone.

Map this key event to KEY_LINK_PHONE as the closest thing we have.
This prevents an error message being displayed on key press.

Reported-by: Damjan Georgievski<gdamjan@gmail.com>
Closes: https://sourceforge.net/p/ibm-acpi/mailman/message/59189556/
Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
 drivers/platform/x86/lenovo/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/lenovo/thinkpad_acpi.c b/drivers/platform/x86/lenovo/thinkpad_acpi.c
index e1c7bd06fa12..2155ec682b08 100644
--- a/drivers/platform/x86/lenovo/thinkpad_acpi.c
+++ b/drivers/platform/x86/lenovo/thinkpad_acpi.c
@@ -3295,6 +3295,7 @@ static const struct key_entry keymap_lenovo[] __initconst = {
 	 */
 	{ KE_KEY, 0x131d, { KEY_VENDOR } }, /* System debug info, similar to old ThinkPad key */
 	{ KE_KEY, 0x1320, { KEY_LINK_PHONE } },
+	{ KE_KEY, 0x1402, { KEY_LINK_PHONE } },
 	{ KE_KEY, TP_HKEY_EV_TRACK_DOUBLETAP /* 0x8036 */, { KEY_PROG4 } },
 	{ KE_END }
 };
-- 
2.43.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
