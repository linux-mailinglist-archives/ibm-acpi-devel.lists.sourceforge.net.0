Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFFC283E0B
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  5 Oct 2020 20:11:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kPUwb-0006ZA-E8; Mon, 05 Oct 2020 18:10:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kPUwZ-0006Z0-2l
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 05 Oct 2020 18:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YoMIv66+/pcP+7tXkGyfiaP3wPkP8AZJOUeLQyrbhCo=; b=FjoDzlnO+ssEsf7YqOiaCS540v
 QQg+vkmYSpYz4aDn++dA/CpQg5vXW3sTz+1G2D2wCJTikrjzyLSbXjMbwM1QxoCeVRejeeTjdyXji
 RsjJC3SLiqAkuo4eobfSDJJ2oLYWfa3+go/u+Wvh5qrkJVGeY7phh2PruyjIYp6GGQF8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YoMIv66+/pcP+7tXkGyfiaP3wPkP8AZJOUeLQyrbhCo=; b=WYfe+E2pZX+/EYdil8M7u5tnlu
 8NrRoIdJvbvcfg6DUt+qZszziPCO2W5jgqvMaxyV0hYSan9YrbI/GtjltHoXAEuyuceNYPN5GRucg
 svYdK/7z8JV+SZUwiJUSR4JmwepFzPUNjwn664YP7n2PTbuQxHQ+ESKDIlLHZNw90Wg8=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPUwR-00HYuC-Mg
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 05 Oct 2020 18:10:39 +0000
Received: by mail-pf1-f195.google.com with SMTP id q123so7484859pfb.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 05 Oct 2020 11:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YoMIv66+/pcP+7tXkGyfiaP3wPkP8AZJOUeLQyrbhCo=;
 b=s1FvaNLzk9ENAUF+dImr5G6uF3ttayAdr3ACaxBA/MFA6jo+FY6tDANTn01a3raqQD
 9Dxru8Cv/VQ9HJfZkv490IkLOJ6zk4WjW2gdMjjjhdIMli3lmGNoaAbkEGAlRSVvmwQr
 A22Oro0X+4/rXIkuQhY0A3e93DBSE2Ah8ihWqV9RiH94dSKJ+454v6WUhX8Qku/2fCB9
 IaoYapNlRFdrGPIPkEkUsp4K4vTB4xNAJiQTFCGNXZ8MBzTqadDJn3b8pZVGKYK5XkxE
 VlRsacm41HnJBo8cXHBiPeH7kiXkkYUa3KaUPA3FcwVcd1QgWybul8C3I51cWAxKKyth
 kmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YoMIv66+/pcP+7tXkGyfiaP3wPkP8AZJOUeLQyrbhCo=;
 b=COZLK1aSQvZ5BluQft2yfuahIse5w7ZnYh3JTkod0AlgdOjprVp8HfgiJYMzM/mYjH
 L6CmVuMFPO/waZ/g0JMnS+RGSRcy4C2nh5UL6pV/aTS+zkwTFAvEnMG+enPySOQ6gm4q
 kisgL/6PJ0Oe+wLq4qyBffW+6s0e47zyg4AvGd3loEtQwUbzOKuKz5ns1jlrddnHDt3S
 BpjmDpq2+E/Eht7FY3riuwgef/RslpIBwOFB1t9lA4xdIaS3qT1NdaWl096yO6CNFEfC
 P8TZ/QdtqaMLlp1gV06t6bEcdsQM3iEfPBJ/WiMUSSbQNjgfjH96Z95zL181i9G2uhPa
 fysA==
X-Gm-Message-State: AOAM53310zEkf1DEx67iHi+krL+QNqQvDwdbOckWHegPB21/sC56pKmb
 SDQNIspb+GSFL0wuBA6GCdA=
X-Google-Smtp-Source: ABdhPJyH4fsGnVblPJB5N4pgMwQJmZq67gBl5WqwS0SGCx7kk269VvXfguknhYlG7b9tInkRJJ8m+Q==
X-Received: by 2002:a63:4945:: with SMTP id y5mr679607pgk.181.1601921417989;
 Mon, 05 Oct 2020 11:10:17 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id v5sm550037pfu.151.2020.10.05.11.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 11:10:16 -0700 (PDT)
Date: Mon, 5 Oct 2020 11:10:14 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20201005181014.GL1009802@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-8-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608112211.12125-8-andrzej.p@collabora.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kPUwR-00HYuC-Mg
Subject: Re: [ibm-acpi-devel] [PATCH v4 7/7] Input: Add "inhibited" property
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
 Ferruh Yigit <fery@cypress.com>, Patrik Fimml <patrikf@chromium.org>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Andrzej,

On Mon, Jun 08, 2020 at 01:22:11PM +0200, Andrzej Pietrasiewicz wrote:
> @@ -284,8 +284,11 @@ static int input_get_disposition(struct input_dev *dev,
>  	case EV_KEY:
>  		if (is_event_supported(code, dev->keybit, KEY_MAX)) {
>  
> -			/* auto-repeat bypasses state updates */
> -			if (value == 2) {
> +			/*
> +			 * auto-repeat bypasses state updates but repeat
> +			 * events are ignored if the key is not pressed
> +			 */
> +			if (value == 2 && test_bit(code, dev->key)) {
>  				disposition = INPUT_PASS_TO_HANDLERS;
>  				break;
>  			}

Is this chunk really part of inhibit support? I'd think we cancel
autorepeat timer when we are releasing a key, no?

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
