Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C53D22E3C7
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:57:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsNl-0002rU-Ve; Mon, 27 Jul 2020 01:56:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bnocera@redhat.com>) id 1jqZJi-0002fp-VI
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 Jul 2020 09:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fm2hacvcJh/LVKAI6LvO72ISQWLbBcTh99ZHxmp5Tvc=; b=YtreIAgxN+N6CXt8aR2FeTENVF
 zlutX9qV/Hnkp5PADZ8hckZqEi3vSgNYtEzxTM5YUgDzXh5HOhgM2HBDyvK0Ljv9QQd0vpXibyuIr
 DYh8Z+bca+BMgB5wfpbzDDQTy+rxRiZ1D9E0FhKpmIgLyEdxqeVs2bYpBCpClvdwbm94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fm2hacvcJh/LVKAI6LvO72ISQWLbBcTh99ZHxmp5Tvc=; b=fCPZib8HKahzds7QC+D0WMLy5X
 tqDcj+HFzmr/07qjvNUKc/a4Wp/Xz0ShKgOhwd0jpXytdFwn4xgYU0y9UR/tHGlVYd7dYlJQUySsg
 OVddubw5ljxSRXKp/VXULSyEyIkD4r6M7owcdtl18OpWnyRcTOKUYqAAWRTz2uHqnA3I=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jqZJh-003uxp-R9
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 Jul 2020 09:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593596763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fm2hacvcJh/LVKAI6LvO72ISQWLbBcTh99ZHxmp5Tvc=;
 b=L0RJOVpzdA2z/w4zQsnLrnEuU1b8Zw2NV04HclqzEBTEUesdw8HNhu7BZRCVWi4ZkE3iW/
 Aupg4bfmVw+2MIjhTMsLAFW9X5TmpeL3WUVN99cYLq/BSCyrZP3gcdPOq35WnGeHzl9Uyl
 qTeSQ/iYVOJ/nSgEdsrheU46TYXAcXk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-55JdHF1DMqi0lGH3NpVi9w-1; Wed, 01 Jul 2020 05:45:59 -0400
X-MC-Unique: 55JdHF1DMqi0lGH3NpVi9w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00BD319057A0;
 Wed,  1 Jul 2020 09:45:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EB09A1025EB0;
 Wed,  1 Jul 2020 09:45:57 +0000 (UTC)
Received: from zmail20.collab.prod.int.phx2.redhat.com
 (zmail20.collab.prod.int.phx2.redhat.com [10.5.83.23])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C60371809542;
 Wed,  1 Jul 2020 09:45:57 +0000 (UTC)
Date: Wed, 1 Jul 2020 05:45:57 -0400 (EDT)
From: Bastien Nocera <bnocera@redhat.com>
To: Mark Pearson <markpearson@lenovo.com>
Message-ID: <732277929.1313334.1593596757447.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200629191748.3859-1-markpearson@lenovo.com>
References: <markpearson@lenovo.com>
 <20200629191748.3859-1-markpearson@lenovo.com>
MIME-Version: 1.0
X-Originating-IP: [10.36.114.193, 10.4.195.20]
Thread-Topic: platform/x86: thinkpad_acpi: lap or desk mode interface
Thread-Index: DNhKh74HzXWd2JukZKZQM+djAoanYA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jqZJh-003uxp-R9
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:42:53 +0000
Subject: Re: [ibm-acpi-devel] [PATCH v4] platform/x86: thinkpad_acpi: lap or
 desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>, ibm-acpi-devel@lists.sourceforge.net,
 ibm-acpi@hmh.eng.br, Nitin Joshi <njoshi1@lenovo.com>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



----- Original Message -----
> Newer Lenovo Thinkpad platforms have support to identify whether the
>   system is on-lap or not using an ACPI DYTC event from the firmware.
> 
>   This patch provides the ability to retrieve the current mode via sysfs
>   entrypoints and will be used by userspace for thermal mode and WWAN
>   functionality
> 
> Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
> Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
> Signed-off-by: Mark Pearson <markpearson@lenovo.com>


You can add my:
Reviewed-by: Bastien Nocera <bnocera@redhat.com>

Cheers



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
