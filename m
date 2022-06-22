Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 047DB55456E
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Jun 2022 12:55:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o3y0p-0002he-Ru; Wed, 22 Jun 2022 10:55:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1o3y0o-0002hX-M8
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jun 2022 10:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k6t4/ddevN9LBpeC5sqo4i5wJfVj6AfkWCzclXYGPpc=; b=cQNqzzlbwU+ez3eZuo/ZvvrF8u
 PykrlWePiIPtCUtaZJxnVya3rJY0AxiHHMTmC69EVORMWBEHik1KFzgou/MxGpq+DQRNxMSIN/tJV
 zKTsSPfgHQANG+80SuCfir9hyGnpjFHtcbk5UmfPNELCUOcgdkKFUG52JTFW+touYC8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k6t4/ddevN9LBpeC5sqo4i5wJfVj6AfkWCzclXYGPpc=; b=ky+4x/DuoYn+MQVgNKo1Pe13bh
 AxmKON9N25tDRjDZVvwR/Ob4KZeeb99zIkbuGr9wVbgXAWVjwHjL52b4lVI/gBWEB/wa6KLofO95N
 9Jb/e6fwDM4o2NH4T/sCUaJ7XIRsnwXdluhZSpcp7SedMuuM020QC0dSOGJ6bayIImNY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3y0o-00AFgB-9R
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jun 2022 10:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655895300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k6t4/ddevN9LBpeC5sqo4i5wJfVj6AfkWCzclXYGPpc=;
 b=eN8wBovgrTDEn6IiKEaBBFsgrQ8M/NBprqlyhuPS8xPZHIhy9kI6TRWz8BBHgEQMCU09Vk
 cCBcaCXwGX81Xk4Elszc4G6RhrUdGmP+ZksZqW/43Ao6GmjoLp5qmEj0QrHQDEqJujrelf
 cKxykuWVL/y/UvAvQk1pILsuCyBjlzY=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-324-DfRAewlyOhqOJETWLOSjIg-1; Wed, 22 Jun 2022 06:54:58 -0400
X-MC-Unique: DfRAewlyOhqOJETWLOSjIg-1
Received: by mail-ed1-f71.google.com with SMTP id
 q18-20020a056402519200b004358ce90d97so5346692edd.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 22 Jun 2022 03:54:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=k6t4/ddevN9LBpeC5sqo4i5wJfVj6AfkWCzclXYGPpc=;
 b=j+28qM2XMsL7BnVf0ZO2kMRXAdZKaSmhixEYC5UDT1/x774ie8SSkGoK8ecqU5ClLS
 4rvsSKpgTJqYrq+MVupAgIfQwKsH0XKcyEoA+CadxycbaWVmRjPchROW9Bqa07l8X7Y1
 Doe6z5/zk3axmMPz7nkCT8aJw6lbC7BD3Z7T+gjhnTLyN6txLBUT5Tysj5YuBAxYcSMP
 vDnxESFafxttQMAVOR2a8yMTnaAwjsjJq/c+bIm41D1WyMI8NHKn2a4BcaIrejFYU5Y5
 JeJxLZwseVCUll/z+IgY2dpmy9vAtXnJJmjjsdA+ThRTaKA/p0e2vJ1IldafY16DAyvq
 vi2A==
X-Gm-Message-State: AJIora+wLC74Ipr0gxsVAdT4+ubdnFdEsoXhT76rEbOR0k6fyI1NsXBd
 o0Y0xPs5vrfjwgRk2IbmrR+uCJ/4jJ6GlFdCdAp0KZm0qRAyEXijhYWfFp/7sTUcyk2JXnA5xPK
 qbTprDR3sVrcHCssFHWzace6wSmbaZz/zx5g=
X-Received: by 2002:a17:907:968f:b0:722:f8ef:ab42 with SMTP id
 hd15-20020a170907968f00b00722f8efab42mr826253ejc.258.1655895297674; 
 Wed, 22 Jun 2022 03:54:57 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1s1MQIektYXKUdcabnhmHLY23vRnaybqz/iQ3lbzwzlSBKjrZOFPAkq+r4yMjkOqHtM7AbWlQ==
X-Received: by 2002:a17:907:968f:b0:722:f8ef:ab42 with SMTP id
 hd15-20020a170907968f00b00722f8efab42mr826243ejc.258.1655895297504; 
 Wed, 22 Jun 2022 03:54:57 -0700 (PDT)
Received: from [192.168.43.127] ([109.37.135.195])
 by smtp.gmail.com with ESMTPSA id
 e15-20020a056402190f00b0043580ac5888sm7109030edz.82.2022.06.22.03.54.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Jun 2022 03:54:56 -0700 (PDT)
Message-ID: <185decd4-0267-fa0e-9f8c-566dae5466a0@redhat.com>
Date: Wed, 22 Jun 2022 12:54:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Jean Delvare <jdelvare@suse.de>, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20220621155511.5b266395@endymion.delvare>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220621155511.5b266395@endymion.delvare>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 6/21/22 15:55,
 Jean Delvare wrote: > Unlike release_mem_region(), 
 a call to release_resource() does not > free the resource, so it has to be
 freed explicitly to avoid a memory > leak. > > Signed-of [...] 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o3y0o-00AFgB-9R
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a
 memory leak of EFCH MMIO resource
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
Cc: Mark Gross <markgross@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/21/22 15:55, Jean Delvare wrote:
> Unlike release_mem_region(), a call to release_resource() does not
> free the resource, so it has to be freed explicitly to avoid a memory
> leak.
> 
> Signed-off-by: Jean Delvare <jdelvare@suse.de>
> Fixes: 455cd867b85b ("platform/x86: thinkpad_acpi: Add a s2idle resume quirk for a number of laptops")
> Cc: Mario Limonciello <mario.limonciello@amd.com>
> Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> Cc: Hans de Goede <hdegoede@redhat.com>
> Cc: Mark Gross <markgross@kernel.org>

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
>  drivers/platform/x86/thinkpad_acpi.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> --- linux-5.18.orig/drivers/platform/x86/thinkpad_acpi.c	2022-05-22 21:52:31.000000000 +0200
> +++ linux-5.18/drivers/platform/x86/thinkpad_acpi.c	2022-06-21 15:49:31.705166709 +0200
> @@ -4529,6 +4529,7 @@ static void thinkpad_acpi_amd_s2idle_res
>  	iounmap(addr);
>  cleanup_resource:
>  	release_resource(res);
> +	kfree(res);
>  }
>  
>  static struct acpi_s2idle_dev_ops thinkpad_acpi_s2idle_dev_ops = {
> 
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
