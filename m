Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mANAJD50k2nD5QEAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 16 Feb 2026 20:47:10 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF99114755E
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 16 Feb 2026 20:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdDDiw6d/fDMrqsv4Ai0tgRd/UtqPSnJbPuSNcNxAZg=; b=mYwlV12+hOfObgMU/yuyRCGTXx
	vRTQoJgHo6K1qyh8xI0n8PCVtxFISPV5E2ixW22vZdR0dyNhDFj6xmV6HAOKUTiID604x6v3xwFnT
	auDXgV9qdtrWZrbkaimIA9Gun6oZmsBnCMLpWay8RayacBkBahWm4C09F33G8Mt4fnxE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vs4YI-00068u-C9;
	Mon, 16 Feb 2026 19:46:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1vs4YE-00068k-Uk
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 16 Feb 2026 19:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=trb9EY8ABdgfiWbB3ihDhqrGiOdS7b/Umy7QA+G0ZTs=; b=nGT/RJgi1xtLdXBCv2ei9QLxNd
 hJAxO9d5JhyweLkYd478A1DwSxg2LFFkB6KsoLTg92YBhDnJ1R/iovEZlayqUN0o+Dmvf2Os1xcQ5
 G/xkrto7B7WO1iOsbAbHeFt4iEU5zni19jqv1C+nAuSkGm7tVSSEjUpxQsOsr2gAgay0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=trb9EY8ABdgfiWbB3ihDhqrGiOdS7b/Umy7QA+G0ZTs=; b=lj8Gv6BlIJ/oaHK0AMex9ls7e2
 3dUrirKZIjBh3e8HQzUVX7nLDMiSMeekmnlOfMLZbwa8AlOHk8UQKoprCWvnYLtJWd7J+MlUQwsUD
 s1HuIYjF5eM/z4tlO3wIA/2qSpdCOMFDvhKzsuo/6iGhSbVjq08GSmlTafOi6TCd+8TE=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vs4YE-0003t6-4B for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 16 Feb 2026 19:46:35 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id B37D51D00094;
 Mon, 16 Feb 2026 14:46:22 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Mon, 16 Feb 2026 14:46:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1771271182;
 x=1771357582; bh=trb9EY8ABdgfiWbB3ihDhqrGiOdS7b/Umy7QA+G0ZTs=; b=
 KJpg5F/jwJXA3JSMcCvDkmn6NdIAFcODN81mj0CtvVFgdriuN1Dtd7RZzWSaY+wi
 Lfq5TskQZHFMfOlzdYb9oDE5mILLjNelkuhyjqjExjYqhoPPxvPlx/z8xNWQ3GFC
 l8t77/A2Pqack3jWLmRLsb3zD4wvRRm+6LEAKKJl4mZdvvoSbe0Xh7IEqr2cqhaM
 dl2CQydW97o2odZNTz0fW9JgR6JHYz2LiKRYU7/QqObJ2ySvK9yBjkhYZUApiT6X
 VgJtqCGRSH5J3DYAiVbq/PRW7/Tr5QwcUAclQbxgZOWCuq8xe07laakh9+jar2uj
 kvLPcsUWPt7eCNj7bYMekA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1771271182; x=1771357582; bh=t
 rb9EY8ABdgfiWbB3ihDhqrGiOdS7b/Umy7QA+G0ZTs=; b=GGW+pgNj9nxA7oXqI
 035Ysn934lK3ptV9V6GHd7ZMcrEGRZ1ZFoa/Kc4438G5pW0xq7DkknlB6cqJPEzo
 lPacQhupnai+/j/biHlG/xqMmW/ZjJh7jPoF9B1QQCNolWzVYmh1VzaC5/jHAFGb
 4NMIInsSp7PGi0vEQynBMjkEtSiZykVFWKfZ3IqjPVp1J1CYVFkWVbGvr+m06DdS
 AMphnwZHqkLZYvhSJ3hyKDl629RiNCa8muTew2lkiC1/Atyim52UTAawRt+QZWay
 8YWg/7fZNx7WpAPahdRPEpjLM/ECAZrNgo9sPRQOT1rB+Sfwxl3t4SJqArrRozPk
 fyApw==
X-ME-Sender: <xms:DXSTafbFN_2p18YhLrmmylkkf_YiL-7COFOt0tOt6ReYATE9RV24Yw>
 <xme:DXSTaZMh8ZploTC3KqN8ctvWNeyv61LgpWWEX9gXBvDUFBt_KFTRwWJqnrvGZzKUf
 3hiYOHaXgMCLxQIE_HUXC1w_YbIViwW-a1Pb0mpPI3axuXku5phFxM3>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvudejjeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepofggfffhvffkjghfufgtgfesthejredtredttdenucfhrhhomhepfdforghrkhcu
 rfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrg
 eqnecuggftrfgrthhtvghrnhepgeeuueektdetvdetfedvvddtveegieejffejfeekvdet
 ffejkeeuuddvfeeiuedtnecuffhomhgrihhnpehlphgtpgdrvggtpdhkvghrnhgvlhdroh
 hrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
 phgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhope
 ekpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeguvghrvghkjhhohhhnrdgtlhgr
 rhhksehgmhgrihhlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpd
 hrtghpthhtohephhgrnhhsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihhlphho
 rdhjrghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisg
 hmqdgrtghpihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdp
 rhgtphhtthhopehjohhnrghthhgrnhdrthgvhhesohhuthhlohhokhdrtghomhdprhgtph
 htthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgt
 phhtthhopehplhgrthhfohhrmhdqughrihhvvghrqdigkeeisehvghgvrhdrkhgvrhhnvg
 hlrdhorhhg
