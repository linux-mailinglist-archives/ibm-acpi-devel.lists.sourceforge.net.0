Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D5C2F8597
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 15 Jan 2021 20:36:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1l0UtR-0007m5-7U; Fri, 15 Jan 2021 19:36:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1l0UtP-0007lw-D4
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 Jan 2021 19:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h77nPCYht3txjg+nUmTjHkq/nfmP49yYK/WpXV7YqO8=; b=kYWqEYDvnpPoLT/0CfaFqMAUuG
 9UbEN8EiDBbZqs5gZVjg1ZHtLGeonYge4tv2JniHGGXP/Yy71032WS9RZpWFn9Z81eyULSZucQbrK
 e3WvyIlhm4o4LUZFUv9ptL1cgjkEuqNaXZJSUNeqhy5U+/8ZRMZWEndWKfIV0d/E0+Eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h77nPCYht3txjg+nUmTjHkq/nfmP49yYK/WpXV7YqO8=; b=GE5V1XtCghOEKvUs60W+EYXYhG
 9FoMx52bYgnYebd6BjJphaLxiZurvp1sj90w29QCstuw2QEfVgE7VmXbimm533BWaZsuld/rdmNcw
 lg49rTDETceuRDJlR/N5vqnaSTq3HJICtPu1KmJ6ZtQzeck9YoMjcXx5QkvEGWlWg8SA=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0UtH-00GWWN-Cu
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 Jan 2021 19:36:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 69AB95C0140;
 Fri, 15 Jan 2021 14:27:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 15 Jan 2021 14:27:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=h77nPCYht3txjg+nUmTjHkq/nfm
 P49yYK/WpXV7YqO8=; b=ipNtdEZJLlyTUIcPGINdeOubDZitwr/oEYae+hx8IyZ
 Vu5sy2yHBVUQ4bFJX8gjWsxGWPLpDWpaS3bWuYAp537z4aaaOIuf0A6gIcTJQJuS
 1nSLGETg04LufNmpw9BUwpZkC++v9HYNMvDFwAYFRNjnXFaTfhwLA+NjU/6tibRO
 4stfUk/K8TvDDepxYw9jGWdxFZYCQZTQSkUjkCbeFPS/O3v2Ia4xTE04VLG3oSp4
 JT52rOkXVyUH0jqcy5WgLFVAnm0N8vTMeCW7FGv1DQT1okLQ4GjSeH3dDZYHcWIW
 tznjBtX7e9TFbLYZrJFUzpzIUZBXyc5s4Dskpgn2+xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=h77nPC
 Yht3txjg+nUmTjHkq/nfmP49yYK/WpXV7YqO8=; b=elEiK2KcarRXZU5NvqbqaZ
 zzDo4odT8xcw4477cHOIdQJvaFO7yNVFVcvKP6KTOS1T6stWhgaboRb6l/+/UmXd
 9nm1ZFrQniCXZYW2+oZOkCYd5beuFYvVoDsrx7fk0HZAXWyO5flaHatzEFB0YJhw
 ezUVq62YXXsqYt1mD8fMqJKMW5IW9pz/JXcvIlsETr512yox3YXl0bJR5vJZoV2Z
 DiLNInfyBYOxtptnFrVoTDFS5ARzRCH70Ya4l6j3/2ztuVCLFPt+TDitOuykINxi
 Jg/eWVER27Qgot2FQNR4SxluWd+VOrt59Rn+MVYXIXm+ecmEh8B8qWqC7lV1aHvw
 ==
X-ME-Sender: <xms:mewBYGJ8y7Us_bMd2ObOf6EoiqVTxmd1g-HPIJqnynnZEF0Sq-1Tsg>
 <xme:mewBYOIdsicWpF0E8yuHlvdahcltBnulExjO2SiE9Ust9fLDDDetz5ZhCfQeNppVN
 WpQGmXyW6VjRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddvgddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
 dttddtredvnecuhfhrohhmpefjvghnrhhiqhhuvgcuuggvucfoohhrrggvshcujfholhhs
 tghhuhhhuceohhhmhheshhhmhhdrvghnghdrsghrqeenucggtffrrghtthgvrhhnpeevud
 etjeegiedufeeugfeiheeljeekfeduhfejfeegkeehkedvvdehheelgeevieenucfkphep
 udejjedrudelgedrjedrfedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhephhhmhheshhhmhhdrvghnghdrsghr
X-ME-Proxy: <xmx:mewBYGsdaG3_XdRs3HlzBQfrwu8sZzQqdBQ7HXZIL_-WCcc55AG3pw>
 <xmx:mewBYLYUSk1K6XU7flDp2tTvcIXtRvI6kGdzpa67R6rsdw01rQBySw>
 <xmx:mewBYNYZMp8pqWXkzrJTMpjeo2V2-n11uwAnRaDQFq0YG5zvqTiw_w>
 <xmx:muwBYBHkM0HFzcxPMSg3ZeZMAIsu1N53dKtnlrBgQ5vvrY3snc2wpg>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7DE8D1080057;
 Fri, 15 Jan 2021 14:27:21 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 8E30F3403215;
 Fri, 15 Jan 2021 16:27:19 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id 5Dz2lDureRDU; Fri, 15 Jan 2021 16:27:19 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id 0E0113403214; Fri, 15 Jan 2021 16:27:18 -0300 (-03)
Date: Fri, 15 Jan 2021 16:27:18 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Joe Perches <joe@perches.com>
Message-ID: <20210115192718.GB10895@khazad-dum.debian.net>
References: <1609914976-28113-1-git-send-email-abaci-bugfix@linux.alibaba.com>
 <2d5f6ffcf47ec4675cde21ff52fc70a9dd13b023.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d5f6ffcf47ec4675cde21ff52fc70a9dd13b023.camel@perches.com>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0UtH-00GWWN-Cu
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: fix: use scnprintf
 instead of snprintf.
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
Cc: mgross@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net,
 ibm-acpi@hmh.eng.br, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com,
 YANG LI <abaci-bugfix@linux.alibaba.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, 06 Jan 2021, Joe Perches wrote:
> On Wed, 2021-01-06 at 14:36 +0800, YANG LI wrote:
> > The snprintf() function returns the number of characters which would
> > have been printed if there were enough space, but the scnprintf()
> > returns the number of characters which were actually printed. If the
> > buffer is not large enough, then using snprintf() would result in a
> > read overflow and an information leak. This error was found with the
> > help of coccicheck.
> 
> In all cases, the buffer _is_ large enough.

Thank you for double-checking!

> _show function lengths are OK for all the uses with PAGE_SIZE.
> And it's probably better to use sysfs_emit for all the _show functions

Indeed.

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
