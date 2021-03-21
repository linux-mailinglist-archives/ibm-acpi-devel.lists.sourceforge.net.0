Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A12953433B2
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Mar 2021 18:24:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lO1nm-0008Uj-Tr; Sun, 21 Mar 2021 17:23:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lO1nl-0008UW-It
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 21 Mar 2021 17:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1EBgYLbvLumtpyOgHFxS+BeK1CHbr2oZvLaw8mjYQQs=; b=KxMHoCqOU8LPo8mGh2QaDkR0dK
 gHcvYl78ijHFNSgJvcU1fjWwWDRLqjp3RWb2fAo/HI4Lw2LVCsk7f628h00LYIh7Iic+5hRTCzSJq
 PldzgH9O2VN1n6/T8O0aRsqmT6zN2jX9mbEPexbpd3EMYo7yKrMIu7IlKlZKfH4LRm7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1EBgYLbvLumtpyOgHFxS+BeK1CHbr2oZvLaw8mjYQQs=; b=dqjJ8MztJeqMxDT21J7FblFuBJ
 yleDx6CWRGN7prLGmaYlx0fkNlGYy3HD7lmHIYg8kOqWzqt2hgeBfj/Ros54nrc8YOXlCnjnGSN82
 CrStoSIRIG5BjEMyLUyHzfnfR/hVOyC/DKL1+KS/qDh/Vg/7qJqyGBmUSBojNHIDI7kg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lO1nj-0003Wf-1l
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 21 Mar 2021 17:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616347416;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1EBgYLbvLumtpyOgHFxS+BeK1CHbr2oZvLaw8mjYQQs=;
 b=gONGAhs3x2DMgXBQsrBbWPMDjLN929kZy7EaKJaDwKE8bRmKcpHaGOU9DHqK73RE5yH0rl
 OZXecnVYBTBJRG6vuh993AgA0G5vtDONWZB66aOGPTMIBdn0jb1AmJL5218RGzpCWxAiPr
 0GfTth64xNE3hu7ysRPRDZS8RI/VeTE=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-279-GR_YPUqlO3iDOpLsiziKxA-1; Sun, 21 Mar 2021 13:23:35 -0400
X-MC-Unique: GR_YPUqlO3iDOpLsiziKxA-1
Received: by mail-ed1-f72.google.com with SMTP id t27so26030073edi.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 21 Mar 2021 10:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1EBgYLbvLumtpyOgHFxS+BeK1CHbr2oZvLaw8mjYQQs=;
 b=JaBs78TTRTDhFyom1B8RFAi8vn+x4uUenn4kRjtzgiEAR3lHqZeg6q5ir/SEpkQ13u
 dAVULzmsQF/rpA4J2l0lqRW5m5dbw7e6XRgImqjPGGHxsBYRZH06uWEw8G5lpBExflzH
 bbRnuyPPx2aHgchHxJVwhmD+yZC75/4WqQE9FvkFpUOoMW0ApBKi0cifFYY0icjj89mh
 fggLcGByBdpXkFiQjrEtMD0cOieGcyRQcRz7DJzlmEoM2pS/oK4/DYEvie8w7k91qmZi
 LACwd88lctEg+N5HGtF3mcv6f7/TpQ4+scnwPj0Gb1BBLiocNLbgK0mENK/TN6ycD9xT
 xc2A==
X-Gm-Message-State: AOAM531y2IG/bfvdN2YCn238aRgdexRr8WhVwlz6K0vNWFBsBB4qFwbz
 IvcX4gaVEVvQifDh4lRRNDqzHaHpCR06+wdq3mk/2s7yEZinv4RK6wQVnc8afNZfRKfmf6adobv
 L4HVwGNRxHZU+LaTGxFvITGGD6/zF/JBkDbM=
X-Received: by 2002:a17:906:4150:: with SMTP id
 l16mr15526210ejk.90.1616347413923; 
 Sun, 21 Mar 2021 10:23:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7JJ2to4dSvMXa6mEcCbe7EwRQ/2LaRJNAkrwmNsYwlQngObrzkKhRKk9qDKCK3ky3hjuz0Q==
X-Received: by 2002:a17:906:4150:: with SMTP id
 l16mr15526191ejk.90.1616347413742; 
 Sun, 21 Mar 2021 10:23:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id m14sm8584437edd.63.2021.03.21.10.23.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Mar 2021 10:23:33 -0700 (PDT)
To: Esteve Varela <esteve.varela@gmail.com>
References: <20210315195823.23212-1-esteve.varela@gmail.com>
 <0cbd3718-278f-ccc7-c389-b8ebb8338491@redhat.com>
 <CAFW5P13wE44FFXY=dUvJykzN_Qrg1mW_USjP4sp_8oXkjFVQTw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <80f7329e-c85d-b45b-fd69-bef85a6ab026@redhat.com>
Date: Sun, 21 Mar 2021 18:23:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAFW5P13wE44FFXY=dUvJykzN_Qrg1mW_USjP4sp_8oXkjFVQTw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lO1nj-0003Wf-1l
Subject: Re: [ibm-acpi-devel] [PATCH] Allow the FnLock LED to change state
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
Cc: ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 3/21/21 6:15 PM, Esteve Varela wrote:
> 2021-03-21 16:38 GMT, Hans de Goede <hdegoede@redhat.com>:
>> Hi,
>>
>> Thank you for your patch, I've applied this patch to my review-hans
>> branch:
>> https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans
>>
>> And I'll also add it to the fixes branch so that it gets included in
>> one of the future 5.12-rc releases.
>>
>> Note it will show up in my review-hans branch once I've pushed my
>> local branch there, which might take a while.
>>
>> Once I've run some tests on this branch the patches there will be
>> added to the platform-drivers-x86/for-next branch and eventually
>> will be included in the pdx86 pull-request to Linus for the next
>> merge-window.
>>
>> Regards,
>>
>> Hans
> 
> Thanks a ton! Especially for making sure there's no hardware
> compatibility issues, since I was afraid that might've been an issue.
> I just noticed that there's a typo in a comment, "foce" that should be
> "force". Maybe that can be amended before the branch is merged
> elsewhere.

I've already pushed this to the public pdx86 git repo for-next and fixes
branches, so too late to amend.

If you can send a followup-patch fixing the type, then I'll add that to
for-next.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
