Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 223C9223B8A
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jul 2020 14:42:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jwPgU-0008Ap-KF; Fri, 17 Jul 2020 12:41:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hadess@hadess.net>) id 1jwPgS-0008Af-TZ
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 12:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3VQBE/jLsP/EgXc7WgGP5zpnE3f2bKVlFUddKn8ufy4=; b=eE/qmXjx6asbgadwjN9vuKzdEk
 Xdfq3pz0pRVzdIEb40V+shNDEDnG4NKotf+izXwWp/2tHZAvYvpRMj1oz3bFYCsUbzjrThItaGuJL
 y/zprbij1XHzdQSCVyCpkKaDUcKuODAdv3PmfdSFxvvWooM7IzitaC64QRuAv4zxU56w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3VQBE/jLsP/EgXc7WgGP5zpnE3f2bKVlFUddKn8ufy4=; b=Tu6TB7x2iMAbq3bUc38974aiDQ
 3ofLLXlkUNpuFkdZrxEcxCWct1GxwDn+UKwsfPaSsplxCjZQl+8WMV7DVEuev3ymVncvarhdkdHVn
 iH28JOvN9Rs7Sa8OP81VFmRhh5AdewSBMv7EKL/uMSaFi++ZD9jh3k+GGzLmTwMqzwlA=;
Received: from mslow2.mail.gandi.net ([217.70.178.242])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jwPgQ-007OkT-PN
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 17 Jul 2020 12:41:48 +0000
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id C042A3A0DAE
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 17 Jul 2020 12:21:18 +0000 (UTC)
X-Originating-IP: 82.255.60.242
Received: from classic (lns-bzn-39-82-255-60-242.adsl.proxad.net
 [82.255.60.242]) (Authenticated sender: hadess@hadess.net)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 883F6FF803;
 Fri, 17 Jul 2020 12:21:06 +0000 (UTC)
Message-ID: <636026bb5c1a1ea8753c0b145b93b3e542720456.camel@hadess.net>
From: Bastien Nocera <hadess@hadess.net>
To: Hans de Goede <hdegoede@redhat.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Darren Hart <dvhart@infradead.org>, Andy
 Shevchenko <andy@infradead.org>, Henrique de Moraes Holschuh
 <ibm-acpi@hmh.eng.br>
Date: Fri, 17 Jul 2020 14:21:05 +0200
In-Reply-To: <20200717114155.56222-4-hdegoede@redhat.com>
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200717114155.56222-4-hdegoede@redhat.com>
User-Agent: Evolution 3.36.3 (3.36.3-1.fc32) 
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hadess.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwPgQ-007OkT-PN
Subject: Re: [ibm-acpi-devel] [PATCH 3/3] platform/x86: thinkpad_acpi: Map
 Clipping tool hotkey to KEY_SELECTIVE_SCREENSHOT
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Benjamin Berg <bberg@redhat.com>, Christian Kellner <ckellner@redhat.com>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux-input@vger.kernel.org,
 Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, 2020-07-17 at 13:41 +0200, Hans de Goede wrote:
> Commit 696c6523ec8f ("platform/x86: thinkpad_acpi: add mapping for
> new
> hotkeys") added support for a bunch of new hotkeys, but the
> clipping/snipping tool hotkey got ignored because there was no good
> key-code to map it to.
> 
> Recently a new KEY_SELECTIVE_SCREENSHOT keycode was added by commit
> 3b059da9835c ("Input: allocate keycode for "Selective Screenshot"
> key")
> quoting from the commit message:
> 
> "New Chrome OS keyboards have a "snip" key that is basically a
> selective
> screenshot (allows a user to select an area of screen to be copied).
> Allocate a keycode for it."
> 
> Support for this "snip" key seems like it is also a good match for
> the
> clipping/snipping tool hotkey, so map this hotkey to the new
> KEY_SELECTIVE_SCREENSHOT key-code.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Added 5 years ago for the Carbon X1 2014, and finally getting
a keycode ;)

Reviewed-by: Bastien Nocera <hadess@hadess.net>

> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c
> b/drivers/platform/x86/thinkpad_acpi.c
> index 7fc44b6f8370..70d533b0c907 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -3436,7 +3436,7 @@ static int __init hotkey_init(struct
> ibm_init_struct *iibm)
>  		KEY_UNKNOWN,
>  
>  		KEY_BOOKMARKS,			/* Favorite app,
> 0x311 */
> -		KEY_RESERVED,			/* Clipping tool */
> +		KEY_SELECTIVE_SCREENSHOT,	/* Clipping tool */
>  		KEY_CALC,			/* Calculator (above numpad,
> P52) */
>  		KEY_BLUETOOTH,			/* Bluetooth */
>  		KEY_KEYBOARD,			/* Keyboard, 0x315 */



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
