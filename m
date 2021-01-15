Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 204402F85B1
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 15 Jan 2021 20:47:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1l0V3O-0006qN-9d; Fri, 15 Jan 2021 19:46:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1l0V38-0006oe-Cn
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 Jan 2021 19:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gfEAVPUzFg5yJJW/gS7HJCsWwI0Jpxe3im3ZZ7fX7jM=; b=El2P5CE74Ag/VZallcQSf8Z0Fo
 CDLBZJUX9NX0NzfYZX9FsR1XLCrcjQ7A/xm/xY1CqsaDd4QfsUg6TJ6IktK1j2bZcqRodCCjdLxeh
 pOaOTb1gXr2Y+zphjuiYJHHOEfFmDvvYljyvzV5MzO60rYqczU5UXqjpdlJGvjNwUYfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gfEAVPUzFg5yJJW/gS7HJCsWwI0Jpxe3im3ZZ7fX7jM=; b=SNhVKAnMdZ8Q4gLff7gAo8D+ss
 DAMt0gTBE+VbaERXEwPaHMm5XGn9KwXjwKNfednAGKY41QiEmjnoxTX5qxVNp3VRDb+rKSBvKzfHR
 F73k8/WGV+zus6WOb36QPURG3vvKGKqQFYhLixhWMSXliUmD9mW6JwHUKz5jMnGex1/A=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0V2u-005Zmj-Lm
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 Jan 2021 19:46:22 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 7065C5C01D9;
 Fri, 15 Jan 2021 14:20:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Fri, 15 Jan 2021 14:20:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=gfEAVPUzFg5yJJW/gS7HJCsWwI0
 Jpxe3im3ZZ7fX7jM=; b=CoJgb8PKzW2C0/IZdGvWwQwDNlrNG4eOtbhmvp/bjvz
 FyqDniwvsYItCS4RZa60il0fjTwLoCQvqvHH9yd5H9siB1TOfKWuNLwJLXoQEIGY
 jsybw8L+ofClH4ToBm049+gsa289mYgznXleGD/lJomWEhSe+hBRk1mfQjx40Y5B
 VjVhvDZ/cHkSriwOzhgod9Ff4CcP00XkvbcM4FA3LFvgUPltUBFYs5D36RV9nv3r
 k4iWHpPi8cEyH4OItkYExL1s9pvpBTYfQPVPUREXoCt1Bbqqur7xdjKykzYc7rcJ
 FqohxIo1SMCLt4pRlybX7ObpV8qGZZ2ebQRnMFn0qsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=gfEAVP
 UzFg5yJJW/gS7HJCsWwI0Jpxe3im3ZZ7fX7jM=; b=Cr22si+bQKVsxjDl0kzGSr
 EtA9mib/QUyqZPA8xYduGTDykT+wYizd3izv0yhuop2g06m0aqfJ+spoho9Er9Li
 DHy7CLd+ODJMwJkd9r6neeJmdpU8fAfTAyXIVTx+Syo6OZ3D2TR25mIbn4Y0Mb/I
 TFTN7rrY8nnIbMzMPME57LHZwY25LZWlR9P+qZ523+vEUYRG7Fg2Bnm9yYkbmIBi
 flWZ2EDmZu0V6a/dRQhhDRYMOkj6uPQqkeQRlXtsLuGPre86tsOkk8Dy+cgXGKI8
 3s3IrtEMqYZLhccLw3HCNjPVA6jxUD1E4qI0fYkSMlZcTmmEIqkmWNF26b135KTQ
 ==
X-ME-Sender: <xms:E-sBYOw5lUikpKDk9xbdSaALyrsl8-frndnKxVWTulBdq2TMwBi9OA>
 <xme:E-sBYGEcVcQSOzBiVmMaBjqjyd_uLgIlmE_8GfE60JZofRZ7S-n9RzbSQreCJQZBU
 LDV5tgWUPzkkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddvgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdttd
 dttdervdenucfhrhhomhepjfgvnhhrihhquhgvucguvgcuofhorhgrvghsucfjohhlshgt
 hhhuhhcuoehhmhhhsehhmhhhrdgvnhhgrdgsrheqnecuggftrfgrthhtvghrnhepvedute
 ejgeeiudefuefgieehleejkeefudfhjeefgeekheekvddvheehleegveeinecukfhppedu
 jeejrdduleegrdejrdefvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehhmhhhsehhmhhhrdgvnhhgrdgsrh
X-ME-Proxy: <xmx:E-sBYLt0eR9bdBOkqeu6qHYglank8a2BEFu6eHxX6K3P99UNtoKV7w>
 <xmx:E-sBYODyqH6k8pbmnykpuL1x1sfJgNupBWeNOUAMCrvLuJ9vGk3Axw>
 <xmx:E-sBYOA_LyVZiUM8ofpsuv9XJCV1NkleKLBg48CT_wHoSQb8PqYaYQ>
 <xmx:FOsBYP8Fi7FsqkRMq7z24t2DgBzUsozd4whhv7D2nJVnZEbwvrifFw>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 85E7A108005C;
 Fri, 15 Jan 2021 14:20:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id C05303403214;
 Fri, 15 Jan 2021 16:20:49 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id qakJ42RXAmJO; Fri, 15 Jan 2021 16:20:45 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id C9EE7340017A; Fri, 15 Jan 2021 16:20:45 -0300 (-03)
Date: Fri, 15 Jan 2021 16:20:45 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: jeanniestevenson <jeanniestevenson@protonmail.com>
Message-ID: <20210115192045.GA10895@khazad-dum.debian.net>
References: <Pn_Xii4XYpQRFtgkf4PbNgieE89BAkHgLI1kWIq-zFudwh2A1DY5J_DJVHK06rMW_hGPHx_mPE33gd8mg9-8BxqJTaSC6hhPqAsfZlcNGH0=@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pn_Xii4XYpQRFtgkf4PbNgieE89BAkHgLI1kWIq-zFudwh2A1DY5J_DJVHK06rMW_hGPHx_mPE33gd8mg9-8BxqJTaSC6hhPqAsfZlcNGH0=@protonmail.com>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hmh.eng.br]
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
X-Headers-End: 1l0V2u-005Zmj-Lm
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 P53/73 firmware to fan_quirk_table for dual fan control
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
Cc: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, 15 Jan 2021, jeanniestevenson wrote:
> This commit enables dual fan control for the new Lenovo P53 and P73 laptop models.
> 
> Signed-off-by: Jeannie Stevenson <jeanniestevenson@protonmail.com>

It has been tested on which thinkpad model (name and numerical model,
please) ?  It is also nice to have that kind of information in the
commit message.

With that information:
Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>

> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c404706379d9..69402758b99c 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8782,6 +8782,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '1', 'T', TPACPI_FAN_2CTL),	/* P71 */
>  	TPACPI_Q_LNV3('N', '1', 'U', TPACPI_FAN_2CTL),	/* P51 */
>  	TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2CTL),	/* P52 / P72 */
> +	TPACPI_Q_LNV3('N', '2', 'N', TPACPI_FAN_2CTL),	/* P53 / P73 */
>  	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
