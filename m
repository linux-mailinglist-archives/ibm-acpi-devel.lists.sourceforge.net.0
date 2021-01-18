Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 671832FA8E1
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 18 Jan 2021 19:32:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1l1ZJn-0004NO-Fm; Mon, 18 Jan 2021 18:31:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1l1ZJm-0004N9-Bz
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 Jan 2021 18:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a54TCGUhDf5oFr28yNxfQl0fQaK7+/QaB7qAdpXspqI=; b=NEjhro1ElUj+O+8MSV+55A0WEh
 nxi4I0jw2BpatyL5J+dc+zccZNphMKGaoSULAt3uehFefUg3hVvq3Od5WsJQ0l1VA8Pi3pfGdpcQQ
 R3N/8+yDvfVnQPz3RMh0yo2SgUVw35q2GEuMuc54ajgRK9NU5u1BqnptIZkCclm+581Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a54TCGUhDf5oFr28yNxfQl0fQaK7+/QaB7qAdpXspqI=; b=blaZIIO57KhDccpt+4K5gBnD/S
 3sQqIDUXcY+UI4uHrHkzhr2M+1ObfEE8DQEi8H9ZDJ9tRs2QUfrNdOxrI7H8gec7k2v/cjxoeUYe5
 LGK+uozAKMNiQ+08k4vIbZ3J0NXPjx/ZvYljTn0axiCCILRZ/62tDGlug9sRjwWauqDk=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l1ZJd-00D6CU-Pf
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 18 Jan 2021 18:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610994696;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a54TCGUhDf5oFr28yNxfQl0fQaK7+/QaB7qAdpXspqI=;
 b=Bj3HGz42TivQb7DgZzhsa5//vTua93Wu+uveu8R71ytCaXNK8nktjZ3AoxMkOAj4dpOfqp
 u5ds288T2sxGi0Uq9TsI8EI3/fd2fOL/9xI8wE1JD57GBrvJT/85erDioZKE1JHBQxoQZE
 JfuEGbheYYZJhngTyEE8F4AWUiY1UbU=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-5wp_Ij4PPvudT1z0N2qPKg-1; Mon, 18 Jan 2021 13:31:34 -0500
X-MC-Unique: 5wp_Ij4PPvudT1z0N2qPKg-1
Received: by mail-ed1-f72.google.com with SMTP id n18so8187619eds.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 18 Jan 2021 10:31:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a54TCGUhDf5oFr28yNxfQl0fQaK7+/QaB7qAdpXspqI=;
 b=FTnv2qc5zCrePc9F/oOrSp5gBwzzc/5nVu7QR92uTiclImaj5MQaQI0kaShopmRUEI
 WhUDOIiYj0zmzD6SNlqnFnkhsdGQnnqajo6wfQins4zRqjDji4s45N2p1i1YUB3nAVNh
 pXxK20f8rediaqUsMBifx192o5SN1bzeE93sbeR/s6U4aOPo+E0J50Cr/KaUDY4eYP6x
 TFJfFnICBe/k8V9g1ZZcObktz5LppKqPToYRwJCvII8C4TnmGXYy5fSoZd0xUGC2csXa
 PVTMOUFfCSNkEdKMjvHaf4R3R87m+//WUe2KRir+3Xtjx0WRGuYA4hbn3CPMepxlTzVH
 v/Qw==
X-Gm-Message-State: AOAM532ZnEyji5Hn/vlI5K4FSCgt1HnLbXU1OEfrdkpuN4sB7inLAF0p
 DgO2Tf0QcAtioZ6iqQdSCawXZOBqPTLz2Fv2VEXfpn6VqtwnI4/ipJS78nf5LodT3KTfAKBrpsA
 9ipaWf/vHgmNnJMiIzon+ySD0B2ecXFSurj4=
X-Received: by 2002:a05:6402:ca1:: with SMTP id
 cn1mr604837edb.128.1610994693487; 
 Mon, 18 Jan 2021 10:31:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzveA2gc+qoL4M3a2i0t5TT9zxCli6tnN+oIurkQnt7iNm6nK7rwKuKd66gjV9joxrD8BqJyg==
X-Received: by 2002:a05:6402:ca1:: with SMTP id
 cn1mr604832edb.128.1610994693330; 
 Mon, 18 Jan 2021 10:31:33 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
 by smtp.gmail.com with ESMTPSA id m24sm9722206ejo.52.2021.01.18.10.31.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Jan 2021 10:31:32 -0800 (PST)
To: jeanniestevenson <jeanniestevenson@protonmail.com>,
 "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>
References: <Pn_Xii4XYpQRFtgkf4PbNgieE89BAkHgLI1kWIq-zFudwh2A1DY5J_DJVHK06rMW_hGPHx_mPE33gd8mg9-8BxqJTaSC6hhPqAsfZlcNGH0=@protonmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ce123ade-c1ed-e73b-bba5-8f7fca89481a@redhat.com>
Date: Mon, 18 Jan 2021 19:31:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <Pn_Xii4XYpQRFtgkf4PbNgieE89BAkHgLI1kWIq-zFudwh2A1DY5J_DJVHK06rMW_hGPHx_mPE33gd8mg9-8BxqJTaSC6hhPqAsfZlcNGH0=@protonmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l1ZJd-00D6CU-Pf
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 P53/73 firmware to fan_quirk_table for dual fan control
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

Hi,

On 1/15/21 5:06 PM, jeanniestevenson wrote:
> This commit enables dual fan control for the new Lenovo P53 and P73 laptop models.
> 
> Signed-off-by: Jeannie Stevenson <jeanniestevenson@protonmail.com>

I know that Henrique has asked for a better commit message, but I'm preparing a fixes
branch to send out to Linus before the weekend and I want to include this, so I'm
going to accept this patch as is. Jeannie it would still be good if you can send
and email reply with the requested info for the archives.

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


> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c404706379d9..69402758b99c 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8782,6 +8782,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '1', 'T', TPACPI_FAN_2CTL),	/* P71 */
>  	TPACPI_Q_LNV3('N', '1', 'U', TPACPI_FAN_2CTL),	/* P51 */
>  	TPACPI_Q_LNV3('N', '2', 'C', TPACPI_FAN_2CTL),	/* P52 / P72 */
> +	TPACPI_Q_LNV3('N', '2', 'N', TPACPI_FAN_2CTL),	/* P53 / P73 */
>  	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
