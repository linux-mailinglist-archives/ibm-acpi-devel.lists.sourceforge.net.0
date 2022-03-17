Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 488B04DC418
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 17 Mar 2022 11:40:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nUnXt-0006WK-HF; Thu, 17 Mar 2022 10:39:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1nUnXs-0006Vj-6N
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 17 Mar 2022 10:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VhGQgg69D/W2UH6So3aOmkQBD1nBD2QYvTDiVp5TQb4=; b=JBO+Hu49G7s7uWtXUztoiY4PMc
 RNmLBUOqcjiYsLspnJy1F20EfrLR+MhejMUU/VnTV/2sWIX5zz6Vt1qMG1LvSBgXqisDTOZ2Cll0S
 D2vi3t1keJxnblLsF6gydflvms538tWn4a83bgABPp/nplg2PGTPWchmvEN2Hfv5qBpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VhGQgg69D/W2UH6So3aOmkQBD1nBD2QYvTDiVp5TQb4=; b=eqEggSAEgXLkl1/GjUkyaePSdh
 5UC+L04PJONuxiR+AcovUOI12LDfWDOnehfgmNh15FfvOj/8bW1iw216Y6meZpzsuyYAHD/DpT3ij
 yIi+XXRf8RIGibfKs1drvrdFhiDGAmUYqsWH8CM2/VfdGjytMqEJ2fYzAFaTvfkgg488=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUnX9-00046W-2C
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 17 Mar 2022 10:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647513541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VhGQgg69D/W2UH6So3aOmkQBD1nBD2QYvTDiVp5TQb4=;
 b=IiTJzDfHzHlWlIN6d4Ef0cDrfGzBqqzho5SuQZwcWWzI3vzcibqTyE+PSGhyJVtRqR243n
 Br13ZQdjJq4HPGZEAzpHHs/THeNh3ZYSznT3o2Kyl5X7ipLQ3JdkSFRljc/CmVr6wtYRW2
 vx05lymgezIjxGgE3dsFzBtfVtD+GNU=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-150-9LoqKMRtMrm9fuZ5R4ckxw-1; Thu, 17 Mar 2022 06:36:37 -0400
X-MC-Unique: 9LoqKMRtMrm9fuZ5R4ckxw-1
Received: by mail-ej1-f69.google.com with SMTP id
 m12-20020a1709062acc00b006cfc98179e2so2703160eje.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 17 Mar 2022 03:36:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=VhGQgg69D/W2UH6So3aOmkQBD1nBD2QYvTDiVp5TQb4=;
 b=uxtf7n4cRNj1UZP1Av5Rsq0vp2GjtWdPyXTtbERdj3t5Tphd0zoTC8oB/Voac6Q8T8
 S01z0erJCrFJj62GCoD/QXd1lWsgSBWCbvb+ETWcMkXrZOfaVxVvHTyKYyegx2gIziD7
 aerjYhpW5v94F0R+aHk3T5vX458ucuf2nNm+qWTWu3dHPZTcmXx1EigdLwSbloo3bAyg
 lzpm6XooD6wzCHPRSGhRjwkngV//0yjMMJw7c9+F9Xi2SqtY9CUTu7blfipVcbjjZn6j
 iVRb8sx5P+XW8rK03CJOzwNSRMk1eso/rUxsdVSBAZCa8M2jMakQ7ClRCjYQNP3XBT6E
 3ZGA==
X-Gm-Message-State: AOAM533YpT4tU1DsBMeM7TJ3A/j9NTNMJJLF859izxB1PyBc9RytQVTF
 Kk5htbBFO4LlpgOPWHtTuLJdbJLTj2QCVBfchMdA+Z7TB/MFD8oG8N2nIvUyMm+yLl3ZxzNOZk2
 DYVgDohp2fQJE9AU2+4bNVBwWiMI005hqCdA=
X-Received: by 2002:a17:907:7ea7:b0:6db:b3c7:95d6 with SMTP id
 qb39-20020a1709077ea700b006dbb3c795d6mr3684673ejc.480.1647513395734; 
 Thu, 17 Mar 2022 03:36:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEoVZh3TzQ4lQTTV6YzBs9xVQBu2woIMRxvvWZk7+gMktZ4kAkGP6OY5baLJUzqEC21QSNcw==
