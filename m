Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C264C220986
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 15 Jul 2020 12:06:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jveJ2-0000Fj-Ir; Wed, 15 Jul 2020 10:06:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jveJ1-0000Fc-Aq
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 15 Jul 2020 10:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5HJsK8ZPfAjwsY6t0ULIJ+idLrWXKovaf2VAE6fs4SI=; b=bWtvkoVQkc/VXJ4aYPL2UyLOHU
 xcuIR9MJUy+zBz7eiEIG1cQY0uzFkecZKKybsYw0UvWktKaZzMJYy2hVxvNAwpglSv/FfvCvV3GwM
 TxzbzwN37AXef/iTTp52f/MqxBEbgTDjYglG3Vdr/WiMBMXrKoTfM2j/mak733QG5i0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5HJsK8ZPfAjwsY6t0ULIJ+idLrWXKovaf2VAE6fs4SI=; b=VRxkFxHemKheub6qTbwCguQk9i
 NhuPjnTsLfHZFszJTs0liwm41c81An2zDWPoLpsa6UxeIKJDQOSnyCpg4J2pJBW8uLDSJJ5Pet0bN
 dbr2PIrS3ZibMvv/NL58dnwY2s2IqW9+Qf57tAGILHgfA6k2+veNouZBPBBwLGfSUsT8=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jveJ0-008YXl-7P
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 15 Jul 2020 10:06:27 +0000
Received: by mail-pj1-f66.google.com with SMTP id ls15so2841963pjb.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 15 Jul 2020 03:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5HJsK8ZPfAjwsY6t0ULIJ+idLrWXKovaf2VAE6fs4SI=;
 b=RP5NpvJYjYiJjhJ2zghg+BJuZQ7VY4qaiiZNKiAnQewiuqB/8JRxj87aeckHuuJd/I
 h1SgpIEJ7yGHz9Wf+j7JdnlVKI1KL5FFR8TncJ55A93nYLzRJRyoZRGjvmU39tVFuWm5
 U8xCwQCAAYQGS+GxNwql354AVX5RjBIxOLpWL8jOxhFSbLJ8z8nBM+u5OS2NISYWz6K3
 SBBMfWUzezhPLuRUliyGMyaNbNUCcdi+d8JlN3YF4LZ/Dmio8Dx2J8dWXeAU4QX/L/0+
 tibyu9X9T6afdNpL3Vp1OfLee5KjvZj/xsgdFH2L0ObZlBnuF4PNHcyMwHLEozBQJJo3
 cVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5HJsK8ZPfAjwsY6t0ULIJ+idLrWXKovaf2VAE6fs4SI=;
 b=eQM/Qb+V7emzNND7iez6Vz32I05EUkA1+Cf+zEZQJomHa8e37AUORUTJbCE1ccekoK
 MuKnAgr3oUUq6hLBein+/us1Cq2WqAKOKlJ+7rxQg+hw/K+i35ADsOMs3HnA4faONv6v
 VRnUwgg5CA4z5/7gGCrOnjL24YnAXCjWoaqugLmTigtsbdAz5WjO/6vScQi5LCHt/3Kf
 a71K4IVHn8yznGMvQYVTw4X7lqXW3V5IyxHWqms+WYLscmueJIAqW2L1Gi+AheMvChGS
 vHDEnGw72SgqALYm07cul2fzepPlb9zO+wWkTpN37ZY95fOw7JyuTZDDKWW50VEuMy+H
 fu0Q==
X-Gm-Message-State: AOAM531dP+pMaQvGVBySCxcJefylfPTXLSf+wt3v3fIAOCXjaoXqRsqF
 aLjh0RnvafCYQoHZjBcMQIOvC5EU7RQkF4iQ/Kcvwl2R
X-Google-Smtp-Source: ABdhPJysLhWQruc3//MNp6n+HC8r6mIhI6MfKnQVI30TD2+7IiQnx1nfKyOJDHfLza86DCm1sa/3RYN9MRPSchqYJoE=
X-Received: by 2002:a17:902:9a4b:: with SMTP id
 x11mr998403plv.255.1594807580701; 
 Wed, 15 Jul 2020 03:06:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200714104250.87970-1-andriy.shevchenko@linux.intel.com>
 <6920cff7-ab7c-a4ef-4f8f-83966b7bf498@redhat.com>
In-Reply-To: <6920cff7-ab7c-a4ef-4f8f-83966b7bf498@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 15 Jul 2020 13:06:04 +0300
Message-ID: <CAHp75Ve2LKjjy3o_Bzu4ce-YO_fSQ721L4KknRMtUgt1nhJoBw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jveJ0-008YXl-7P
Subject: Re: [ibm-acpi-devel] [PATCH v1] platform/x86: thinkpad_acpi: Limit
 size when call strndup_user()
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
Cc: Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jul 14, 2020 at 4:30 PM Hans de Goede <hdegoede@redhat.com> wrote:
> On 7/14/20 12:42 PM, Andy Shevchenko wrote:

...

> > +     kernbuf = strndup_user(userbuf, min_t(long, count, PAGE_SIZE));

> This is not going to work:

You are right!

> Can we please just go with the revert for now?

Yes, I have reverted it. Sorry for troubles.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
