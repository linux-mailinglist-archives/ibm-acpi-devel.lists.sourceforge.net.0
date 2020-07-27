Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4E722EAA9
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 13:04:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k00vZ-00086h-8J; Mon, 27 Jul 2020 11:04:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bnocera@redhat.com>) id 1k00vX-00086L-IO
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 11:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TYZO8UGubVO6b7TbEK9k+KaBQ0ioiWH78ppSx0l6/rM=; b=i2yha1zNPOMHSLaVi8NQPOBiVt
 d/qdiXTagWhcDLwxiW8IiPc53TtJtrGQ2EgvcPAxNilVm3cHD9LEyhNDVlPfh4C42Wpgr2eKyN+FV
 hiAnQgIeTxj8HiVWVy4wbgrTbnGJKhfPT3YDdXuaOMCK30ymLllvrZ4dH6QdbP+hkl9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TYZO8UGubVO6b7TbEK9k+KaBQ0ioiWH78ppSx0l6/rM=; b=VEXuNF6UaaX44a9dkCyprNpvV6
 hsTFEf9EKhlWLr+fJy0giOAhsjmDgMYW258GbtGQ3tLGYnT0Z1sPcOhesnJtdJpqm4qgef69NZHGh
 ELPr33vEkvsfliqX6SsMJDgUdL4UalvFytxhyj8kbDdVJmqIdmc/XjNt7uRhFUXzcHv4=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k00vS-00100N-RU
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 11:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595847844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TYZO8UGubVO6b7TbEK9k+KaBQ0ioiWH78ppSx0l6/rM=;
 b=Ncyy5Tm1A7N41s0D/DINCmhULkBKx3ypi8A4ljUypq+Efd8s4RgHBvaLDAZ99TiJOyPGM3
 rAyVaj5CStPaHeCkztPkSkjHZHFFRTjtrClcm7Xr4jDYEQ8w/1T8LFM5Xw7yb71QqjkLZn
 ojYQiRk1uMx42C0kzP61OS9zM2vPaG8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-131-NA2wYjmLO_yPOSUdgtAlwQ-1; Mon, 27 Jul 2020 07:03:55 -0400
X-MC-Unique: NA2wYjmLO_yPOSUdgtAlwQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88C62106B244;
 Mon, 27 Jul 2020 11:03:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D70D5C1B2;
 Mon, 27 Jul 2020 11:03:54 +0000 (UTC)
Received: from zmail20.collab.prod.int.phx2.redhat.com
 (zmail20.collab.prod.int.phx2.redhat.com [10.5.83.23])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5D4B8180954D;
 Mon, 27 Jul 2020 11:03:54 +0000 (UTC)
Date: Mon, 27 Jul 2020 07:03:54 -0400 (EDT)
From: Bastien Nocera <bnocera@redhat.com>
To: Nitin Joshi1 <njoshi1@lenovo.com>
Message-ID: <321690127.4797880.1595847834329.JavaMail.zimbra@redhat.com>
In-Reply-To: <SG2PR03MB2718DFC08C4ECF7816D1B4E48C720@SG2PR03MB2718.apcprd03.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200629191748.3859-1-markpearson@lenovo.com>
 <732277929.1313334.1593596757447.JavaMail.zimbra@redhat.com>
 <SG2PR03MB2718DFC08C4ECF7816D1B4E48C720@SG2PR03MB2718.apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.36.114.75, 10.4.195.19]
Thread-Topic: [External]  Re: [ibm-acpi-devel] [PATCH v4] platform/x86:
 thinkpad_acpi: lap or desk mode interface
Thread-Index: AQHWY8DIP68AvAZQjE24ENYf+sTd3Jx998kl
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k00vS-00100N-RU
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v4] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: ibm-acpi@hmh.eng.br, Mark RH Pearson <markpearson@lenovo.com>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



----- Original Message -----
> Hello Bastien
> 
> >-----Original Message-----
> >From: Bastien Nocera <bnocera@redhat.com>
> 
> >----- Original Message -----
> >> Newer Lenovo Thinkpad platforms have support to identify whether the
> >>   system is on-lap or not using an ACPI DYTC event from the firmware.
> >>
> >>   This patch provides the ability to retrieve the current mode via sysfs
> >>   entrypoints and will be used by userspace for thermal mode and WWAN
> >>   functionality
> >>
> >> Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
> >> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
> >> Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
> >> Signed-off-by: Mark Pearson <markpearson@lenovo.com>
> >
> >
> >You can add my:
> >Reviewed-by: Bastien Nocera <bnocera@redhat.com>
> 
> It's already added in latest patch and currently in "for-next"
> http://git.infradead.org/linux-platform-drivers-x86.git/commit/acf7f4a59114471c3964f118564fe8e7a6f34bb8

I sent my message nearly a month ago, 2 days before the authoring date
of the patch that was merged, so I'm not sure what you're trying to
tell me here :)



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
