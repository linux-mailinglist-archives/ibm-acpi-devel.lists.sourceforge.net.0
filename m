Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66432343381
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Mar 2021 17:39:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lO168-0000fu-L1; Sun, 21 Mar 2021 16:38:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lO166-0000fX-JI
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 21 Mar 2021 16:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lvmy+xITTOphsL6R6LHjacVC8VE0cJkum34ci5o1DgI=; b=aHgvfXSwybDtFzXeMxmQNqVfFz
 BJoKhDbqm095xJP0z1OyFZggCBr0yntnOQ11vTFTDYiVl7T20+hNNvsRYa3P3C0ueOMWHrHxUGv/6
 Vra51h2hywkU9xHuvW2CCx7YGJs3NSyvnGRaojbOl9HFKq/sNW06hVgivwZ/TosmOJvs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lvmy+xITTOphsL6R6LHjacVC8VE0cJkum34ci5o1DgI=; b=Mq0hhQD5kPXf1vJOiJSaNpc/FY
 V01q7pkhJDYBlJ3EvweMR+rR8P/1g6NFWTI6ZlW0kbuGDjn/3c5XqfUw9hx1qnUq2SqDGDxOKya6P
 6iJQFU8tph5OtNILLS5am6H/pKCyUENbyRnwLwAmSPFzq/7RPlkk7zDCUO9RgI260rGg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lO15z-0002Eh-72
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 21 Mar 2021 16:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616344702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lvmy+xITTOphsL6R6LHjacVC8VE0cJkum34ci5o1DgI=;
 b=MDw12vQIU651ymt55qJRzNnTvu3SAMdd29M0isZB+qcY8j7tzmNg4ykczQBQegAMyIl1Ps
 z6MjGqRcl5o9x3HlTbmr6JIv386MjGWK3w6mE2cjDdrrsl+/xSKKrcG2MjOFuDAokJumec
 lewIgt311L0blcP1nBT+g8lp19el+eA=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-gHtj9XpCPXm-sGkriPiv4Q-1; Sun, 21 Mar 2021 12:38:19 -0400
X-MC-Unique: gHtj9XpCPXm-sGkriPiv4Q-1
Received: by mail-ed1-f71.google.com with SMTP id w18so23202141edu.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 21 Mar 2021 09:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Lvmy+xITTOphsL6R6LHjacVC8VE0cJkum34ci5o1DgI=;
 b=IEG/hz2ZC15FN+9XORk5qhWembDqviiVQPMWdFw1+yrPAWxujUVp9k2PPS2k+FbOuV
 8rpN1raCeOQ2F5tqIczaEZGtBnoPwomH2JINL8vOkvmw3S+E8gnjGsD/8VUnR3n+KTCC
 PzPbIhpqzK71OmYwiD6MavchYubQ00mzDjHplYbyUaapAX3fkXGHYz+nb3JMsklxGMuN
 Gj5J7kebnhnUE8LuwKWmmdHHrW34JUYsgRPvx40j8nDaz/pAvB36R11xF5vF22Tinhzt
 oTlWjzzr1YCkl11aM0cMygyDDW3HYs6Co/Zl1R6aTPWKAdfTl47cv0LWPQkaW4lhKnpm
 qgSA==
X-Gm-Message-State: AOAM530Uxw62st0YWjC8BcH223vrt4nYd+fVBLDZzMD86W199y/0+ZX3
 Jvzs1kpDg+wb6h1fSeGvNDA97nQwpbWdgVjVAEAs1TFxXzY7wsWP1aDECPmox/a/4x31UVrenOs
 n+jva7cP5u/l32bMeEnNdmuWwrpGHw9xvB4c=
X-Received: by 2002:a17:907:d1f:: with SMTP id
 gn31mr4543233ejc.536.1616344698521; 
 Sun, 21 Mar 2021 09:38:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzO1AG/z0YFDsQxJO46hq7JwZHTOAIaqSBBh87j3n/vXqZGMokHDNEdc8zEsS0nHVv+pnwWdA==
X-Received: by 2002:a17:907:d1f:: with SMTP id
 gn31mr4543223ejc.536.1616344698376; 
 Sun, 21 Mar 2021 09:38:18 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id c15sm7307965ejm.52.2021.03.21.09.38.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Mar 2021 09:38:18 -0700 (PDT)
To: Esteve Varela Colominas <esteve.varela@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
References: <20210315195823.23212-1-esteve.varela@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0cbd3718-278f-ccc7-c389-b8ebb8338491@redhat.com>
Date: Sun, 21 Mar 2021 17:38:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210315195823.23212-1-esteve.varela@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: launchpad.net]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lO15z-0002Eh-72
Subject: Re: [ibm-acpi-devel] [PATCH] Allow the FnLock LED to change state
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 3/15/21 8:58 PM, Esteve Varela Colominas wrote:
> On many recent ThinkPad laptops, there's a new LED next to the ESC key,
> that indicates the FnLock status.
> When the Fn+ESC combo is pressed, FnLock is toggled, which causes the
> Media Key functionality to change, making it so that the media keys
> either perform their media key function, or function as an F-key by
> default. The Fn key can be used the access the alternate function at any
> time.
> 
> With the current linux kernel, the LED doens't change state if you press
> the Fn+ESC key combo. However, the media key functionality *does*
> change. This is annoying, since the LED will stay on if it was on during
> bootup, and it makes it hard to keep track what the current state of the
> FnLock is.
> 
> This patch calls an ACPI function, that gets the current media key
> state, when the Fn+ESC key combo is pressed. Through testing it was
> discovered that this function causes the LED to update correctly to
> reflect the current state when this function is called.
> 
> The relevant ACPI calls are the following:
> \_SB_.PCI0.LPC0.EC0_.HKEY.GMKS: Get media key state, returns 0x603 if the FnLock mode is enabled, and 0x602 if it's disabled.
> \_SB_.PCI0.LPC0.EC0_.HKEY.SMKS: Set media key state, sending a 1 will enable FnLock mode, and a 0 will disable it.
> 
> Relevant discussion:
> https://bugzilla.kernel.org/show_bug.cgi?id=207841
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1881015
> 
> Signed-off-by: Esteve Varela Colominas <esteve.varela@gmail.com>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

And I'll also add it to the fixes branch so that it gets included in
one of the future 5.12-rc releases.

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans


> ---
>  drivers/platform/x86/thinkpad_acpi.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c40470637..09362dd74 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4079,13 +4079,19 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>  
>  	case TP_HKEY_EV_KEY_NUMLOCK:
>  	case TP_HKEY_EV_KEY_FN:
> -	case TP_HKEY_EV_KEY_FN_ESC:
>  		/* key press events, we just ignore them as long as the EC
>  		 * is still reporting them in the normal keyboard stream */
>  		*send_acpi_ev = false;
>  		*ignore_acpi_ev = true;
>  		return true;
>  
> +	case TP_HKEY_EV_KEY_FN_ESC:
> +		/* Get the media key status to foce the status LED to update */
> +		acpi_evalf(hkey_handle, NULL, "GMKS", "v");
> +		*send_acpi_ev = false;
> +		*ignore_acpi_ev = true;
> +		return true;
> +
>  	case TP_HKEY_EV_TABLET_CHANGED:
>  		tpacpi_input_send_tabletsw();
>  		hotkey_tablet_mode_notify_change();
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