X-ME-Proxy: <xmx:DXSTaarf7URNqIPc4myH07smnNqbwJQWvhlSCmwS7Ps3qi5X4cS25g>
 <xmx:DXSTaZGtlL51ZKRzfGkGxR4h8u7kS6cJnEvToRAtm3Y0FqpbO02kXA>
 <xmx:DXSTaf4o8UG3QbjMg-BeKppaZ1cTdNZXLFnAyECcEnToL6xSd_bQzQ>
 <xmx:DXSTaRePdkRvLb2-MhQyNWc6jNf1QwDX6kjTJOTASggqVeSPh78m3g>
 <xmx:DnSTaTLL2uujnKZB7oENrg51CSTvKbwUqhAtTaygoVVHiMx80Y-uthGa>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 8DB822CE0072; Mon, 16 Feb 2026 14:46:21 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Aod1Im5igXDV
Date: Mon, 16 Feb 2026 14:45:57 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Jonathan Teh" <jonathan.teh@outlook.com>,
 "Henrique de Moraes Holschuh" <hmh@hmh.eng.br>,
 "Derek J . Clark" <derekjohn.clark@gmail.com>,
 "Hans de Goede" <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 linux-kernel@vger.kernel.org
Message-Id: <18579151-8c48-4b65-8081-05b9d8488b0c@app.fastmail.com>
In-Reply-To: <MI0P293MB01967B206E1CA6F337EBFB12926CA@MI0P293MB0196.ITAP293.PROD.OUTLOOK.COM>
References: <MI0P293MB01967B206E1CA6F337EBFB12926CA@MI0P293MB0196.ITAP293.PROD.OUTLOOK.COM>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Feb 15, 2026, at 8:01 PM, Jonathan Teh wrote: > Check
 whether the battery supports the relevant charge threshold before > reading
 the value to silence these errors: > > thinkpad_acpi: acpi_eva [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vs4YE-0003t6-4B
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 errors reading battery thresholds
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.40 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.teh@outlook.com,m:hmh@hmh.eng.br,m:derekjohn.clark@gmail.com,m:hansg@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:ibm-acpi-devel@lists.sourceforge.net,m:platform-driver-x86@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[outlook.com,hmh.eng.br,gmail.com,kernel.org,linux.intel.com,lists.sourceforge.net,vger.kernel.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[squebb.ca];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	FORGED_SENDER(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,squebb.ca:s=fm1,messagingengine.com:s=fm3];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,squebb.ca:-,messagingengine.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mpearson-lenovo@squebb.ca,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: BF99114755E
X-Rspamd-Action: no action

On Sun, Feb 15, 2026, at 8:01 PM, Jonathan Teh wrote:
> Check whether the battery supports the relevant charge threshold before
> reading the value to silence these errors:
>
> thinkpad_acpi: acpi_evalf(BCTG, dd, ...) failed: AE_NOT_FOUND
> ACPI: \_SB_.PCI0.LPC_.EC__.HKEY: BCTG: evaluate failed
> thinkpad_acpi: acpi_evalf(BCSG, dd, ...) failed: AE_NOT_FOUND
> ACPI: \_SB_.PCI0.LPC_.EC__.HKEY: BCSG: evaluate failed
>
> when reading the charge thresholds via sysfs on platforms that do not
> support them such as the ThinkPad T400.
>
> Fixes: 2801b9683f74 ("thinkpad_acpi: Add support for battery thresholds")
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=202619
> Signed-off-by: Jonathan Teh <jonathan.teh@outlook.com>
> ---
>  drivers/platform/x86/lenovo/thinkpad_acpi.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/platform/x86/lenovo/thinkpad_acpi.c 
> b/drivers/platform/x86/lenovo/thinkpad_acpi.c
> index 6b0e4b4c485e..86e7194ac006 100644
> --- a/drivers/platform/x86/lenovo/thinkpad_acpi.c
> +++ b/drivers/platform/x86/lenovo/thinkpad_acpi.c
> @@ -9526,14 +9526,16 @@ static int tpacpi_battery_get(int what, int 
> battery, int *ret)
>  {
>  	switch (what) {
>  	case THRESHOLD_START:
> -		if ACPI_FAILURE(tpacpi_battery_acpi_eval(GET_START, ret, battery))
> +		if (!battery_info.batteries[battery].start_support ||
> +		    ACPI_FAILURE(tpacpi_battery_acpi_eval(GET_START, ret, battery)))
>  			return -ENODEV;
> 
>  		/* The value is in the low 8 bits of the response */
>  		*ret = *ret & 0xFF;
>  		return 0;
>  	case THRESHOLD_STOP:
> -		if ACPI_FAILURE(tpacpi_battery_acpi_eval(GET_STOP, ret, battery))
> +		if (!battery_info.batteries[battery].stop_support ||
> +		    ACPI_FAILURE(tpacpi_battery_acpi_eval(GET_STOP, ret, battery)))
>  			return -ENODEV;
>  		/* Value is in lower 8 bits */
>  		*ret = *ret & 0xFF;
> -- 
> 2.53.0

Looks good to me - thanks!
Reviewed-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
