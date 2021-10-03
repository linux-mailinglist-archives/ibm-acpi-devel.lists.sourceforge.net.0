Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C215420114
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  3 Oct 2021 11:28:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mWxmP-0005tF-Ho; Sun, 03 Oct 2021 09:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mWxmJ-0005t2-Gj
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 03 Oct 2021 09:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V56HbgZtmJRrFGBNlGLGLtwlACx1aZI2qA45hii23VY=; b=ULQ/1b6IMkl5cFFFy2HamEwUhh
 hODeJhO/Wjw4xh30QBV95J4RVFUZ2EC24xk5KAjucTAzRZgsN0XhP7x0pY3UQWVlNRizJ4D/GDPiR
 t0PRehgBlqd2TOBqpckSoEXbAwZFRU86sSgD89xJEUCzIzzXELmNHC6wI7+9nvw12atY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V56HbgZtmJRrFGBNlGLGLtwlACx1aZI2qA45hii23VY=; b=fGuNT2TvCHV54FDq1kjYDMuvAg
 Z3Ykhjqh7MHFCM5jEaPzAWfY1g5PBnwBnhSM+IGxJQ6Q5s7ky8uYCkiMStdxXFcAVaUAd6kSKA317
 ZNlC2HdTm8l43cXc6FtwjGSyV8GGtPnN89AfXcaDJ5Dbo/FVZBeDRJfujkoTID+3jt1M=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mWxmF-002GO5-LC
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 03 Oct 2021 09:27:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BECAC6136A;
 Sun,  3 Oct 2021 09:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633253238;
 bh=Z+JKvj4sN+KWKBgRz5Yx0sp0MJ32bjEtWch2TgPTOuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NR1vzFmoGwwm80elhuJ9ZJ/BQ6NRrvnRbz88Yez0x5TeUJQSvZSX/1P4oKt3gGdbI
 eUmosuobMB0Tiw1lOoc1/L9zuJqKv68PWG/62G7p7BG6RDk3AdrE3x7sS+DMw88xkJ
 FqY4iKV+9UUnWElfR3PcPkD4cT6TqWVcqm4yeUkk=
Date: Sun, 3 Oct 2021 11:27:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Len Baker <len.baker@gmx.com>
Message-ID: <YVl3c7iprlLbMoFJ@kroah.com>
References: <20211003091949.7339-1-len.baker@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211003091949.7339-1-len.baker@gmx.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Oct 03, 2021 at 11:19:49AM +0200, Len Baker wrote:
 > Platform drivers have the option of having the platform core create and
 > remove any needed sysfs attribute files. So take advantage of tha [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mWxmF-002GO5-LC
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Convert
 platform driver to use dev_groups
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, Oct 03, 2021 at 11:19:49AM +0200, Len Baker wrote:
> Platform drivers have the option of having the platform core create and
> remove any needed sysfs attribute files. So take advantage of that and
> refactor the attributes management to avoid to register them "by hand".
> 
> Also, due to some attributes are optionals, refactor the code and move
> the logic inside the "is_visible" callbacks of the attribute_group
> structures.
> 
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Len Baker <len.baker@gmx.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 536 ++++++++++++---------------
>  1 file changed, 236 insertions(+), 300 deletions(-)

Nice!

At first glance this looks great to me, thanks for doing this.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
