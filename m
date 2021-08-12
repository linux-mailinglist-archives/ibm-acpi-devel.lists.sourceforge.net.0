Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDD93EA03C
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 12 Aug 2021 10:04:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mE5hD-0000Ze-Jt; Thu, 12 Aug 2021 08:04:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hdegoede@redhat.com>) id 1mE5hB-0000ZX-Qy
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Aug 2021 08:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qx8Shhu7rI5wSD137gu2JFMhjeGxiRtny4lEcXGkPMA=; b=HC+cJ+5y2ACaNlS8vg1mxQBS4A
 47HwFk57xKggwJ80uVNACCEucMa+qAMlQIOakptAz+Cd3KLbNr88A/64Hzw/JwsGxHda8sEpZRYDe
 7pXo8urgfcV1D0u892C4j8RZxfHpaRFNC1KXhmSLiFQ2ORNoINb/eAtcpWt2XQhSBg/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qx8Shhu7rI5wSD137gu2JFMhjeGxiRtny4lEcXGkPMA=; b=XSgJBsxD/FNW7ntNuC+EvIWBpL
 +B8TvNr/6uWaLNzlNa1YDuLVn00DucDu6AMEygeXK2GjIYucvkQ8JqdnifmOSFZ0+b5MsiILFgOIS
 /X3VT0/l2A4rbbRGQ4BFEoTEaWxOoZ0PRk18RSqnfxed/8fBz5W7NOVSYLaKe1ELvoaQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mE5h3-0005xS-5B
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Aug 2021 08:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628755433;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qx8Shhu7rI5wSD137gu2JFMhjeGxiRtny4lEcXGkPMA=;
 b=Y6BrrX2sJJzG347MuuJKKXkyaSiunHmSQQ2R5ZTHt5M4ux/7dVvj/paFjnxAuzpngM3RMa
 LMhMSY+fJVNntjXnzMJHzo4SjIiSRxWOaVJZ3kiC5w7wej6M62s5NPOchYkI0ICu8jRV2t
 0j9w9Sc6qbmxoevHax3CrWdy1X2Ck/g=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-MS2dFItJNTOmM0m_n9Vt0Q-1; Thu, 12 Aug 2021 04:03:52 -0400
X-MC-Unique: MS2dFItJNTOmM0m_n9Vt0Q-1
Received: by mail-ed1-f72.google.com with SMTP id
 v20-20020aa7d9d40000b02903be68450bf3so2662424eds.23
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 12 Aug 2021 01:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qx8Shhu7rI5wSD137gu2JFMhjeGxiRtny4lEcXGkPMA=;
 b=nZMstn507t2B341AxD3J2XxeKH/ah2Oj8DojnlyQvaJGatHwrJJ7w5t7FtU2T1NGab
 Z1MBVHyYe0fFNqtT6ceP/aQnUv+Bz8m/aoCf2iOPQeC5c32cekvDqHa1Ja0ULGDs92Fg
 FdJKAO5vQFQnhUCJlzdKJqnCnOM9gmh3wrrrgiBu5am0TzeWPG9aXMD4GshRXJZwDI4+
 HZwEfH/ImHMN8CTF+9W9qdyPtt2zVONeaeSrihXazcZItWA2ftmP4ad5sfm7foJQGF07
 R35ohYRcL+2Xp8lAzxy0eSYeRN3ZwY6tRJOnBHO8RmAwXc0MIF4t9MzfXKZRZlc/jHD5
 yekw==
X-Gm-Message-State: AOAM530TMus0iQ0y8fojIx9o47RQS1qBeOJBrP9xuyTrVJJCHP3mJvj7
 0Fs5siK8rxMKP8E+XupOa6vnfFTgIsh7kQWF6y6Dq/zv2jSwQP6R2ZoCMDSm6UEfvOoTnuTV4tw
 nUbk1bmW1O5u/KdnX7R6O0olEYvmPYzLbeRA=
