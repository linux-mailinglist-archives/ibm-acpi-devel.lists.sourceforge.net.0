Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2A21ED519
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  3 Jun 2020 19:38:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jgXLO-0001cp-Re; Wed, 03 Jun 2020 17:38:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jgXLN-0001ci-GM
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 03 Jun 2020 17:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g4JdSAXlLTFOykR3a704n7KRgSRjVj4aOucsElPOq3c=; b=TM8XR8Wsv3m1nVbpdyWLVohc1U
 i8oJbrWo+h8KMcQsu5tq+Vh+sqXQZb1anjlBWfurhi10YIAD1hA8/T97s1VkeJOmBh05JdDVMoG7O
 vuvLQ15lD4f57PApvPajzpCJi1xdz9UdpLU4wXm9tDpl99pQ92aVHu9fX3GwO95t7Kdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g4JdSAXlLTFOykR3a704n7KRgSRjVj4aOucsElPOq3c=; b=GpoY6IgkBrsMdPrtjfMETkZQzi
 aQUB0gUXnK6anfLK36hKDu+70DsMQ72/XqNMMbZsVxr/2TwlcBql0q6q/VyZhGGIbaZVTDk/Pvdg3
 fRs+jdXHGJyxT6XFZEtnx5pfRfMkJzyEQn3kHn64HlI6wAvHegmljDsZFTzpdS62+h9g=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jgXLL-00Ah88-Qa
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 03 Jun 2020 17:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591205888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g4JdSAXlLTFOykR3a704n7KRgSRjVj4aOucsElPOq3c=;
 b=F9UhnPI9GQH0SQx47IIc5LTN28jE7cM9wph1+9htNvdVAoZmlU2XYbErwpmYJehlDWAx9y
 96fAxTn75Y/M6fA+7fhDgessAkf4k7iIpgsmn4Q1clizOBqQOr0VmPTVSfbetJJyZjBMKq
 u1DGNDTCwxZSZZBKJdnpCKhle2GdnoU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-418OwduYMnuzjJEHMHcDyA-1; Wed, 03 Jun 2020 13:38:06 -0400
X-MC-Unique: 418OwduYMnuzjJEHMHcDyA-1
Received: by mail-wr1-f69.google.com with SMTP id f4so1349388wrp.21
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 03 Jun 2020 10:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g4JdSAXlLTFOykR3a704n7KRgSRjVj4aOucsElPOq3c=;
 b=Z/rnwyOlEUnKMNt6BXBJX4w6hYLcoV0cnf4ha6UK/oDjDb+yHGNbxwGxD+Tr2Cr6YA
 E/nmdFM/4rFHF/SnZ2Vzb8Pwd0Zm0lUGH32otNoM6g58+pyvyhJRZKxEzlRnKuKQptHV
 Um0IlWNKiCp4swuSgIzXj+H78di2QTRx6kOz5JuGNkOyvYwUfc8xEBNjfdGW9USaf6Ks
 Em/5Eav5GP9/GRrJE7HY/bKnbulCjZBgmA6OHPoWXMhFltqrK9vCdCazY+gEUmO7kF8o
 N1lFKe/5V5IcI9YV/pZyzKHlmoVKg49Qtn8RvZWdraRedi9IZopJIVv38KwSGIDfKY8q
 m6WA==
X-Gm-Message-State: AOAM532w6YzANisxRJnbd0A1nZ6oFzzj4IBY89NZguTa6Pu8d2L+85JE
 4B1QwTeGD4/rzR6KAfAD9y9veVlzy0F896/LOAOknoLZy3n8ldxBHx60gCbXLNS+H+1m99ovkxY
 2ZoHlysEH22haVg0IINczlMDKWrbGZ2U6k/w=