X-Received: by 2002:a17:907:7ea7:b0:6db:b3c7:95d6 with SMTP id
 qb39-20020a1709077ea700b006dbb3c795d6mr3684657ejc.480.1647513395502; 
 Thu, 17 Mar 2022 03:36:35 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:cdb2:2781:c55:5db0?
 (2001-1c00-0c1e-bf00-cdb2-2781-0c55-5db0.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:cdb2:2781:c55:5db0])
 by smtp.gmail.com with ESMTPSA id
 j11-20020a05640211cb00b00418572a3638sm2541794edw.38.2022.03.17.03.36.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 03:36:35 -0700 (PDT)
Message-ID: <a3f2a34a-1abf-76d5-967f-b41f4c135951@redhat.com>
Date: Thu, 17 Mar 2022 11:36:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
To: trix@redhat.com, hmh@hmh.eng.br, markgross@kernel.org, nathan@kernel.org, 
 ndesaulniers@google.com
References: <20220312145327.1398510-1-trix@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220312145327.1398510-1-trix@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 3/12/22 15:53, trix@redhat.com wrote: > From: Tom Rix
 <trix@redhat.com> > > Clang static analysis returns this false positive >
 thinkpad_acpi.c:8926:19: warning: The left operand > of '!=' is a gar [...]
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nUnX9-00046W-2C
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi:
 consistently check fan_get_status return.
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
Cc: ibm-acpi-devel@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 3/12/22 15:53, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Clang static analysis returns this false positive
> thinkpad_acpi.c:8926:19: warning: The left operand
>   of '!=' is a garbage value
>   (status != 0) ? "enabled" : "disabled", status);
>    ~~~~~~ ^
> 
> The return of fan_get_status* is checked inconsistenly.
> Sometime ret < 0 is an error, sometimes !ret.
> Both fan_get_status() and fan_get_status_safe() return
> 0 on success and return negative otherwise.  Change
> the checks for error, ret < 0, into checks for
> not success, !ret.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

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
>  drivers/platform/x86/thinkpad_acpi.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 708743ec9ae79..c568fae56db29 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8285,7 +8285,7 @@ static int fan_set_enable(void)
>  	case TPACPI_FAN_WR_ACPI_FANS:
>  	case TPACPI_FAN_WR_TPEC:
>  		rc = fan_get_status(&s);
> -		if (rc < 0)
> +		if (rc)
>  			break;
>  
>  		/* Don't go out of emergency fan mode */
> @@ -8304,7 +8304,7 @@ static int fan_set_enable(void)
>  
>  	case TPACPI_FAN_WR_ACPI_SFAN:
>  		rc = fan_get_status(&s);
> -		if (rc < 0)
> +		if (rc)
>  			break;
>  
>  		s &= 0x07;
> @@ -8843,7 +8843,7 @@ static void fan_suspend(void)
>  	/* Store fan status in cache */
>  	fan_control_resume_level = 0;
>  	rc = fan_get_status_safe(&fan_control_resume_level);
> -	if (rc < 0)
> +	if (rc)
>  		pr_notice("failed to read fan level for later restore during resume: %d\n",
>  			  rc);
>  
> @@ -8864,7 +8864,7 @@ static void fan_resume(void)
>  
>  	if (!fan_control_allowed ||
>  	    !fan_control_resume_level ||
> -	    (fan_get_status_safe(&current_level) < 0))
> +	    fan_get_status_safe(&current_level))
>  		return;
>  
>  	switch (fan_control_access_mode) {
> @@ -8918,7 +8918,7 @@ static int fan_read(struct seq_file *m)
>  	case TPACPI_FAN_RD_ACPI_GFAN:
>  		/* 570, 600e/x, 770e, 770x */
>  		rc = fan_get_status_safe(&status);
> -		if (rc < 0)
> +		if (rc)
>  			return rc;
>  
>  		seq_printf(m, "status:\t\t%s\n"
> @@ -8929,7 +8929,7 @@ static int fan_read(struct seq_file *m)
>  	case TPACPI_FAN_RD_TPEC:
>  		/* all except 570, 600e/x, 770e, 770x */
>  		rc = fan_get_status_safe(&status);
> -		if (rc < 0)
> +		if (rc)
>  			return rc;
>  
>  		seq_printf(m, "status:\t\t%s\n",



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
