Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5531FC7C9
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Jun 2020 09:45:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jlSkl-0000OB-8M; Wed, 17 Jun 2020 07:44:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jlSkk-0000O5-AQ
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Jun 2020 07:44:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LdQWvEMUJWYJ0ayIlG9RiKefcYkYap4fRHuTq5TItU8=; b=IkDDNvmHgDzsgk0CCO+2mefpE6
 6c6VGikcbRB2fFaahe4GDg6Zr70ku08uB8rk/pPDpX6oOWcQ5AYJQDS8NVf8GCjsTTP/hYYpDWWH/
 irmtOH9sIuPI0F9amrs4bIA7NmeV3I3Or/B9H6mKuI+uqngpQS8Vungvn2ZBiWREweRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LdQWvEMUJWYJ0ayIlG9RiKefcYkYap4fRHuTq5TItU8=; b=kLnaVgWahijDho+fTjiiXnCbBZ
 XZGjhnkYKIvDOoRabgRAAuLbUWvHdCLqGBM1PoUsmYs2apeZRHq3J5lRWIqY+zqXlG0a6+nxlOi8M
 eXNZOUrzvLZY10vN6HvqPn8CEWeJp1+aPoOAkuLSN5mqXhTVm+OqdIhp4Fc4/wWkPbnw=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jlSki-0093P4-Nv
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Jun 2020 07:44:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592379879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LdQWvEMUJWYJ0ayIlG9RiKefcYkYap4fRHuTq5TItU8=;
 b=hQBb6VNk5VZ6n6dWI+MiTg3s6OBWkdKILGkGMubVROqy3a/Rgqi55GDqau2Gcc3kpXjhW6
 BH4tz8lO+10eS5fDDJjfTB/EI4XP9cI51RQtKrDCMOblhX2V4swm7etwHqaQa4LuyuGn03
 PpE8w/F1Lk4t2YzWPnAY48Z5JFFIEHk=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-B2warr7aMhSrjEINkExehA-1; Wed, 17 Jun 2020 03:44:38 -0400
X-MC-Unique: B2warr7aMhSrjEINkExehA-1
Received: by mail-ej1-f69.google.com with SMTP id b24so641420ejb.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 17 Jun 2020 00:44:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LdQWvEMUJWYJ0ayIlG9RiKefcYkYap4fRHuTq5TItU8=;
 b=JK/KbmgGLy3jNBkssBhv40kgqSWuyMHNIXxS2c2s9arUYNIbkbr1QnXacKJjh5ydh1
 lOKwChjSz3OzkISXYuKkyOd47RXg71K9bjUqGTOng2ny7GDPqsDkkm/Qz5TIRBq12c/N
 kLyeEMr0fbhhF2Wfpb6hIgV79/D8i35LXk7MEdZMwPuErdwVyK1Q8DmvjS+DW3TNKIbn
 2zqvLCvlvBQNVnxOAKmWGKSSa9K3K23O3s1I3YxeEckW+kBh4uMldNw0fTUIxsk2ZtXe
 G7rKgg4kJHojt5rjdxYU7W1qs2jYta+KF8ZAx4oAE4tQcsANx245PkJQ5V68aKs7tioe
 Ut+g==
X-Gm-Message-State: AOAM531ElAGsGcDouqp9160HWJlb0qEJqdGGomwS1y/MlMXpCSOnlJNo
 AxxDXVnJx0jzbEEPN9bZXqKjvaHWoBDZUewmWe+0IIJO92sbo2uuT0zOBh7OANUx8cb6xILAR/H
 ClKNagueQyBapYXoX7R8OT2vM+Znk2+9auAU=
X-Received: by 2002:a17:906:e47:: with SMTP id
 q7mr6349233eji.279.1592379877130; 
 Wed, 17 Jun 2020 00:44:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztAsLsgDaFxPRHVMxQyWpwuzemyHiIKlOYzD7aKaYp8CK5bsLlyAMtEHuAjaMc+cKU/OAdZw==
