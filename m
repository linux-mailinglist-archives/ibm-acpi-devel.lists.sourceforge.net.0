Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 235A63469A0
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Mar 2021 21:11:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lOnN3-0005Bw-Da; Tue, 23 Mar 2021 20:11:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lOnN2-0005Bj-Cl
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Mar 2021 20:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O+OqqfO7CDyfJMoaVJ0IR/xIV9jxR6//T/Ib7eDY5S8=; b=W1muIIrvA17QSfzen4zFioGCnz
 KlhvKMvD4eLlfqyRVfk4sM51hJYFcDVjj4n5Wdp7nmhQ8NuoV6Wzp+HqJu6cj6ePzYZuDXoHIouCo
 2jDkrNHS2IkN5pOXAA4ZNG0q9lKe2ZZ/fvVdUyBdbEayT0jwgCHcMylEKv2z1plKfCWE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O+OqqfO7CDyfJMoaVJ0IR/xIV9jxR6//T/Ib7eDY5S8=; b=Ljq9R0grAAjg/R+I2PFspZ9r03
 44FBG8KuaBLkqNm3sSESE7uV09iIV7kaLruJEzqvJLPZ6jypfQcAL7zNgb8qrGOoczQIUFYJ2xYok
 8BmldW6Judn3fSaz37vAuKu/2SdF8jnwk6Yum3AgHFvEgIvFVN1OfPmhw+i96fSlESfk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lOnMy-0002KJ-TB
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Mar 2021 20:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616530268;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O+OqqfO7CDyfJMoaVJ0IR/xIV9jxR6//T/Ib7eDY5S8=;
 b=Cl/mQbnNE5xX/vq9WKJr9WnUCOlW6vBC1zWjzHkdF7X2n0sCNjXEXdeUdJbLQA31xM1TIe
 jfnDOx3Uu3YGs7L0fZ0uMKP7/inQbbR4TyTblTq9m9iJrBGxMC+OjFtgM5u0AnwTnSRSJq
 OtxyHJhzmywM3mdxrzskMjqEPjD0b/w=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-0fmb1LxUMWSLA3064CoY5w-1; Tue, 23 Mar 2021 16:10:59 -0400
X-MC-Unique: 0fmb1LxUMWSLA3064CoY5w-1
Received: by mail-ed1-f72.google.com with SMTP id w18so1509539edu.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Mar 2021 13:10:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O+OqqfO7CDyfJMoaVJ0IR/xIV9jxR6//T/Ib7eDY5S8=;
 b=E3+qqzivBh2SPw6yKuZDdM9GiAgT3P/yGgGI4kdLdzW/FqwVu9TJRlF6JXrVtkFdAI
 YQLpLr7DBUs+gN/G9Slpm97YEww5IC4fe1eqzd1LE+iDFYX01KR71uuutBAJ/T+ucav2
 a1+E40rDuaZhi52lkhYYqQuhVsHMFat7zLjlAdrfod0kRMm2y4GoEkZ1OlHf57y8fV1S
 cYSxJhQjX/BI2cpiQ5dsAUVfyeWw6iTTsoBrIr35OxwS8lFyp7ZFzC2oHSH7MMI1bA+i
 mosWZ2RDxlJC1PuRC/py7IJuy+XDA9svrFapyLub/WMYad2YRZo6BdyH39ZbcbjIczo7
 Urow==
X-Gm-Message-State: AOAM533t5zLvoIIiAMdyC0qDFb83RLqG6/eU4opMJCqRyHPWwK4070f1
 qsjACDq/eECJVpUSYjWDKPfJXKE+G+oMfc4RjlbYifNSSXoCZtUkpbR9p24R31YtB2KAD9Xt+/3
 nNnD+x5/TXdX2CTXkUOXFqmvgQcJ+tXFOfzw=
X-Received: by 2002:a17:907:7699:: with SMTP id
 jv25mr6300502ejc.363.1616530239038; 
 Tue, 23 Mar 2021 13:10:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1pAKJSdPo+K7mA7K3Baq95dGN0ab0qqCbOVK0PObLxRflyvHnqxYYcAmFwY8GurecFxVxrQ==
X-Received: by 2002:a17:907:7699:: with SMTP id
 jv25mr6300489ejc.363.1616530238921; 
 Tue, 23 Mar 2021 13:10:38 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id a17sm11743282ejf.20.2021.03.23.13.10.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Mar 2021 13:10:38 -0700 (PDT)
To: Esteve Varela Colominas <esteve.varela@gmail.com>
References: <20210321183512.14551-1-esteve.varela@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <da4f4acf-7d15-aaff-ef67-6c65410518a3@redhat.com>
Date: Tue, 23 Mar 2021 21:10:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210321183512.14551-1-esteve.varela@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOnMy-0002KJ-TB
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Correct
 minor typo
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

On 3/21/21 7:35 PM, Esteve Varela Colominas wrote:
> Signed-off-by: Esteve Varela Colominas <esteve.varela@gmail.com>

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
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 09362dd74..f3f7ae6f6 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -4086,7 +4086,7 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>  		return true;
>  
>  	case TP_HKEY_EV_KEY_FN_ESC:
> -		/* Get the media key status to foce the status LED to update */
> +		/* Get the media key status to force the status LED to update */
>  		acpi_evalf(hkey_handle, NULL, "GMKS", "v");
>  		*send_acpi_ev = false;
>  		*ignore_acpi_ev = true;
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
