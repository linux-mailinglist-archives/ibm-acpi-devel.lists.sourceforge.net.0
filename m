Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1DB392AAC
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 27 May 2021 11:24:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lmCF7-0005CQ-VL; Thu, 27 May 2021 09:23:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hdegoede@redhat.com>) id 1lmCF7-0005CK-Dh
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 27 May 2021 09:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u/jxxyRApH7aRU/uOFFHnJ9R4si2NeFb5W7OXIxVnqE=; b=T/taWXYdO3m/Bsi8xjFkzq5SwK
 +WG4gQr0NXb4iQvLGpLm2KbSvVvo+Uq1txxdXqFMDU3kqsHlIyecA27jjXmtsPsPU/CzMVwGvenIH
 Y7LPnjDNavpqQ623WZIO5xmF+FNSCU5UIYgYJRBbQfJtQB1ZSIi07X7IeBWHHtZJdfxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u/jxxyRApH7aRU/uOFFHnJ9R4si2NeFb5W7OXIxVnqE=; b=j7Vwo87+N1RgVXoJmsdwe0Gk8S
 UJxZKafDDfrfGpsM/vbcZQkQ767m28kYSQ57UXHJ1Zh8rWjbIJIgVSK+fgAgSEIVeDY29qsAdBkGE
 aElwoNtuPuKhigprkoHk9u+D/tQ/3RIt5gtGSmcPrJ5+FSVzh8gDz08kYuUi2k1nRSdc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lmCEv-0001Pp-GT
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 27 May 2021 09:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622107416;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u/jxxyRApH7aRU/uOFFHnJ9R4si2NeFb5W7OXIxVnqE=;
 b=cbio2MJR7okKw156jUcFZWXio2e9VcSXoQX7fFxWX09jW90f+WdJSjFVh13DcdHtrTvz9Z
 dRk8oc6RD1uIL3y8WB1gCr3MZWmLRzKlzQBn2rJ6uLZt5631XoeYh90PwoutvHIHnN4QAz
 NbCedrlURzOAeMK3mBBoVS8HOwCvuQo=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-qoLm1VNIND-AxVdARR_uvA-1; Thu, 27 May 2021 05:23:34 -0400
X-MC-Unique: qoLm1VNIND-AxVdARR_uvA-1
Received: by mail-ej1-f69.google.com with SMTP id
 h18-20020a1709063992b02903d59b32b039so1434877eje.12
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 27 May 2021 02:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u/jxxyRApH7aRU/uOFFHnJ9R4si2NeFb5W7OXIxVnqE=;
 b=jqBeDd8ak57/rIC/c1xX6rebRdOddaQme5ABm5bQZmU2DIitXS+t9rhz0VioJ69Z+G
 YkrGJHpa3fQjTcXsJ3ykT/JJ1aoy9a4qFP1bQZcbt2foOt8QBz6hbrA5Pts9qzxstIyd
 iAb+1tq2Td0X5DQG1msSj7dx+5i3/e3Oq3cTLcxC9iFcmClmb4DsHPBan50i+chHCzTY
 jxq/Nqxd/KzUjcrv838yD1HlXB7RIJihMb4NZDropcayvkpnNm7AM/eo7jfgkq1WtW2e
 oS2H7OXF4F6HfrUzt2DsNNeWXBi57ZNm9CKEw+DWgOaqNT5I3ctbUHaobyqtrJvFLZnK
 uDQw==
X-Gm-Message-State: AOAM530w3G2XfxPRhS7tgWN1QV01HrC0boxGva4sLVebJt94HAaYyutg
 qMbM/rebMOjIGttd/G90M2Eo6pLHMY87iFoVpaivB82ESaembPSKPtp6n7afQemyy3p09xKETTN
 ijLtCn9gxa+9zcKEgtgaao3W9RQAY/2ObPNM=
X-Received: by 2002:a17:906:5210:: with SMTP id
 g16mr2848885ejm.116.1622107413388; 
 Thu, 27 May 2021 02:23:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwcjpCut/sI96DejpRN+VAuRaAHUFFepAK5jt0WONw18JAs+EBp7IO2oczxNea4slk7KA0wjg==
X-Received: by 2002:a17:906:5210:: with SMTP id
 g16mr2848872ejm.116.1622107413249; 
 Thu, 27 May 2021 02:23:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id f18sm705138ejz.119.2021.05.27.02.23.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 May 2021 02:23:32 -0700 (PDT)
To: Til Jasper Ullrich <tju@tju.me>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20210525150950.14805-1-tju@tju.me>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7a568685-9849-7642-c193-14e3bfc8cf77@redhat.com>
Date: Thu, 27 May 2021 11:23:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210525150950.14805-1-tju@tju.me>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tju.me]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lmCEv-0001Pp-GT
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: add X1
 Carbon Gen 9 second fan support
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Mark Gross <mgross@linux.intel.com>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 5/25/21 5:09 PM, Til Jasper Ullrich wrote:
> The X1 Carbon Gen 9 uses two fans instead of one like the previous
> generation. This adds support for the second fan. It has been tested
> on my X1 Carbon Gen 9 (20XXS00100) and works fine.
> 
> Signed-off-by: Til Jasper Ullrich <tju@tju.me>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

I'll also cherry-pick this into the fixes branch so that it will
be included in my next pdx86/fixes pull-req for 5.13.

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
> index dd60c9397d35..edd71e744d27 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8853,6 +8853,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
>  	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
> +	TPACPI_Q_LNV3('N', '3', '2', TPACPI_FAN_2CTL),	/* X1 Carbon (9th gen) */
>  };
> 
>  static int __init fan_init(struct ibm_init_struct *iibm)
> --
> 2.31.1
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
