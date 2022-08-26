Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B9F5A2636
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 26 Aug 2022 12:55:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oRWz9-000268-GI;
	Fri, 26 Aug 2022 10:54:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1oRWz8-000262-BC
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 26 Aug 2022 10:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EQ1zneK9DxbiINAMLJbVkqYItLnLRxocRocpFZJXiBQ=; b=drpoEwr8dj2MYenxAVah5b6Uvn
 rVmFyYwhOOGwM5I2XZqdd97niov64p2k6330vDhTL57jlxiunAtANgtMmuQtmLb7tf49GYh6iCUab
 RQyGR0VAOVJjpPn7Rg5+U7MBZF4YeloM/7aUx5ylPjbrsvo6wUtLFoGR3Ufe2O7ccisk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EQ1zneK9DxbiINAMLJbVkqYItLnLRxocRocpFZJXiBQ=; b=bXxlGX4bPiG+LhtcJEWrPQYg5w
 3pVgIHSme+Q0kmMfzSPr89sqqoDlxUWPiVSCiTYAwFNg4LjndDZ2p1mHHdIf1+2gsDcLupXgpVKPN
 GTeieqw4CG1AmkjuaZ8cPbT75zoeW3ac1MZXipvtd21kTcL5RpqkX6NNknf7wPF0ltOs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRWz0-001MeA-U2 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 26 Aug 2022 10:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661511272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EQ1zneK9DxbiINAMLJbVkqYItLnLRxocRocpFZJXiBQ=;
 b=LdwJdE1IK2cgTTJMznXMNG7oUKLKZEZtxBJiDd0acYYzRtYNEAFqbmTtqAMGo4+VbLSXzT
 HhTiJ3OaRvtkkVBto/j1AMO2DLQeNLKs4iEIzplpNGxZpL3qvELX5FDZuwAXg+x4TRgtkT
 6CwIrdsBuk+C/4ZaESHPk+6s/lLA7xI=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-336-NUlw9frXOR6IZ7YVMj0kTA-1; Fri, 26 Aug 2022 06:54:31 -0400
X-MC-Unique: NUlw9frXOR6IZ7YVMj0kTA-1
Received: by mail-ed1-f72.google.com with SMTP id
 w17-20020a056402269100b0043da2189b71so894362edd.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 26 Aug 2022 03:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=EQ1zneK9DxbiINAMLJbVkqYItLnLRxocRocpFZJXiBQ=;
 b=rHhfdApC6dx4WrkYfD2MDaPEM6OiXGviJH361IkhPP/Ky47azuZCEztRXzBAhYkyQd
 B07tb+3clYtCyg9sYeKic92X89mdsKziuKEu6YOwFJLXTENLJgqaO4qNw/a7hjiU2h6/
 3jjn+ENJPPpFHmCnWtBnf8Q4+Nz7iX1Mf7m/3W4KyOJJwmklEcmsgmF56pHLfSQuBCr+
 Nd5P/GAPj4Fu+qUdYjzBCPUiR7F/OuTGn9daJ+Whf8RsaLrdRF0QPbEgq8m514fVUGJ1
 OJl1/7UY/l0AcV67xelUIq1rP8CJjGQoqetwxyVpURtiFZkzqhceaOzStkWVZqvj2yBq
 jyjQ==
X-Gm-Message-State: ACgBeo2SzF/NrY7Kqo1Ik2QkJZpcJcfeUD674gsKejLmdUtcFKwMizGO
 vbEQhaCpqXWNxOSuBJuOsDWmP3oT3nDsjq2l++GcqJzOKAaaoInsvPVNgBGwMaKZRxlRN2NJPuJ
 W+vKAEWdieHUBY6V7GIHae6WP+B7I+r3++Kg=
X-Received: by 2002:a17:907:c24:b0:73d:7c20:cc45 with SMTP id
 ga36-20020a1709070c2400b0073d7c20cc45mr5307335ejc.294.1661511270501; 
 Fri, 26 Aug 2022 03:54:30 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7Zahy8UbiX83PS8DajnrtZl2IMzDHutGMmSOQzE0/tOlE1bRATGqzyd6HBr9SlnmlJ9Wv8FQ==
X-Received: by 2002:a17:907:c24:b0:73d:7c20:cc45 with SMTP id
 ga36-20020a1709070c2400b0073d7c20cc45mr5307323ejc.294.1661511270291; 
 Fri, 26 Aug 2022 03:54:30 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 eq23-20020a170907291700b0073d234e994csm738434ejc.185.2022.08.26.03.54.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Aug 2022 03:54:29 -0700 (PDT)
Message-ID: <8f54d308-7db1-d7d2-abd7-c57c028a28b8@redhat.com>
Date: Fri, 26 Aug 2022 12:54:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
To: Mario Limonciello <mario.limonciello@amd.com>,
 Mark Pearson <markpearson@lenovo.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
References: <20220819180101.6383-1-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220819180101.6383-1-mario.limonciello@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 8/19/22 20:01,
 Mario Limonciello wrote: > It was observed
 that on a Thinkpad T14 Gen1 (AMD) that the platform > profile is starting
 up in 'low-power' mode after refreshing what the > firmware had. [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oRWz0-001MeA-U2
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi:
 Explicitly set to balanced mode on startup
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
Cc: ibm-acpi-devel@lists.sourceforge.net, madcatx@atlas.cz,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 8/19/22 20:01, Mario Limonciello wrote:
> It was observed that on a Thinkpad T14 Gen1 (AMD) that the platform
> profile is starting up in 'low-power' mode after refreshing what the
> firmware had.  This is most likely a firmware bug, but as a harmless
> workaround set the default profile to 'balanced' at thinkpad_acpi startup.
> 
> Reported-by: madcatx@atlas.cz
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216347
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
> v1->v2
>  * Only run on AMD systems (PSC mode)

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note I will also add this to the fixes branch and I will
include this in the next fixes pull-req for 6.0 .

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans

> 
>  drivers/platform/x86/thinkpad_acpi.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 22d4e8633e30..2dbb9fc011a7 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10592,10 +10592,9 @@ static int tpacpi_dytc_profile_init(struct ibm_init_struct *iibm)
>  	/* Ensure initial values are correct */
>  	dytc_profile_refresh();
>  
> -	/* Set AMT correctly now we know current profile */
> -	if ((dytc_capabilities & BIT(DYTC_FC_PSC)) &&
> -	    (dytc_capabilities & BIT(DYTC_FC_AMT)))
> -	    dytc_control_amt(dytc_current_profile == PLATFORM_PROFILE_BALANCED);
> +	/* Workaround for https://bugzilla.kernel.org/show_bug.cgi?id=216347 */
> +	if (dytc_capabilities & BIT(DYTC_FC_PSC))
> +		dytc_profile_set(NULL, PLATFORM_PROFILE_BALANCED);
>  
>  	return 0;
>  }



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
