Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C818D885D
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Jun 2024 20:02:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sEBzp-0003jc-N6;
	Mon, 03 Jun 2024 18:01:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1sEBzm-0003jS-PY
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 18:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mWEDQN4gKLb7xj9APq0IctXvuDK1fgcwSWagAJ581yY=; b=Ue0Q6KBAKeBSPFjr2YRrF5rcET
 22G0ZvHpJcl9m2NtgHK4gvGEf47Xx/lVQoUv0UiRVGzCyBGbAyBOcNISE1680qNijjnxz8zFXFIGs
 l1PCz6b9LBqq3CuwirTcSQnsWiJQo1olIsTZ6MAaRC0nRVn+EXbEBOMYxyhnMDWJemiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mWEDQN4gKLb7xj9APq0IctXvuDK1fgcwSWagAJ581yY=; b=EWvReuQCNJ2ZZB5z6MSAAcKXvV
 6DNRkj0zEKe+RF8tAfSZLYuwpz25m9aX1smHKvCVDqScbk9vMhnhcEVuXo2hSs414VOEtW8oqPu0C
 AAa1SFmvDlCqgWH2zHK54fFagah1KtsNILsG9hMhK48FuU+2MTG/lf7FIDSeHBUexRus=;
Received: from wfout1-smtp.messagingengine.com ([64.147.123.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sEBzm-0001sn-9X for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 18:01:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.west.internal (Postfix) with ESMTP id 300521C0015C
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon,  3 Jun 2024 13:44:35 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 03 Jun 2024 13:44:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm2; t=1717436674; x=1717523074; bh=mWEDQN4gKL
 b7xj9APq0IctXvuDK1fgcwSWagAJ581yY=; b=SSFsG7fHUlQ2rTDTIUWghNDqle
 NIvhxTAAHDN9HeTYEcwX42TYSqtpG2bA3zBvYcekObEWlGFhb7tjY65SgtnihvC/
 XXr5vRvlHxYKHSxy9lHUWZTFmsy6mORmBP1/ORGDQQBN2wFwuBI5VdA9EloI8YO0
 3pfEK71GXXO8ii1yo+di1gqfArG4S4qKn239rQJm5CTjV5VdgQhGSJnljVK9tzGH
 yahV2DOSEXK14qy+ZyUiSnhWLiltbzLUrO2QKOlLk86vk/BNZa6oUDCiOoIuCiMH
 Vut4KSeib/4Ylk+UvDQJf00xvEZrV6soV3v7Bt/ud04Yiey3k8A18KdEUjIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1717436674; x=1717523074; bh=mWEDQN4gKLb7xj9APq0IctXvuDK1
 fgcwSWagAJ581yY=; b=KG1K4mjytNx4cW00dLhxZVQ8I8WHsNOPa28oCG3ZRmok
 2ruj9k83oOMXTnAJcpE3Q+aAmjcM+NBqmQVCoNImmz4UIaVupZkfPgTXEGhi88PV
 gChBKU++B18d+UWAfr6otzkSXNz3pcK5epf4bDuGtEoP0X7nccyBtVr3oV8+4x2J
 kcVGu3lq6N7h2Ruv0OHRLEXjsciHaSG7/PHd5AM73djL095EdxIyACP5smOJG63A
 CDlUek4sfPfkL/APBuBs0zYFN8bJnpwkdAWVhKAi/Cv4Xr4mmTp7D9CitlvE7fE5
 m9h2gdo/hoziOHEYxZPLXGKkc2cg3MvlkL0lmhcP3Q==
X-ME-Sender: <xms:AgFeZlbeqhgNbncFIL_H8sqtYaiICMZZL7i4PCiNP9tZGr66nyYwVA>
 <xme:AgFeZsYKwNc9apVYBiEuuNMTaZYJVrhuKb9kC6ruICh54KzBaZr035Lz_1cnxAnZa
 H4QnTE7QZUXKdHUhbk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelvddgudduiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesth
 dtredtreertdenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhs
 ohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhepfeekge
 evudefhedvlefgtdekudefteeufeejvdduledtfefhgfdtgedvvdegffehnecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqd
 hlvghnohhvohesshhquhgvsggsrdgtrg
X-ME-Proxy: <xmx:AgFeZn_SWgBjlLy0Obbxx8RvB1y86mBEGaSOXXwgD7QxjLM2WviY1Q>
 <xmx:AgFeZjomwTNsrJ157Dy_Y7d2JXTvdCAb6P8IVO9knZbKgH2XX84FvA>
 <xmx:AgFeZgonUVeplFIbHfRFhzTYfopaXxG3U2_8slnm1hrfZ-E9pcAcaw>
 <xmx:AgFeZpQ3v0Dcl4Qii9UminLIfmALtneXSg7SD0LWUKcQTvIrmKhWsQ>
 <xmx:AgFeZnQgGuonq_9uNdxEX4dR5ZPsh8SExbm7-HQqp2JJaX-FfVuUwJFR>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 852B0C60099; Mon,  3 Jun 2024 13:44:34 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-491-g033e30d24-fm-20240520.001-g033e30d2
MIME-Version: 1.0
Message-Id: <f7db748d-eddc-4c63-9221-7a9dbd4e0f94@app.fastmail.com>
In-Reply-To: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
References: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
Date: Mon, 03 Jun 2024 13:44:14 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Pellaeon, On Mon, Jun 3, 2024, at 7:46 AM, Pellaeon Lin
 wrote: > Hi, > > I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But by
 pressing the > combination key Fn+D it does not toggle the PrivacyGuard,
 the Pr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.144 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.144 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sEBzm-0001sn-9X
Subject: Re: [ibm-acpi-devel] PrivacyGuard doesn't work even by sending ACPI
 commands directly
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Pellaeon,

On Mon, Jun 3, 2024, at 7:46 AM, Pellaeon Lin wrote:
> Hi,
>
> I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But by pressing the
> combination key Fn+D it does not toggle the PrivacyGuard, the PrivacyGuard
> stays on. I've tested:
>
> - Fn+D does toggle PrivacyGuard when I'm in the BIOS
> - Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu 23.10, Ubuntu
> 24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was tested using
> LiveUSB)
>
> In all of the Linux cases, I can confirm that by pressing Fn+D, the status
> value of /proc/acpi/ibm/lcdshadow actually changes.
>
> I've always thought this was a Ubuntu-specific issue, until I tested Fedora.
>
> I tested this further by installing the acpi-call-dkms package on Ubuntu
> and issues the following call:
>
> echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x1' | sudo tee /proc/acpi/call
>
> It returned 0 (which should mean success), but PrivacyGuard is still ON.
> Then I tried to call it with 0x0:
>
> echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x0' | sudo tee /proc/acpi/call
>
> Also getting 0 in return. PrivacyGuard is still ON.
>
> Based on my limited understanding of ACPI and the kernel, at this point it
> might be a firmware issue? (fwupdmgr shows that there is no available
> updates) But based on my reading and understanding of thinkpad_acpi.c, the
> particular ACPI call that I issued is also how the Linux driver currently
> operates the PrivacyGuard feature, which means the driver might also be
> affected by this issue. So I'm hoping someone could help me debug this
> further, or point out anything that I'm not understanding correctly.
>
I've forwarded this to the team to check out (I don't have an X13 G2 AMD on hand myself).
My understanding is that the kernel wasn't involved for the privacy FN+D feature - the BIOS handled it (and sent an ACPI notification so you could track the status). At least on the platforms I've tested this on - it just worked.

I'll see what they reply.
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
