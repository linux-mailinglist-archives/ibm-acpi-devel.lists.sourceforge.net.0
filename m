Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 859225B20C
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 30 Jun 2019 23:21:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hhhFc-00021Y-03; Sun, 30 Jun 2019 21:20:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1hhhFZ-000217-KZ
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 30 Jun 2019 21:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LXZeXvMT6ke8ePqQPxOy1AwiEAIvsNDpCULD1Y9PdJA=; b=RPkJEtyw6SRdajcBJIbz1EP9xi
 T3NDWB5LPnOUfd3KZkh78lwKT6rEZj+fNAY00BDQ8F9Zpy9hU+qXbRe0QIqWph/DqeQIkf0Vi5oU2
 qne07wSK8r76aJ+wzHQ9pKR31Hr9OzBZdD++pO9dBiuFn1XCSVu9RjQ3JeBs3YzLNZBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LXZeXvMT6ke8ePqQPxOy1AwiEAIvsNDpCULD1Y9PdJA=; b=BAw5lddLFVG25QWImS8fYPaDSw
 hbUCPE8jdy1c7SEWehxJKmagykUwoGPJV+RncklK9GUKew2siwXsToQR0rzxQD9HXIc/IDf2B5LjG
 FygpKbxQPz8BdAfGrGH3OIZeq7TUAULIZyGLFYY8DkPFnbwlylnNsuX2V1AWgF7yt6Ek=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hhhFb-002OwU-0a
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 30 Jun 2019 21:20:45 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 928AC395;
 Sun, 30 Jun 2019 17:20:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 30 Jun 2019 17:20:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=LXZeXvMT6ke8ePqQPxOy1AwiEAI
 vsNDpCULD1Y9PdJA=; b=PRwgTUmm5Xvmt+biuhOmPfgo0eraaKEI3JnhA2dM3n0
 W5feF3L/UUhJ98XNhk5V0GZXr6ZB5qP5r13hknr9I+60D5uWZ8f18nELII3jwFhK
 2+3Wd2FlVyjmeAPoJUziWxxopkbVDencp1M+vDGrUfqv07COm/4kDo1rIMcwVwFK
 gGGt17ery0S7TgJewb9VbsKPT8XAfESy59ITxNn8v8YxyeoUB0zmO+ysXvaE7Da5
 PdatpZmgtYeXxV9mpXdqllb/z2VT2VAUadxdadTOxWKDMq0Z1+eis3IDsHR538eg
 JFGt8onhro/trp4e3cHxdenL8/FsI2zdXyBSuCodVdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=LXZeXv
 MT6ke8ePqQPxOy1AwiEAIvsNDpCULD1Y9PdJA=; b=FDjxb1zPMGhyak1RxEOaNh
 PPpNX87BfGcKYgJAsSwrVdbLqOXsYaEEimX5MA8aVxizGa0p/DWxyGKMKJH/ngyx
 h0GJDUSkZmlXsBrcGyCIntLreqkYBHqz892N7xFMvT2n8m/fRZt/69uvo1CKPEEG
 hA81yXdW7gGiuOLEQH/y72fLWqFKXYoE1DUqK5k6CNOxfT6MzBBOYPpKDv85+r7W
 EV2Fc9QWM2T0UMFCLv+JrO1XYJpsHU7tMgVqlKJ69Yh1g2KtFPg58BUdhx8a3Gjc
 zia02yZ1ZSTPZ5dhXXbq/NqWQoAd13i7TkwmqwZqg4sJErLyfkLQN+n9xJTNQOLA
 ==
X-ME-Sender: <xms:oScZXfr-0JP39VDLu8aAGlTEqCR2XPZPDMYcz_QspaDctkqOs3vCaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrvdeggdduieduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
 dttddtredvnecuhfhrohhmpefjvghnrhhiqhhuvgcuuggvucfoohhrrggvshcujfholhhs
 tghhuhhhuceohhhmhheshhhmhhdrvghnghdrsghrqeenucfkphepvddtuddrheefrddule
 egrddugeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpehhmhhhsehhmhhhrdgvnhhgrdgs
 rhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:oScZXflNeQzkvP1RRJndlspq2kZJ6RpB4Y1q8T1m4Ukzc_m0pOgUJg>
 <xmx:oScZXZWIrYCOmGPuwGaHdHRb6Psxq93ujlDWLvuAZuxaRd8wBtmZDg>
 <xmx:oScZXToQ32onpSXht9UoDy6ZDzjV7tkSePG0seA4PGCdXxpoD4tEbA>
 <xmx:oicZXWxU-H13orSrvCKVyk5QhQaZEif66mwYQJwDKkeQO8WD8Knpvg>
Received: from khazad-dum.debian.net (unknown [201.53.194.148])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4310D8005A;
 Sun, 30 Jun 2019 17:20:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 64EB3340162A;
 Sun, 30 Jun 2019 18:20:30 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id E0JmqjY8RCFj; Sun, 30 Jun 2019 18:20:29 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id 28EAD3401629; Sun, 30 Jun 2019 18:20:29 -0300 (-03)
Date: Sun, 30 Jun 2019 18:20:29 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Message-ID: <20190630212028.pwzdlvo6xdxkwbut@khazad-dum.debian.net>
References: <95e3df5e-a19a-1d3b-8d29-35ce645698b2@bio.ifi.lmu.de>
 <20190629214502.w4yeyfp2qpov4mtv@khazad-dum.debian.net>
 <9a5f5954-60ae-8dfa-5b3a-0b3fac2590c6@bio.ifi.lmu.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a5f5954-60ae-8dfa-5b3a-0b3fac2590c6@bio.ifi.lmu.de>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hhhFb-002OwU-0a
Subject: Re: [ibm-acpi-devel] lde disk-activity trigger on Thinkpad T570/580
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
Cc: ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, 30 Jun 2019, Frank Steiner wrote:
> > with the disk-activity trigger not being connected to NVME, and there is
> > nothing thinkpad-acpi can do about it...
> 
> Ok! I was just wondering because NVME disks in our PCs do work with
> disk-activity. Is this connection you mention a hardware problem?
> Or could it be worth to ask for a possible fix on the lkml?

I'd guess it is a kernel-level difference, yes.  Maybe some NVME drivers
work with the triggers while others don't.  I don't know much about how
NVME is currently implemented, myself.

Please do ask in LKML, preferably ask the responsible parties for the
disk-activity trigger or the people responsible for the exact NVME
driver you are using, they're more likely to know.

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
