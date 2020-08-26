Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C3225331F
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 26 Aug 2020 17:13:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kAx6N-0006Vj-OD; Wed, 26 Aug 2020 15:12:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kAx6M-0006Vc-9u
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 26 Aug 2020 15:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RXqh9vDKtsqu0uMtgz4E47GKyNBkVyPjz1iexD+khD8=; b=CODUo9Tj8kvmulrJwDG6hNJi3X
 c8p/k/o3aqOQsLIWKZZ9gPtCGlsCYlGLjN/SNtFEIku4eo+MR/7pgSyGdOJh0lP5GTqEVbT6lnR4l
 XkImTRiWjMQEwnrp2rfngelYsCTYX4Uw7Fa1v4fNq5QDPL3NrwT1/jtko3+MZ+VNiVYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RXqh9vDKtsqu0uMtgz4E47GKyNBkVyPjz1iexD+khD8=; b=EERX3eBNLnVXZvjrdQqCUTdwu+
 Md07vuYoKgP8zzvWCiDvHyUQnGkfcafZdN2lJ3Zzxq+zWg2JwtN6vvhFfu/nKim3r6Fk63OHCsWEQ
 C4m3A0iDC188Jo6u5imZS2rb20MlocdjYVVt9/3T4Capp3s7lfTlox5Dwxe93dJ0CSaY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kAx6I-00488r-Dr
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 26 Aug 2020 15:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598454738;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RXqh9vDKtsqu0uMtgz4E47GKyNBkVyPjz1iexD+khD8=;
 b=UGooVRpn+k5bEm4Gj7NbBFjZVwKvRWcy90dgfXxmEYSJoCs47IgrmttnjI9DTZSgUC7TXj
 YKs4v1LDDpoyjccVkCe0D4eeSpuR4C/RTmAkqVQsexLYVKUT+UYNNASOXgzfz8o1r0s26Z
 FmD0+74+Hv4ReZIyenFNgdRiXY8r0yw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-WwlAOeabOP-sNBQkG5TMlg-1; Wed, 26 Aug 2020 11:12:15 -0400
X-MC-Unique: WwlAOeabOP-sNBQkG5TMlg-1
Received: by mail-ed1-f70.google.com with SMTP id dd25so797535edb.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 26 Aug 2020 08:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RXqh9vDKtsqu0uMtgz4E47GKyNBkVyPjz1iexD+khD8=;
 b=GKaixqWJ7xo0//zKsHJUo42ForXNzfpme8dcwHCE0cBuEBjjufqsfqEyUIDf15kya0
 P4KF1o3zUqpE9sHkxJlErYFSwmeDCM7GTzz24bpkD+addM9N+vpMIJXFrn79JuKVailM
 RDIZJkFcZ2aUkrhs9p2tueNlkm+PBXwUMBTHHTthtocm7e2UoteD87XyX7uhewBXzlpJ
 3jctLXnE5Y1bF0ueq9wYRbik84fMgbOICfsr4MOVebeyGa27wvCGo4k24zr5C++ajT4y
 svkiKK8gleKBxkmffsLZBpXYrlqxlEFqtA/xG8vTJID6zR/G/uZmFp9W6w1P8hsPZlVy
 0wjQ==
X-Gm-Message-State: AOAM531Aog3dQy9p11S0oTtmB7Yqkf3OAFd3tLE/wASv1yAJBVzXa/jE
 opmrelU0jfDSe2P5hqfeItli8wrgB82bfujHfbrwJTe6lpoIGFLiXoKyjrYCi3fkp3+wQPeN0wA
 J2/yVsI4Nhc5sJHZ9DUjpuwf6ncNWUCJDmok=
X-Received: by 2002:aa7:ce15:: with SMTP id d21mr15171100edv.55.1598454734901; 
 Wed, 26 Aug 2020 08:12:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZxU1frY0JaTpG9m3IBN2zGr2l9QVoi8/sXv8kJCax1c1y8cZtHEgZdzWOSoBUISm94BHThg==
X-Received: by 2002:aa7:ce15:: with SMTP id d21mr15171076edv.55.1598454734731; 
 Wed, 26 Aug 2020 08:12:14 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id t23sm2241356eds.50.2020.08.26.08.12.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Aug 2020 08:12:13 -0700 (PDT)
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
 <20200722054144.GQ1665100@dtor-ws>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7726b68c-4b84-4acc-d08c-59f746a75000@redhat.com>
Date: Wed, 26 Aug 2020 17:12:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200722054144.GQ1665100@dtor-ws>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hmh.eng.br]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kAx6I-00488r-Dr
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
 Benjamin Berg <bberg@redhat.com>, Christian Kellner <ckellner@redhat.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Andy Shevchenko <andy@infradead.org>,
 linux-input@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Mark Pearson <mpearson@lenovo.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Dmitry,

On 7/22/20 7:41 AM, Dmitry Torokhov wrote:
> On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
>> On Fri, 17 Jul 2020, Hans de Goede wrote:
>>> This is a simple patch-series adding support for 3 new hotkeys found
>>> on various new Lenovo Thinkpad models.
>>
>> For all three patches, pending an ack for the new keycodes by the input
>> maintainers:
>>
>> Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> 
> Do you want me to merge all 3 through input tree?

Despite Andy's acked-by:

Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

For merging these through the input tree I'm not seeing these in 5.9-rc2 ?

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
