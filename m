Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB952623AA
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  9 Sep 2020 01:40:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kFnDb-0002bJ-Ag; Tue, 08 Sep 2020 23:40:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kFnDa-0002bC-2h
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 23:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Yk0Oeo7I/lK8V0Cta8eWPW8YqT4HApOA17doZKN9Uo=; b=gt3HvlqQdjT9ZGhe9ZI71YrZ6P
 3fuRyTOGZUZhjjuX8OKb0GbbRV1y2d63q/cvMiiTwjHQoYxFSCuTd0YFCxULQ1D5OQMSMhMA/bOCZ
 puCt4qqC8jzaTN17raXC/ofEzGg6FStwdskL70X5EB9P/Z5/BRBsDdnlBursFuMk+D08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Yk0Oeo7I/lK8V0Cta8eWPW8YqT4HApOA17doZKN9Uo=; b=fKOAJI8dsEE++GcMrnfZPi2gmi
 dSbby/L0VRsUtQoN9tin+d+xKPBSDLWL44SbZ3M7TA74+zEeZEOYzhCgZ0tTPfRdIAmuQnQaFuJnL
 W+QQ2rfMXDTNng3DmyfUJ3bK1fCsR3/uWKbDVATAmN/L2JVr86JoHhEr9BW7o9CNALQY=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kFnDS-00HS32-K4
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 08 Sep 2020 23:40:06 +0000
Received: by mail-pl1-f193.google.com with SMTP id m15so579pls.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 08 Sep 2020 16:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6Yk0Oeo7I/lK8V0Cta8eWPW8YqT4HApOA17doZKN9Uo=;
 b=JrNWJy5raaslWzaBiEMRMEbyo4cJ6sPdyW/BLdxulXYAHm02ww4CMUrgxGZLk2YUec
 Sa2kxd0qRiUoyOQuoOA6ltCoyVm33h/VckMnyoP+HBY1bD9SvhLqnzv5RIju4k1h/i2L
 iWJeLlfvHzlgcVkPIGfzhYFnI71rS/hcloIa6yoLZ4DBOpqJhvKJUqW2TKgxQ0B4M56x
 Z6Rj1SOm0uQRT4QBTWSyB3Pw8DZDChOwTxb6fCWtHHFFHlfKAqOzM3P7DoOWqQylRsN+
 eUdoYVQ2nT+4uVfp9UfBpmrodtdlE5eiuxjsQfWirmw1/SZUAsL6f/UJ4nCRiHLxrXVC
 WLug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6Yk0Oeo7I/lK8V0Cta8eWPW8YqT4HApOA17doZKN9Uo=;
 b=E4wnFbb0CEqtQfPvt+45nSPHOscJd0vFXHX/7DdPzxLPxxg6ByRW1iblp/qO9kVL8H
 6y1rTMWY3Wh2XFrA4rVzxVl0IliFYooWHC7TvrkTYmAwXD1fhNd0QKijNbup88w0SgWD
 vybu8HnA7VGRjvws55mahaK5KjnI1QP8sEa493DqVXhouWwWR/ZEvYjympIEH69dOGnH
 wH6CA5T70OrF5c3SpvTDIDA/FyzI4SYegT1AECcwFEEjxZZXwFRi6aKBK+CAA6dAvZ1B
 s/EpTCltvxbZJOQ2m3+vLhDWFVM5rouZGPpKhNMY22srT0bYQPnM+TDaqHtIVJVsIaYV
 4DWA==
X-Gm-Message-State: AOAM532dhu1G9oRpy8b0x5/yua6VtfXaiqM4ROvktHAkTCWk/wULOgP4
 7DVkTsB9lUvklLi0hqFYv8E=
X-Google-Smtp-Source: ABdhPJxvRkujCJovwIcHcF1ZrC+XcMyK8ti/b2fBiGBr9ZrsQTrIz78oKu5RhL+0Ih0pPHXwPCwMzA==
X-Received: by 2002:a17:90a:e517:: with SMTP id
 t23mr1034958pjy.25.1599608392918; 
 Tue, 08 Sep 2020 16:39:52 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id q7sm334213pgg.10.2020.09.08.16.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 16:39:52 -0700 (PDT)
Date: Tue, 8 Sep 2020 16:39:50 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200908233950.GC1665100@dtor-ws>
References: <20200908135147.4044-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908135147.4044-1-hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kFnDS-00HS32-K4
Subject: Re: [ibm-acpi-devel] [PATCH v2 0/4] Add 4 new keycodes and use them
 for 4 new hotkeys on new Lenovo Thinkpads
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
Cc: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andy Shevchenko <andy@infradead.org>, linux-input@vger.kernel.org,
 Darren Hart <dvhart@infradead.org>, Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Hans,

On Tue, Sep 08, 2020 at 03:51:43PM +0200, Hans de Goede wrote:
> Hi All,
> 
> Here is a v2 of my series to get a couple of new hotkeys, and matching
> thinkpad_acpi hkey event codes seen on the last 2 generations of
> Thinkpads supported.
> 
> New in this version that Lenovo got back to me and explained that the 0x1316
> hkey event belongs to Fn + right Shift, so that is mapped now too.
> 
> Since these make both include/uapi/linux/input-event-codes.h and
> drivers/platform/x86 changes one open question with this series is how to
> merge it.
> 
> Dmitry, for v1 of this series you suggested you could merge them all
> through the input tree ? Andy, one of the drivers/platform/x86 maintainers
> gave his Acked-by for this:
> 
> Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

I queued up the series, thank you.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
