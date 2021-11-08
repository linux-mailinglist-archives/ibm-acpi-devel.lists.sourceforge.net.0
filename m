Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 014F24481D5
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Nov 2021 15:33:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mk5hr-0006qA-Q5; Mon, 08 Nov 2021 14:33:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mk5hr-0006q0-3g
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 14:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GSLThJptwBqmEcA/2EDZYfURyVY2QadVN/BrJaE+E1M=; b=UfD4JpP99xYFFqA/lRQj3lx3yY
 9z3PEInIs1GUC2/gf8HLyjp2Ad685RiaLG/qaCY5ZcHyQOODCcLOpTOVnM/tiQoE0olXFmEdquY97
 aWz7RjW8Y3fiTKif1kCQu+5rb+/md+wZrZrmwkUdDX8WvoHIUPhR3YNOyhUJCHjd/B+E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GSLThJptwBqmEcA/2EDZYfURyVY2QadVN/BrJaE+E1M=; b=OWgpS7oRxB92bNYwLcTIIlAaIo
 m+h5ja1FXKmEQ+C5HUckJ5tszanKqrwI485N3zFGsp3qqqS8tC98mOhmUr6380+EVEpKcDBBBaoxG
 QReEcJUJOY+V8s5rDc1ZKpXwX0Wz+LYLR5vmNiWPfzE4+zUvlgA8XpDpx07/FDJdjz9Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk5hp-006AG9-K6
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 14:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636381979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GSLThJptwBqmEcA/2EDZYfURyVY2QadVN/BrJaE+E1M=;
 b=hD3OK73VjYxxKm4qwOXZhEW9YTgHbwY1UHPCx8Zm1YgUCjwzS+mvgq0Dzprioslu2wyVl9
 uVjhVZw608Qr+O0uqg3R+AJF6toyHStFGgK29h7JiHx7JYg0kFx6yLWNLejWZpbjmkfAEK
 hncrrh7qgrS02kX9vTp1kPe6kUGCUnc=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-dpSuYfE3OgmN6ameu9ePsg-1; Mon, 08 Nov 2021 09:32:58 -0500
X-MC-Unique: dpSuYfE3OgmN6ameu9ePsg-1
Received: by mail-ed1-f70.google.com with SMTP id
 r25-20020a05640216d900b003dca3501ab4so14980775edx.15
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Nov 2021 06:32:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GSLThJptwBqmEcA/2EDZYfURyVY2QadVN/BrJaE+E1M=;
 b=ONlRdXrAoFATJmdqproV20W6b2Cfvu0d9mV/ZNVRM9mxVGqVY2fUCn2wuiRLCNWrWY
 f35PX0iCzPI3RwZFxEyoX1/Qa1ltSmdyAaIQ5yrPGOV7d0OZaw2gjEP4x9vfFEELHn9L
 hZY59lO07M9V1pQFJ6YM4je02DtPwqEhArBnjsMLVV7KCcWJw7frP13lVS3YwXms06J5
 z6WgRafZz6g3MzUHQoNotGl1DlDbHDzz7opezFNxUGTv4e4OFVyzEwZe/kLbvl+2Xf80
 FV9SZLjAc0ggGrRZIWAtNr8Uwoac/BTC8mferfeczIUuBvVe1v/1vACcnpuGm8CB4nTl
 +caw==
X-Gm-Message-State: AOAM533ASwPCoS10qtI4/DziHAP1WoUrCmMn54OYBDpNVTly3fSfzGvm
 b6arynBaTS+OqoC6ANe7Tq6popq5MZXHgh1/ZTMLlDfcU74N0q0iv220FqD44/oCDdDb5A4B/9m
 41QRo0uv9cl6hjk270QaGTIe/PTMFlHmEVC8=
X-Received: by 2002:a17:907:3e8a:: with SMTP id
 hs10mr397877ejc.58.1636381976985; 
 Mon, 08 Nov 2021 06:32:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy/fBwVFyJ2jFRGptkCkf7O5XHgNBCnhx8whGaA/Xi4PIlKJmqjj3f5yzYOozHzj7IPfFqFVA==
X-Received: by 2002:a17:907:3e8a:: with SMTP id
 hs10mr397858ejc.58.1636381976840; 
 Mon, 08 Nov 2021 06:32:56 -0800 (PST)
Received: from [10.40.1.223] ([81.30.35.201])
 by smtp.gmail.com with ESMTPSA id z6sm8178234edc.53.2021.11.08.06.32.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Nov 2021 06:32:56 -0800 (PST)
Message-ID: <b3523a57-a21e-80ca-561d-23f6ee89913d@redhat.com>
Date: Mon, 8 Nov 2021 15:32:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Slark Xiao <slark_xiao@163.com>, hmh@hmh.eng.br, mgross@linux.intel.com
References: <20211108060648.8212-1-slark_xiao@163.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211108060648.8212-1-slark_xiao@163.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 11/8/21 07:06, Slark Xiao wrote: > When WWAN device
 wake from S3 deep, under thinkpad platform, > WWAN would be disabled. This
 disable status could be checked > by command 'nmcli r wwan' or 'rfkill [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mk5hp-006AG9-K6
Subject: Re: [ibm-acpi-devel] [PATCH v3] Fix WWAN device disabled issue
 after S3 deep
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
Cc: markpearson@lenovo.com, platform-driver-x86@vger.kernel.or,
 linux-kernel@vger.kernel.org, njoshi1@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/8/21 07:06, Slark Xiao wrote:
> When WWAN device wake from S3 deep, under thinkpad platform,
> WWAN would be disabled. This disable status could be checked
> by command 'nmcli r wwan' or 'rfkill list'.
> 
> Issue analysis as below:
>   When host resume from S3 deep, thinkpad_acpi driver would
> call hotkey_resume() function. Finnaly, it will use
> wan_get_status to check the current status of WWAN device.
> During this resume progress, wan_get_status would always
> return off even WWAN boot up completely.
>   In patch V2, Hans said 'sw_state should be unchanged
> after a suspend/resume. It's better to drop the
> tpacpi_rfk_update_swstate call all together from the
> resume path'.
>   And it's confimed by Lenovo that GWAN is no longer
>  available from WHL generation because the design does not
>  match with current pin control.
> 
> Signed-off-by: Slark Xiao <slark_xiao@163.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

I will merge this once 5.16-rc1 is out.

Regards,

Hans

> ---
>  drivers/platform/x86/thinkpad_acpi.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 50ff04c84650..f1cbd27282e1 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -1178,15 +1178,6 @@ static int tpacpi_rfk_update_swstate(const struct tpacpi_rfk *tp_rfk)
>  	return status;
>  }
>  
> -/* Query FW and update rfkill sw state for all rfkill switches */
> -static void tpacpi_rfk_update_swstate_all(void)
> -{
> -	unsigned int i;
> -
> -	for (i = 0; i < TPACPI_RFK_SW_MAX; i++)
> -		tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
> -}
> -
>  /*
>   * Sync the HW-blocking state of all rfkill switches,
>   * do notice it causes the rfkill core to schedule uevents
> @@ -3129,9 +3120,6 @@ static void tpacpi_send_radiosw_update(void)
>  	if (wlsw == TPACPI_RFK_RADIO_OFF)
>  		tpacpi_rfk_update_hwblock_state(true);
>  
> -	/* Sync sw blocking state */
> -	tpacpi_rfk_update_swstate_all();
> -
>  	/* Sync hw blocking state last if it is hw-unblocked */
>  	if (wlsw == TPACPI_RFK_RADIO_ON)
>  		tpacpi_rfk_update_hwblock_state(false);
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
