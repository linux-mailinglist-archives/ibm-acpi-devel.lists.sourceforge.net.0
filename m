Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF53340AFE
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Mar 2021 18:07:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lMw6P-0006nM-7Y; Thu, 18 Mar 2021 17:06:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lMw4q-0006ca-Er
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 18 Mar 2021 17:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wzsQDTfLmkd5z0eYq6awhMmQInxj7Uo9v/R/bstTn4w=; b=nJpZXFpnTFwUqU2LeU2uhkWlGL
 XUShw50jEVkm9XtRNPFOh3abciTU9u37tNgU6nHQ5/XMBGH565ftecPA0VSrPa1BCxbXV/ZnnsZgs
 ta/AeXBBxb7R+6Ei2OyrJA/LXfiOhWa/yym5EXzysGj+cG1E8U7D9s5ue+c4I9lulZl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wzsQDTfLmkd5z0eYq6awhMmQInxj7Uo9v/R/bstTn4w=; b=meUNIY3fJaw8sjCjKrb7bYPk2+
 i4WzJaagdHXTyKbY1aRDrTMg7aXQumlFkVMHSBC3iajhm4rqzxyV665nFfLFgZ7LkGoF9jm7qKOUm
 iE5s/6yYOewYtH/qq19h+BpBA9uXHiICVO7j23zTYNh6AIVjPYMlrTr7R3EQJtHiuHWE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lMvqF-0006FG-5a
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 18 Mar 2021 16:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616086181;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wzsQDTfLmkd5z0eYq6awhMmQInxj7Uo9v/R/bstTn4w=;
 b=MSouGXnf40NYuEONsy3Ua6ZjEZaxvZ0i0E1jNWhLZhmRImUsyWxEzjlfHI5tFVi45kIf97
 JaL/uOc2bKRAUTmfMeayHoWgb3Or+z4h/9IEAcSYnbYObqRbifONtViS+M4DMq+vlQzKCn
 8XpFCuVndK1KxogRRhvxx1SMRFgaa3k=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-bnOK91hKMRyQfdF7AP96Ow-1; Thu, 18 Mar 2021 12:49:36 -0400
X-MC-Unique: bnOK91hKMRyQfdF7AP96Ow-1
Received: by mail-ej1-f71.google.com with SMTP id k16so16907538ejg.9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 18 Mar 2021 09:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wzsQDTfLmkd5z0eYq6awhMmQInxj7Uo9v/R/bstTn4w=;
 b=kpub0ekGklus0SkPgaCIkMiG0MQjprOGb8xv/0hxN+06y7Y6/19pZOUqmtmYN2iSuG
 4tUbncqtVbtbOvT4TrADXaqQJ2MPfWPP0ts3I+NT4LkLfi9/X1oWMsZAhSCzX8lY8e06
 zMnYhrql50ne/psV0iYkZXNSirBkHZcRDy2DkVSyO2IY28sWcDpUpZ40JJJKtteJxG1Y
 jsFRrYr0cEku/DJqtTwBy+sc1FOckE2sfc7HV9QYvZ5FrGDXE3XxfCwJeLjM3enaoRqh
 OFbVtf7mCl8OsKV4w+/31g7a9MeXZeOPp4J9Lcj/q5S5FA+1wLCiJdsDW29K0mQKZ2T+
 S/zQ==
X-Gm-Message-State: AOAM531bunCjs05z+GqEmxXondkJf9zMQwAMvo4Y/f5Ah2lhp6wYP5v+
 F+SWjvH3hW+7JuBW8+sAJfQQ21/ujJBAGPRqdqI1Q8gzWSOKODJ6DVWdw4k6kC8Tpj0Is3Hv5rH
 6QOUIfz4HsZCy5YO/NFNF2+XTMAxUYi4rAio=
X-Received: by 2002:aa7:c9c8:: with SMTP id i8mr4699916edt.193.1616086175761; 
 Thu, 18 Mar 2021 09:49:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQZ55YzGVHSSb+cDybjqUyhc1oaE05JU0l2nazm4APJLc8tfBToBOXFqWm5+Fq26MabcfyyA==
X-Received: by 2002:aa7:c9c8:: with SMTP id i8mr4699905edt.193.1616086175614; 
 Thu, 18 Mar 2021 09:49:35 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id a17sm2255827ejf.20.2021.03.18.09.49.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Mar 2021 09:49:35 -0700 (PDT)
To: Esteve Varela Colominas <esteve.varela@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Mark Pearson <markpearson@lenovo.com>
References: <20210315195823.23212-1-esteve.varela@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7fcaeb12-35b1-242a-dfd0-02324643c34b@redhat.com>
Date: Thu, 18 Mar 2021 17:49:34 +0100
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lMvqF-0006FG-5a
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Allow the FnLock LED to
 change state
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

Sicne this is a getter function I guess that calling it is mostly harmless
and if it works around what seems to be a firmware bug on some of the E?95
ThinkPad models then I guess that this is fine by me.

Mark, do you have any comments on this ?

Regards,

Hans



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
