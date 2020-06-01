Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7D31EB1D7
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  2 Jun 2020 00:43:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jft8s-0004QG-CW; Mon, 01 Jun 2020 22:42:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1jft8q-0004Py-Si
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 01 Jun 2020 22:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nx3CWeO/YnFQiaOMCarzoa1efaYqY0I8VkXTUyYAeKA=; b=Uorb+UC7Jm0HLqGAClbhUi8+r5
 rvp9+xEdcWljzHEB4HXqrMFgIJeKOjD3cLe4xTuFayEcL3YwtMuLNDEp/0OtZZsGS2WUkBaEbadQs
 QYScpLictNqCXOPtRQHsLPq+kVzGA4BNo3yEUiRZOqks41q6dxKf63LiUfsLZbtddhdk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nx3CWeO/YnFQiaOMCarzoa1efaYqY0I8VkXTUyYAeKA=; b=B3bd/hCi5lkZep7504SebhmEBY
 EL3IlLagimlsa/bNKIAJ+q3K0IfbzBAXVqHJ/Yv+6mZ+fuOOF4ytaKaEd+vOrd43LEaUb8k4+aMvk
 qIgPXN8/+/mBZK8UTZUpvigsyLBaeRAGFXk9MmD1exl3J8ehO3GHt+p9LrQfcLoZQDvI=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jft8o-001Aji-Q8
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 01 Jun 2020 22:42:48 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 24B769CD;
 Mon,  1 Jun 2020 18:42:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Mon, 01 Jun 2020 18:42:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Nx3CWeO/YnFQiaOMCarzoa1efaY
 qY0I8VkXTUyYAeKA=; b=UZJXF0+HJKElt0xW+TjiBWfTsks5RUTjJ+nKg7j7fzy
 dib6vjZV5uFbpk4aiC5taAUmQO+vQ5SC4FHKXo/PNA/coppjHqhdkku81bjq5V7M
 4qaVo5AENTF466UXd0R6BgSLmdRWAb2jkEr2u9u/OuRxLlhDY/raYle8YJ8a0nUU
 2ydBO2TWS51l+YR9pkaFqMwxb2+J8TSrNmYstVgBQgQA6rM/8OQKMv19owPB9Gx/
 cWKlKdHaHdXDN3Dz2wJgPVtE1q9kBhUKeUAVyUwlBMQ/6rFC4e+inPEU5kc5i7yc
 kW3Pnez4NawUSG1C8lGnzc5VA4iPqq1KBk6jT1s9o7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Nx3CWe
 O/YnFQiaOMCarzoa1efaYqY0I8VkXTUyYAeKA=; b=naoXvIOd1QQoWQZ9cz6EJf
 kiK4b3iV05pMjf359MHgHq6Zbx6KfOY1NYo+a6oE3oIBr1eZdF56cYvA0PfjCQni
 Ito4nhZaSJJGI2vsUxdG58pn/a71Z8FupZ+QYHjO2vVb4SMNNO5TgPtnhSbg9soD
 nWSQkmgJ7ECPXkfs+/QLfidUU4G8aRUXQBserMV8UQ78ntKV/HDxeyAo0FDAOsUT
 R9spXH1YHM7Z3iVINTtT2nhQSAgQUx+1mwjaPrmndSyhgKrOyu/nZpJ+qy0IEFcR
 j934rX8BpywkTni+zgYFFJNeQZlgvOBqQZe1cvv7cRvACJEqpTLG264lHnTv49jQ
 ==
X-ME-Sender: <xms:VoTVXo9EPcmNyrpdbAwzZfMv1aoPBwl1-GmwpAnATdn1Fb0S1M4Sog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefiedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdttddttdervdenucfhrhhomhepjfgvnhhr
 ihhquhgvucguvgcuofhorhgrvghsucfjohhlshgthhhuhhcuoehhmhhhsehhmhhhrdgvnh
 hgrdgsrheqnecuggftrfgrthhtvghrnhepveduteejgeeiudefuefgieehleejkeefudfh
 jeefgeekheekvddvheehleegveeinecukfhppedujeejrdduleegrdejrdefvdenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhmhhhsehhmhhh
 rdgvnhhgrdgsrh
