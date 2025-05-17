Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0648ABA7E2
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 17 May 2025 04:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9tCcWlRcNw/ErQi6WoPIyFziLkfDi99Je+JTX8Nffks=; b=b8mNxUQZFrGZCy3y/nJer04Tkg
	jqpfAL5HmLCRvkPbGGNHx9MkXhuE4gM/illJy7UjkoRvE7wPEMktDtSuWNt0SrFe4JoI7/NpcrWaT
	rGg2kkwhrKk3vKVuwkveVivaRSWbY2ce+dHzcLheAQaOG+Q1FR/wT1BCQDYYI7IzvZJc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uG7Nf-0004GJ-Qu;
	Sat, 17 May 2025 02:34:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uG7Nd-0004Fv-BM
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 17 May 2025 02:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W6kB3UyFZitt+7gd9LRi3/C0t0XNRVsvLqHtoc5yCoM=; b=hwi2ZpGMF3/A8vUDvMHIh4GGJ9
 IbgHI+d0ZTIkdnzmaSJ3FVv1T3UElNvP3K1Nj2KdQbZQU2yG5/qDTCDYW5yJ20JfP5bbxdkyBpZTx
 RQ5dXBRMdqOatPqlaQMkm9i3zjNNqUnCiCC0whIEDMknipdpqsI8SIBq1YPlKVOOSkn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W6kB3UyFZitt+7gd9LRi3/C0t0XNRVsvLqHtoc5yCoM=; b=VhDPf5yRXC6OQOQU+fHssjJEFN
 9nA81g+cvcvj+XFsncAuddF/SzzMkLUvwcF9gS8iX9jqE2kv7JHDZVyBrmvoMXvmNtxsZwI6Fj8/y
 k4meuO2CEX1Grk4MKs/hnm7MinCl5XsFqnBUnBZutYadimw2ckdRhIKVzfQ+LuDcLKoA=;
Received: from fout-a4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uG7Nb-0002aY-SO for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 17 May 2025 02:34:29 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 179CA13800E4;
 Fri, 16 May 2025 22:34:17 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 16 May 2025 22:34:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1747449257; x=
 1747535657; bh=W6kB3UyFZitt+7gd9LRi3/C0t0XNRVsvLqHtoc5yCoM=; b=S
 cGk6mwTIcsqbL8dFljbDkHU8mcumpG5FRNvv+yfXyTC4E0OpTD4JuC99ibcF70Gm
 U0wzu7qTdTeTMaYIVTdUrYlFxDWiO8rFsVk2KRwk9rB+5idaa0zNGA2muEVN5ofa
 vooWMbp7PfNvf5V1paiUtWGX8ZPQzxzvLLDZALfowdkFrz0EPK5q79nck8duFFHi
 LUpDhO94XGVVi/KQhAZN9sKvPrkzAmRLVQ4LBHr2LdiBuALjOoDWiOc6jRcrg6KE
 CkyKH6d4EyAJ6waAuCsKcEA2bFWO6ou8AzTf60PP2VkJxb8AVYyoqvrY/YtemEXG
 ooPk8Od8AptlEuGVs0xHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1747449257; x=1747535657; bh=W
 6kB3UyFZitt+7gd9LRi3/C0t0XNRVsvLqHtoc5yCoM=; b=XlQFNK5iYKfc4oCRd
 NkomZ0ebJO0MmSO/dFd3q41Zb6s46Ra2EnadbzkBTi6tBVuOPS9jdV/lumVcnsby
 dgf3z7Y4+a/EejKlNALAvcdyuigsSgCoGL6lmEI8xIArpGouoykpC5662m9oadpQ
 SZwxasnxFtkYTv5Q2ccQVWzYWMTefyR4Z5KayIkxDuEZ7Y99g35lceVnDj1kGvGO
 0FvvvHakOC1S1Skg2s+Z2geluqMFPBZjUP7OjAZIEI5AzATuGGJYTciI0JR+qmb7
 FvVmz+N2qehnnDnYI7cLfifhcCj4eCckD2jyUB3RgTEb51RTnJfObnic0UEcsDQl
 ARSag==
X-ME-Sender: <xms:qPUnaO4RZLue4vdpzjBnhkL2NADQLKQquoOlmsyf7v2-tohNLFYn9A>
 <xme:qPUnaH6SFeV6w91BZRLSnjrtk6Evc9uc2qCh59r_hnGDqbpzQcbQ_11Zi3yb4aat4
 H0Cyi7XI9-nyhAZqgA>
