Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAE22EBB96
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Jan 2021 10:15:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kx4tu-0006Zg-PV; Wed, 06 Jan 2021 09:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kx4tt-0006ZJ-9z
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 06 Jan 2021 09:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+uJpEF7Uk5EUUiqpyeX/cKe3mpeFZj5IKRx2fug0EYI=; b=J4xCrOjRn5t3+r9vHYRm1PTGMH
 vLL5gXGmFXjGTe1yZsg1+/MBckKOE41Qr/DL551oxvTSZqctOVY+pHYUywhtblsU8ibql6IobtlQK
 rIywGEMEMcfkEHWoLjWd+CfZSqjkQz1Pk99vRXJj/s6XPjmXos15DhmbLOqpcfNHj7pc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+uJpEF7Uk5EUUiqpyeX/cKe3mpeFZj5IKRx2fug0EYI=; b=NdfkUGj+VKWzjW/45hZNqoAG62
 sFSCn4WlkHn32Xeh6pOf1sDiWbfkFR3VJ92b05CxNdHPMH14ZSeTx+HYYjdERNAZnkzUMAv3RcYiy
 +lLXFF3LicNDdg2seKi7D1eKcU0z2Gs6zXGfM51O/U+swpPpPa03lIei5OJTVUi4S0Os=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kx4tj-00Elh8-7H
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 06 Jan 2021 09:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609924465;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+uJpEF7Uk5EUUiqpyeX/cKe3mpeFZj5IKRx2fug0EYI=;
 b=ikD7rwC9/E5sgKaDy+t9MfgS+yye4RBBnknOn0KVz+PyvU407X8pmzZmzq9xZQAhHz571z
 DzFYuU9JB2hFHOf/WiSwv+S9jyKrtZol4JyuSkYFEN9jZyGl3xSRogOBDhT0fgsV1/7az1
 Lo9Ko4Y7cybLRIsaZLY6agvLidTpXlc=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-4Ztvye1eOe2d-Y81KaY4YA-1; Wed, 06 Jan 2021 04:14:23 -0500
X-MC-Unique: 4Ztvye1eOe2d-Y81KaY4YA-1
Received: by mail-ej1-f69.google.com with SMTP id u25so1054497ejf.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 06 Jan 2021 01:14:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+uJpEF7Uk5EUUiqpyeX/cKe3mpeFZj5IKRx2fug0EYI=;
 b=hAZ7lxvD+vuzfYCAlI3Y61bGf6ZDblQyzn9loTX98v8sK3729g/kq2BBn1BYllFSVo
 vwpVBgi0xD91RcuI5HdN1dShEMf6q51+pc0VOy7MUFNUfsioxcviNbQ1/ApD3PMQ5Qws
 0YKzt2LC96HihxcXN+5AhqejeKGWZq06bIw+PvuU1cU7lyEt4y/AhENCBZW/MZA7GE2s
 isy2jf0Dbi9OkEMNyKE1VXP2+/lT1cyAlhCSEm3YcXZqFZGxBG2xK7pRFka2byqRfCEH
 TwS7atsROaaCW5SYW/soxLci5WAygbg0hcGd57Uwe9IV3oXDeu8YuqVhq+Auur1QmWKZ
 2RWw==
X-Gm-Message-State: AOAM533B438vleztpt2Ko9SP6MuHSwPPbtGr3dzZwqM5K1qagxNXFss1
 Spzg/rR4UkHPjIYKuGhBq4Fmbxj7l/9luxVcA3AK9/UF42KXBUVguQtc4Mma3X5leA7dZgopQCu
 zyp4ZHrOYEa/TMjn92d9rzLBfv837u4qj1rQ=
X-Received: by 2002:a05:6402:7d7:: with SMTP id
 u23mr3222596edy.325.1609924462254; 
 Wed, 06 Jan 2021 01:14:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwT1YbzSvRpNyLPQLciE05RouG9Vvoa41X30q1WIvY2yiZpHAhizOuNPhATcI8jzJEjDiZO6w==
X-Received: by 2002:a05:6402:7d7:: with SMTP id
 u23mr3222586edy.325.1609924462082; 
 Wed, 06 Jan 2021 01:14:22 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
 by smtp.gmail.com with ESMTPSA id b21sm1185407edr.53.2021.01.06.01.14.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Jan 2021 01:14:21 -0800 (PST)
To: Joe Perches <joe@perches.com>, YANG LI <abaci-bugfix@linux.alibaba.com>
References: <1609914976-28113-1-git-send-email-abaci-bugfix@linux.alibaba.com>
 <2d5f6ffcf47ec4675cde21ff52fc70a9dd13b023.camel@perches.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a08d4a47-df4a-5486-9b31-0548aebaf358@redhat.com>
Date: Wed, 6 Jan 2021 10:14:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <2d5f6ffcf47ec4675cde21ff52fc70a9dd13b023.camel@perches.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kx4tj-00Elh8-7H
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: fix: use scnprintf
 instead of snprintf.
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
Cc: ibm-acpi@hmh.eng.br, platform-driver-x86@vger.kernel.org,
 mgross@linux.intel.com, linux-kernel@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 1/6/21 10:01 AM, Joe Perches wrote:
> On Wed, 2021-01-06 at 14:36 +0800, YANG LI wrote:
>> The snprintf() function returns the number of characters which would
>> have been printed if there were enough space, but the scnprintf()
>> returns the number of characters which were actually printed. If the
>> buffer is not large enough, then using snprintf() would result in a
>> read overflow and an information leak. This error was found with the
>> help of coccicheck.
> 
> In all cases, the buffer _is_ large enough.
> 
> tmpi is length 5 and ok.
> include/sound/core.h:   char shortname[32];             /* short name of this soundcard */
> include/sound/core.h:   char longname[80];              /* name of this soundcard */
> include/sound/core.h:   char mixername[80];             /* mixer name */
> 
> _show function lengths are OK for all the uses with PAGE_SIZE.
> And it's probably better to use sysfs_emit for all the _show functions

Yes, please send a v2 with the following changes:

1. Use sysfs_emit in all the sysfs read functions
2. Do not replace snprintf with scnprintf when the return value is not used, that is just needless churn
3. Update the commit message to reflect 1.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
