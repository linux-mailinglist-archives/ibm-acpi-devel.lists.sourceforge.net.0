Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 962BD2C2565
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 24 Nov 2020 13:11:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1khX9d-0005yx-4n; Tue, 24 Nov 2020 12:10:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1khX9c-0005yq-Jf
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 24 Nov 2020 12:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wUnv+IHMDftcQjA0JBjF2MFD6nD9bm1oMfaBL/SXijg=; b=bVfhvyTW6W8kC8h7Po56U68Zww
 SrKHD+lKA9eR93w4KaPaLrMwJ+a6g2exLGYO+t+eRwzE4C24TMjLn0ktiNjOMAKoGYP2tHlamIdpi
 tarHx+QNktltQMLTazsjsS0cFbB8AAjQqzI3WT24QBL5j6yk9TXV0uE/JXMcyadeceuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wUnv+IHMDftcQjA0JBjF2MFD6nD9bm1oMfaBL/SXijg=; b=SfhpkH0yLMZUbrHe2Nl5jYRgbT
 rEhQ05nn0sK8ZmKpBuXXshHLU2hHIqvt8Oi1x/byKeFJ0mKh8Xrl3sLoEoK4nCBbBUnw3eTf9v1+M
 BiQ9HBiPAsxUQh9q4bg/wWCnmPC23A4eSD5uYN52uJlGqy+GWtcxY0/fUqp4yxwJK/Bg=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1khX9N-0027IN-Mt
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 24 Nov 2020 12:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606219812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wUnv+IHMDftcQjA0JBjF2MFD6nD9bm1oMfaBL/SXijg=;
 b=RtNRvz8Cl1VDqfnj3SEzWVZLg7KGEx9FNl6O1LmMaTNOV3Mk8BIYovV2Cz/NRtYLVHf2E1
 8Ynnik99ik4d4u1/JdzcVfulD/BLHnGIKtWBGTFNV84THh+HD2WKbg9oM4AgcbvmFu2lyo
 ePODCmebAWJzlyqaLv5P96lk8wnJyAE=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-W5IBzUWZMDevKkXuKf2uCA-1; Tue, 24 Nov 2020 07:10:10 -0500
X-MC-Unique: W5IBzUWZMDevKkXuKf2uCA-1
Received: by mail-ej1-f71.google.com with SMTP id j18so5222376ejs.12
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 24 Nov 2020 04:10:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wUnv+IHMDftcQjA0JBjF2MFD6nD9bm1oMfaBL/SXijg=;
 b=nky6TrzGXHk8BKliRmE3Rypwrpy8TRe6XCryQ39HEzuoukMojTbgAiPcDGrXw5t6/v
 DusrY6WXy1UaQ3D+VyBYSnT4j4KyCgS5Djl56y+bm0xuBErgKxzINDGEMnSe5VkmsRvd
 pHeKkTFVFu3LXsIvv4UUKYeqCQ0brktIeI8Zk1XrWOiZUo2DXOw8ytZ+1zfFyF+NPVhA
 feo9IGp7fds8upKJhfihRAWcXtGBE9pvcO29AxDE92WHDIgUYcCKs1J0ajB2X+idZ/Ka
 LGAw/Tdq0scMIDCDpDpEKenhKnv5e5bpAFbox6ePWSid9QsPG9ECzIUKtLuKK7X+WuSm
 I4rg==
X-Gm-Message-State: AOAM530PoPhnNk9fioRWXiulH4fEAvv0u6Nr1xQhxVrhwfjfgvyhFNkV
 UPclrxNE8mGjnvezPPYK7jkLingIM+5D5sP46bf7MObuX/3NvUKIkNe87334+etCAMByrUn4Cb/
 o4Q0IBzjmNxHe1xcQ9DKBeS6AkQWRZicWxn4=
X-Received: by 2002:a05:6402:1a31:: with SMTP id
 be17mr3404490edb.377.1606219809296; 
 Tue, 24 Nov 2020 04:10:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyE7c3L5xWKutv3UZyQAC4urY5anoXWIxZDDJPTstxAzpfazN3NYht7FbOiT552ww6h44SJvg==
X-Received: by 2002:a05:6402:1a31:: with SMTP id
 be17mr3404476edb.377.1606219809151; 
 Tue, 24 Nov 2020 04:10:09 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
 by smtp.gmail.com with ESMTPSA id n15sm6906438eje.112.2020.11.24.04.10.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Nov 2020 04:10:08 -0800 (PST)
To: Benjamin Berg <benjamin@sipsolutions.net>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
References: <20201123132157.866303-1-benjamin@sipsolutions.net>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c8deaf95-6b49-d8d7-6f09-1845ad70f40d@redhat.com>
Date: Tue, 24 Nov 2020 13:10:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201123132157.866303-1-benjamin@sipsolutions.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1khX9N-0027IN-Mt
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Send
 tablet mode switch at wakeup time
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Benjamin Berg <bberg@redhat.com>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/23/20 2:21 PM, Benjamin Berg wrote:
> From: Benjamin Berg <bberg@redhat.com>
> 
> The lid state may change while the machine is suspended. As such, we may
> need to re-check the state at wake-up time (at least when waking up from
> hibernation).
> Add the appropriate call to the resume handler in order to sync the
> SW_TABLET_MODE switch state with the hardware state.
> 
> Fixes: dda3ec0aa631 ("platform/x86: thinkpad_acpi: Implement tablet mode using GMMS method")
> BugLink: https://bugzilla.kernel.org/show_bug.cgi?id=210269
> Signed-off-by: Benjamin Berg <bberg@redhat.com>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans

> ---
>  drivers/platform/x86/thinkpad_acpi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index e3810675090a..9104e0ee37cd 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4228,6 +4228,7 @@ static void hotkey_resume(void)
>  		pr_err("error while attempting to reset the event firmware interface\n");
>  
>  	tpacpi_send_radiosw_update();
> +	tpacpi_input_send_tabletsw();
>  	hotkey_tablet_mode_notify_change();
>  	hotkey_wakeup_reason_notify_change();
>  	hotkey_wakeup_hotunplug_complete_notify_change();
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
