Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F4034209976
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 25 Jun 2020 07:25:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1joKNg-0005bQ-NY; Thu, 25 Jun 2020 05:25:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1joKNf-0005bJ-6g
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jun 2020 05:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GXdubhTV2rFDKkg/iMiISj5sENkZjDy3A69VIM0beEA=; b=SzOdwA1EkTSbcXkORB4YFTJKdI
 6Jlh7NGfwjKBMbtBCX2vtTeJpGdyetB+th3KvEunX2ndnvgxnmfWhvq7lCogWC0mOvxkBykfYmMY3
 H2IBejrqIPHKoyvqLYsZ2KwVjGH6tV8+z3C5sMqr+3Oh8Nz1DAhiIEsaQE9hiBZyUkVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GXdubhTV2rFDKkg/iMiISj5sENkZjDy3A69VIM0beEA=; b=SfKnEd0E6jmC/GFtCzQSARCQ9q
 sVOQ1qA2XcQXCMRxF2zo2ApwcQA5Q/OwogJhCi79Op9WuBrQGNadN0IjwPq+udNjgU1qoOZ1fxy/5
 i9oOHaAtOOiMa8Lhwlh17hMHWGNT5b5Qx5vxvicZxvRo4UqpzJIFxC1U93ST0tE5h2WI=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1joKNb-00HPNe-7A
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 25 Jun 2020 05:24:59 +0000
Received: by mail-pf1-f193.google.com with SMTP id b5so2496116pfp.9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 24 Jun 2020 22:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GXdubhTV2rFDKkg/iMiISj5sENkZjDy3A69VIM0beEA=;
 b=otZFkn+xlIJ6hX0J8f+jfwEquSCD1xAz5RZpMUYHAPHAnVIvN+uW98AINOqq4g+NOm
 xL4CZPN2A0vT/ab2Jd2XCzsm6Q5/w8wOML61MOiIDVoBMz0OrpivZ0swlsFXgZwZAcwW
 7DyEZ3/HcKlU1DhOwjTO29PCtzk1lP3TKVS7Lx/82NZEuHIr7JuegxtHHeg4Ha6AI9QG
 daBSc/WMaTGe71/ywHgvTXa54cykNjtby8nkPFqvB34fchJIGyb42BqUtsasKGCOi50C
 DFE+jfZGA7VjFK02RrnQRC5elhGL3QxISyOk3L9XjmBFuebg2RHUMANKgHLaVXcl4OpP
 E8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GXdubhTV2rFDKkg/iMiISj5sENkZjDy3A69VIM0beEA=;
 b=BBFJAwi22Jw7ya3tcp+J5obZFLlR3q+5Pd3UOFLY2LyI0E87kjX2CcAM+XwG4ghRsC
 /aKQfS0/NI0kyO+umhM/QR3sAx34Az0Aw4I7MFF/MkRyExzulHu1yRA3L1pKyocLG7UU
 Q7IQNe1aUvLujZoHRhqUNrIEwdyFitD/zTWIsVZkTZhb2cvVi2uUh2sictmIpYcU6JOL
 Ip3sInyTbV6OJcHa+tNvfuIqgT2T2FwC+MApbY3gDZduhu6YesNEk+o9YsbG9uFvQShT
 /j1E3iVJW0hVcRt67RzMeGTc1javvKtnzhHBAopDqG2qb95y9Rw9q0GH7Gx8Q4VQIlkN
 zi2w==
X-Gm-Message-State: AOAM530M87eIXzPTVigEg6FTQmEcLF6p220XmaEtCSFTI1q3Q6FboZ+W
 kp7Xyzoe0iRwsB/FtjteHs0=
X-Google-Smtp-Source: ABdhPJwXGyiFwlJTNgi0iC6m1Ar4lC3vQXDwOYiT2Ha8Mwjs8VUcVJ7cPdCOD7pg7k+ICwf1UB/M+Q==
X-Received: by 2002:a05:6a00:7c6:: with SMTP id
 n6mr30520985pfu.120.1593062689506; 
 Wed, 24 Jun 2020 22:24:49 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id hv15sm6763798pjb.17.2020.06.24.22.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 22:24:48 -0700 (PDT)
Date: Wed, 24 Jun 2020 22:24:46 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20200625052446.GF248110@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-5-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608112211.12125-5-andrzej.p@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1joKNb-00HPNe-7A
Subject: Re: [ibm-acpi-devel] [PATCH v4 4/7] ACPI: button: Use
 input_device_enabled() helper
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-acpi@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jun 08, 2020 at 01:22:08PM +0200, Andrzej Pietrasiewicz wrote:
> A new helper is available, so use it.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/acpi/button.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/acpi/button.c b/drivers/acpi/button.c
> index ff7ab291f678..4deb2b48d03c 100644
> --- a/drivers/acpi/button.c
> +++ b/drivers/acpi/button.c
> @@ -411,7 +411,7 @@ static void acpi_button_notify(struct acpi_device *device, u32 event)
>  		input = button->input;
>  		if (button->type == ACPI_BUTTON_TYPE_LID) {
>  			mutex_lock(&button->input->mutex);
> -			users = button->input->users;
> +			users = input_device_enabled(button->input);
>  			mutex_unlock(&button->input->mutex);
>  			if (users)

This chunk (pre-patch) is really wrong. 'users' value is obsolete and
can not be trusted the moment we unlocked the mutex. "if" needs to be
inside critical section.

>  				acpi_lid_update_state(device, true);
> @@ -460,7 +460,7 @@ static int acpi_button_resume(struct device *dev)
>  
>  	button->suspended = false;
>  	mutex_lock(&input->mutex);
> -	if (button->type == ACPI_BUTTON_TYPE_LID && input->users) {
> +	if (button->type == ACPI_BUTTON_TYPE_LID && input_device_enabled(input)) {
>  		button->last_state = !!acpi_lid_evaluate_state(device);
>  		button->last_time = ktime_get();
>  		acpi_lid_initialize_state(device);
> -- 
> 2.17.1
> 

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