X-ME-Received: <xmr:qPUnaNfrVDNcBE2RKww7U7G2s1dU-i595nbrXpDhcjNPD7qKHlQi6Gus5OSJjgIG-ncc_k6WQyFTVbkrgxuo78ZWjnsSTRn9hgqfvVBg5nkWom7knw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdefudeggeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnegoteeftdduqddtudculdduhedmnecujfgurhephffvvefu
 fffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrrhhkucfrvggrrhhsohhnuc
 eomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthht
 vghrnhepvedtlefggefgjeettddvgfekhfeugfeutdekfeefudeuuddvieeutdeljedvhf
 dvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqh
 huvggssgdrtggrpdhnsggprhgtphhtthhopeejpdhmohguvgepshhmthhpohhuthdprhgt
 phhtthhopehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhrtghpth
 htohephhguvghgohgvuggvsehrvgguhhgrthdrtghomhdprhgtphhtthhopehilhhpohdr
 jhgrrhhvihhnvghnsehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihgsmh
 dqrggtphhiqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhr
 tghpthhtohepphhlrghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrdhkvghrnh
 gvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghr
 nhgvlhdrohhrghdprhgtphhtthhopeguvggsrghrsghoshesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:qPUnaLIAI0iwgH1HYjrlZhfkap3-yzt9t8_yPgURZ6eLsy7HznzYBg>
 <xmx:qPUnaCL84mXNEsZXdqfOEhBrSc37zBEi5BAMAl9df7LAngrb0d1B-g>
 <xmx:qPUnaMyCaryYdMh7T-vVNumLPdJMa9iC5PKOEZGH0pRAwRAjQGMXKA>
 <xmx:qPUnaGKKitmMJx2AD_Vtf-3Ubv3a32ET6W1rLUKCpKzIcdsTMMMt7A>
 <xmx:qfUnaM2qtyft4pB8ma2ZIA_1h33EGXrjy97PehYwwhPXKJjSN0Gg4TdZ>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 16 May 2025 22:34:16 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Fri, 16 May 2025 22:33:37 -0400
Message-ID: <20250517023348.2962591-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: If user modifies the battery charge threshold an ACPI event
 is generated. Confirmed with Lenovo FW team this is only generated on user
 event. As no action is needed, ignore the event and prevent spuri [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.147 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uG7Nb-0002aY-SO
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Ignore
 battery threshold change event notification
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
 ilpo.jarvinen@linux.intel.com, Derek Barbosa <debarbos@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

If user modifies the battery charge threshold an ACPI event is generated.
Confirmed with Lenovo FW team this is only generated on user event. As no
action is needed, ignore the event and prevent spurious kernel logs.

Reported-by: Derek Barbosa <debarbos@redhat.com>
Closes: https://lore.kernel.org/platform-driver-x86/7e9a1c47-5d9c-4978-af20-3949d53fb5dc@app.fastmail.com/T/#m5f5b9ae31d3fbf30d7d9a9d76c15fb3502dfd903
Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
 drivers/platform/x86/thinkpad_acpi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 92b21e49faf6..657625dd60a0 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -231,6 +231,7 @@ enum tpacpi_hkey_event_t {
 	/* Thermal events */
 	TP_HKEY_EV_ALARM_BAT_HOT	= 0x6011, /* battery too hot */
 	TP_HKEY_EV_ALARM_BAT_XHOT	= 0x6012, /* battery critically hot */
+	TP_HKEY_EV_ALARM_BAT_LIM_CHANGE	= 0x6013, /* battery charge limit changed*/
 	TP_HKEY_EV_ALARM_SENSOR_HOT	= 0x6021, /* sensor too hot */
 	TP_HKEY_EV_ALARM_SENSOR_XHOT	= 0x6022, /* sensor critically hot */
 	TP_HKEY_EV_THM_TABLE_CHANGED	= 0x6030, /* windows; thermal table changed */
@@ -3777,6 +3778,10 @@ static bool hotkey_notify_6xxx(const u32 hkey, bool *send_acpi_ev)
 		pr_alert("THERMAL EMERGENCY: battery is extremely hot!\n");
 		/* recommended action: immediate sleep/hibernate */
 		break;
+	case TP_HKEY_EV_ALARM_BAT_LIM_CHANGE:
+		pr_debug("Battery Info: battery charge threshold changed\n");
+		/* User changed charging threshold. No action needed */
+		return true;
 	case TP_HKEY_EV_ALARM_SENSOR_HOT:
 		pr_crit("THERMAL ALARM: a sensor reports something is too hot!\n");
 		/* recommended action: warn user through gui, that */
-- 
2.43.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
