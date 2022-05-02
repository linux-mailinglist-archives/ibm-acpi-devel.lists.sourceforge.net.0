Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F01E75172A4
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  2 May 2022 17:33:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nlY2H-0002kL-Ld; Mon, 02 May 2022 15:32:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1nlY24-0002ju-My
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 15:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0sglHWDk0UrNSQnvXeEwWDQVaJy7moHeM6s16y69uVg=; b=YzggogA5mdvHXSy5TdnRFgtebG
 BTwM7+77Je+LyUwrNDUi1HyUE86o5qB1EgmNBzvsFXA3cCpByj8jpHSmm6cCPoJjWdcStXyxiL11G
 qse0chgdRiA/56Xi4Tb8ThMmSlIVnNI//EEL23bLqDkH+O0cgF2MVPXS1v0ykpGbSvVw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0sglHWDk0UrNSQnvXeEwWDQVaJy7moHeM6s16y69uVg=; b=ERW6BsFNu74JwdLj/lBc6fO0fJ
 fCSbXs23Vh/NfpLPmRvNpJO/K5BqFz/1zcpNsIQzUmjOdWpU8ffQSIcqioY/43yRxfsioM3FE63GM
 5HkgzyfqgrKUKA2SdndendpIApyoPMc1SoERtxLhasF3NFkh6ywpkZzMeBOoCfNp4VDY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlY1u-00GfTR-AV
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 15:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651505519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0sglHWDk0UrNSQnvXeEwWDQVaJy7moHeM6s16y69uVg=;
 b=UB+28hMvyo0f3unbIvysVrN1kH4alZlTmIhQ4Uh1JrmLlUkn0IzCTyCw3eESsYC0YSxlZ7
 Te3fmyIdaEQzYtaTBrFdlGsZVBZJrSHQSzQtfwv2NiaMtnKcKZgmrSSPM7ujFmSumt/YzM
 TjaSwrpNSFFSD7MSCUxOp35kYK9UvlQ=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-xbFW6ABxMPOyzoR77Q00dw-1; Mon, 02 May 2022 11:31:56 -0400
X-MC-Unique: xbFW6ABxMPOyzoR77Q00dw-1
Received: by mail-ej1-f69.google.com with SMTP id
 dm7-20020a170907948700b006f3f999ed7dso3263299ejc.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 02 May 2022 08:31:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0sglHWDk0UrNSQnvXeEwWDQVaJy7moHeM6s16y69uVg=;
 b=FmidHbqP6EFTolfeQv9e+LKln37pkP9OCvgdE96yDcCLE4dlBqRihuear6OGhwkwRY
 akec4W6ffiUmUB3KK4IzJI6ImOb8bvhB8bm3aj69BGGh/8ey6E5gDxc5n6JnG6aIq6bK
 B+Obni4GWesN7LD47EUhCEngVtiQB+W/ZNcahyxS4vgjLbj/VL3Q15D5aUdcboaD5btk
 RhtMvhNVol5IM3QZ2FxA1CIZ9oYTHtdkEyxihGpTlcJUam+wZcyqbDyZtkvPifH2WsCb
 FJWGV46oW70FGR2Ho3S16wh6NL8mppNY7u/niXd6Qho839z/zZ4zOhmDuaN/ZfRN1gnV
 K5ow==
X-Gm-Message-State: AOAM532X99VXiXE8S9wHqMX5AK+yuBXMDzL0YEDqLV+HzCVs1b/S1435
 Tf7AXLj8JyobBvK77g3Z/hZuzQXanIIfSueDhTxdhs7tHfjIKTeagDhptngXqVATfrJU7YpA4px
 2rGWRKvZA5hYeT/133Q5snT4kJ+qZ895pFoQ=
X-Received: by 2002:a17:906:3104:b0:6ce:6b85:ecc9 with SMTP id
 4-20020a170906310400b006ce6b85ecc9mr11125206ejx.339.1651505515474; 
 Mon, 02 May 2022 08:31:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIVrdqnhRmWiDRTOAiDHV2xSjT5UaIDqHpuf7N4+qIPVbf8KtFs1CmxMzjfWdo0GGG2m0qpw==
X-Received: by 2002:a17:906:3104:b0:6ce:6b85:ecc9 with SMTP id
 4-20020a170906310400b006ce6b85ecc9mr11125166ejx.339.1651505515066; 
 Mon, 02 May 2022 08:31:55 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 jl1-20020a17090775c100b006f3ef214e2bsm3772097ejc.145.2022.05.02.08.31.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 May 2022 08:31:54 -0700 (PDT)
Message-ID: <0232e24a-eda6-4baa-6a95-13e32b777ce6@redhat.com>
Date: Mon, 2 May 2022 17:31:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Mario Limonciello <mario.limonciello@amd.com>,
 Mark Pearson <markpearson@lenovo.com>
References: <20220429030501.1909-1-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220429030501.1909-1-mario.limonciello@amd.com>
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
 Content preview:  Hi, On 4/29/22 05:04,
 Mario Limonciello wrote: > Lenovo Thinkpads
 have a SMI handler during the D0 transition for NVME > devices specifically
 during resume from s2idle. When the IOMMU > translation layer [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nlY1u-00GfTR-AV
Subject: Re: [ibm-acpi-devel] [PATCH 0/2] Add a workaround for s2idle resume
 on Lenovo laptops
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
Cc: "open list:THINKPAD ACPI EXTRAS DRIVER"
 <ibm-acpi-devel@lists.sourceforge.net>, Mark Gross <mgross@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/29/22 05:04, Mario Limonciello wrote:
> Lenovo Thinkpads have a SMI handler during the D0 transition for NVME
> devices specifically during resume from s2idle.  When the IOMMU
> translation layer is enabled for NVME devices (which is the default
> behavior per the IVRS table), then this SMI handler causes a very long
> resume time (10+ seconds).
> 
> For the common s2idle circumstance on Linux this SMI handler is
> unnecessary and just significantly inflates resume time. To avoid it,
> add a new s2idle resume handler to thinkpad_acpi that will prevent it
> from running on known problematic systems.  If the SMI handler is fixed on
> these systems the DMI data can be modified to exclude them or only match
> problematic BIOS versions.
> 
> Mario Limonciello (2):
>   platform/x86: thinkpad_acpi: Convert btusb DMI list to quirks
>   platform/x86: thinkpad_acpi: Add a s2idle resume quirk for a number of
>     laptops
> 
>  drivers/platform/x86/thinkpad_acpi.c | 134 ++++++++++++++++++++++++++-
>  1 file changed, 131 insertions(+), 3 deletions(-)

Thank you for your patch-series, I've applied the series to my
review-hans branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

I'll also cherry-pick these into the pdx86 fixes branch and add them
to my next 5.18 fixes pull-req to Linus.

Regards,

Hans

 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
