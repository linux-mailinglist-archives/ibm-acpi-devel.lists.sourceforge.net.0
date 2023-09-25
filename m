Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 350127AD8BD
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 25 Sep 2023 15:16:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qklRV-0003v3-Os;
	Mon, 25 Sep 2023 13:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1qklRT-0003uu-OV
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y1AEv3cc3cMi4BLcmac96MLhAomJwW8QvnSJb6BHLcI=; b=Dm3AFZQ5AC3yNzO53ZxKKmvsHO
 o701kga9xRrOVbUxGOHGYhd3BLQgiWPWYujxSaJcHXk6HkZmv/NgOzZ5eFT+bxVsufhw65NMo3u8u
 OgwYot2/ao5QqO+gUxXFhSgXIQ5S7DxSmQC21z9gVd4nYBEriA5NOzxk+N8JaXsCjX/g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y1AEv3cc3cMi4BLcmac96MLhAomJwW8QvnSJb6BHLcI=; b=dQr+bNVaMgusAeDwHpIFIyOPCR
 ODBxwMkGIFoVvk5GBpGuZeohJxd4m2FV6atC0LKyB6FoowzQadcmReNxfH14FFN5Y8QRf80rKh9gY
 QcZ9lGZS/x6JGObQfmQ5B33ANK3B/lIuIAtyNB9qERlBdSXmcv3J8lLERG5ZA0hobzv0=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qklRN-0002G0-BL for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:16:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 5FE005C270B;
 Mon, 25 Sep 2023 08:58:26 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute5.internal (MEProxy); Mon, 25 Sep 2023 08:58:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1695646706; x=1695733106; bh=y1
 AEv3cc3cMi4BLcmac96MLhAomJwW8QvnSJb6BHLcI=; b=YxUpn7F+SmUNRBTjG+
 oiViwCwDFakxI2XXkyJbyvIXfEYIrnZeUUIaSeqLw9k+hOJfkhP67urzx9CFSy+g
 urHtOtujHLDKO/aWzz8AV20OGMJ+10/ehRNqYFoMeAzKMFRijNH9XkvGh4EEpeUr
 WezKo6xoVPL1EUWVYM1AEQNZdYoDpgPi+5omhEJ3PfTenAweXotZ09P7yg9n9WEP
 99wuetXM4RhrX6TqQN8QeuQT7tnifYI4qSTPiubFf21aDn6029X4jA/PpTCc2frW
 iXFzut1WuaUf/iQAFbk2lTVotsS4K/pMRfBKS6+dy7vE6UESYUmVlwmCVsaIMDD0
 Uj6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695646706; x=1695733106; bh=y1AEv3cc3cMi4
 BLcmac96MLhAomJwW8QvnSJb6BHLcI=; b=SchpavSlrqIowzfBBdc5+HLXjlXQQ
 4dr1FVlLqUv64h6Bkg9sMYWjxmTEGJVAGylSEvlnGWVZ/H7RWTdrxSR7POrWY6Vr
 mCbcfka733KdZw/3CTfLKP2z+JKQOkyIsKcIKmjN/Gh6njxPyKP0+Bl1LZoHGqkn
 0SfXtyIvI3QU8NxwbdO2EuzaihnQrfI1Bd5vb5wM3Yy1iS8USkzbohhvzdMh3Q7O
 2iHsbEl4UwWRsEwVPhI8PNUKnr5iM5ZpJdIG+X3FD0Gzg0vyS3j3Ddn1ploHntH3
 D+7SWj+w3XhxaRFH9tUNRoCV5jdz661EfHlK/SAa/PVsZ0n2rDcTxN5yw==
X-ME-Sender: <xms:8oMRZe6fONCSJJKfe3nIw8LOr-xgU8TGc18H91JBwR_GofC94nL3HQ>
 <xme:8oMRZX4IKqOFV0oEgKKc42TCS7U8uMKO-zgBELUEFjY7VahmkotjYg6qwZWcFNwiC
 PoyTtBK4xFARzp9ktM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudelgedgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:8oMRZdcpD0xDPpQ4eRdKahNmD-VBV6oLDrsmo2WEVgXafFP4zf4X5w>
 <xmx:8oMRZbJmI0sQurK2ydIaVma-u8q93g1qjTB0G8cq0M1GmexG6Mic_Q>
 <xmx:8oMRZSJqshB2blJf-vX7uSGDHolgxklCwYN8EOvMkTCXcNJou-Zdxg>
 <xmx:8oMRZa_c5bKLGCmvIkPRqGBbsZWI1zhjKJrPvm9Uq-UeG_JSWHgk1A>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 31451C6008B; Mon, 25 Sep 2023 08:58:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-761-gece9e40c48-fm-20230913.001-gece9e40c
MIME-Version: 1.0
Message-Id: <4cca22df-c809-493a-a207-9b6095adbbc4@app.fastmail.com>
In-Reply-To: <74ad10fa-f0f6-f80f-7db3-fb01aae6f2d5@redhat.com>
References: <047d3c51-0a9e-4c3e-beef-625a7aa4f3c3@kernel.org>
 <505264f5-cbbb-4ffe-a3e4-93d2397e80da@kernel.org>
 <beeab87b-820a-475a-b0c6-99b1b8e491ea@kernel.org>
 <207922c7-7a56-499b-bbfd-9e8d6a0a06df@kernel.org>
 <74ad10fa-f0f6-f80f-7db3-fb01aae6f2d5@redhat.com>
Date: Mon, 25 Sep 2023 08:58:05 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 "Jiri Slaby" <jirislaby@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 "Len Brown" <lenb@kernel.org>, "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans On Mon, Sep 25, 2023, at 4:57 AM,
 Hans de Goede wrote:
 <snip> > > Mark, can you please take a look at this (it is a thinkpad_acpi
 dytc issue)? Ack <snip> > Regards, > > Hans > > p.s. > > Mark, maybe should
 add you to the MAINTAINERS section for thinkpad_acpi ? Happy to do so if
 that makes sense and is OK with everyone. I assume I just push a pat [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qklRN-0002G0-BL
Subject: Re: [ibm-acpi-devel] WARNING at drivers/acpi/platform_profile.c:74
 in platform_profile_show()
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Hans

On Mon, Sep 25, 2023, at 4:57 AM, Hans de Goede wrote:
<snip>
>
> Mark, can you please take a look at this (it is a thinkpad_acpi dytc issue)?
Ack

<snip>
> Regards,
>
> Hans
>
> p.s.
>
> Mark, maybe should add you to the MAINTAINERS section for thinkpad_acpi ?
Happy to do so if that makes sense and is OK with everyone. 
I assume I just push a patch proposing that change, or is there some nomination process?


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
