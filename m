Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93B553BA3
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Jun 2022 22:29:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o3kUm-0004WJ-HV; Tue, 21 Jun 2022 20:29:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jdelvare@suse.de>) id 1o3kUl-0004WD-V9
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Jun 2022 20:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IuzW1JewuqLmTuzHCiMtbFollz7qxFt/ZOTK0UZDSIw=; b=Pnnz5uujszOC92e8L5gcwJVoIJ
 YJhZX/eUATkh68q1yEJNs7knvT8Bu+y1yoySw1KctKZPKKg826m5iaXQEx//3JP2hfAlx5FppfQMW
 81qH7MmM4qQArtTsl14in1haN3/tadv0h0weIcBfRFLHrptmTH4Jt44nDb544EMkoulI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IuzW1JewuqLmTuzHCiMtbFollz7qxFt/ZOTK0UZDSIw=; b=D1WeSL5KroOcd7Rnu7q/mDf1LF
 6Gfe9MZ7ysTGCELGvaIj0m3R74124oBLGhrG2xplOARk0uR5xs3ow396LtrLjIht3n0mk4gr5BvhT
 HLft7lldqxojbYLKsoP5eB/LrRDlfFkHwGceWCZalaZXFeyG8PI3z8nLa/yqlT0SBhck=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o3kUf-009iDX-RV
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Jun 2022 20:29:07 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 82DBF21A83;
 Tue, 21 Jun 2022 20:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1655843335; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IuzW1JewuqLmTuzHCiMtbFollz7qxFt/ZOTK0UZDSIw=;
 b=w/N9GWf0NDylY75hfFlayv+qeRstaKs8QIqFXr7ztEvEP4TE7NhmN2hqYRJHStx6r6Rs6V
 Y0JlnrjzmFeprbL0cqCM2wBeBPMSgsb6iqdjwFp8Rgs7+JgZeFWacjeF9QSGJG0HGv9Z5g
 /2J72GEFAT8DDsVyPXEYnCm6yA3YoOQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1655843335;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IuzW1JewuqLmTuzHCiMtbFollz7qxFt/ZOTK0UZDSIw=;
 b=GWSplYK/G0nNOfxhxt0CuPoDHHHO7M1P+sE3qwsywvAGSdCeQzSFYfFFH1zNi6GTBg0jju
 bSNe7vRs7ctlaABg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4567113A88;
 Tue, 21 Jun 2022 20:28:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id pZcbDwcqsmKNcAAAMHmgww
 (envelope-from <jdelvare@suse.de>); Tue, 21 Jun 2022 20:28:55 +0000
Date: Tue, 21 Jun 2022 22:28:54 +0200
From: Jean Delvare <jdelvare@suse.de>
To: "Limonciello, Mario" <Mario.Limonciello@amd.com>
Message-ID: <20220621222854.3f38369b@endymion.delvare>
In-Reply-To: <MN0PR12MB61010927D68C8BF95697BB92E2B39@MN0PR12MB6101.namprd12.prod.outlook.com>
References: <20220621155511.5b266395@endymion.delvare>
 <MN0PR12MB61010927D68C8BF95697BB92E2B39@MN0PR12MB6101.namprd12.prod.outlook.com>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 21 Jun 2022 17:54:59 +0000, Limonciello, Mario wrote:
 > > Unlike release_mem_region(), a call to release_resource() does not >
 > free the resource, so it has to be freed explicitly to avoid a [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o3kUf-009iDX-RV
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a
 memory leak of EFCH MMIO resource
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
Cc: Mark Gross <markgross@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, 21 Jun 2022 17:54:59 +0000, Limonciello, Mario wrote:
> > Unlike release_mem_region(), a call to release_resource() does not
> > free the resource, so it has to be freed explicitly to avoid a memory
> > leak.
> 
> Thanks for finding and fixing this.

To be honest, credits should go to Yi Zhang at Red Hat. He reported the
bug in another driver, all I did was checking if other drivers might
suffer from the same issue.

> Reviewed-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks!

-- 
Jean Delvare
SUSE L3 Support


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