X-Received: by 2002:a17:906:bc5a:: with SMTP id
 s26mr2477538ejv.11.1628755431616; 
 Thu, 12 Aug 2021 01:03:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwR4xlL1YR/rmqfWDucvZuyWYsjA0UpggBan/Z0inZ6za/Ebs0DG0Wy65jZeP+BSORL/b5YrQ==
X-Received: by 2002:a17:906:bc5a:: with SMTP id
 s26mr2477528ejv.11.1628755431470; 
 Thu, 12 Aug 2021 01:03:51 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id d22sm517201ejj.47.2021.08.12.01.03.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Aug 2021 01:03:51 -0700 (PDT)
To: Slark Xiao <slark_xiao@163.com>, hmh@hmh.eng.br,
 Mark Pearson <markpearson@lenovo.com>
References: <20210811093407.5583-1-slark_xiao@163.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <70e53b58-4785-5a3d-9525-a7f9e93cd0d2@redhat.com>
Date: Thu, 12 Aug 2021 10:03:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210811093407.5583-1-slark_xiao@163.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mE5h3-0005xS-5B
Subject: Re: [ibm-acpi-devel] [PATCH] [v2,
 1/1] Fix WWAN device disabled issue after S3 deep
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 8/11/21 11:34 AM, Slark Xiao wrote:
> When WWAN device wake from S3 deep, under thinkpad platform,
> WWAN would be disabled. This disable status could be checked
>  by command 'nmcli r wwan' or 'rfkill list'.
> Issue analysis as below:
>   When host resume from S3 deep, thinkpad_acpi driver would
> call hotkey_resume() function. Finnaly, it will use
> wan_get_status to check the current status of WWAN device.
> During this resume progress, wan_get_status would always
> return off even WWAN boot up completely.
>   If wan_get_status() return off, rfkill_set_sw_state() would set WWAN's
> status as disabled.
>   This may be a fault of LENOVO BIOS.
>   Workaround is add a WWAN device check before rfkill_set_sw_state().
> If it's a Foxconn WWAN device, then we will ignore to do a status update.
> 
> Signed-off-by: Slark Xiao <slark_xiao@163.com>

Thank you for debugging this and thank you for the patch.

I'm not in favor of using a pci-device-id list here. Maybe we should
simply just never update the sw-rfkill state after a suspend-resume ?

I mean the sw_state should be unchanged after a suspend/resume.

Only the hw_state on older devices which still have a physical
radio on/off slider on the side might have changed during suspend.

So I think it might be better to just drop the tpacpi_rfk_update_swstate
call all together from the resume path?

Mark do you have any input here?

Regards,

Hans



> ---
>  drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 603156a6e3ed..e3b7bc0e7a33 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -1159,6 +1159,13 @@ struct tpacpi_rfk_ops {
>  
>  static struct tpacpi_rfk *tpacpi_rfkill_switches[TPACPI_RFK_SW_MAX];
>  
> +/*Foxconn SDX55 T77W175 products. All available device ID*/
> +static const struct pci_device_id foxconn_device_ids[] = {
> +	{ PCI_DEVICE(PCI_VENDOR_ID_FOXCONN, 0xE0AB) },
> +	{ PCI_DEVICE(PCI_VENDOR_ID_FOXCONN, 0xE0AF) },
> +	{ PCI_DEVICE(PCI_VENDOR_ID_FOXCONN, 0xE0B4) },
> +	{}
> +};
>  /* Query FW and update rfkill sw state for a given rfkill switch */
>  static int tpacpi_rfk_update_swstate(const struct tpacpi_rfk *tp_rfk)
>  {
> @@ -1182,8 +1189,13 @@ static void tpacpi_rfk_update_swstate_all(void)
>  {
>  	unsigned int i;
>  
> -	for (i = 0; i < TPACPI_RFK_SW_MAX; i++)
> -		tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
> +	for (i = 0; i < TPACPI_RFK_SW_MAX; i++) {
> +		if (pci_dev_present(foxconn_device_ids) && i == 1)
> +			pr_info("Find Foxconn wwan device, ignore to update rfkill switch status\n");
> +		else
> +			tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
> +
> +	}
>  }
>  
>  /*
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
