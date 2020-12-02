Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9E42CBC95
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  2 Dec 2020 13:14:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kkR14-0003t9-Tn; Wed, 02 Dec 2020 12:13:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kkR10-0003sx-QW
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 02 Dec 2020 12:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s8wBO6q+/ydbMfM2l/hjFLTpTgfds0h6kmbDEEyONUA=; b=EPIuTxlx57/2I/mrNru0HjWxcO
 LTRxsAwH5/ZYM56/MxNitSGSEPFWYWdPXdRRKcLsDg3NiLchomtrTRzhs1vJ9VEH/f72UEWjz90Zd
 Uw2TEJ71xXiz4IkqySpmcTukhaQm9cJaarWuKPD7S2XAlDEVXG3x/nVtXXExNrqUwPiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s8wBO6q+/ydbMfM2l/hjFLTpTgfds0h6kmbDEEyONUA=; b=Zcjpep2vQFX/25l9A1i7mAdTxe
 3IFXbeOhPp20uauA9T0Y9v9yCXoYonELIFL+bsU/kbs50LdR9uqim7pF0iKyEwbXtjZ+ORVRfghUm
 z3qnGhR00hXMdTkMhYzug7Qx24zBxUqrS1I78NjOTmaIOjZdpORYdLC9zcZWXxOynqh8=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kkR0p-00FumI-DD
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 02 Dec 2020 12:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606911202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s8wBO6q+/ydbMfM2l/hjFLTpTgfds0h6kmbDEEyONUA=;
 b=i4QGIi8Fpyn26hcGpzQzEqb41SlTV2i+kl3Xlrzsk8pQ3aLsKcvltKbOvmPThsWzK6Ubyh
 OleeQclqeemZy+erGy8bab/luxtyByT3vaQ6Rcvjx/SwZF9a+tlOkHeCzaSG8yjJ3AChcM
 axGtTW9GAG71fxnwL+yIgQ/3kBb9HBY=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-UseYGzk-MVO3PrHaCZznJw-1; Wed, 02 Dec 2020 07:13:19 -0500
X-MC-Unique: UseYGzk-MVO3PrHaCZznJw-1
Received: by mail-ed1-f70.google.com with SMTP id f19so2910435edq.20
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 02 Dec 2020 04:13:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=s8wBO6q+/ydbMfM2l/hjFLTpTgfds0h6kmbDEEyONUA=;
 b=AIh+cRqzN4QZZt/nwLSmSTq/m41dXK0KwPBZozJlK336/mLucwgWMPr9WPgNv1ZR4w
 IDzusSjmUf0jSbDmVvW4LNL6ZbPT8s+AHSWryQXvinfOzsVV7ttDz1fxSyluXG2rfpn6
 SzdbmVL55mis9BPfvCc3haapoEHBsWoppASw7mDIlQaaDDVztN+jtg5Wbzk76AwNIIIm
 4H7Zu+eqef/L+mdVhDWgsgTLAm/r5mxMGkGI4OM2Qy8r97DqDpmsWwKFn7GLhdQcw73R
 zbtz2ZZV5x2bJAcp0h34UJjZG7BIl6ShmLNYO6nehwdFxF+P6WP2D6BiRBk0igAkH+Am
 3eZQ==
X-Gm-Message-State: AOAM532bmZf7kzGWtBsUVPa+jcUuMM4PCs0b1hSIBxYjLBaTpa4Qftpx
 cItj3xGHootQWK2VJVKHRONY+AS524SVt9K2+AJqI/VGDLIn4JGWK/px/tVY4BGgFY3mhQeRePt
 Kahgc+f4Lo80P+YVWN6yWX4OqNuqxL24RGV0=
X-Received: by 2002:a17:907:94c6:: with SMTP id
 dn6mr2015607ejc.13.1606911198335; 
 Wed, 02 Dec 2020 04:13:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxjcf2/jAVd/t5xTW/xEbxoPnYk9GfgCvwh3DT7GD0BwB22NZEO16T4jtdxLCGGhpZ9PtQtGQ==
X-Received: by 2002:a17:907:94c6:: with SMTP id
 dn6mr2015594ejc.13.1606911198176; 
 Wed, 02 Dec 2020 04:13:18 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id u23sm1053845ejy.87.2020.12.02.04.13.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 04:13:17 -0800 (PST)
To: trix@redhat.com, ibm-acpi@hmh.eng.br, mgross@linux.intel.com
References: <20201127181024.2771890-1-trix@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d83d3fe4-5999-b8d4-2b52-961313662e46@redhat.com>
Date: Wed, 2 Dec 2020 13:13:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201127181024.2771890-1-trix@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kkR0p-00FumI-DD
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: remove
 trailing semicolon in macro definition
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
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/27/20 7:10 PM, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> The macro use will already have a semicolon.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans

> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 36d9594bca7f..5bbb378d1a37 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -1025,7 +1025,7 @@ static struct attribute_set *create_attr_set(unsigned int max_members,
>  }
>  
>  #define destroy_attr_set(_set) \
> -	kfree(_set);
> +	kfree(_set)
>  
>  /* not multi-threaded safe, use it in a single thread per set */
>  static int add_to_attr_set(struct attribute_set *s, struct attribute *attr)
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