X-Received: by 2002:a17:906:e47:: with SMTP id
 q7mr6349200eji.279.1592379876894; 
 Wed, 17 Jun 2020 00:44:36 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id i12sm12619661ejz.122.2020.06.17.00.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 00:44:36 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <40988408-8f36-3a52-6439-34084de6b129@redhat.com>
 <20200616172909.21625-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f9007f37-c526-5fa4-3188-a554d2434177@redhat.com>
Date: Wed, 17 Jun 2020 09:44:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200616172909.21625-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: collabora.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jlSki-0093P4-Nv
Subject: Re: [ibm-acpi-devel] [PATCH] Input: document inhibiting
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
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Barry Song <baohua@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/16/20 7:29 PM, Andrzej Pietrasiewicz wrote:
> Document inhibiting input devices and its relation to being
> a wakeup source.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
> 
> @Hans, @Dmitry,
> 
> My fist attempt at documenting inhibiting. Kindly look at it to see if I haven't got anything
> wrong.
> 
> Andrzej
> 
>   Documentation/input/input-programming.rst | 36 +++++++++++++++++++++++
>   1 file changed, 36 insertions(+)
> 
> diff --git a/Documentation/input/input-programming.rst b/Documentation/input/input-programming.rst
> index 45a4c6e05e39..0cd1ad4504fb 100644
> --- a/Documentation/input/input-programming.rst
> +++ b/Documentation/input/input-programming.rst
> @@ -164,6 +164,42 @@ disconnects. Calls to both callbacks are serialized.
>   The open() callback should return a 0 in case of success or any nonzero value
>   in case of failure. The close() callback (which is void) must always succeed.
>   
> +Inhibiting input devices
> +~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +Inhibiting a device means ignoring input events from it. As such it is about maintaining
> +relationships with input handlers - either an already existing relationships, or
> +relationships to be established while the device is in inhibited state.
> +
> +If a device is inhibited, no input handler will receive events from it.
> +
> +The fact that nobody wants events from the device is exploited further, by calling device's
> +close() (if there are users) and open() (if there are users) on inhibit and uninhibit
> +operations, respectively. Indeed, the meaning of close() is to stop providing events
> +to the input core and that of open() is to start providing events to the input core.

Maybe add the following here? :

Calling the device's close() method on inhibit (if there are users) allows the driver
to save power. Either by directly powering down the device or by releasing the
runtime-pm reference it got in open() when the driver is using runtime-pm.

Otherwise this looks good to me. Thank you for doing this, we (including myself)
really need to get better at doucmenting all sorts of kernel things. Often we have
these long discussions about something on the mailinglist and then everyone is
expected to just know what was decided from the on, which really doesn't work all
that well.

> +
> +Inhibiting and uninhibiting is orthogonal to opening and closing the device by input
> +handlers. Userspace might want to inhibit a device in anticipation before any handler is
> +positively matched against it.
> +
> +Inhibiting and uninhibiting is orthogonal to device's being a wakeup source, too. Being a
> +wakeup source plays a role when the system is sleeping, not when the system is operating.
> +How drivers should program their interaction between inhibiting, sleeping and being a wakeup
> +source is driver-specific.
> +
> +Taking the analogy with the network devices - bringing a network interface down doesn't mean
> +that it should be impossible to be wake the system up on LAN through this interface. So, there
> +may be input drivers which should be considered wakeup sources even when inhibited. Actually,
> +in many i2c input devices their interrupt is declared a wakeup interrupt and its handling
> +happens in driver's core, which is not aware of input-specific inhibit (nor should it be).
> +Composite devices containing several interfaces can be inhibited on a per-interface basis and
> +e.g. inhibiting one interface shouldn't affect the device's capability of being a wakeup source.
> +
> +If a device is to be considered a wakeup source while inhibited, special care must be taken when
> +programming its suspend(), as it might need to call device's open(). Depending on what close()
> +means for the device in question not opening() it before going to sleep might make it impossible
> +to provide any wakeup events. The device is going to sleep anyway.
> +
>   Basic event types
>   ~~~~~~~~~~~~~~~~~
>   
> 


Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