X-Received: by 2002:a7b:c385:: with SMTP id s5mr261276wmj.121.1591205885372;
 Wed, 03 Jun 2020 10:38:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLjq4IDRdqkukHBckHKOOOLiGmG+r2akHBeeZCOhLw2fV6SQWj3VXyhtQLJX0YNKizL01l8A==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr261254wmj.121.1591205885130;
 Wed, 03 Jun 2020 10:38:05 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id f11sm4390115wrj.2.2020.06.03.10.38.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 10:38:04 -0700 (PDT)
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
 <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
 <20200602175241.GO89269@dtor-ws>
 <82e9f2ab-a16e-51ee-1413-bedf0122026a@collabora.com>
 <8f97d2e1-497a-495d-bc82-f46dbeba440c@redhat.com>
 <fb5bee72-6a75-88aa-8157-75f07c491eeb@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <681abc14-ef0f-ff15-68ed-944b2f96bdaf@redhat.com>
Date: Wed, 3 Jun 2020 19:38:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <fb5bee72-6a75-88aa-8157-75f07c491eeb@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jgXLL-00Ah88-Qa
Subject: Re: [ibm-acpi-devel] [PATCHv2 0/7] Support inhibiting input devices
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 6/3/20 3:07 PM, Andrzej Pietrasiewicz wrote:
> Hi Hans, hi Dmitry,

<snip>

> I'm taking one step back and looking at the ->open() and ->close()
> driver callbacks. They are called from input_open_device() and
> input_close_device(), respectively:
> 
> input_open_device():
> "This function should be called by input handlers when they
> want to start receive events from given input device."
> 
> ->open() callback:
> "this method is called when the very first user calls
> input_open_device(). The driver must prepare the device to start
> generating events (start polling thread, request an IRQ, submit
> URB, etc.)"
> 
> input_close_device():
> "This function should be called by input handlers when they
> want to stop receive events from given input device."
> 
> ->close() callback:
> "this method is called when the very last user calls
> input_close_device()"
> 
> It seems to me that the callback names do not reflect their
> purpose: their meaning is not to "open" or to "close" but to
> give drivers a chance to control when they start or stop
> providing events to the input core.
> 
> What would you say about changing the callbacks' names?
> I'd envsion: ->provide_events() instead of ->open() and
> ->stop_events() instead of ->close(). Of course drivers can
> exploit the fact of knowing that nobody wants any events
> from them and do whatever they consider appropriate, for
> example go into a low power mode - but the latter is beyond
> the scope of the input subsystem and is driver-specific.

I don't have much of an opinion on changing the names,
to me open/close have always means start/stop receiving
events. This follows the everything is a file philosophy,
e.g. you can also not really "open" a serial port,
yet opening /dev/ttyS0 will activate the receive IRQ
of the UART, etc. So maybe we just need to make the
docs clearer rather then do the rename?  Doing the
rename is certainly going to cause a lot of churn.

Anyways as said, I don't have much of an opinion,
so I'll leave commenting (more) on this to Dmitry.

> With such a naming change in mind let's consider inhibiting.
> We want to be able to control when to disregard events from
> a given device. It makes sense to do it at device level, otherwise
> such an operation would have to be invoked in all associated
> handlers (those that have an open handle associating them with
> the device in question). But of course we can do better than
> merely ignoring the events received: we can tell the drivers
> that we don't want any events from them, and later, at uninhibit
> time, tell them to start providing the events again. Conceptually,
> the two operations (provide or don't provide envents) are exactly
> the same thing we want to be happening at input_open_device() and
> input_close_device() time. To me, changing the names of
> ->open() and ->close() exposes this fact very well.
> 
> Consequently, ->inhibit() and ->uninhibit() won't be needed,
> and drivers which already implement ->provide_events() (formerly
> ->open()) and ->stop_events() (formerly ->close()) will receive
> full inhibit/uninhibit support for free (subject to how well they
> implement ->provide_events()/->stop_events()). Unless we can come
> up with what the drivers might be doing on top of ->stop_events()
> and ->provide_events() when inhibiting/uninhibiting, but it seems
> to me we can't. Can we?

Right. I'm happy that you've come to see that both on open/close
and on inhibit/uninhibit we want to "start receiving events" and
"stop receiving events", so that we only need one set of callbacks.

> Optionally ->close() (only the callback, not input_close_device())
> can be made return a value, just as Hans suggests. The value
> can be ignored in input_close_device() but used in input_inhibit().
> No strong opinion here, though. (btw it seems to me that
> input_inhibit() should be renamed to input_inhibit_device()).

Ack.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
