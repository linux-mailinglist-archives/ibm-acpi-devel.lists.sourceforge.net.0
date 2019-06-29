Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 415B85AD8D
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 30 Jun 2019 00:01:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hhLP1-0005tq-Ne; Sat, 29 Jun 2019 22:00:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1hhLP0-0005tY-Au
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 29 Jun 2019 22:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AMRDM5bRhuEy42KMTjT1dWKT21OZevrZlVcL3XZlBaU=; b=SazHZgfiBdSsvC9qtJ7rvSG+3V
 +ggf4dTR/BSP084HMQbl8MXqCCyqPFy0PvGw1KrsVDLOzO4MZa26MycRj+Ch9ulHf2bsLBdh8JLLM
 CdJvUuMMm0/4M1nyEelcTajPx4hg2QnzOSKsSzzp/Mh38A4zY/t/2XBaiXimXeZiDCkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AMRDM5bRhuEy42KMTjT1dWKT21OZevrZlVcL3XZlBaU=; b=Js9ikFKbmyEKf2VEoDjf7XyppM
 /tNUN34NIx/46B0U5uXB1x2fGl6q1AQq3ue2ZeuVwVpjEudaRC5FD8KIg8kf5gQf+kD+qLwXyZZ31
 2DW7JVCXzEpePuc7EGaWWHOL/X8WFprG1mAkewicgN242dCZW3cw/ik4aLOusPl5WqoE=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hhLOz-001yVD-QF
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 29 Jun 2019 22:01:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 505BA3D9;
 Sat, 29 Jun 2019 17:45:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 29 Jun 2019 17:45:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=AMRDM5bRhuEy42KMTjT1dWKT21O
 ZevrZlVcL3XZlBaU=; b=hg+vHn1orRgTn2rsS/2Dg42P6DYW2huC3NTgN3nA+SO
 aliUjH7UfaeKRJsNwazCN1slu0J+C9WYTACcAr27v54ybZoniApTi/Zdo28+hQ2x
 hCF6P6QsK9R/+mX5LFF+NTxX3Ko/uZQUtFXeR644X5ni7ZWEEJpIsjbHJFYdVpJz
 aElwsQvvaPjjjMNn5LMmjz1D73lh7umbA5duUvOJZ8MOQgwv6C23EwWiXbcP2JmJ
 vKy+N+nSMtt9XfaN/qBnG5mWe6yK5xZXK+9ubmgSqnK8E29R8yHaFWxbfwYt8rdx
 B/2kTdegB8cLbYJ7UwYgsyCOPxh14v5mtoHp9EwJThQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=AMRDM5
 bRhuEy42KMTjT1dWKT21OZevrZlVcL3XZlBaU=; b=EWF7BPatzTOUBIL55AOSEq
 FkQz6iE8nui9MbpYulNgegFYs29qzaYadyV1EjTUPzb41uEvBNtNiyCK9bQtt+6z
 Ip0ahn0eLYecL+UUBkRJq6wXwXgwdFkaWJky8mxV5RF4BXKsk2pbK7EHL/o4sRxO
 ZrTL12UpfbYzfJdo1EzFIIE0K+nJR53gtizpsxwrOX3Jsly3TjjvSPYrQNbxd/GX
 ojFfJy6rFZySNPUzy4dY4VdBYTYCGCk6Wqr54MXQhQVx0cOo4RE33Lq6YqkjzdBi
 iiJzmtRVAkAnlPukO1I2PQSfPWrWqMlTA87DyMn6Ff+wfACgqYGSlb3ZsECjlFVQ
 ==
X-ME-Sender: <xms:4tsXXX-NOwiPnAkADHvD3oOs7J8QaN8x4GJX29chE17_04bdpFs-Hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrvdefucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttddttddtre
 dvnecuhfhrohhmpefjvghnrhhiqhhuvgcuuggvucfoohhrrggvshcujfholhhstghhuhhh
 uceohhhmhheshhhmhhdrvghnghdrsghrqeenucfkphepvddtuddrheefrdduleegrdduge
 eknecurfgrrhgrmhepmhgrihhlfhhrohhmpehhmhhhsehhmhhhrdgvnhhgrdgsrhenucev
 lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:4tsXXY9sbExqKsE0hyECxCC6aPJkLgHCV89kdnUW4UwYAlp7muxkmg>
 <xmx:4tsXXXoC0y3_dZ_axvxJtguhviuw-ViRqi8QbHWYJ-1XGKycQ4zn9Q>
 <xmx:4tsXXTLGUO2AXzwvij6C22KC2Zi0W3QGmN0yfcpX-zvGBWdtPBjyIg>
 <xmx:4tsXXQJuNeF4rQcvovSxgooa02ColOogCg_Dll66ptZ4SlG8NqGkbQ>
Received: from khazad-dum.debian.net (unknown [201.53.194.148])
 by mail.messagingengine.com (Postfix) with ESMTPA id A02C9380088;
 Sat, 29 Jun 2019 17:45:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id D036F3401639;
 Sat, 29 Jun 2019 18:45:03 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id a4xiQ3EKfF-6; Sat, 29 Jun 2019 18:45:02 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id 3CE313401629; Sat, 29 Jun 2019 18:45:02 -0300 (-03)
Date: Sat, 29 Jun 2019 18:45:02 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Message-ID: <20190629214502.w4yeyfp2qpov4mtv@khazad-dum.debian.net>
References: <95e3df5e-a19a-1d3b-8d29-35ce645698b2@bio.ifi.lmu.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95e3df5e-a19a-1d3b-8d29-35ce645698b2@bio.ifi.lmu.de>
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
X-Headers-End: 1hhLOz-001yVD-QF
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

On Thu, 27 Jun 2019, Frank Steiner wrote:
> This works fine on all our older thinkpad models with SATA hard disks
> works also on our PCs with SSD disks (SATA as well as NVME), but
> it fails on our newer thinkpads, i.e. T570 and T580 with NVME SSDs.
> 
> The LED just stays off all the time no matter what we do with the hard
> disk.

If any other trigger (e.g. heartbeat) works, that means the issue is
with the disk-activity trigger not being connected to NVME, and there is
nothing thinkpad-acpi can do about it...

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
