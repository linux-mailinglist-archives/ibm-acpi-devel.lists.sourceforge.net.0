Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 428A222E6E0
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 09:46:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzxpP-0003Nd-Hb; Mon, 27 Jul 2020 07:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1jzxpO-0003NL-04
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 07:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oMBVeCMrmTVhEtBWGjsG1unFoTQ5DrgjjzDJ6NMzZfs=; b=F4lzfludaLvyjE5KD1iDhwZP74
 yOuOFW+3NZCR+Pz/y9DVrKLqAXnE5yQy2dx3xRwWHjC9AlFWYTKCkOUZ4ezbWAxhHUOcnfJIlfIDN
 scdh4DwmTucnbbt4owc302i/CqbCbsFOzjDN7zxE5vorQvV9GYg/fXEXYP/UVG5SIVp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oMBVeCMrmTVhEtBWGjsG1unFoTQ5DrgjjzDJ6NMzZfs=; b=Cy1dBmcqk5pHRzeSRSphnmFvIo
 G6Ov/fUak34CDtKkPjimyXKefcKizZccislv54Y03TvAlTb6OyhTc0NvIJ4TNACknbvBVBIYWO2c6
 3ZKz0uc5X8ZsYAmE38AIKj4qzp8SIigRVw1ZF7Va1pQf5VlG2Lm9qn/42buSC9MDjTOU=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jzxpM-000oo3-Nk
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 07:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595835934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oMBVeCMrmTVhEtBWGjsG1unFoTQ5DrgjjzDJ6NMzZfs=;
 b=NcBw8XlUZ5Cm435c7oC2aPpbyvaDE5705DciVpP6XPz/UkpRwmBOen3ixcP1zz4k0TRwmI
 xpV2STdRyYnaAZQSK8RlqogxwxxWcLhTMhok4TgcCHHng5QBynPI5npJca8dYfKNfnsSNR
 TNxKEZUTTRdkkhvoh/81Y6fpIAeWm9o=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-393-q7R7C2HPN_mlTqdbVbYFXA-1; Mon, 27 Jul 2020 03:45:32 -0400
X-MC-Unique: q7R7C2HPN_mlTqdbVbYFXA-1
Received: by mail-ed1-f72.google.com with SMTP id r24so5269217eds.15
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 00:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oMBVeCMrmTVhEtBWGjsG1unFoTQ5DrgjjzDJ6NMzZfs=;
 b=kmUgN5tmHlnmujKuPX5UqJY0rNaSMmza6KJKocoDke4WBJftmaqBEzxRb81YpOkb0z
 JVBaBy9W1TOBuUJyFSKMlXxMkrGKRZ+cLy2aY681uQkTZJoQhdo2qI+QaXaL4W+3oTfg
 2dTnpS2RmlmyoX5DfaWJsIUlsSNNOjXIBfcQS9E28Z3chmpca3f1mzUlHv9P+pr4fpDe
 zriB8Muw+5JfTFqblM+gAo/ynFLGp5rVuXCkgoyW4amAxB1ET56R3qGYW1eL/lYQwCeS
 eTXdi8p5sAf89YbJ9PW8AythCsR95S/biUaaKmO4HFDfq0Acg/tjVzwk9MBtybe1hksu
 ItsA==
X-Gm-Message-State: AOAM531Met+wAXs9zz5H6UrolfaPnpeK2nMMb74MsgXpLpwJvuksNjfy
 3SB4pQV+UCgNoNHllXjIU1F9lt/B0s3Xnt83viWnPbrX9AqWWQy+VYOV+DbMRM7H+z1RCXlfd2y
 Kh6XIVjcVHGFw5sOVoe8vWEOfztEkwmipujw=
X-Received: by 2002:a17:906:b294:: with SMTP id
 q20mr2115099ejz.223.1595835931531; 
 Mon, 27 Jul 2020 00:45:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxfnpzm5w2mw/jNUlDtxiqUY/d9iJ0u0qln5b8dW/aH3LeubhQN1b6Sy5Yno4zk+7u2dQ26dw==
X-Received: by 2002:a17:906:b294:: with SMTP id
 q20mr2115093ejz.223.1595835931381; 
 Mon, 27 Jul 2020 00:45:31 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id r25sm5659889edy.93.2020.07.27.00.45.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jul 2020 00:45:30 -0700 (PDT)
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
 <20200722054144.GQ1665100@dtor-ws>
 <20200727005049.GA10254@khazad-dum.debian.net>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f67ede61-c9d4-6abc-9b59-a5b2b615d1b6@redhat.com>
Date: Mon, 27 Jul 2020 09:45:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200727005049.GA10254@khazad-dum.debian.net>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jzxpM-000oo3-Nk
Subject: Re: [ibm-acpi-devel] [PATCH 0/3] Add 3 new keycodes and use them
 for 3 new hotkeys on new Lenovo Thinkpads
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Benjamin Berg <bberg@redhat.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Christian Kellner <ckellner@redhat.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andy@infradead.org>, linux-input@vger.kernel.org,
 Darren Hart <dvhart@infradead.org>, Mark Pearson <mpearson@lenovo.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 7/27/20 2:50 AM, Henrique de Moraes Holschuh wrote:
> On Tue, 21 Jul 2020, Dmitry Torokhov wrote:
>> On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
>>> On Fri, 17 Jul 2020, Hans de Goede wrote:
>>>> This is a simple patch-series adding support for 3 new hotkeys found
>>>> on various new Lenovo Thinkpad models.
>>>
>>> For all three patches, pending an ack for the new keycodes by the input
>>> maintainers:
>>>
>>> Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
>>
>> Do you want me to merge all 3 through input tree?
> 
> Hans, Daren, Andy, what do you prefer?

Taking all this upstream through Dmitry's input tree is fine with
me, but this really is up to Andy and/or Daren.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
