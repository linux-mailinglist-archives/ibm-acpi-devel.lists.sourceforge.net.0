Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCE92C5710
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 26 Nov 2020 15:25:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kiICx-0008NC-59; Thu, 26 Nov 2020 14:25:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kiICu-0008Mz-VO
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 26 Nov 2020 14:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BbHoCyvudt62ZkkISRhenW8Ojg8BXwiU9Z0Idwssffg=; b=iwHWTmAR1iCSmC72ebje/WglOD
 x7HSv5QQLwChQZlshEgFzHPjbRto+Q8Cn87KIIset84UKyIkAuznD5IE7xNKhjjilNlWqNtisvSUc
 6Z1hpxeTOOFDP8Y7ecfBG9+cNSyzYoH7GkNuxgjF0uq1I11gULYvwJF3qCVG1eF7Z2Cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BbHoCyvudt62ZkkISRhenW8Ojg8BXwiU9Z0Idwssffg=; b=TYvmdorxcvsoH1r/G7jTAttCOR
 W+pT55k5Qgw9TTPM0FYOKT2cisvsyGBF+U6PSNqMU5YNPGRHHdZKT+0xM1hkgj+ViLrRFaMM0mxFU
 tyEYo1qbocTY8iNB4PGBUX46hWHokUcpPLOKfOninYlzvQMuQG1TCLP/rzbu//cW33Ic=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kiICj-00HEYn-74
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 26 Nov 2020 14:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606400695;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BbHoCyvudt62ZkkISRhenW8Ojg8BXwiU9Z0Idwssffg=;
 b=ixE0MBbyicv06gc9ER6b/q+UTGiVUfqdV2zmvTFPt0dxwEMPS6p72vV+aSB+2IDrAEo0Ba
 Id8b4U+QVY0khqb8ZfylWMSgVsNhZZR/HblU/54/6mGNnA6jsNcVNPUCdaanbMlwcVu9sm
 r29oHu6e7/dwE+fli0UYA3S9JjPoez0=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-Zash7AIZPXebWkM3iiD3zQ-1; Thu, 26 Nov 2020 09:24:53 -0500
X-MC-Unique: Zash7AIZPXebWkM3iiD3zQ-1
Received: by mail-ej1-f70.google.com with SMTP id y10so933786ejg.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 26 Nov 2020 06:24:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BbHoCyvudt62ZkkISRhenW8Ojg8BXwiU9Z0Idwssffg=;
 b=PDkCXQKQg9janBHVYXekRaUNZhL4Nnf9Kpa0ANJPKQb+pJkq0z8HSfm3mtsjtXd5ko
 avqulKSH3JTnizXpy78TOtxkczT5V+/06xozW0owkdNBxrfgnzD5luzdPBVmQRNRdkZc
 3CjZHsSAKY1IvXm3kOHoLJTvSoJ/qbGWZnXVVINXHUt181s+EeNp/JiMoPhKGUzkkdCw
 CtT1Qz5adlXwb7zA4IOijFUV0NIQ8Fqpudj52reFF+BFhWGw2PJ/tbgu9mvO+1LH1y+O
 r12ml3CEdEL8lU4cSfQVdUCiHIvq/aJjlLywn3nyaAARjUNGRw+wVAincB1q2lP+vaOP
 +gkg==
X-Gm-Message-State: AOAM530Y1MGVhAaJGFlwfStYgqrfnph4Y/8ZaZjABnDIr6tL23jVa48O
 T79t4XUIIjLyhlmzMUzw7RTlrA473EHJwdnW98fFNxIgUuZmHR73IibdbYuWJWEwNIJwJEKqs/E
 mlo3g6GC4B+dQD+SyOlZsPzO+v3HYq9hlU3E=
X-Received: by 2002:a17:906:3b5b:: with SMTP id
 h27mr2835138ejf.450.1606400691781; 
 Thu, 26 Nov 2020 06:24:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwujo+TSYRx3Wxrd8lMKSCm/JrLVj3wVB3r8fXh8O49dG945RciIJn0TxlJz4kZtMwU8JXZPg==
X-Received: by 2002:a17:906:3b5b:: with SMTP id
 h27mr2835128ejf.450.1606400691586; 
 Thu, 26 Nov 2020 06:24:51 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id lm11sm2340921ejb.52.2020.11.26.06.24.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Nov 2020 06:24:50 -0800 (PST)
To: tamiko-ibm-acpi-devel@43-1.org,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Mark Gross <mgross@linux.intel.com>
References: <20201126000416.2459645-1-tamiko-ibm-acpi-devel@43-1.org>
 <20201126000416.2459645-2-tamiko-ibm-acpi-devel@43-1.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a3c31b49-0cd5-9383-9ad6-e65d0f9834aa@redhat.com>
Date: Thu, 26 Nov 2020 15:24:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201126000416.2459645-2-tamiko-ibm-acpi-devel@43-1.org>
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 43-1.org]
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
X-Headers-End: 1kiICj-00HEYn-74
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Whitelist
 P15 firmware for dual fan control
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Matthias Maier <tamiko@43-1.org>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/26/20 1:04 AM, tamiko-ibm-acpi-devel@43-1.org wrote:
> From: Matthias Maier <tamiko@43-1.org>
> 
> This commit enables dual fan control for the following new Lenovo
> models: P15, P15v.
> 
> Signed-off-by: Matthias Maier <tamiko@43-1.org>

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
> index 5ad06fd98515..26b1502f9bbe 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8786,6 +8786,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
> +	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
>  };
>  
>  static int __init fan_init(struct ibm_init_struct *iibm)
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