X-ME-Proxy: <xmx:VoTVXgvHeDiAyyoKolaBPgKjDjdDhK8uHGyGHh7b4qsmrUuN4ZU8qg>
 <xmx:VoTVXuD5xI0Tqswf_KNLLIgTznYxaSSqZaL0kVOFOgBq8j6OKE7QDw>
 <xmx:VoTVXocQwTRpYVZxGXzbA-WK4I8FF5B-0k7XwJseXRXYS2iPtvyXYA>
 <xmx:VoTVXkawjFQFRYc-4huwh0tUqZ7quumPYtcJEyz4mr4cyW_PxnehEg>
Received: from khazad-dum.debian.net (unknown [177.194.7.32])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1E71B30624F3;
 Mon,  1 Jun 2020 18:42:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 3564D34039AE;
 Mon,  1 Jun 2020 19:42:28 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id srkFdF4CFHJI; Mon,  1 Jun 2020 19:42:25 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id CEE6034039AD; Mon,  1 Jun 2020 19:42:25 -0300 (-03)
Date: Mon, 1 Jun 2020 19:42:25 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Mark Pearson <markpearson@lenovo.com>
Message-ID: <20200601224225.GA9259@khazad-dum.debian.net>
References: <markpearson@lenovo.com>
 <20200601153749.265953-1-markpearson@lenovo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601153749.265953-1-markpearson@lenovo.com>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jft8o-001Aji-Q8
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: lap or
 desk mode interface
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi <njoshi1@lenovo.com>,
 Sugumaran <slacshiminar@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, 01 Jun 2020, Mark Pearson wrote:
>   Newer Lenovo Thinkpad platforms have support to identify whether the
>   system is on-lap or not using an ACPI DYTC event from the firmware.
> 
>   This patch provides the ability to retrieve the current mode via sysfs
>   entrypoints and will be used by userspace for thermal mode and WWAN
>   functionality
> 
> Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
> Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
> Signed-off-by: Mark Pearson <markpearson@lenovo.com>

We need to take this through the kernel platform-driver-x86 ML.

It would be nice to have standard events for "latop on a surface you
don't want to burn ("lap"), and the input people might want to suggest
something, too, so I'd also ask the input maintainer.

Please resend, cc to:
platform-driver-x86@vger.kernel.org

While at it there is something I noticed right away:

> +static int dytc_command(int command)
> +{
> +	acpi_handle dytc_handle;
> +	int output;
> +
> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
> +		pr_warn("Thinkpad ACPI has no DYTC interface.\n");
> +		return -ENODEV;
> +	}
> +	if (!acpi_evalf(dytc_handle, &output, NULL, "dd", command))
> +		return -EIO;
> +	return output;
> +}

dytc_command() is called by dytc_lapmode_get():

> +static int dytc_lapmode_get(void)
> +{
> +	int output;
> +
> +	output = dytc_command(DYTC_CMD_GET);
> +	if ((output == -ENODEV) || (output == -EIO))
> +		return output;
> +
> +	return ((output >> DYTC_GET_LAPMODE_SHIFT) &
> +				DYTC_GET_ENABLE_MASK);
> +}

Which is used by dytc_lapmode_init():


> +static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
> +{
> +	int res;
> +
> +	dytc_available = false;
> +	dytc_lapmode = dytc_lapmode_get();
> +
> +	if (dytc_lapmode < 0 && dytc_lapmode != -ENODEV)
> +		return dytc_lapmode;
> +
> +	dytc_available = true;
> +
> +	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
> +				&dytc_attr_group);
> +
> +	return res;
> +}

Looks like this code flow is going to spam people with pr_warn() on an
older thinkpad laptop that doesn't have DYTC.  Please fix this, it is
not strange for an older thinkpad to not have DYTC (even if it is a
decade's old thinkpad).

There is a thinkpad-acpi driver-level debug facility you can use to send
developer-level debug info (such as the init function of a subdriver did
not find what it wanted), if you want.

Also, if the code flow goes through dytc_init fine and registers the
sub-driver, you likely don't have to optimize the rest of the code flow
for DYTC disappearing from APCI tables ;-)  ENODEV silently would be
fine for something so unlikely to happen.

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
