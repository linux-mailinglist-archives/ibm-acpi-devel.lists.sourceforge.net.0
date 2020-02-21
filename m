Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0FB167DAF
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 21 Feb 2020 13:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1j57h8-00080F-Qf; Fri, 21 Feb 2020 12:46:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bberg@redhat.com>) id 1j57h8-000809-4U
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Feb 2020 12:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBLVBUs542X1Vq8pAdGQmP+xNdNH0Q/EkNS8GTw8+pk=; b=lKpNdZadwSAFd9nrSAgYrHChej
 zb13F5+uEYDFCtjkRE13tudGnr7RNhPD+Ugj7QJD+cUDQ9xQFm2vTX+IidQE/boj35ZG8W4/ZpVDc
 KNEPNLuBDUEx2D9gXnLHZGrDQ2EBNRsxLQbxZJPIcwCZsN7Z0SP2VHh6rDJkr3enjkG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pBLVBUs542X1Vq8pAdGQmP+xNdNH0Q/EkNS8GTw8+pk=; b=iZdIIfxBF70agzWmxgotT7xU/a
 Pjz9FHLGcakgKNtJ2UcdWB/U4CXQIN2swLOIJ09rQDG17lyjUBbFnHFneK4kAWSyt/m6b0rh5v94H
 OS3/T2bTpTWF5Scw7fvowkuFiiq/YUt7U8JPapjTtd8VwNE/VPVQMsAy7hiNxHzDEGY4=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1j57h6-00Ciq3-4Z
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Feb 2020 12:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582289158;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pBLVBUs542X1Vq8pAdGQmP+xNdNH0Q/EkNS8GTw8+pk=;
 b=Mzz797SWC2S3tBoONw3G+xn6WMWNPNCAl6KTS9neesuvAhs88tUMd0nxK+vHUcD71v95GV
 +jYPkddKAvztRwPU6ZZ2NlCfUa30Q817Cs8/cXc0O5r8Dx3RdfYukCUIOuqwd/HQry/U9G
 jBY06j/woogjsXQGb3ib6XIu66/9bhw=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-Gjip8Y5iNZOv2rcPsMk26w-1; Fri, 21 Feb 2020 07:45:56 -0500
X-MC-Unique: Gjip8Y5iNZOv2rcPsMk26w-1
Received: by mail-wm1-f69.google.com with SMTP id p2so564243wmi.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 21 Feb 2020 04:45:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=pBLVBUs542X1Vq8pAdGQmP+xNdNH0Q/EkNS8GTw8+pk=;
 b=kdMaV3XzFKhdaKoCzJ+KmZbTCYCCulA/7tlfJ2BVD2uEgHu+NDAflvdxfps+Vxj3R0
 m1Ptm4sAwjJp4RwqPcxEOrAeRa0T3x4PQoeDXOvaUdGSIeJJskwQofl8kefADLP6XoN/
 qua204bXLtujMkOWKAUl2fHcx0NCdwTz45Iia4r116BQQME3vQN3MoKirgN4FP6sUyJY
 6m8Cg9Bydv1csp8CBQn6ew/Xnal3cyQ+ym9YChsqsdkiYEvJVpDuhM1lxq+H2xtksnae
 j9oxKYQ971nu4QSZ8LliXXfAv47Eqk/ujV85LD34lj9XmnajNmnZ1lKPuErjhxA3DwR5
 LHPw==
X-Gm-Message-State: APjAAAWSysK1CRLfUvchhUrjR+hvJSnSwj4EL7MBG+CIZvcaLDQYn4Oz
 iHa8Mk4q9MHz7t2Ez7LjdZYhkJs9Nf7M6+7Pmo7r2GAYQNDU7JA999zuVsBFzUhwaPuIy7FL/HF
 ZzqVe8ASQtea4aKygzgenpt1myBw/G52SNVU=
X-Received: by 2002:adf:f084:: with SMTP id n4mr48240486wro.200.1582289155137; 
 Fri, 21 Feb 2020 04:45:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqxtiGq5NOrdy9I6IUtNFUV96T4BBoSP5U202t66huPoYfCrAk+zdHN+jraDhS1vrqNKI/yqCw==
X-Received: by 2002:adf:f084:: with SMTP id n4mr48240462wro.200.1582289154929; 
 Fri, 21 Feb 2020 04:45:54 -0800 (PST)
Received: from dhcp-64-37.muc.redhat.com (nat-pool-muc-t.redhat.com.
 [149.14.88.26])
 by smtp.gmail.com with ESMTPSA id r6sm3972501wrq.92.2020.02.21.04.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 04:45:54 -0800 (PST)
Message-ID: <eea7179c93b5a5f3766c169f71567e1d75dda304.camel@redhat.com>
From: Benjamin Berg <bberg@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Rajat Jain
 <rajatja@google.com>,  Mark Pearson <mpearson@lenovo.com>
Date: Fri, 21 Feb 2020 13:45:53 +0100
In-Reply-To: <87tv3kxgyx.fsf@intel.com>
References: <20200220074637.7578-1-njoshi1@lenovo.com>
 <CAHp75VcJmEOu1-b7F2UAsv=Gujb=pPLzjz2ye9t4=Q68+ors-w@mail.gmail.com>
 <HK2PR0302MB25937E2946BF38583B3A905DBD130@HK2PR0302MB2593.apcprd03.prod.outlook.com>
 <CACK8Z6GwuOnJUUscriGwKWGBp5PFKyuqUkFYC8tEXa0UEuEZww@mail.gmail.com>
 <PS1PR0302MB260492DDE243BE0A64A39AA7BD130@PS1PR0302MB2604.apcprd03.prod.outlook.com>
 <CACK8Z6HWkafL4EzOndRyiA3k-VyUg8bQ=2diw_wJSxSTyqsE+w@mail.gmail.com>
 <87tv3kxgyx.fsf@intel.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j57h6-00Ciq3-4Z
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH] thinkpad_acpi: Add
 sysfs entry for lcdshadow feature
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Jingoo Han <jingoohan1@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Mat King <mathewk@google.com>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Nitin Joshi1 <njoshi1@lenovo.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Darren Hart <dvhart@infradead.org>, Nitin Joshi <nitjoshi@gmail.com>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On Fri, 2020-02-21 at 14:28 +0200, Jani Nikula wrote:
> In general I think it's preferrable if the hotkey sends the key event to
> userspace that then makes the policy decision of what, if anything, to
> do with it. Everything is much easier if the policy is in userspace
> control. For example, you could define content based policies for
> enabling privacy screen, something that is definitely not possible with
> firmware.
> 
> I emphatize with the desire to just bypass everything at the
> hardware/firmware level, because that is totally in your control (as an
> OEM), and requires no interaction with the operating system
> initially. Exposing the read-only state of the privacy screen is
> helpful, but prevents the OS from building more advanced features on
> top, failing to reach the full potential of the nice hardware feature.

There seems to be a slight misunderstanding here. On the Lenovo laptops
the feature is automatically adjusted by the Firmware. However, the
setting itself is read/write and it can also be controlled from
userspace.

In principle, I agree that it makes sense to control these things from
software and have a toggle key event that is send around. It has the
unfortunate disadvantage though that it requires updating the entire
userspace. Including the ugly side effect that we continue to have
trouble to support these things on X11 due protocol restrictions with
"high" key codes (>= 248).

Benjamin



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
