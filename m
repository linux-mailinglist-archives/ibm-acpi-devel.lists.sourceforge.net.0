Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA67207643
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Jun 2020 17:00:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jo6tB-00071I-A8; Wed, 24 Jun 2020 15:00:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rjwysocki@gmail.com>) id 1jo6tA-000716-9I
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 24 Jun 2020 15:00:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eykhWQcNNxAwrKLr1Dkv70utXgS770FMiPrM6b8KPjc=; b=U6U8oS5WBsmlBWvHvIjvlnly2I
 OOB0jaQKm+AHf4ohHD+EWNQo2mjQkKZ4nGQxC2Dp6DuvwHvs6TN6DUpHhRZ3G/eN3LSPg5xDWhZ0n
 JG4CnBomrVWF2OA9WnHydG9a0Jj9YjdEJIu3vOUWpGXvhQTYLAORKhBmOLW/hvuaVAAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eykhWQcNNxAwrKLr1Dkv70utXgS770FMiPrM6b8KPjc=; b=CP/FFoSg07VhAf2UPmRGQNQOYs
 /93RTfHCrGGq016oqAodkRxEHnGNvFmNMk5pzJC7saNwN+mBOrKNq7awG6WO6TLxo7w1JwfYY636f
 F2wT0iycUcTQ/JVGSX7tIkPhhpdwbVbhQXMH19L4B9GswIPQQE6M8iyIQMGD3fn4UzLQ=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jo6t8-00GiYC-HV
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 24 Jun 2020 15:00:36 +0000
Received: by mail-ot1-f65.google.com with SMTP id v13so2188194otp.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 24 Jun 2020 08:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eykhWQcNNxAwrKLr1Dkv70utXgS770FMiPrM6b8KPjc=;
 b=BoRN0Wj5VpvHV+Fr6HZUxY/bksBYg+r5Jlis9XAWnnPp0uT2+Ly1BFB67eeLSbICw4
 UAxQgFT4E5jFWVcsBfqO41RrIrD2brWH93UZZHjhicrn/Hl1npTLSmoXo4aDGsyCE7w8
 88U0ekEx6S5D6IbaIh8o5RSH1RzMaa56ltW5gUbBJIPFt0srQY6cP5igEMs42tj9lFT9
 pmdhjY0819atVGiiJeZIpr9g4jBECSldoIYN70WQtxJfTUpXa7oEhksGkqMmqpfj358E
 8mYpgalJ5tWMRxwhs62/cAeevv9NOMo3K1/VEx2Ig2qVrueRZyeBPrdQXn+V8mEO1a9+
 vLHw==
X-Gm-Message-State: AOAM5333geNII0D1eVcvkVGAOfmngzevrO4zf5lPJN7JjZX53TXDOvqe
 9D7FmU/WUPk6Yt9NNcFY+P+1UHDWBBuo5sfrGVw=
X-Google-Smtp-Source: ABdhPJxTfu2nRQ0ID+eDw+0oWm7stVdBgfOBXZxtPamhCD54VzLFyKUSp9gBGIPEG0mIIAqQQkSpe0tvPBek2gXWEWg=
X-Received: by 2002:a9d:7d15:: with SMTP id v21mr22236731otn.118.1593010820398; 
 Wed, 24 Jun 2020 08:00:20 -0700 (PDT)
MIME-Version: 1.0
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-4-andrzej.p@collabora.com>
In-Reply-To: <20200608112211.12125-4-andrzej.p@collabora.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 24 Jun 2020 17:00:09 +0200
Message-ID: <CAJZ5v0j7e9TzDtEiDXmj3fLAQ7CvFHoe7Q3aYKKas3PEXrsUuw@mail.gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rjwysocki[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jo6t8-00GiYC-HV
Subject: Re: [ibm-acpi-devel] [PATCH v4 3/7] ACPI: button: Access input
 device's users under appropriate mutex
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jun 8, 2020 at 1:22 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Inspecting input device's 'users' member should be done under device's
> mutex, so add appropriate invocations.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

This looks like a fix that might be applied independently of the other
patches in the series.

Do you want me to pick it up?

> ---
>  drivers/acpi/button.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/button.c b/drivers/acpi/button.c
> index 78cfc70cb320..ff7ab291f678 100644
> --- a/drivers/acpi/button.c
> +++ b/drivers/acpi/button.c
> @@ -456,13 +456,16 @@ static int acpi_button_resume(struct device *dev)
>  {
>         struct acpi_device *device = to_acpi_device(dev);
>         struct acpi_button *button = acpi_driver_data(device);
> +       struct input_dev *input = button->input;
>
>         button->suspended = false;
> -       if (button->type == ACPI_BUTTON_TYPE_LID && button->input->users) {
> +       mutex_lock(&input->mutex);
> +       if (button->type == ACPI_BUTTON_TYPE_LID && input->users) {
>                 button->last_state = !!acpi_lid_evaluate_state(device);
>                 button->last_time = ktime_get();
>                 acpi_lid_initialize_state(device);
>         }
> +       mutex_unlock(&input->mutex);
>         return 0;
>  }
>  #endif
> --
> 2.17.1
>


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
