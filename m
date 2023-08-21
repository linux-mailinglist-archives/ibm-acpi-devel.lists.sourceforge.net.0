Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E611878297E
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 21 Aug 2023 14:50:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qY4MC-0007n6-EA;
	Mon, 21 Aug 2023 12:50:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qY4MB-0007n0-D6
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 21 Aug 2023 12:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U2tMdqihoLdVc/FNclnLyyqSQNriGxLnDeEcp+obbhU=; b=b58TsiXLOotT5Zz/w55LfIaFkn
 AxcNsOWa6EQdfKEbfOdZSwMhQNn7ALWOuw9e03ip3CWfaY+1va7HtuqhPFcc64p6qEDDQ1GgtEtcU
 c+g40aJkSsCsNVmZmav9GJrmcGjYiXLQRTJawa5IqhW0yfTvoEHwLu2M3bGekqJ1bKxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U2tMdqihoLdVc/FNclnLyyqSQNriGxLnDeEcp+obbhU=; b=CvpAbDAP1PR7H8A1lR9tWVWPZe
 nTy1XGuPnZ5lKbI0HESVTv7/ggAp3LtBKelsCZFg3MJ/4iUK8ZM+BOm1r0P1lBgBxiBT6pnXcxyPc
 FDGq2gg/TPV+uAOUYYPkkIB2YRZ5i7GToVpiYMAA4cHbgeyka3N0GPTOaTUbvru5axCA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qY4M9-00BNJs-Kb for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 21 Aug 2023 12:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1692622199;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U2tMdqihoLdVc/FNclnLyyqSQNriGxLnDeEcp+obbhU=;
 b=L5VtZk9w658Wu9ZkxuC9MVn2q8ErxKVx7ng7iHCqFevK1lFX2GA+Wqjp/dLid3TG5fAsTJ
 Uw6akBRcqOTfnspM8VeRcUIs5NVGEahhO+wH/8iMek9I0hQMCYNrx5XnHr995lf3bM1414
 pRGfwKMxCg6LRqt7Dkb5cVrEiZrl+0w=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-OGBxo6jSNy-4iRezwR-iiw-1; Mon, 21 Aug 2023 08:49:58 -0400
X-MC-Unique: OGBxo6jSNy-4iRezwR-iiw-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-9a0955ac1dcso192254266b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 21 Aug 2023 05:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692622197; x=1693226997;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U2tMdqihoLdVc/FNclnLyyqSQNriGxLnDeEcp+obbhU=;
 b=HOte3KknHChecPnQOKwsA2ytCMv3T14PVMOueCj48dgN+Pdc5jK3gKznXe0yXgxOg+
 /RJbHS2E71UGpLlqcsp4FWuBheNObFk+nxhYSN29BIAX+WK3KTCbQXFn9K6wEcHdR1c9
 ub0wBR0uKAGwInfCChSxLpb1/LQvmiWBonAu2TYR5WRqLfw81RPnFEf75JeyLTEZvzcI
 dyoRiCpdN1XlLAJZp2i4mQeSPfrx8Uu38LlCcjdW7o5xN0iMMbtvv9gcSdmumpDuf5Tc
 FHYyxKJlWMHXZtw7YKmoKvA85mOntHAec/FqmgAH0+kkNljyIZndBkz2UyzlYudoEwec
 TyEQ==
X-Gm-Message-State: AOJu0Yyjaa2dFcwdAn1C1PdNaszK4Sro7Dl4yXyPgP7S2yAiffWlsaPW
 Wsmj4ek1Kr3ASHNCdqdifMoWDA8/GF5LqoWuh3+kg+wq2mLzULti3SG4+sGh69kkH1+MyL3WWz2
 GEQqzId490bACal6bAoEtSFIXWeZBw0eLjjI=
X-Received: by 2002:a17:906:1da2:b0:99b:c830:cf23 with SMTP id
 u2-20020a1709061da200b0099bc830cf23mr5454459ejh.27.1692622197180; 
 Mon, 21 Aug 2023 05:49:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfv9DsJSZhAGR7ioe4x0Zc5TqTJCwThGMpHNpW8bHZXlrcqN3j3A6qu33K7waNuUF/HM/ziQ==
X-Received: by 2002:a17:906:1da2:b0:99b:c830:cf23 with SMTP id
 u2-20020a1709061da200b0099bc830cf23mr5454446ejh.27.1692622196895; 
 Mon, 21 Aug 2023 05:49:56 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 r25-20020a170906a21900b00992f309cfe8sm6503224ejy.178.2023.08.21.05.49.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Aug 2023 05:49:56 -0700 (PDT)
Message-ID: <d237c65d-f63e-f085-119f-8faf4ecf082c@redhat.com>
Date: Mon, 21 Aug 2023 14:49:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Ruan Jinjie <ruanjinjie@huawei.com>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
References: <20230810122012.2110410-1-ruanjinjie@huawei.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230810122012.2110410-1-ruanjinjie@huawei.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 8/10/23 14:20,
 Ruan Jinjie wrote: > Use memdup_user_nul()
 helper instead of open-coding to simplify the code. > > Signed-off-by: Ruan
 Jinjie <ruanjinjie@huawei.com> Thank you for your patch, I've applied this
 patch to my review-hans branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.4 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qY4M9-00BNJs-Kb
Subject: Re: [ibm-acpi-devel] [PATCH -next] platform/x86: thinkpad_acpi:
 Switch to memdup_user_nul() helper
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

On 8/10/23 14:20, Ruan Jinjie wrote:
> Use memdup_user_nul() helper instead of open-coding to simplify the code.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>

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
>  drivers/platform/x86/thinkpad_acpi.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 85772bad753e..d70c89d32534 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -908,16 +908,9 @@ static ssize_t dispatch_proc_write(struct file *file,
>  	if (count > PAGE_SIZE - 1)
>  		return -EINVAL;
>  
> -	kernbuf = kmalloc(count + 1, GFP_KERNEL);
> -	if (!kernbuf)
> -		return -ENOMEM;
> -
> -	if (copy_from_user(kernbuf, userbuf, count)) {
> -		kfree(kernbuf);
> -		return -EFAULT;
> -	}
> -
> -	kernbuf[count] = 0;
> +	kernbuf = memdup_user_nul(userbuf, count);
> +	if (IS_ERR(kernbuf))
> +		return PTR_ERR(kernbuf);
>  	ret = ibm->write(kernbuf);
>  	if (ret == 0)
>  		ret = count;



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
